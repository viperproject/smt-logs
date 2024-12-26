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
(declare-sort T@Field_14600_53 0)
(declare-sort T@Field_14613_14614 0)
(declare-sort T@Field_19862_19863 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17939_17944 0)
(declare-sort T@Field_19875_19880 0)
(declare-sort T@Field_18441_18446 0)
(declare-sort T@Field_19117_19122 0)
(declare-sort T@Field_14600_1195 0)
(declare-sort T@Field_14600_17944 0)
(declare-sort T@Field_14600_17955 0)
(declare-sort T@Field_17927_53 0)
(declare-sort T@Field_17927_14614 0)
(declare-sort T@Field_17927_1195 0)
(declare-sort T@Field_17954_17955 0)
(declare-sort T@Field_18427_53 0)
(declare-sort T@Field_18427_14614 0)
(declare-sort T@Field_18427_1411 0)
(declare-sort T@Field_18458_18459 0)
(declare-sort T@Field_19102_53 0)
(declare-sort T@Field_19102_14614 0)
(declare-sort T@Field_19102_1737 0)
(declare-sort T@Field_19135_19136 0)
(declare-sort T@Field_19862_53 0)
(declare-sort T@Field_19862_14614 0)
(declare-sort T@Field_19862_1195 0)
(declare-datatypes ((T@PolymorphicMapType_14561 0)) (((PolymorphicMapType_14561 (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| (Array T@Ref T@Field_19862_19863 Real)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| (Array T@Ref T@Field_17927_1195 Real)) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| (Array T@Ref T@Field_18427_1411 Real)) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| (Array T@Ref T@Field_19102_1737 Real)) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| (Array T@Ref T@Field_19862_1195 Real)) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| (Array T@Ref T@Field_19862_53 Real)) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| (Array T@Ref T@Field_19862_14614 Real)) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| (Array T@Ref T@Field_19875_19880 Real)) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| (Array T@Ref T@Field_17954_17955 Real)) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| (Array T@Ref T@Field_17927_53 Real)) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| (Array T@Ref T@Field_17927_14614 Real)) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| (Array T@Ref T@Field_17939_17944 Real)) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| (Array T@Ref T@Field_18458_18459 Real)) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| (Array T@Ref T@Field_18427_53 Real)) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| (Array T@Ref T@Field_18427_14614 Real)) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| (Array T@Ref T@Field_18441_18446 Real)) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| (Array T@Ref T@Field_19135_19136 Real)) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| (Array T@Ref T@Field_19102_53 Real)) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| (Array T@Ref T@Field_19102_14614 Real)) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| (Array T@Ref T@Field_19117_19122 Real)) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| (Array T@Ref T@Field_14600_17955 Real)) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| (Array T@Ref T@Field_14600_1195 Real)) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| (Array T@Ref T@Field_14600_53 Real)) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| (Array T@Ref T@Field_14613_14614 Real)) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| (Array T@Ref T@Field_14600_17944 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15089 0)) (((PolymorphicMapType_15089 (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (Array T@Ref T@Field_14600_53 Bool)) (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (Array T@Ref T@Field_14613_14614 Bool)) (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (Array T@Ref T@Field_14600_1195 Bool)) (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (Array T@Ref T@Field_14600_17944 Bool)) (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (Array T@Ref T@Field_14600_17955 Bool)) (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (Array T@Ref T@Field_17927_53 Bool)) (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (Array T@Ref T@Field_17927_14614 Bool)) (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (Array T@Ref T@Field_17927_1195 Bool)) (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (Array T@Ref T@Field_17939_17944 Bool)) (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (Array T@Ref T@Field_17954_17955 Bool)) (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (Array T@Ref T@Field_18427_53 Bool)) (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (Array T@Ref T@Field_18427_14614 Bool)) (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (Array T@Ref T@Field_18427_1411 Bool)) (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (Array T@Ref T@Field_18441_18446 Bool)) (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (Array T@Ref T@Field_18458_18459 Bool)) (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (Array T@Ref T@Field_19102_53 Bool)) (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (Array T@Ref T@Field_19102_14614 Bool)) (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (Array T@Ref T@Field_19102_1737 Bool)) (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (Array T@Ref T@Field_19117_19122 Bool)) (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (Array T@Ref T@Field_19135_19136 Bool)) (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (Array T@Ref T@Field_19862_53 Bool)) (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (Array T@Ref T@Field_19862_14614 Bool)) (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (Array T@Ref T@Field_19862_1195 Bool)) (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (Array T@Ref T@Field_19875_19880 Bool)) (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (Array T@Ref T@Field_19862_19863 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14540 0)) (((PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| (Array T@Ref T@Field_14600_53 Bool)) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| (Array T@Ref T@Field_14613_14614 T@Ref)) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| (Array T@Ref T@Field_19862_19863 T@FrameType)) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| (Array T@Ref T@Field_17939_17944 T@PolymorphicMapType_15089)) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| (Array T@Ref T@Field_19875_19880 T@PolymorphicMapType_15089)) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| (Array T@Ref T@Field_18441_18446 T@PolymorphicMapType_15089)) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| (Array T@Ref T@Field_19117_19122 T@PolymorphicMapType_15089)) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| (Array T@Ref T@Field_14600_1195 Int)) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| (Array T@Ref T@Field_14600_17944 T@PolymorphicMapType_15089)) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| (Array T@Ref T@Field_14600_17955 T@FrameType)) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| (Array T@Ref T@Field_17927_53 Bool)) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| (Array T@Ref T@Field_17927_14614 T@Ref)) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| (Array T@Ref T@Field_17927_1195 Int)) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| (Array T@Ref T@Field_17954_17955 T@FrameType)) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| (Array T@Ref T@Field_18427_53 Bool)) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| (Array T@Ref T@Field_18427_14614 T@Ref)) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| (Array T@Ref T@Field_18427_1411 Int)) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| (Array T@Ref T@Field_18458_18459 T@FrameType)) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| (Array T@Ref T@Field_19102_53 Bool)) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| (Array T@Ref T@Field_19102_14614 T@Ref)) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| (Array T@Ref T@Field_19102_1737 Int)) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| (Array T@Ref T@Field_19135_19136 T@FrameType)) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| (Array T@Ref T@Field_19862_53 Bool)) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| (Array T@Ref T@Field_19862_14614 T@Ref)) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| (Array T@Ref T@Field_19862_1195 Int)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_14540 T@PolymorphicMapType_14540) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14540 T@PolymorphicMapType_14540) Bool)
(declare-fun wand_1 (T@Ref T@Ref T@Ref Bool) T@Field_18427_1411)
(declare-fun getPredWandId_8071_1411 (T@Field_18427_1411) Int)
(declare-fun wand_2 (T@Ref T@Ref T@Ref T@Ref Bool) T@Field_19102_1737)
(declare-fun state (T@PolymorphicMapType_14540 T@PolymorphicMapType_14561) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14561) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15089)
(declare-fun wand (T@Ref Bool) T@Field_17927_1195)
(declare-fun IsWandField_8050_1195 (T@Field_17927_1195) Bool)
(declare-fun |wand#ft| (T@Ref Bool) T@Field_17954_17955)
(declare-fun IsWandField_8057_8058 (T@Field_17954_17955) Bool)
(declare-fun IsPredicateField_8050_1195 (T@Field_17927_1195) Bool)
(declare-fun IsPredicateField_8057_8058 (T@Field_17954_17955) Bool)
(declare-fun P (T@Ref) T@Field_19862_19863)
(declare-fun IsPredicateField_8162_8163 (T@Field_19862_19863) Bool)
(declare-fun |P#trigger_8162| (T@PolymorphicMapType_14540 T@Field_19862_19863) Bool)
(declare-fun |P#everUsed_8162| (T@Field_19862_19863) Bool)
(declare-fun getPredWandId_8113_1737 (T@Field_19102_1737) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14540 T@PolymorphicMapType_14540 T@PolymorphicMapType_14561) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8162 (T@Field_19862_19863) T@Field_19875_19880)
(declare-fun HasDirectPerm_19862_17955 (T@PolymorphicMapType_14561 T@Ref T@Field_19862_19863) Bool)
(declare-fun IsPredicateField_8126_8127 (T@Field_19135_19136) Bool)
(declare-fun PredicateMaskField_19102 (T@Field_19135_19136) T@Field_19117_19122)
(declare-fun HasDirectPerm_19102_17955 (T@PolymorphicMapType_14561 T@Ref T@Field_19135_19136) Bool)
(declare-fun IsPredicateField_8082_8083 (T@Field_18458_18459) Bool)
(declare-fun PredicateMaskField_18427 (T@Field_18458_18459) T@Field_18441_18446)
(declare-fun HasDirectPerm_18427_17955 (T@PolymorphicMapType_14561 T@Ref T@Field_18458_18459) Bool)
(declare-fun PredicateMaskField_17927 (T@Field_17954_17955) T@Field_17939_17944)
(declare-fun HasDirectPerm_17927_17955 (T@PolymorphicMapType_14561 T@Ref T@Field_17954_17955) Bool)
(declare-fun IsPredicateField_14600_51941 (T@Field_14600_17955) Bool)
(declare-fun PredicateMaskField_14600 (T@Field_14600_17955) T@Field_14600_17944)
(declare-fun HasDirectPerm_14600_17955 (T@PolymorphicMapType_14561 T@Ref T@Field_14600_17955) Bool)
(declare-fun IsWandField_19862_61650 (T@Field_19862_19863) Bool)
(declare-fun WandMaskField_19862 (T@Field_19862_19863) T@Field_19875_19880)
(declare-fun IsWandField_8126_8127 (T@Field_19135_19136) Bool)
(declare-fun WandMaskField_8126 (T@Field_19135_19136) T@Field_19117_19122)
(declare-fun IsWandField_8082_8083 (T@Field_18458_18459) Bool)
(declare-fun WandMaskField_8082 (T@Field_18458_18459) T@Field_18441_18446)
(declare-fun WandMaskField_8057 (T@Field_17954_17955) T@Field_17939_17944)
(declare-fun IsWandField_14600_60318 (T@Field_14600_17955) Bool)
(declare-fun WandMaskField_14600 (T@Field_14600_17955) T@Field_14600_17944)
(declare-fun |P#sm| (T@Ref) T@Field_19875_19880)
(declare-fun dummyHeap () T@PolymorphicMapType_14540)
(declare-fun ZeroMask () T@PolymorphicMapType_14561)
(declare-fun $allocated () T@Field_14600_53)
(declare-fun InsidePredicate_19862_19862 (T@Field_19862_19863 T@FrameType T@Field_19862_19863 T@FrameType) Bool)
(declare-fun InsidePredicate_19102_19102 (T@Field_19135_19136 T@FrameType T@Field_19135_19136 T@FrameType) Bool)
(declare-fun InsidePredicate_18427_18427 (T@Field_18458_18459 T@FrameType T@Field_18458_18459 T@FrameType) Bool)
(declare-fun InsidePredicate_17927_17927 (T@Field_17954_17955 T@FrameType T@Field_17954_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_14600_14600 (T@Field_14600_17955 T@FrameType T@Field_14600_17955 T@FrameType) Bool)
(declare-fun IsWandField_8113_1737 (T@Field_19102_1737) Bool)
(declare-fun |wand_2#ft| (T@Ref T@Ref T@Ref T@Ref Bool) T@Field_19135_19136)
(declare-fun IsPredicateField_8113_1737 (T@Field_19102_1737) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_14600_78733 (T@Field_14600_17944) Bool)
(declare-fun IsWandField_14600_78749 (T@Field_14600_17944) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_14600_14614 (T@Field_14613_14614) Bool)
(declare-fun IsWandField_14600_14614 (T@Field_14613_14614) Bool)
(declare-fun IsPredicateField_14600_53 (T@Field_14600_53) Bool)
(declare-fun IsWandField_14600_53 (T@Field_14600_53) Bool)
(declare-fun IsPredicateField_14600_1195 (T@Field_14600_1195) Bool)
(declare-fun IsWandField_14600_1195 (T@Field_14600_1195) Bool)
(declare-fun IsPredicateField_8113_77902 (T@Field_19117_19122) Bool)
(declare-fun IsWandField_8113_77918 (T@Field_19117_19122) Bool)
(declare-fun IsPredicateField_8113_14614 (T@Field_19102_14614) Bool)
(declare-fun IsWandField_8113_14614 (T@Field_19102_14614) Bool)
(declare-fun IsPredicateField_8113_53 (T@Field_19102_53) Bool)
(declare-fun IsWandField_8113_53 (T@Field_19102_53) Bool)
(declare-fun IsPredicateField_8071_77085 (T@Field_18441_18446) Bool)
(declare-fun IsWandField_8071_77101 (T@Field_18441_18446) Bool)
(declare-fun IsPredicateField_8071_14614 (T@Field_18427_14614) Bool)
(declare-fun IsWandField_8071_14614 (T@Field_18427_14614) Bool)
(declare-fun IsPredicateField_8071_53 (T@Field_18427_53) Bool)
(declare-fun IsWandField_8071_53 (T@Field_18427_53) Bool)
(declare-fun IsPredicateField_8071_1411 (T@Field_18427_1411) Bool)
(declare-fun IsWandField_8071_1411 (T@Field_18427_1411) Bool)
(declare-fun IsPredicateField_8050_76268 (T@Field_17939_17944) Bool)
(declare-fun IsWandField_8050_76284 (T@Field_17939_17944) Bool)
(declare-fun IsPredicateField_8050_14614 (T@Field_17927_14614) Bool)
(declare-fun IsWandField_8050_14614 (T@Field_17927_14614) Bool)
(declare-fun IsPredicateField_8050_53 (T@Field_17927_53) Bool)
(declare-fun IsWandField_8050_53 (T@Field_17927_53) Bool)
(declare-fun IsPredicateField_8162_75451 (T@Field_19875_19880) Bool)
(declare-fun IsWandField_8162_75467 (T@Field_19875_19880) Bool)
(declare-fun IsPredicateField_8162_14614 (T@Field_19862_14614) Bool)
(declare-fun IsWandField_8162_14614 (T@Field_19862_14614) Bool)
(declare-fun IsPredicateField_8162_53 (T@Field_19862_53) Bool)
(declare-fun IsWandField_8162_53 (T@Field_19862_53) Bool)
(declare-fun IsPredicateField_8162_1195 (T@Field_19862_1195) Bool)
(declare-fun IsWandField_8162_1195 (T@Field_19862_1195) Bool)
(declare-fun HasDirectPerm_19862_51485 (T@PolymorphicMapType_14561 T@Ref T@Field_19875_19880) Bool)
(declare-fun HasDirectPerm_19862_1195 (T@PolymorphicMapType_14561 T@Ref T@Field_19862_1195) Bool)
(declare-fun HasDirectPerm_19862_14614 (T@PolymorphicMapType_14561 T@Ref T@Field_19862_14614) Bool)
(declare-fun HasDirectPerm_19862_53 (T@PolymorphicMapType_14561 T@Ref T@Field_19862_53) Bool)
(declare-fun HasDirectPerm_19102_50350 (T@PolymorphicMapType_14561 T@Ref T@Field_19117_19122) Bool)
(declare-fun HasDirectPerm_19102_1195 (T@PolymorphicMapType_14561 T@Ref T@Field_19102_1737) Bool)
(declare-fun HasDirectPerm_19102_14614 (T@PolymorphicMapType_14561 T@Ref T@Field_19102_14614) Bool)
(declare-fun HasDirectPerm_19102_53 (T@PolymorphicMapType_14561 T@Ref T@Field_19102_53) Bool)
(declare-fun HasDirectPerm_18427_49216 (T@PolymorphicMapType_14561 T@Ref T@Field_18441_18446) Bool)
(declare-fun HasDirectPerm_18427_1195 (T@PolymorphicMapType_14561 T@Ref T@Field_18427_1411) Bool)
(declare-fun HasDirectPerm_18427_14614 (T@PolymorphicMapType_14561 T@Ref T@Field_18427_14614) Bool)
(declare-fun HasDirectPerm_18427_53 (T@PolymorphicMapType_14561 T@Ref T@Field_18427_53) Bool)
(declare-fun HasDirectPerm_17927_48082 (T@PolymorphicMapType_14561 T@Ref T@Field_17939_17944) Bool)
(declare-fun HasDirectPerm_17927_1195 (T@PolymorphicMapType_14561 T@Ref T@Field_17927_1195) Bool)
(declare-fun HasDirectPerm_17927_14614 (T@PolymorphicMapType_14561 T@Ref T@Field_17927_14614) Bool)
(declare-fun HasDirectPerm_17927_53 (T@PolymorphicMapType_14561 T@Ref T@Field_17927_53) Bool)
(declare-fun HasDirectPerm_14600_46904 (T@PolymorphicMapType_14561 T@Ref T@Field_14600_17944) Bool)
(declare-fun HasDirectPerm_14600_1195 (T@PolymorphicMapType_14561 T@Ref T@Field_14600_1195) Bool)
(declare-fun HasDirectPerm_14600_14614 (T@PolymorphicMapType_14561 T@Ref T@Field_14613_14614) Bool)
(declare-fun HasDirectPerm_14600_53 (T@PolymorphicMapType_14561 T@Ref T@Field_14600_53) Bool)
(declare-fun |wand_1#ft| (T@Ref T@Ref T@Ref Bool) T@Field_18458_18459)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |wand_1#sm| (T@Ref T@Ref T@Ref Bool) T@Field_18441_18446)
(declare-fun sumMask (T@PolymorphicMapType_14561 T@PolymorphicMapType_14561 T@PolymorphicMapType_14561) Bool)
(declare-fun |wand_2#sm| (T@Ref T@Ref T@Ref T@Ref Bool) T@Field_19117_19122)
(declare-fun getPredWandId_8050_1195 (T@Field_17927_1195) Int)
(declare-fun getPredWandId_8162_8163 (T@Field_19862_19863) Int)
(declare-fun |wand#sm| (T@Ref Bool) T@Field_17939_17944)
(declare-fun InsidePredicate_19862_19102 (T@Field_19862_19863 T@FrameType T@Field_19135_19136 T@FrameType) Bool)
(declare-fun InsidePredicate_19862_18427 (T@Field_19862_19863 T@FrameType T@Field_18458_18459 T@FrameType) Bool)
(declare-fun InsidePredicate_19862_17927 (T@Field_19862_19863 T@FrameType T@Field_17954_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_19862_14600 (T@Field_19862_19863 T@FrameType T@Field_14600_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_19102_19862 (T@Field_19135_19136 T@FrameType T@Field_19862_19863 T@FrameType) Bool)
(declare-fun InsidePredicate_19102_18427 (T@Field_19135_19136 T@FrameType T@Field_18458_18459 T@FrameType) Bool)
(declare-fun InsidePredicate_19102_17927 (T@Field_19135_19136 T@FrameType T@Field_17954_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_19102_14600 (T@Field_19135_19136 T@FrameType T@Field_14600_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_18427_19862 (T@Field_18458_18459 T@FrameType T@Field_19862_19863 T@FrameType) Bool)
(declare-fun InsidePredicate_18427_19102 (T@Field_18458_18459 T@FrameType T@Field_19135_19136 T@FrameType) Bool)
(declare-fun InsidePredicate_18427_17927 (T@Field_18458_18459 T@FrameType T@Field_17954_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_18427_14600 (T@Field_18458_18459 T@FrameType T@Field_14600_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_17927_19862 (T@Field_17954_17955 T@FrameType T@Field_19862_19863 T@FrameType) Bool)
(declare-fun InsidePredicate_17927_19102 (T@Field_17954_17955 T@FrameType T@Field_19135_19136 T@FrameType) Bool)
(declare-fun InsidePredicate_17927_18427 (T@Field_17954_17955 T@FrameType T@Field_18458_18459 T@FrameType) Bool)
(declare-fun InsidePredicate_17927_14600 (T@Field_17954_17955 T@FrameType T@Field_14600_17955 T@FrameType) Bool)
(declare-fun InsidePredicate_14600_19862 (T@Field_14600_17955 T@FrameType T@Field_19862_19863 T@FrameType) Bool)
(declare-fun InsidePredicate_14600_19102 (T@Field_14600_17955 T@FrameType T@Field_19135_19136 T@FrameType) Bool)
(declare-fun InsidePredicate_14600_18427 (T@Field_14600_17955 T@FrameType T@Field_18458_18459 T@FrameType) Bool)
(declare-fun InsidePredicate_14600_17927 (T@Field_14600_17955 T@FrameType T@Field_17954_17955 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_14540) (Heap1 T@PolymorphicMapType_14540) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((arg1 T@Ref) (arg2 T@Ref) (arg3 T@Ref) (arg4 Bool) ) (! (= (getPredWandId_8071_1411 (wand_1 arg1 arg2 arg3 arg4)) 2)
 :qid |stdinbpl.236:15|
 :skolemid |34|
 :pattern ( (wand_1 arg1 arg2 arg3 arg4))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 T@Ref) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5 Bool) (arg1_2 T@Ref) (arg2_2 T@Ref) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 Bool) ) (!  (=> (= (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5) (wand_2 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2)) (and (= arg1@@0 arg1_2) (and (= arg2@@0 arg2_2) (and (= arg3@@0 arg3_2) (and (= arg4@@0 arg4_2) (= arg5 arg5_2))))))
 :qid |stdinbpl.272:15|
 :skolemid |42|
 :pattern ( (wand_2 arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5) (wand_2 arg1_2 arg2_2 arg3_2 arg4_2 arg5_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_14540) (Mask T@PolymorphicMapType_14561) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14540) (Heap1@@0 T@PolymorphicMapType_14540) (Heap2 T@PolymorphicMapType_14540) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_19862_19863) ) (!  (not (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_19875_19880) ) (!  (not (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19862_1195) ) (!  (not (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19862_14614) ) (!  (not (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19862_53) ) (!  (not (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_19135_19136) ) (!  (not (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_19117_19122) ) (!  (not (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_19102_1737) ) (!  (not (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_19102_14614) ) (!  (not (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_19102_53) ) (!  (not (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_18458_18459) ) (!  (not (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_18441_18446) ) (!  (not (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18427_1411) ) (!  (not (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18427_14614) ) (!  (not (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_18427_53) ) (!  (not (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_17954_17955) ) (!  (not (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@14 f_4@@14))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_17939_17944) ) (!  (not (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| ZeroPMask) o_2@@15 f_4@@15))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| ZeroPMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_17927_1195) ) (!  (not (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@16 f_4@@16))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_17927_14614) ) (!  (not (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@17 f_4@@17))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17927_53) ) (!  (not (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| ZeroPMask) o_2@@18 f_4@@18))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| ZeroPMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_14600_17955) ) (!  (not (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@19 f_4@@19))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| ZeroPMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_14600_17944) ) (!  (not (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| ZeroPMask) o_2@@20 f_4@@20))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| ZeroPMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_14600_1195) ) (!  (not (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@21 f_4@@21))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| ZeroPMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_14613_14614) ) (!  (not (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@22 f_4@@22))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| ZeroPMask) o_2@@22 f_4@@22))
)))
(assert (forall ((o_2@@23 T@Ref) (f_4@@23 T@Field_14600_53) ) (!  (not (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| ZeroPMask) o_2@@23 f_4@@23))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| ZeroPMask) o_2@@23 f_4@@23))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Bool) ) (! (IsWandField_8050_1195 (wand arg1@@1 arg2@@1))
 :qid |stdinbpl.184:15|
 :skolemid |22|
 :pattern ( (wand arg1@@1 arg2@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Bool) ) (! (IsWandField_8057_8058 (|wand#ft| arg1@@2 arg2@@2))
 :qid |stdinbpl.188:15|
 :skolemid |23|
 :pattern ( (|wand#ft| arg1@@2 arg2@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Bool) ) (!  (not (IsPredicateField_8050_1195 (wand arg1@@3 arg2@@3)))
 :qid |stdinbpl.192:15|
 :skolemid |24|
 :pattern ( (wand arg1@@3 arg2@@3))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Bool) ) (!  (not (IsPredicateField_8057_8058 (|wand#ft| arg1@@4 arg2@@4)))
 :qid |stdinbpl.196:15|
 :skolemid |25|
 :pattern ( (|wand#ft| arg1@@4 arg2@@4))
)))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_8162_8163 (P x))
 :qid |stdinbpl.288:15|
 :skolemid |44|
 :pattern ( (P x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14540) (x@@0 T@Ref) ) (! (|P#everUsed_8162| (P x@@0))
 :qid |stdinbpl.307:15|
 :skolemid |48|
 :pattern ( (|P#trigger_8162| Heap@@0 (P x@@0)))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Bool) (arg1_2@@0 T@Ref) (arg2_2@@0 Bool) ) (!  (=> (= (wand arg1@@5 arg2@@5) (wand arg1_2@@0 arg2_2@@0)) (and (= arg1@@5 arg1_2@@0) (= arg2@@5 arg2_2@@0)))
 :qid |stdinbpl.208:15|
 :skolemid |28|
 :pattern ( (wand arg1@@5 arg2@@5) (wand arg1_2@@0 arg2_2@@0))
)))
(assert (forall ((arg1@@6 T@Ref) (arg2@@6 T@Ref) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@0 Bool) ) (! (= (getPredWandId_8113_1737 (wand_2 arg1@@6 arg2@@6 arg3@@1 arg4@@1 arg5@@0)) 3)
 :qid |stdinbpl.268:15|
 :skolemid |41|
 :pattern ( (wand_2 arg1@@6 arg2@@6 arg3@@1 arg4@@1 arg5@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14540) (ExhaleHeap T@PolymorphicMapType_14540) (Mask@@0 T@PolymorphicMapType_14561) (pm_f_16 T@Field_19862_19863) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_19862_17955 Mask@@0 null pm_f_16) (IsPredicateField_8162_8163 pm_f_16)) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@1) null (PredicateMaskField_8162 pm_f_16)) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap) null (PredicateMaskField_8162 pm_f_16)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_8162_8163 pm_f_16) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap) null (PredicateMaskField_8162 pm_f_16)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14540) (ExhaleHeap@@0 T@PolymorphicMapType_14540) (Mask@@1 T@PolymorphicMapType_14561) (pm_f_16@@0 T@Field_19135_19136) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_19102_17955 Mask@@1 null pm_f_16@@0) (IsPredicateField_8126_8127 pm_f_16@@0)) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@2) null (PredicateMaskField_19102 pm_f_16@@0)) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@0) null (PredicateMaskField_19102 pm_f_16@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8126_8127 pm_f_16@@0) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@0) null (PredicateMaskField_19102 pm_f_16@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14540) (ExhaleHeap@@1 T@PolymorphicMapType_14540) (Mask@@2 T@PolymorphicMapType_14561) (pm_f_16@@1 T@Field_18458_18459) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_18427_17955 Mask@@2 null pm_f_16@@1) (IsPredicateField_8082_8083 pm_f_16@@1)) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@3) null (PredicateMaskField_18427 pm_f_16@@1)) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@1) null (PredicateMaskField_18427 pm_f_16@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsPredicateField_8082_8083 pm_f_16@@1) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@1) null (PredicateMaskField_18427 pm_f_16@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14540) (ExhaleHeap@@2 T@PolymorphicMapType_14540) (Mask@@3 T@PolymorphicMapType_14561) (pm_f_16@@2 T@Field_17954_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_17927_17955 Mask@@3 null pm_f_16@@2) (IsPredicateField_8057_8058 pm_f_16@@2)) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@4) null (PredicateMaskField_17927 pm_f_16@@2)) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@2) null (PredicateMaskField_17927 pm_f_16@@2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsPredicateField_8057_8058 pm_f_16@@2) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@2) null (PredicateMaskField_17927 pm_f_16@@2)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14540) (ExhaleHeap@@3 T@PolymorphicMapType_14540) (Mask@@4 T@PolymorphicMapType_14561) (pm_f_16@@3 T@Field_14600_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_14600_17955 Mask@@4 null pm_f_16@@3) (IsPredicateField_14600_51941 pm_f_16@@3)) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@5) null (PredicateMaskField_14600 pm_f_16@@3)) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@3) null (PredicateMaskField_14600 pm_f_16@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_14600_51941 pm_f_16@@3) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@3) null (PredicateMaskField_14600 pm_f_16@@3)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14540) (ExhaleHeap@@4 T@PolymorphicMapType_14540) (Mask@@5 T@PolymorphicMapType_14561) (pm_f_16@@4 T@Field_19862_19863) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_19862_17955 Mask@@5 null pm_f_16@@4) (IsWandField_19862_61650 pm_f_16@@4)) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@6) null (WandMaskField_19862 pm_f_16@@4)) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@4) null (WandMaskField_19862 pm_f_16@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsWandField_19862_61650 pm_f_16@@4) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@4) null (WandMaskField_19862 pm_f_16@@4)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14540) (ExhaleHeap@@5 T@PolymorphicMapType_14540) (Mask@@6 T@PolymorphicMapType_14561) (pm_f_16@@5 T@Field_19135_19136) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_19102_17955 Mask@@6 null pm_f_16@@5) (IsWandField_8126_8127 pm_f_16@@5)) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@7) null (WandMaskField_8126 pm_f_16@@5)) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@5) null (WandMaskField_8126 pm_f_16@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_8126_8127 pm_f_16@@5) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@5) null (WandMaskField_8126 pm_f_16@@5)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14540) (ExhaleHeap@@6 T@PolymorphicMapType_14540) (Mask@@7 T@PolymorphicMapType_14561) (pm_f_16@@6 T@Field_18458_18459) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_18427_17955 Mask@@7 null pm_f_16@@6) (IsWandField_8082_8083 pm_f_16@@6)) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@8) null (WandMaskField_8082 pm_f_16@@6)) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@6) null (WandMaskField_8082 pm_f_16@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_8082_8083 pm_f_16@@6) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@6) null (WandMaskField_8082 pm_f_16@@6)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14540) (ExhaleHeap@@7 T@PolymorphicMapType_14540) (Mask@@8 T@PolymorphicMapType_14561) (pm_f_16@@7 T@Field_17954_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (and (HasDirectPerm_17927_17955 Mask@@8 null pm_f_16@@7) (IsWandField_8057_8058 pm_f_16@@7)) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@9) null (WandMaskField_8057 pm_f_16@@7)) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@7) null (WandMaskField_8057 pm_f_16@@7)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (IsWandField_8057_8058 pm_f_16@@7) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@7) null (WandMaskField_8057 pm_f_16@@7)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14540) (ExhaleHeap@@8 T@PolymorphicMapType_14540) (Mask@@9 T@PolymorphicMapType_14561) (pm_f_16@@8 T@Field_14600_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (=> (and (HasDirectPerm_14600_17955 Mask@@9 null pm_f_16@@8) (IsWandField_14600_60318 pm_f_16@@8)) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@10) null (WandMaskField_14600 pm_f_16@@8)) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@8) null (WandMaskField_14600 pm_f_16@@8)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (IsWandField_14600_60318 pm_f_16@@8) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@8) null (WandMaskField_14600 pm_f_16@@8)))
)))
(assert (forall ((x@@1 T@Ref) (x2 T@Ref) ) (!  (=> (= (P x@@1) (P x2)) (= x@@1 x2))
 :qid |stdinbpl.298:15|
 :skolemid |46|
 :pattern ( (P x@@1) (P x2))
)))
(assert (forall ((x@@2 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|P#sm| x@@2) (|P#sm| x2@@0)) (= x@@2 x2@@0))
 :qid |stdinbpl.302:15|
 :skolemid |47|
 :pattern ( (|P#sm| x@@2) (|P#sm| x2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14540) (ExhaleHeap@@9 T@PolymorphicMapType_14540) (Mask@@10 T@PolymorphicMapType_14561) (o_34 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (=> (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@11) o_34 $allocated) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@9) o_34 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@10) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@9) o_34 $allocated))
)))
(assert (forall ((p T@Field_19862_19863) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19862_19862 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19862_19862 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_19135_19136) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_19102_19102 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19102_19102 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_18458_18459) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_18427_18427 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18427_18427 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((p@@2 T@Field_17954_17955) (v_1@@2 T@FrameType) (w@@2 T@FrameType) ) (!  (not (InsidePredicate_17927_17927 p@@2 v_1@@2 p@@2 w@@2))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_17927_17927 p@@2 v_1@@2 p@@2 w@@2))
)))
(assert (forall ((p@@3 T@Field_14600_17955) (v_1@@3 T@FrameType) (w@@3 T@FrameType) ) (!  (not (InsidePredicate_14600_14600 p@@3 v_1@@3 p@@3 w@@3))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14600_14600 p@@3 v_1@@3 p@@3 w@@3))
)))
(assert (forall ((arg1@@7 T@Ref) (arg2@@7 T@Ref) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@1 Bool) ) (! (IsWandField_8113_1737 (wand_2 arg1@@7 arg2@@7 arg3@@2 arg4@@2 arg5@@1))
 :qid |stdinbpl.248:15|
 :skolemid |36|
 :pattern ( (wand_2 arg1@@7 arg2@@7 arg3@@2 arg4@@2 arg5@@1))
)))
(assert (forall ((arg1@@8 T@Ref) (arg2@@8 T@Ref) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@2 Bool) ) (! (IsWandField_8126_8127 (|wand_2#ft| arg1@@8 arg2@@8 arg3@@3 arg4@@3 arg5@@2))
 :qid |stdinbpl.252:15|
 :skolemid |37|
 :pattern ( (|wand_2#ft| arg1@@8 arg2@@8 arg3@@3 arg4@@3 arg5@@2))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14540) (ExhaleHeap@@10 T@PolymorphicMapType_14540) (Mask@@11 T@PolymorphicMapType_14561) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11) (succHeap Heap@@12 ExhaleHeap@@10))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@11))
)))
(assert (forall ((arg1@@9 T@Ref) (arg2@@9 T@Ref) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@3 Bool) ) (!  (not (IsPredicateField_8113_1737 (wand_2 arg1@@9 arg2@@9 arg3@@4 arg4@@4 arg5@@3)))
 :qid |stdinbpl.256:15|
 :skolemid |38|
 :pattern ( (wand_2 arg1@@9 arg2@@9 arg3@@4 arg4@@4 arg5@@3))
)))
(assert (forall ((arg1@@10 T@Ref) (arg2@@10 T@Ref) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@4 Bool) ) (!  (not (IsPredicateField_8126_8127 (|wand_2#ft| arg1@@10 arg2@@10 arg3@@5 arg4@@5 arg5@@4)))
 :qid |stdinbpl.260:15|
 :skolemid |39|
 :pattern ( (|wand_2#ft| arg1@@10 arg2@@10 arg3@@5 arg4@@5 arg5@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14561) (o_2@@24 T@Ref) (f_4@@24 T@Field_14600_17944) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@@12) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_14600_78733 f_4@@24))) (not (IsWandField_14600_78749 f_4@@24))) (<= (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@@12) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@@12) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14561) (o_2@@25 T@Ref) (f_4@@25 T@Field_14613_14614) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@@13) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_14600_14614 f_4@@25))) (not (IsWandField_14600_14614 f_4@@25))) (<= (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@@13) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@@13) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14561) (o_2@@26 T@Ref) (f_4@@26 T@Field_14600_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@@14) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_14600_53 f_4@@26))) (not (IsWandField_14600_53 f_4@@26))) (<= (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@@14) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@@14) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14561) (o_2@@27 T@Ref) (f_4@@27 T@Field_14600_1195) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@@15) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_14600_1195 f_4@@27))) (not (IsWandField_14600_1195 f_4@@27))) (<= (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@@15) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@@15) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14561) (o_2@@28 T@Ref) (f_4@@28 T@Field_14600_17955) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@@16) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_14600_51941 f_4@@28))) (not (IsWandField_14600_60318 f_4@@28))) (<= (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@@16) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@@16) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14561) (o_2@@29 T@Ref) (f_4@@29 T@Field_19117_19122) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@@17) o_2@@29 f_4@@29) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8113_77902 f_4@@29))) (not (IsWandField_8113_77918 f_4@@29))) (<= (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@@17) o_2@@29 f_4@@29) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@@17) o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14561) (o_2@@30 T@Ref) (f_4@@30 T@Field_19102_14614) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@@18) o_2@@30 f_4@@30) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8113_14614 f_4@@30))) (not (IsWandField_8113_14614 f_4@@30))) (<= (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@@18) o_2@@30 f_4@@30) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@@18) o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14561) (o_2@@31 T@Ref) (f_4@@31 T@Field_19102_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@@19) o_2@@31 f_4@@31) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8113_53 f_4@@31))) (not (IsWandField_8113_53 f_4@@31))) (<= (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@@19) o_2@@31 f_4@@31) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@@19) o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14561) (o_2@@32 T@Ref) (f_4@@32 T@Field_19102_1737) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@@20) o_2@@32 f_4@@32) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8113_1737 f_4@@32))) (not (IsWandField_8113_1737 f_4@@32))) (<= (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@@20) o_2@@32 f_4@@32) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@@20) o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14561) (o_2@@33 T@Ref) (f_4@@33 T@Field_19135_19136) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@@21) o_2@@33 f_4@@33) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8126_8127 f_4@@33))) (not (IsWandField_8126_8127 f_4@@33))) (<= (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@@21) o_2@@33 f_4@@33) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@@21) o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14561) (o_2@@34 T@Ref) (f_4@@34 T@Field_18441_18446) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@@22) o_2@@34 f_4@@34) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8071_77085 f_4@@34))) (not (IsWandField_8071_77101 f_4@@34))) (<= (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@@22) o_2@@34 f_4@@34) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@@22) o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14561) (o_2@@35 T@Ref) (f_4@@35 T@Field_18427_14614) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@@23) o_2@@35 f_4@@35) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8071_14614 f_4@@35))) (not (IsWandField_8071_14614 f_4@@35))) (<= (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@@23) o_2@@35 f_4@@35) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@@23) o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14561) (o_2@@36 T@Ref) (f_4@@36 T@Field_18427_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@@24) o_2@@36 f_4@@36) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_8071_53 f_4@@36))) (not (IsWandField_8071_53 f_4@@36))) (<= (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@@24) o_2@@36 f_4@@36) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@@24) o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14561) (o_2@@37 T@Ref) (f_4@@37 T@Field_18427_1411) ) (!  (=> (GoodMask Mask@@25) (and (>= (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@@25) o_2@@37 f_4@@37) NoPerm) (=> (and (and (and (GoodMask Mask@@25) AssumePermUpperBound) (not (IsPredicateField_8071_1411 f_4@@37))) (not (IsWandField_8071_1411 f_4@@37))) (<= (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@@25) o_2@@37 f_4@@37) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@25) (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@@25) o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14561) (o_2@@38 T@Ref) (f_4@@38 T@Field_18458_18459) ) (!  (=> (GoodMask Mask@@26) (and (>= (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@@26) o_2@@38 f_4@@38) NoPerm) (=> (and (and (and (GoodMask Mask@@26) AssumePermUpperBound) (not (IsPredicateField_8082_8083 f_4@@38))) (not (IsWandField_8082_8083 f_4@@38))) (<= (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@@26) o_2@@38 f_4@@38) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@26) (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@@26) o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14561) (o_2@@39 T@Ref) (f_4@@39 T@Field_17939_17944) ) (!  (=> (GoodMask Mask@@27) (and (>= (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@@27) o_2@@39 f_4@@39) NoPerm) (=> (and (and (and (GoodMask Mask@@27) AssumePermUpperBound) (not (IsPredicateField_8050_76268 f_4@@39))) (not (IsWandField_8050_76284 f_4@@39))) (<= (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@@27) o_2@@39 f_4@@39) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@27) (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@@27) o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14561) (o_2@@40 T@Ref) (f_4@@40 T@Field_17927_14614) ) (!  (=> (GoodMask Mask@@28) (and (>= (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@@28) o_2@@40 f_4@@40) NoPerm) (=> (and (and (and (GoodMask Mask@@28) AssumePermUpperBound) (not (IsPredicateField_8050_14614 f_4@@40))) (not (IsWandField_8050_14614 f_4@@40))) (<= (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@@28) o_2@@40 f_4@@40) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@28) (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@@28) o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14561) (o_2@@41 T@Ref) (f_4@@41 T@Field_17927_53) ) (!  (=> (GoodMask Mask@@29) (and (>= (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@@29) o_2@@41 f_4@@41) NoPerm) (=> (and (and (and (GoodMask Mask@@29) AssumePermUpperBound) (not (IsPredicateField_8050_53 f_4@@41))) (not (IsWandField_8050_53 f_4@@41))) (<= (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@@29) o_2@@41 f_4@@41) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@29) (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@@29) o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_14561) (o_2@@42 T@Ref) (f_4@@42 T@Field_17927_1195) ) (!  (=> (GoodMask Mask@@30) (and (>= (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@@30) o_2@@42 f_4@@42) NoPerm) (=> (and (and (and (GoodMask Mask@@30) AssumePermUpperBound) (not (IsPredicateField_8050_1195 f_4@@42))) (not (IsWandField_8050_1195 f_4@@42))) (<= (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@@30) o_2@@42 f_4@@42) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@30) (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@@30) o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_14561) (o_2@@43 T@Ref) (f_4@@43 T@Field_17954_17955) ) (!  (=> (GoodMask Mask@@31) (and (>= (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@@31) o_2@@43 f_4@@43) NoPerm) (=> (and (and (and (GoodMask Mask@@31) AssumePermUpperBound) (not (IsPredicateField_8057_8058 f_4@@43))) (not (IsWandField_8057_8058 f_4@@43))) (<= (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@@31) o_2@@43 f_4@@43) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@31) (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@@31) o_2@@43 f_4@@43))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_14561) (o_2@@44 T@Ref) (f_4@@44 T@Field_19875_19880) ) (!  (=> (GoodMask Mask@@32) (and (>= (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@@32) o_2@@44 f_4@@44) NoPerm) (=> (and (and (and (GoodMask Mask@@32) AssumePermUpperBound) (not (IsPredicateField_8162_75451 f_4@@44))) (not (IsWandField_8162_75467 f_4@@44))) (<= (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@@32) o_2@@44 f_4@@44) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@32) (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@@32) o_2@@44 f_4@@44))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_14561) (o_2@@45 T@Ref) (f_4@@45 T@Field_19862_14614) ) (!  (=> (GoodMask Mask@@33) (and (>= (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@@33) o_2@@45 f_4@@45) NoPerm) (=> (and (and (and (GoodMask Mask@@33) AssumePermUpperBound) (not (IsPredicateField_8162_14614 f_4@@45))) (not (IsWandField_8162_14614 f_4@@45))) (<= (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@@33) o_2@@45 f_4@@45) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@33) (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@@33) o_2@@45 f_4@@45))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_14561) (o_2@@46 T@Ref) (f_4@@46 T@Field_19862_53) ) (!  (=> (GoodMask Mask@@34) (and (>= (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@@34) o_2@@46 f_4@@46) NoPerm) (=> (and (and (and (GoodMask Mask@@34) AssumePermUpperBound) (not (IsPredicateField_8162_53 f_4@@46))) (not (IsWandField_8162_53 f_4@@46))) (<= (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@@34) o_2@@46 f_4@@46) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@34) (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@@34) o_2@@46 f_4@@46))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_14561) (o_2@@47 T@Ref) (f_4@@47 T@Field_19862_1195) ) (!  (=> (GoodMask Mask@@35) (and (>= (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@@35) o_2@@47 f_4@@47) NoPerm) (=> (and (and (and (GoodMask Mask@@35) AssumePermUpperBound) (not (IsPredicateField_8162_1195 f_4@@47))) (not (IsWandField_8162_1195 f_4@@47))) (<= (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@@35) o_2@@47 f_4@@47) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@35) (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@@35) o_2@@47 f_4@@47))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_14561) (o_2@@48 T@Ref) (f_4@@48 T@Field_19862_19863) ) (!  (=> (GoodMask Mask@@36) (and (>= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@@36) o_2@@48 f_4@@48) NoPerm) (=> (and (and (and (GoodMask Mask@@36) AssumePermUpperBound) (not (IsPredicateField_8162_8163 f_4@@48))) (not (IsWandField_19862_61650 f_4@@48))) (<= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@@36) o_2@@48 f_4@@48) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@36) (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@@36) o_2@@48 f_4@@48))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_14561) (o_2@@49 T@Ref) (f_4@@49 T@Field_19862_19863) ) (! (= (HasDirectPerm_19862_17955 Mask@@37 o_2@@49 f_4@@49) (> (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@@37) o_2@@49 f_4@@49) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19862_17955 Mask@@37 o_2@@49 f_4@@49))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_14561) (o_2@@50 T@Ref) (f_4@@50 T@Field_19875_19880) ) (! (= (HasDirectPerm_19862_51485 Mask@@38 o_2@@50 f_4@@50) (> (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@@38) o_2@@50 f_4@@50) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19862_51485 Mask@@38 o_2@@50 f_4@@50))
)))
(assert (forall ((Mask@@39 T@PolymorphicMapType_14561) (o_2@@51 T@Ref) (f_4@@51 T@Field_19862_1195) ) (! (= (HasDirectPerm_19862_1195 Mask@@39 o_2@@51 f_4@@51) (> (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@@39) o_2@@51 f_4@@51) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19862_1195 Mask@@39 o_2@@51 f_4@@51))
)))
(assert (forall ((Mask@@40 T@PolymorphicMapType_14561) (o_2@@52 T@Ref) (f_4@@52 T@Field_19862_14614) ) (! (= (HasDirectPerm_19862_14614 Mask@@40 o_2@@52 f_4@@52) (> (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@@40) o_2@@52 f_4@@52) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19862_14614 Mask@@40 o_2@@52 f_4@@52))
)))
(assert (forall ((Mask@@41 T@PolymorphicMapType_14561) (o_2@@53 T@Ref) (f_4@@53 T@Field_19862_53) ) (! (= (HasDirectPerm_19862_53 Mask@@41 o_2@@53 f_4@@53) (> (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@@41) o_2@@53 f_4@@53) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19862_53 Mask@@41 o_2@@53 f_4@@53))
)))
(assert (forall ((Mask@@42 T@PolymorphicMapType_14561) (o_2@@54 T@Ref) (f_4@@54 T@Field_19135_19136) ) (! (= (HasDirectPerm_19102_17955 Mask@@42 o_2@@54 f_4@@54) (> (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@@42) o_2@@54 f_4@@54) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19102_17955 Mask@@42 o_2@@54 f_4@@54))
)))
(assert (forall ((Mask@@43 T@PolymorphicMapType_14561) (o_2@@55 T@Ref) (f_4@@55 T@Field_19117_19122) ) (! (= (HasDirectPerm_19102_50350 Mask@@43 o_2@@55 f_4@@55) (> (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@@43) o_2@@55 f_4@@55) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19102_50350 Mask@@43 o_2@@55 f_4@@55))
)))
(assert (forall ((Mask@@44 T@PolymorphicMapType_14561) (o_2@@56 T@Ref) (f_4@@56 T@Field_19102_1737) ) (! (= (HasDirectPerm_19102_1195 Mask@@44 o_2@@56 f_4@@56) (> (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@@44) o_2@@56 f_4@@56) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19102_1195 Mask@@44 o_2@@56 f_4@@56))
)))
(assert (forall ((Mask@@45 T@PolymorphicMapType_14561) (o_2@@57 T@Ref) (f_4@@57 T@Field_19102_14614) ) (! (= (HasDirectPerm_19102_14614 Mask@@45 o_2@@57 f_4@@57) (> (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@@45) o_2@@57 f_4@@57) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19102_14614 Mask@@45 o_2@@57 f_4@@57))
)))
(assert (forall ((Mask@@46 T@PolymorphicMapType_14561) (o_2@@58 T@Ref) (f_4@@58 T@Field_19102_53) ) (! (= (HasDirectPerm_19102_53 Mask@@46 o_2@@58 f_4@@58) (> (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@@46) o_2@@58 f_4@@58) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_19102_53 Mask@@46 o_2@@58 f_4@@58))
)))
(assert (forall ((Mask@@47 T@PolymorphicMapType_14561) (o_2@@59 T@Ref) (f_4@@59 T@Field_18458_18459) ) (! (= (HasDirectPerm_18427_17955 Mask@@47 o_2@@59 f_4@@59) (> (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@@47) o_2@@59 f_4@@59) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18427_17955 Mask@@47 o_2@@59 f_4@@59))
)))
(assert (forall ((Mask@@48 T@PolymorphicMapType_14561) (o_2@@60 T@Ref) (f_4@@60 T@Field_18441_18446) ) (! (= (HasDirectPerm_18427_49216 Mask@@48 o_2@@60 f_4@@60) (> (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@@48) o_2@@60 f_4@@60) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18427_49216 Mask@@48 o_2@@60 f_4@@60))
)))
(assert (forall ((Mask@@49 T@PolymorphicMapType_14561) (o_2@@61 T@Ref) (f_4@@61 T@Field_18427_1411) ) (! (= (HasDirectPerm_18427_1195 Mask@@49 o_2@@61 f_4@@61) (> (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@@49) o_2@@61 f_4@@61) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18427_1195 Mask@@49 o_2@@61 f_4@@61))
)))
(assert (forall ((Mask@@50 T@PolymorphicMapType_14561) (o_2@@62 T@Ref) (f_4@@62 T@Field_18427_14614) ) (! (= (HasDirectPerm_18427_14614 Mask@@50 o_2@@62 f_4@@62) (> (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@@50) o_2@@62 f_4@@62) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18427_14614 Mask@@50 o_2@@62 f_4@@62))
)))
(assert (forall ((Mask@@51 T@PolymorphicMapType_14561) (o_2@@63 T@Ref) (f_4@@63 T@Field_18427_53) ) (! (= (HasDirectPerm_18427_53 Mask@@51 o_2@@63 f_4@@63) (> (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@@51) o_2@@63 f_4@@63) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18427_53 Mask@@51 o_2@@63 f_4@@63))
)))
(assert (forall ((Mask@@52 T@PolymorphicMapType_14561) (o_2@@64 T@Ref) (f_4@@64 T@Field_17954_17955) ) (! (= (HasDirectPerm_17927_17955 Mask@@52 o_2@@64 f_4@@64) (> (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@@52) o_2@@64 f_4@@64) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17927_17955 Mask@@52 o_2@@64 f_4@@64))
)))
(assert (forall ((Mask@@53 T@PolymorphicMapType_14561) (o_2@@65 T@Ref) (f_4@@65 T@Field_17939_17944) ) (! (= (HasDirectPerm_17927_48082 Mask@@53 o_2@@65 f_4@@65) (> (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@@53) o_2@@65 f_4@@65) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17927_48082 Mask@@53 o_2@@65 f_4@@65))
)))
(assert (forall ((Mask@@54 T@PolymorphicMapType_14561) (o_2@@66 T@Ref) (f_4@@66 T@Field_17927_1195) ) (! (= (HasDirectPerm_17927_1195 Mask@@54 o_2@@66 f_4@@66) (> (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@@54) o_2@@66 f_4@@66) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17927_1195 Mask@@54 o_2@@66 f_4@@66))
)))
(assert (forall ((Mask@@55 T@PolymorphicMapType_14561) (o_2@@67 T@Ref) (f_4@@67 T@Field_17927_14614) ) (! (= (HasDirectPerm_17927_14614 Mask@@55 o_2@@67 f_4@@67) (> (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@@55) o_2@@67 f_4@@67) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17927_14614 Mask@@55 o_2@@67 f_4@@67))
)))
(assert (forall ((Mask@@56 T@PolymorphicMapType_14561) (o_2@@68 T@Ref) (f_4@@68 T@Field_17927_53) ) (! (= (HasDirectPerm_17927_53 Mask@@56 o_2@@68 f_4@@68) (> (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@@56) o_2@@68 f_4@@68) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_17927_53 Mask@@56 o_2@@68 f_4@@68))
)))
(assert (forall ((Mask@@57 T@PolymorphicMapType_14561) (o_2@@69 T@Ref) (f_4@@69 T@Field_14600_17955) ) (! (= (HasDirectPerm_14600_17955 Mask@@57 o_2@@69 f_4@@69) (> (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@@57) o_2@@69 f_4@@69) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14600_17955 Mask@@57 o_2@@69 f_4@@69))
)))
(assert (forall ((Mask@@58 T@PolymorphicMapType_14561) (o_2@@70 T@Ref) (f_4@@70 T@Field_14600_17944) ) (! (= (HasDirectPerm_14600_46904 Mask@@58 o_2@@70 f_4@@70) (> (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@@58) o_2@@70 f_4@@70) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14600_46904 Mask@@58 o_2@@70 f_4@@70))
)))
(assert (forall ((Mask@@59 T@PolymorphicMapType_14561) (o_2@@71 T@Ref) (f_4@@71 T@Field_14600_1195) ) (! (= (HasDirectPerm_14600_1195 Mask@@59 o_2@@71 f_4@@71) (> (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@@59) o_2@@71 f_4@@71) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14600_1195 Mask@@59 o_2@@71 f_4@@71))
)))
(assert (forall ((Mask@@60 T@PolymorphicMapType_14561) (o_2@@72 T@Ref) (f_4@@72 T@Field_14613_14614) ) (! (= (HasDirectPerm_14600_14614 Mask@@60 o_2@@72 f_4@@72) (> (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@@60) o_2@@72 f_4@@72) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14600_14614 Mask@@60 o_2@@72 f_4@@72))
)))
(assert (forall ((Mask@@61 T@PolymorphicMapType_14561) (o_2@@73 T@Ref) (f_4@@73 T@Field_14600_53) ) (! (= (HasDirectPerm_14600_53 Mask@@61 o_2@@73 f_4@@73) (> (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@@61) o_2@@73 f_4@@73) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_14600_53 Mask@@61 o_2@@73 f_4@@73))
)))
(assert (forall ((arg1@@11 T@Ref) (arg2@@11 T@Ref) (arg3@@6 T@Ref) (arg4@@6 Bool) ) (! (IsWandField_8071_1411 (wand_1 arg1@@11 arg2@@11 arg3@@6 arg4@@6))
 :qid |stdinbpl.216:15|
 :skolemid |29|
 :pattern ( (wand_1 arg1@@11 arg2@@11 arg3@@6 arg4@@6))
)))
(assert (forall ((arg1@@12 T@Ref) (arg2@@12 T@Ref) (arg3@@7 T@Ref) (arg4@@7 Bool) ) (! (IsWandField_8082_8083 (|wand_1#ft| arg1@@12 arg2@@12 arg3@@7 arg4@@7))
 :qid |stdinbpl.220:15|
 :skolemid |30|
 :pattern ( (|wand_1#ft| arg1@@12 arg2@@12 arg3@@7 arg4@@7))
)))
(assert (forall ((p@@4 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@4 f_6) (ite (> p@@4 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@4 f_6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14540) (ExhaleHeap@@11 T@PolymorphicMapType_14540) (Mask@@62 T@PolymorphicMapType_14561) (o_34@@0 T@Ref) (f_40 T@Field_19862_19863) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (=> (HasDirectPerm_19862_17955 Mask@@62 o_34@@0 f_40) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@13) o_34@@0 f_40) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@11) o_34@@0 f_40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@62) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@11) o_34@@0 f_40))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14540) (ExhaleHeap@@12 T@PolymorphicMapType_14540) (Mask@@63 T@PolymorphicMapType_14561) (o_34@@1 T@Ref) (f_40@@0 T@Field_19875_19880) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (=> (HasDirectPerm_19862_51485 Mask@@63 o_34@@1 f_40@@0) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@14) o_34@@1 f_40@@0) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@12) o_34@@1 f_40@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@63) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@12) o_34@@1 f_40@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14540) (ExhaleHeap@@13 T@PolymorphicMapType_14540) (Mask@@64 T@PolymorphicMapType_14561) (o_34@@2 T@Ref) (f_40@@1 T@Field_19862_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (=> (HasDirectPerm_19862_1195 Mask@@64 o_34@@2 f_40@@1) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@15) o_34@@2 f_40@@1) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@13) o_34@@2 f_40@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@64) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@13) o_34@@2 f_40@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14540) (ExhaleHeap@@14 T@PolymorphicMapType_14540) (Mask@@65 T@PolymorphicMapType_14561) (o_34@@3 T@Ref) (f_40@@2 T@Field_19862_14614) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (=> (HasDirectPerm_19862_14614 Mask@@65 o_34@@3 f_40@@2) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@16) o_34@@3 f_40@@2) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@14) o_34@@3 f_40@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@65) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@14) o_34@@3 f_40@@2))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14540) (ExhaleHeap@@15 T@PolymorphicMapType_14540) (Mask@@66 T@PolymorphicMapType_14561) (o_34@@4 T@Ref) (f_40@@3 T@Field_19862_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (=> (HasDirectPerm_19862_53 Mask@@66 o_34@@4 f_40@@3) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@17) o_34@@4 f_40@@3) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@15) o_34@@4 f_40@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@66) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@15) o_34@@4 f_40@@3))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14540) (ExhaleHeap@@16 T@PolymorphicMapType_14540) (Mask@@67 T@PolymorphicMapType_14561) (o_34@@5 T@Ref) (f_40@@4 T@Field_19135_19136) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (=> (HasDirectPerm_19102_17955 Mask@@67 o_34@@5 f_40@@4) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@18) o_34@@5 f_40@@4) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@16) o_34@@5 f_40@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@67) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@16) o_34@@5 f_40@@4))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14540) (ExhaleHeap@@17 T@PolymorphicMapType_14540) (Mask@@68 T@PolymorphicMapType_14561) (o_34@@6 T@Ref) (f_40@@5 T@Field_19117_19122) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (=> (HasDirectPerm_19102_50350 Mask@@68 o_34@@6 f_40@@5) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@19) o_34@@6 f_40@@5) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@17) o_34@@6 f_40@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@68) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@17) o_34@@6 f_40@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14540) (ExhaleHeap@@18 T@PolymorphicMapType_14540) (Mask@@69 T@PolymorphicMapType_14561) (o_34@@7 T@Ref) (f_40@@6 T@Field_19102_1737) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (=> (HasDirectPerm_19102_1195 Mask@@69 o_34@@7 f_40@@6) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@20) o_34@@7 f_40@@6) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@18) o_34@@7 f_40@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@69) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@18) o_34@@7 f_40@@6))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14540) (ExhaleHeap@@19 T@PolymorphicMapType_14540) (Mask@@70 T@PolymorphicMapType_14561) (o_34@@8 T@Ref) (f_40@@7 T@Field_19102_14614) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (=> (HasDirectPerm_19102_14614 Mask@@70 o_34@@8 f_40@@7) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@21) o_34@@8 f_40@@7) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@19) o_34@@8 f_40@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@19 Mask@@70) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@19) o_34@@8 f_40@@7))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14540) (ExhaleHeap@@20 T@PolymorphicMapType_14540) (Mask@@71 T@PolymorphicMapType_14561) (o_34@@9 T@Ref) (f_40@@8 T@Field_19102_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (=> (HasDirectPerm_19102_53 Mask@@71 o_34@@9 f_40@@8) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@22) o_34@@9 f_40@@8) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@20) o_34@@9 f_40@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@20 Mask@@71) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@20) o_34@@9 f_40@@8))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14540) (ExhaleHeap@@21 T@PolymorphicMapType_14540) (Mask@@72 T@PolymorphicMapType_14561) (o_34@@10 T@Ref) (f_40@@9 T@Field_18458_18459) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (=> (HasDirectPerm_18427_17955 Mask@@72 o_34@@10 f_40@@9) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@23) o_34@@10 f_40@@9) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@21) o_34@@10 f_40@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@21 Mask@@72) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@21) o_34@@10 f_40@@9))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14540) (ExhaleHeap@@22 T@PolymorphicMapType_14540) (Mask@@73 T@PolymorphicMapType_14561) (o_34@@11 T@Ref) (f_40@@10 T@Field_18441_18446) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (=> (HasDirectPerm_18427_49216 Mask@@73 o_34@@11 f_40@@10) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@24) o_34@@11 f_40@@10) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@22) o_34@@11 f_40@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@22 Mask@@73) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@22) o_34@@11 f_40@@10))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14540) (ExhaleHeap@@23 T@PolymorphicMapType_14540) (Mask@@74 T@PolymorphicMapType_14561) (o_34@@12 T@Ref) (f_40@@11 T@Field_18427_1411) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (=> (HasDirectPerm_18427_1195 Mask@@74 o_34@@12 f_40@@11) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@25) o_34@@12 f_40@@11) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@23) o_34@@12 f_40@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@23 Mask@@74) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@23) o_34@@12 f_40@@11))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14540) (ExhaleHeap@@24 T@PolymorphicMapType_14540) (Mask@@75 T@PolymorphicMapType_14561) (o_34@@13 T@Ref) (f_40@@12 T@Field_18427_14614) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (=> (HasDirectPerm_18427_14614 Mask@@75 o_34@@13 f_40@@12) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@26) o_34@@13 f_40@@12) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@24) o_34@@13 f_40@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@24 Mask@@75) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@24) o_34@@13 f_40@@12))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14540) (ExhaleHeap@@25 T@PolymorphicMapType_14540) (Mask@@76 T@PolymorphicMapType_14561) (o_34@@14 T@Ref) (f_40@@13 T@Field_18427_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (=> (HasDirectPerm_18427_53 Mask@@76 o_34@@14 f_40@@13) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@27) o_34@@14 f_40@@13) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@25) o_34@@14 f_40@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@25 Mask@@76) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@25) o_34@@14 f_40@@13))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14540) (ExhaleHeap@@26 T@PolymorphicMapType_14540) (Mask@@77 T@PolymorphicMapType_14561) (o_34@@15 T@Ref) (f_40@@14 T@Field_17954_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (=> (HasDirectPerm_17927_17955 Mask@@77 o_34@@15 f_40@@14) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@28) o_34@@15 f_40@@14) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@26) o_34@@15 f_40@@14))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@26 Mask@@77) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@26) o_34@@15 f_40@@14))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14540) (ExhaleHeap@@27 T@PolymorphicMapType_14540) (Mask@@78 T@PolymorphicMapType_14561) (o_34@@16 T@Ref) (f_40@@15 T@Field_17939_17944) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (=> (HasDirectPerm_17927_48082 Mask@@78 o_34@@16 f_40@@15) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@29) o_34@@16 f_40@@15) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@27) o_34@@16 f_40@@15))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@27 Mask@@78) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@27) o_34@@16 f_40@@15))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14540) (ExhaleHeap@@28 T@PolymorphicMapType_14540) (Mask@@79 T@PolymorphicMapType_14561) (o_34@@17 T@Ref) (f_40@@16 T@Field_17927_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (=> (HasDirectPerm_17927_1195 Mask@@79 o_34@@17 f_40@@16) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@30) o_34@@17 f_40@@16) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@28) o_34@@17 f_40@@16))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@28 Mask@@79) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@28) o_34@@17 f_40@@16))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_14540) (ExhaleHeap@@29 T@PolymorphicMapType_14540) (Mask@@80 T@PolymorphicMapType_14561) (o_34@@18 T@Ref) (f_40@@17 T@Field_17927_14614) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (=> (HasDirectPerm_17927_14614 Mask@@80 o_34@@18 f_40@@17) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@31) o_34@@18 f_40@@17) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@29) o_34@@18 f_40@@17))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@29 Mask@@80) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@29) o_34@@18 f_40@@17))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_14540) (ExhaleHeap@@30 T@PolymorphicMapType_14540) (Mask@@81 T@PolymorphicMapType_14561) (o_34@@19 T@Ref) (f_40@@18 T@Field_17927_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (=> (HasDirectPerm_17927_53 Mask@@81 o_34@@19 f_40@@18) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@32) o_34@@19 f_40@@18) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@30) o_34@@19 f_40@@18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@30 Mask@@81) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@30) o_34@@19 f_40@@18))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_14540) (ExhaleHeap@@31 T@PolymorphicMapType_14540) (Mask@@82 T@PolymorphicMapType_14561) (o_34@@20 T@Ref) (f_40@@19 T@Field_14600_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (=> (HasDirectPerm_14600_17955 Mask@@82 o_34@@20 f_40@@19) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@33) o_34@@20 f_40@@19) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@31) o_34@@20 f_40@@19))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@31 Mask@@82) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@31) o_34@@20 f_40@@19))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_14540) (ExhaleHeap@@32 T@PolymorphicMapType_14540) (Mask@@83 T@PolymorphicMapType_14561) (o_34@@21 T@Ref) (f_40@@20 T@Field_14600_17944) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (=> (HasDirectPerm_14600_46904 Mask@@83 o_34@@21 f_40@@20) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@34) o_34@@21 f_40@@20) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@32) o_34@@21 f_40@@20))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@32 Mask@@83) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@32) o_34@@21 f_40@@20))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_14540) (ExhaleHeap@@33 T@PolymorphicMapType_14540) (Mask@@84 T@PolymorphicMapType_14561) (o_34@@22 T@Ref) (f_40@@21 T@Field_14600_1195) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (=> (HasDirectPerm_14600_1195 Mask@@84 o_34@@22 f_40@@21) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@35) o_34@@22 f_40@@21) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@33) o_34@@22 f_40@@21))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@33 Mask@@84) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@33) o_34@@22 f_40@@21))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_14540) (ExhaleHeap@@34 T@PolymorphicMapType_14540) (Mask@@85 T@PolymorphicMapType_14561) (o_34@@23 T@Ref) (f_40@@22 T@Field_14613_14614) ) (!  (=> (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (=> (HasDirectPerm_14600_14614 Mask@@85 o_34@@23 f_40@@22) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@36) o_34@@23 f_40@@22) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@34) o_34@@23 f_40@@22))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@36 ExhaleHeap@@34 Mask@@85) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@34) o_34@@23 f_40@@22))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_14540) (ExhaleHeap@@35 T@PolymorphicMapType_14540) (Mask@@86 T@PolymorphicMapType_14561) (o_34@@24 T@Ref) (f_40@@23 T@Field_14600_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (=> (HasDirectPerm_14600_53 Mask@@86 o_34@@24 f_40@@23) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@37) o_34@@24 f_40@@23) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@35) o_34@@24 f_40@@23))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@35 Mask@@86) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@35) o_34@@24 f_40@@23))
)))
(assert (forall ((arg1@@13 T@Ref) (arg2@@13 T@Ref) (arg3@@8 T@Ref) (arg4@@8 Bool) ) (!  (not (IsPredicateField_8071_1411 (wand_1 arg1@@13 arg2@@13 arg3@@8 arg4@@8)))
 :qid |stdinbpl.224:15|
 :skolemid |31|
 :pattern ( (wand_1 arg1@@13 arg2@@13 arg3@@8 arg4@@8))
)))
(assert (forall ((arg1@@14 T@Ref) (arg2@@14 T@Ref) (arg3@@9 T@Ref) (arg4@@9 Bool) ) (!  (not (IsPredicateField_8082_8083 (|wand_1#ft| arg1@@14 arg2@@14 arg3@@9 arg4@@9)))
 :qid |stdinbpl.228:15|
 :skolemid |32|
 :pattern ( (|wand_1#ft| arg1@@14 arg2@@14 arg3@@9 arg4@@9))
)))
(assert (forall ((arg1@@15 T@Ref) (arg2@@15 T@Ref) (arg3@@10 T@Ref) (arg4@@10 Bool) ) (! (= (|wand_1#sm| arg1@@15 arg2@@15 arg3@@10 arg4@@10) (WandMaskField_8082 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@10 arg4@@10)))
 :qid |stdinbpl.232:15|
 :skolemid |33|
 :pattern ( (WandMaskField_8082 (|wand_1#ft| arg1@@15 arg2@@15 arg3@@10 arg4@@10)))
)))
(assert (forall ((o_2@@74 T@Ref) (f_4@@74 T@Field_14600_17944) ) (! (= (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask) o_2@@74 f_4@@74) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask) o_2@@74 f_4@@74))
)))
(assert (forall ((o_2@@75 T@Ref) (f_4@@75 T@Field_14613_14614) ) (! (= (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) o_2@@75 f_4@@75) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) o_2@@75 f_4@@75))
)))
(assert (forall ((o_2@@76 T@Ref) (f_4@@76 T@Field_14600_53) ) (! (= (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) o_2@@76 f_4@@76) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) o_2@@76 f_4@@76))
)))
(assert (forall ((o_2@@77 T@Ref) (f_4@@77 T@Field_14600_1195) ) (! (= (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) o_2@@77 f_4@@77) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) o_2@@77 f_4@@77))
)))
(assert (forall ((o_2@@78 T@Ref) (f_4@@78 T@Field_14600_17955) ) (! (= (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) o_2@@78 f_4@@78) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) o_2@@78 f_4@@78))
)))
(assert (forall ((o_2@@79 T@Ref) (f_4@@79 T@Field_19117_19122) ) (! (= (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) o_2@@79 f_4@@79) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) o_2@@79 f_4@@79))
)))
(assert (forall ((o_2@@80 T@Ref) (f_4@@80 T@Field_19102_14614) ) (! (= (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) o_2@@80 f_4@@80) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) o_2@@80 f_4@@80))
)))
(assert (forall ((o_2@@81 T@Ref) (f_4@@81 T@Field_19102_53) ) (! (= (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) o_2@@81 f_4@@81) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) o_2@@81 f_4@@81))
)))
(assert (forall ((o_2@@82 T@Ref) (f_4@@82 T@Field_19102_1737) ) (! (= (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) o_2@@82 f_4@@82) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) o_2@@82 f_4@@82))
)))
(assert (forall ((o_2@@83 T@Ref) (f_4@@83 T@Field_19135_19136) ) (! (= (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) o_2@@83 f_4@@83) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) o_2@@83 f_4@@83))
)))
(assert (forall ((o_2@@84 T@Ref) (f_4@@84 T@Field_18441_18446) ) (! (= (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) o_2@@84 f_4@@84) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) o_2@@84 f_4@@84))
)))
(assert (forall ((o_2@@85 T@Ref) (f_4@@85 T@Field_18427_14614) ) (! (= (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) o_2@@85 f_4@@85) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) o_2@@85 f_4@@85))
)))
(assert (forall ((o_2@@86 T@Ref) (f_4@@86 T@Field_18427_53) ) (! (= (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) o_2@@86 f_4@@86) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) o_2@@86 f_4@@86))
)))
(assert (forall ((o_2@@87 T@Ref) (f_4@@87 T@Field_18427_1411) ) (! (= (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) o_2@@87 f_4@@87) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) o_2@@87 f_4@@87))
)))
(assert (forall ((o_2@@88 T@Ref) (f_4@@88 T@Field_18458_18459) ) (! (= (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) o_2@@88 f_4@@88) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) o_2@@88 f_4@@88))
)))
(assert (forall ((o_2@@89 T@Ref) (f_4@@89 T@Field_17939_17944) ) (! (= (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) o_2@@89 f_4@@89) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) o_2@@89 f_4@@89))
)))
(assert (forall ((o_2@@90 T@Ref) (f_4@@90 T@Field_17927_14614) ) (! (= (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) o_2@@90 f_4@@90) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) o_2@@90 f_4@@90))
)))
(assert (forall ((o_2@@91 T@Ref) (f_4@@91 T@Field_17927_53) ) (! (= (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) o_2@@91 f_4@@91) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) o_2@@91 f_4@@91))
)))
(assert (forall ((o_2@@92 T@Ref) (f_4@@92 T@Field_17927_1195) ) (! (= (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) o_2@@92 f_4@@92) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) o_2@@92 f_4@@92))
)))
(assert (forall ((o_2@@93 T@Ref) (f_4@@93 T@Field_17954_17955) ) (! (= (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) o_2@@93 f_4@@93) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) o_2@@93 f_4@@93))
)))
(assert (forall ((o_2@@94 T@Ref) (f_4@@94 T@Field_19875_19880) ) (! (= (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) o_2@@94 f_4@@94) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) o_2@@94 f_4@@94))
)))
(assert (forall ((o_2@@95 T@Ref) (f_4@@95 T@Field_19862_14614) ) (! (= (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) o_2@@95 f_4@@95) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) o_2@@95 f_4@@95))
)))
(assert (forall ((o_2@@96 T@Ref) (f_4@@96 T@Field_19862_53) ) (! (= (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) o_2@@96 f_4@@96) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) o_2@@96 f_4@@96))
)))
(assert (forall ((o_2@@97 T@Ref) (f_4@@97 T@Field_19862_1195) ) (! (= (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) o_2@@97 f_4@@97) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) o_2@@97 f_4@@97))
)))
(assert (forall ((o_2@@98 T@Ref) (f_4@@98 T@Field_19862_19863) ) (! (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) o_2@@98 f_4@@98) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) o_2@@98 f_4@@98))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14561) (SummandMask1 T@PolymorphicMapType_14561) (SummandMask2 T@PolymorphicMapType_14561) (o_2@@99 T@Ref) (f_4@@99 T@Field_14600_17944) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ResultMask) o_2@@99 f_4@@99) (+ (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| SummandMask1) o_2@@99 f_4@@99) (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| SummandMask2) o_2@@99 f_4@@99))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ResultMask) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| SummandMask1) o_2@@99 f_4@@99))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| SummandMask2) o_2@@99 f_4@@99))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14561) (SummandMask1@@0 T@PolymorphicMapType_14561) (SummandMask2@@0 T@PolymorphicMapType_14561) (o_2@@100 T@Ref) (f_4@@100 T@Field_14613_14614) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ResultMask@@0) o_2@@100 f_4@@100) (+ (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| SummandMask1@@0) o_2@@100 f_4@@100) (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| SummandMask2@@0) o_2@@100 f_4@@100))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ResultMask@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| SummandMask1@@0) o_2@@100 f_4@@100))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| SummandMask2@@0) o_2@@100 f_4@@100))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14561) (SummandMask1@@1 T@PolymorphicMapType_14561) (SummandMask2@@1 T@PolymorphicMapType_14561) (o_2@@101 T@Ref) (f_4@@101 T@Field_14600_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ResultMask@@1) o_2@@101 f_4@@101) (+ (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| SummandMask1@@1) o_2@@101 f_4@@101) (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| SummandMask2@@1) o_2@@101 f_4@@101))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ResultMask@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| SummandMask1@@1) o_2@@101 f_4@@101))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| SummandMask2@@1) o_2@@101 f_4@@101))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14561) (SummandMask1@@2 T@PolymorphicMapType_14561) (SummandMask2@@2 T@PolymorphicMapType_14561) (o_2@@102 T@Ref) (f_4@@102 T@Field_14600_1195) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ResultMask@@2) o_2@@102 f_4@@102) (+ (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| SummandMask1@@2) o_2@@102 f_4@@102) (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| SummandMask2@@2) o_2@@102 f_4@@102))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ResultMask@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| SummandMask1@@2) o_2@@102 f_4@@102))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| SummandMask2@@2) o_2@@102 f_4@@102))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14561) (SummandMask1@@3 T@PolymorphicMapType_14561) (SummandMask2@@3 T@PolymorphicMapType_14561) (o_2@@103 T@Ref) (f_4@@103 T@Field_14600_17955) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ResultMask@@3) o_2@@103 f_4@@103) (+ (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| SummandMask1@@3) o_2@@103 f_4@@103) (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| SummandMask2@@3) o_2@@103 f_4@@103))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ResultMask@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| SummandMask1@@3) o_2@@103 f_4@@103))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| SummandMask2@@3) o_2@@103 f_4@@103))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14561) (SummandMask1@@4 T@PolymorphicMapType_14561) (SummandMask2@@4 T@PolymorphicMapType_14561) (o_2@@104 T@Ref) (f_4@@104 T@Field_19117_19122) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ResultMask@@4) o_2@@104 f_4@@104) (+ (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| SummandMask1@@4) o_2@@104 f_4@@104) (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| SummandMask2@@4) o_2@@104 f_4@@104))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ResultMask@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| SummandMask1@@4) o_2@@104 f_4@@104))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| SummandMask2@@4) o_2@@104 f_4@@104))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14561) (SummandMask1@@5 T@PolymorphicMapType_14561) (SummandMask2@@5 T@PolymorphicMapType_14561) (o_2@@105 T@Ref) (f_4@@105 T@Field_19102_14614) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ResultMask@@5) o_2@@105 f_4@@105) (+ (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| SummandMask1@@5) o_2@@105 f_4@@105) (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| SummandMask2@@5) o_2@@105 f_4@@105))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ResultMask@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| SummandMask1@@5) o_2@@105 f_4@@105))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| SummandMask2@@5) o_2@@105 f_4@@105))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14561) (SummandMask1@@6 T@PolymorphicMapType_14561) (SummandMask2@@6 T@PolymorphicMapType_14561) (o_2@@106 T@Ref) (f_4@@106 T@Field_19102_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ResultMask@@6) o_2@@106 f_4@@106) (+ (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| SummandMask1@@6) o_2@@106 f_4@@106) (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| SummandMask2@@6) o_2@@106 f_4@@106))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ResultMask@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| SummandMask1@@6) o_2@@106 f_4@@106))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| SummandMask2@@6) o_2@@106 f_4@@106))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14561) (SummandMask1@@7 T@PolymorphicMapType_14561) (SummandMask2@@7 T@PolymorphicMapType_14561) (o_2@@107 T@Ref) (f_4@@107 T@Field_19102_1737) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ResultMask@@7) o_2@@107 f_4@@107) (+ (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| SummandMask1@@7) o_2@@107 f_4@@107) (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| SummandMask2@@7) o_2@@107 f_4@@107))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ResultMask@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| SummandMask1@@7) o_2@@107 f_4@@107))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| SummandMask2@@7) o_2@@107 f_4@@107))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14561) (SummandMask1@@8 T@PolymorphicMapType_14561) (SummandMask2@@8 T@PolymorphicMapType_14561) (o_2@@108 T@Ref) (f_4@@108 T@Field_19135_19136) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ResultMask@@8) o_2@@108 f_4@@108) (+ (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| SummandMask1@@8) o_2@@108 f_4@@108) (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| SummandMask2@@8) o_2@@108 f_4@@108))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ResultMask@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| SummandMask1@@8) o_2@@108 f_4@@108))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| SummandMask2@@8) o_2@@108 f_4@@108))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_14561) (SummandMask1@@9 T@PolymorphicMapType_14561) (SummandMask2@@9 T@PolymorphicMapType_14561) (o_2@@109 T@Ref) (f_4@@109 T@Field_18441_18446) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ResultMask@@9) o_2@@109 f_4@@109) (+ (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| SummandMask1@@9) o_2@@109 f_4@@109) (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| SummandMask2@@9) o_2@@109 f_4@@109))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ResultMask@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| SummandMask1@@9) o_2@@109 f_4@@109))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| SummandMask2@@9) o_2@@109 f_4@@109))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_14561) (SummandMask1@@10 T@PolymorphicMapType_14561) (SummandMask2@@10 T@PolymorphicMapType_14561) (o_2@@110 T@Ref) (f_4@@110 T@Field_18427_14614) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ResultMask@@10) o_2@@110 f_4@@110) (+ (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| SummandMask1@@10) o_2@@110 f_4@@110) (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| SummandMask2@@10) o_2@@110 f_4@@110))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ResultMask@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| SummandMask1@@10) o_2@@110 f_4@@110))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| SummandMask2@@10) o_2@@110 f_4@@110))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_14561) (SummandMask1@@11 T@PolymorphicMapType_14561) (SummandMask2@@11 T@PolymorphicMapType_14561) (o_2@@111 T@Ref) (f_4@@111 T@Field_18427_53) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ResultMask@@11) o_2@@111 f_4@@111) (+ (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| SummandMask1@@11) o_2@@111 f_4@@111) (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| SummandMask2@@11) o_2@@111 f_4@@111))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ResultMask@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| SummandMask1@@11) o_2@@111 f_4@@111))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| SummandMask2@@11) o_2@@111 f_4@@111))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_14561) (SummandMask1@@12 T@PolymorphicMapType_14561) (SummandMask2@@12 T@PolymorphicMapType_14561) (o_2@@112 T@Ref) (f_4@@112 T@Field_18427_1411) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ResultMask@@12) o_2@@112 f_4@@112) (+ (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| SummandMask1@@12) o_2@@112 f_4@@112) (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| SummandMask2@@12) o_2@@112 f_4@@112))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ResultMask@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| SummandMask1@@12) o_2@@112 f_4@@112))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| SummandMask2@@12) o_2@@112 f_4@@112))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_14561) (SummandMask1@@13 T@PolymorphicMapType_14561) (SummandMask2@@13 T@PolymorphicMapType_14561) (o_2@@113 T@Ref) (f_4@@113 T@Field_18458_18459) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ResultMask@@13) o_2@@113 f_4@@113) (+ (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| SummandMask1@@13) o_2@@113 f_4@@113) (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| SummandMask2@@13) o_2@@113 f_4@@113))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ResultMask@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| SummandMask1@@13) o_2@@113 f_4@@113))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| SummandMask2@@13) o_2@@113 f_4@@113))
)))
(assert (forall ((ResultMask@@14 T@PolymorphicMapType_14561) (SummandMask1@@14 T@PolymorphicMapType_14561) (SummandMask2@@14 T@PolymorphicMapType_14561) (o_2@@114 T@Ref) (f_4@@114 T@Field_17939_17944) ) (!  (=> (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (= (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ResultMask@@14) o_2@@114 f_4@@114) (+ (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| SummandMask1@@14) o_2@@114 f_4@@114) (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| SummandMask2@@14) o_2@@114 f_4@@114))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ResultMask@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| SummandMask1@@14) o_2@@114 f_4@@114))
 :pattern ( (sumMask ResultMask@@14 SummandMask1@@14 SummandMask2@@14) (select (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| SummandMask2@@14) o_2@@114 f_4@@114))
)))
(assert (forall ((ResultMask@@15 T@PolymorphicMapType_14561) (SummandMask1@@15 T@PolymorphicMapType_14561) (SummandMask2@@15 T@PolymorphicMapType_14561) (o_2@@115 T@Ref) (f_4@@115 T@Field_17927_14614) ) (!  (=> (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (= (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ResultMask@@15) o_2@@115 f_4@@115) (+ (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| SummandMask1@@15) o_2@@115 f_4@@115) (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| SummandMask2@@15) o_2@@115 f_4@@115))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ResultMask@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| SummandMask1@@15) o_2@@115 f_4@@115))
 :pattern ( (sumMask ResultMask@@15 SummandMask1@@15 SummandMask2@@15) (select (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| SummandMask2@@15) o_2@@115 f_4@@115))
)))
(assert (forall ((ResultMask@@16 T@PolymorphicMapType_14561) (SummandMask1@@16 T@PolymorphicMapType_14561) (SummandMask2@@16 T@PolymorphicMapType_14561) (o_2@@116 T@Ref) (f_4@@116 T@Field_17927_53) ) (!  (=> (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (= (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ResultMask@@16) o_2@@116 f_4@@116) (+ (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| SummandMask1@@16) o_2@@116 f_4@@116) (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| SummandMask2@@16) o_2@@116 f_4@@116))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ResultMask@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| SummandMask1@@16) o_2@@116 f_4@@116))
 :pattern ( (sumMask ResultMask@@16 SummandMask1@@16 SummandMask2@@16) (select (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| SummandMask2@@16) o_2@@116 f_4@@116))
)))
(assert (forall ((ResultMask@@17 T@PolymorphicMapType_14561) (SummandMask1@@17 T@PolymorphicMapType_14561) (SummandMask2@@17 T@PolymorphicMapType_14561) (o_2@@117 T@Ref) (f_4@@117 T@Field_17927_1195) ) (!  (=> (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (= (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ResultMask@@17) o_2@@117 f_4@@117) (+ (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| SummandMask1@@17) o_2@@117 f_4@@117) (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| SummandMask2@@17) o_2@@117 f_4@@117))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ResultMask@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| SummandMask1@@17) o_2@@117 f_4@@117))
 :pattern ( (sumMask ResultMask@@17 SummandMask1@@17 SummandMask2@@17) (select (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| SummandMask2@@17) o_2@@117 f_4@@117))
)))
(assert (forall ((ResultMask@@18 T@PolymorphicMapType_14561) (SummandMask1@@18 T@PolymorphicMapType_14561) (SummandMask2@@18 T@PolymorphicMapType_14561) (o_2@@118 T@Ref) (f_4@@118 T@Field_17954_17955) ) (!  (=> (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (= (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ResultMask@@18) o_2@@118 f_4@@118) (+ (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| SummandMask1@@18) o_2@@118 f_4@@118) (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| SummandMask2@@18) o_2@@118 f_4@@118))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ResultMask@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| SummandMask1@@18) o_2@@118 f_4@@118))
 :pattern ( (sumMask ResultMask@@18 SummandMask1@@18 SummandMask2@@18) (select (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| SummandMask2@@18) o_2@@118 f_4@@118))
)))
(assert (forall ((ResultMask@@19 T@PolymorphicMapType_14561) (SummandMask1@@19 T@PolymorphicMapType_14561) (SummandMask2@@19 T@PolymorphicMapType_14561) (o_2@@119 T@Ref) (f_4@@119 T@Field_19875_19880) ) (!  (=> (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (= (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ResultMask@@19) o_2@@119 f_4@@119) (+ (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| SummandMask1@@19) o_2@@119 f_4@@119) (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| SummandMask2@@19) o_2@@119 f_4@@119))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ResultMask@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| SummandMask1@@19) o_2@@119 f_4@@119))
 :pattern ( (sumMask ResultMask@@19 SummandMask1@@19 SummandMask2@@19) (select (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| SummandMask2@@19) o_2@@119 f_4@@119))
)))
(assert (forall ((ResultMask@@20 T@PolymorphicMapType_14561) (SummandMask1@@20 T@PolymorphicMapType_14561) (SummandMask2@@20 T@PolymorphicMapType_14561) (o_2@@120 T@Ref) (f_4@@120 T@Field_19862_14614) ) (!  (=> (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (= (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ResultMask@@20) o_2@@120 f_4@@120) (+ (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| SummandMask1@@20) o_2@@120 f_4@@120) (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| SummandMask2@@20) o_2@@120 f_4@@120))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ResultMask@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| SummandMask1@@20) o_2@@120 f_4@@120))
 :pattern ( (sumMask ResultMask@@20 SummandMask1@@20 SummandMask2@@20) (select (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| SummandMask2@@20) o_2@@120 f_4@@120))
)))
(assert (forall ((ResultMask@@21 T@PolymorphicMapType_14561) (SummandMask1@@21 T@PolymorphicMapType_14561) (SummandMask2@@21 T@PolymorphicMapType_14561) (o_2@@121 T@Ref) (f_4@@121 T@Field_19862_53) ) (!  (=> (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (= (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ResultMask@@21) o_2@@121 f_4@@121) (+ (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| SummandMask1@@21) o_2@@121 f_4@@121) (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| SummandMask2@@21) o_2@@121 f_4@@121))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ResultMask@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| SummandMask1@@21) o_2@@121 f_4@@121))
 :pattern ( (sumMask ResultMask@@21 SummandMask1@@21 SummandMask2@@21) (select (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| SummandMask2@@21) o_2@@121 f_4@@121))
)))
(assert (forall ((ResultMask@@22 T@PolymorphicMapType_14561) (SummandMask1@@22 T@PolymorphicMapType_14561) (SummandMask2@@22 T@PolymorphicMapType_14561) (o_2@@122 T@Ref) (f_4@@122 T@Field_19862_1195) ) (!  (=> (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (= (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ResultMask@@22) o_2@@122 f_4@@122) (+ (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| SummandMask1@@22) o_2@@122 f_4@@122) (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| SummandMask2@@22) o_2@@122 f_4@@122))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ResultMask@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| SummandMask1@@22) o_2@@122 f_4@@122))
 :pattern ( (sumMask ResultMask@@22 SummandMask1@@22 SummandMask2@@22) (select (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| SummandMask2@@22) o_2@@122 f_4@@122))
)))
(assert (forall ((ResultMask@@23 T@PolymorphicMapType_14561) (SummandMask1@@23 T@PolymorphicMapType_14561) (SummandMask2@@23 T@PolymorphicMapType_14561) (o_2@@123 T@Ref) (f_4@@123 T@Field_19862_19863) ) (!  (=> (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ResultMask@@23) o_2@@123 f_4@@123) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| SummandMask1@@23) o_2@@123 f_4@@123) (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| SummandMask2@@23) o_2@@123 f_4@@123))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ResultMask@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| SummandMask1@@23) o_2@@123 f_4@@123))
 :pattern ( (sumMask ResultMask@@23 SummandMask1@@23 SummandMask2@@23) (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| SummandMask2@@23) o_2@@123 f_4@@123))
)))
(assert (forall ((arg1@@16 T@Ref) (arg2@@16 T@Ref) (arg3@@11 T@Ref) (arg4@@11 T@Ref) (arg5@@5 Bool) ) (! (= (|wand_2#sm| arg1@@16 arg2@@16 arg3@@11 arg4@@11 arg5@@5) (WandMaskField_8126 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@11 arg4@@11 arg5@@5)))
 :qid |stdinbpl.264:15|
 :skolemid |40|
 :pattern ( (WandMaskField_8126 (|wand_2#ft| arg1@@16 arg2@@16 arg3@@11 arg4@@11 arg5@@5)))
)))
(assert (forall ((arg1@@17 T@Ref) (arg2@@17 Bool) ) (! (= (getPredWandId_8050_1195 (wand arg1@@17 arg2@@17)) 1)
 :qid |stdinbpl.204:15|
 :skolemid |27|
 :pattern ( (wand arg1@@17 arg2@@17))
)))
(assert (forall ((x@@3 T@Ref) ) (! (= (getPredWandId_8162_8163 (P x@@3)) 0)
 :qid |stdinbpl.292:15|
 :skolemid |45|
 :pattern ( (P x@@3))
)))
(assert (forall ((arg1@@18 T@Ref) (arg2@@18 Bool) ) (! (= (|wand#sm| arg1@@18 arg2@@18) (WandMaskField_8057 (|wand#ft| arg1@@18 arg2@@18)))
 :qid |stdinbpl.200:15|
 :skolemid |26|
 :pattern ( (WandMaskField_8057 (|wand#ft| arg1@@18 arg2@@18)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_14540) (o_3 T@Ref) (f_35 T@Field_19102_1737) (v Int) ) (! (succHeap Heap@@38 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@38) (store (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@38) o_3 f_35 v) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@38) (store (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@38) o_3 f_35 v) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@38) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_14540) (o_3@@0 T@Ref) (f_35@@0 T@Field_19117_19122) (v@@0 T@PolymorphicMapType_15089) ) (! (succHeap Heap@@39 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@39) (store (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@39) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@39) (store (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@39) o_3@@0 f_35@@0 v@@0) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@39) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_14540) (o_3@@1 T@Ref) (f_35@@1 T@Field_19135_19136) (v@@1 T@FrameType) ) (! (succHeap Heap@@40 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@40) (store (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@40) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@40) (store (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@40) o_3@@1 f_35@@1 v@@1) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@40) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_14540) (o_3@@2 T@Ref) (f_35@@2 T@Field_19102_14614) (v@@2 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@41) (store (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@41) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@41) (store (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@41) o_3@@2 f_35@@2 v@@2) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@41) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_14540) (o_3@@3 T@Ref) (f_35@@3 T@Field_19102_53) (v@@3 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@42) (store (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@42) o_3@@3 f_35@@3 v@@3) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@42) (store (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@42) o_3@@3 f_35@@3 v@@3) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@42) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_14540) (o_3@@4 T@Ref) (f_35@@4 T@Field_18427_1411) (v@@4 Int) ) (! (succHeap Heap@@43 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@43) (store (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@43) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@43) (store (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@43) o_3@@4 f_35@@4 v@@4) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@43) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_14540) (o_3@@5 T@Ref) (f_35@@5 T@Field_18441_18446) (v@@5 T@PolymorphicMapType_15089) ) (! (succHeap Heap@@44 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@44) (store (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@44) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@44) (store (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@44) o_3@@5 f_35@@5 v@@5) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@44) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_14540) (o_3@@6 T@Ref) (f_35@@6 T@Field_18458_18459) (v@@6 T@FrameType) ) (! (succHeap Heap@@45 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@45) (store (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@45) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@45) (store (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@45) o_3@@6 f_35@@6 v@@6) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@45) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_14540) (o_3@@7 T@Ref) (f_35@@7 T@Field_18427_14614) (v@@7 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@46) (store (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@46) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@46) (store (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@46) o_3@@7 f_35@@7 v@@7) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@46) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_14540) (o_3@@8 T@Ref) (f_35@@8 T@Field_18427_53) (v@@8 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@47) (store (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@47) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@47) (store (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@47) o_3@@8 f_35@@8 v@@8) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@47) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_14540) (o_3@@9 T@Ref) (f_35@@9 T@Field_17927_1195) (v@@9 Int) ) (! (succHeap Heap@@48 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@48) (store (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@48) o_3@@9 f_35@@9 v@@9) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@48) (store (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@48) o_3@@9 f_35@@9 v@@9) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@48) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_14540) (o_3@@10 T@Ref) (f_35@@10 T@Field_17939_17944) (v@@10 T@PolymorphicMapType_15089) ) (! (succHeap Heap@@49 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@49) (store (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@49) o_3@@10 f_35@@10 v@@10) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@49) (store (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@49) o_3@@10 f_35@@10 v@@10) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@49) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_14540) (o_3@@11 T@Ref) (f_35@@11 T@Field_17954_17955) (v@@11 T@FrameType) ) (! (succHeap Heap@@50 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@50) (store (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@50) o_3@@11 f_35@@11 v@@11) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@50) (store (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@50) o_3@@11 f_35@@11 v@@11) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@50) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_14540) (o_3@@12 T@Ref) (f_35@@12 T@Field_17927_14614) (v@@12 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@51) (store (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@51) o_3@@12 f_35@@12 v@@12) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@51) (store (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@51) o_3@@12 f_35@@12 v@@12) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@51) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_14540) (o_3@@13 T@Ref) (f_35@@13 T@Field_17927_53) (v@@13 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@52) (store (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@52) o_3@@13 f_35@@13 v@@13) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@52) (store (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@52) o_3@@13 f_35@@13 v@@13) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@52) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@52)))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_14540) (o_3@@14 T@Ref) (f_35@@14 T@Field_19862_1195) (v@@14 Int) ) (! (succHeap Heap@@53 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@53) (store (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@53) o_3@@14 f_35@@14 v@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@53) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@53) (store (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@53) o_3@@14 f_35@@14 v@@14)))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_14540) (o_3@@15 T@Ref) (f_35@@15 T@Field_19875_19880) (v@@15 T@PolymorphicMapType_15089) ) (! (succHeap Heap@@54 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@54) (store (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@54) o_3@@15 f_35@@15 v@@15) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@54)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@54) (store (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@54) o_3@@15 f_35@@15 v@@15) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@54) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@54)))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_14540) (o_3@@16 T@Ref) (f_35@@16 T@Field_19862_19863) (v@@16 T@FrameType) ) (! (succHeap Heap@@55 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@55) (store (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@55) o_3@@16 f_35@@16 v@@16) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@55)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@55) (store (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@55) o_3@@16 f_35@@16 v@@16) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@55) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@55)))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_14540) (o_3@@17 T@Ref) (f_35@@17 T@Field_19862_14614) (v@@17 T@Ref) ) (! (succHeap Heap@@56 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@56) (store (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@56) o_3@@17 f_35@@17 v@@17) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@56)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@56) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@56) (store (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@56) o_3@@17 f_35@@17 v@@17) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@56)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_14540) (o_3@@18 T@Ref) (f_35@@18 T@Field_19862_53) (v@@18 Bool) ) (! (succHeap Heap@@57 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@57) (store (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@57) o_3@@18 f_35@@18 v@@18) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@57) (store (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@57) o_3@@18 f_35@@18 v@@18) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@57) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_14540) (o_3@@19 T@Ref) (f_35@@19 T@Field_14600_1195) (v@@19 Int) ) (! (succHeap Heap@@58 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@58) (store (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@58) o_3@@19 f_35@@19 v@@19) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@58) (store (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@58) o_3@@19 f_35@@19 v@@19) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@58) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_14540) (o_3@@20 T@Ref) (f_35@@20 T@Field_14600_17944) (v@@20 T@PolymorphicMapType_15089) ) (! (succHeap Heap@@59 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@59) (store (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@59) o_3@@20 f_35@@20 v@@20) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@59) (store (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@59) o_3@@20 f_35@@20 v@@20) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@59) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@59)))
)))
(assert (forall ((Heap@@60 T@PolymorphicMapType_14540) (o_3@@21 T@Ref) (f_35@@21 T@Field_14600_17955) (v@@21 T@FrameType) ) (! (succHeap Heap@@60 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@60) (store (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@60) o_3@@21 f_35@@21 v@@21) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@60)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@60) (store (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@60) o_3@@21 f_35@@21 v@@21) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@60) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@60)))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_14540) (o_3@@22 T@Ref) (f_35@@22 T@Field_14613_14614) (v@@22 T@Ref) ) (! (succHeap Heap@@61 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@61) (store (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@61) o_3@@22 f_35@@22 v@@22) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@61)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@61) (store (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@61) o_3@@22 f_35@@22 v@@22) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@61) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@61)))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_14540) (o_3@@23 T@Ref) (f_35@@23 T@Field_14600_53) (v@@23 Bool) ) (! (succHeap Heap@@62 (PolymorphicMapType_14540 (store (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@62) o_3@@23 f_35@@23 v@@23) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@62)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14540 (store (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@62) o_3@@23 f_35@@23 v@@23) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@62) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@62)))
)))
(assert (forall ((x@@4 T@Ref) ) (! (= (PredicateMaskField_8162 (P x@@4)) (|P#sm| x@@4))
 :qid |stdinbpl.284:15|
 :skolemid |43|
 :pattern ( (PredicateMaskField_8162 (P x@@4)))
)))
(assert (forall ((o_3@@24 T@Ref) (f_8 T@Field_14613_14614) (Heap@@63 T@PolymorphicMapType_14540) ) (!  (=> (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@63) o_3@@24 $allocated) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@63) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@63) o_3@@24 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@63) o_3@@24 f_8))
)))
(assert (forall ((p@@5 T@Field_19862_19863) (v_1@@4 T@FrameType) (q T@Field_19862_19863) (w@@4 T@FrameType) (r T@Field_19862_19863) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19862 p@@5 v_1@@4 q w@@4) (InsidePredicate_19862_19862 q w@@4 r u)) (InsidePredicate_19862_19862 p@@5 v_1@@4 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19862 p@@5 v_1@@4 q w@@4) (InsidePredicate_19862_19862 q w@@4 r u))
)))
(assert (forall ((p@@6 T@Field_19862_19863) (v_1@@5 T@FrameType) (q@@0 T@Field_19862_19863) (w@@5 T@FrameType) (r@@0 T@Field_19135_19136) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19862 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_19862_19102 q@@0 w@@5 r@@0 u@@0)) (InsidePredicate_19862_19102 p@@6 v_1@@5 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19862 p@@6 v_1@@5 q@@0 w@@5) (InsidePredicate_19862_19102 q@@0 w@@5 r@@0 u@@0))
)))
(assert (forall ((p@@7 T@Field_19862_19863) (v_1@@6 T@FrameType) (q@@1 T@Field_19862_19863) (w@@6 T@FrameType) (r@@1 T@Field_18458_18459) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19862 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_19862_18427 q@@1 w@@6 r@@1 u@@1)) (InsidePredicate_19862_18427 p@@7 v_1@@6 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19862 p@@7 v_1@@6 q@@1 w@@6) (InsidePredicate_19862_18427 q@@1 w@@6 r@@1 u@@1))
)))
(assert (forall ((p@@8 T@Field_19862_19863) (v_1@@7 T@FrameType) (q@@2 T@Field_19862_19863) (w@@7 T@FrameType) (r@@2 T@Field_17954_17955) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19862 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_19862_17927 q@@2 w@@7 r@@2 u@@2)) (InsidePredicate_19862_17927 p@@8 v_1@@7 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19862 p@@8 v_1@@7 q@@2 w@@7) (InsidePredicate_19862_17927 q@@2 w@@7 r@@2 u@@2))
)))
(assert (forall ((p@@9 T@Field_19862_19863) (v_1@@8 T@FrameType) (q@@3 T@Field_19862_19863) (w@@8 T@FrameType) (r@@3 T@Field_14600_17955) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19862 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_19862_14600 q@@3 w@@8 r@@3 u@@3)) (InsidePredicate_19862_14600 p@@9 v_1@@8 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19862 p@@9 v_1@@8 q@@3 w@@8) (InsidePredicate_19862_14600 q@@3 w@@8 r@@3 u@@3))
)))
(assert (forall ((p@@10 T@Field_19862_19863) (v_1@@9 T@FrameType) (q@@4 T@Field_19135_19136) (w@@9 T@FrameType) (r@@4 T@Field_19862_19863) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19102 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_19102_19862 q@@4 w@@9 r@@4 u@@4)) (InsidePredicate_19862_19862 p@@10 v_1@@9 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19102 p@@10 v_1@@9 q@@4 w@@9) (InsidePredicate_19102_19862 q@@4 w@@9 r@@4 u@@4))
)))
(assert (forall ((p@@11 T@Field_19862_19863) (v_1@@10 T@FrameType) (q@@5 T@Field_19135_19136) (w@@10 T@FrameType) (r@@5 T@Field_19135_19136) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19102 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_19102_19102 q@@5 w@@10 r@@5 u@@5)) (InsidePredicate_19862_19102 p@@11 v_1@@10 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19102 p@@11 v_1@@10 q@@5 w@@10) (InsidePredicate_19102_19102 q@@5 w@@10 r@@5 u@@5))
)))
(assert (forall ((p@@12 T@Field_19862_19863) (v_1@@11 T@FrameType) (q@@6 T@Field_19135_19136) (w@@11 T@FrameType) (r@@6 T@Field_18458_18459) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19102 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_19102_18427 q@@6 w@@11 r@@6 u@@6)) (InsidePredicate_19862_18427 p@@12 v_1@@11 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19102 p@@12 v_1@@11 q@@6 w@@11) (InsidePredicate_19102_18427 q@@6 w@@11 r@@6 u@@6))
)))
(assert (forall ((p@@13 T@Field_19862_19863) (v_1@@12 T@FrameType) (q@@7 T@Field_19135_19136) (w@@12 T@FrameType) (r@@7 T@Field_17954_17955) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19102 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_19102_17927 q@@7 w@@12 r@@7 u@@7)) (InsidePredicate_19862_17927 p@@13 v_1@@12 r@@7 u@@7))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19102 p@@13 v_1@@12 q@@7 w@@12) (InsidePredicate_19102_17927 q@@7 w@@12 r@@7 u@@7))
)))
(assert (forall ((p@@14 T@Field_19862_19863) (v_1@@13 T@FrameType) (q@@8 T@Field_19135_19136) (w@@13 T@FrameType) (r@@8 T@Field_14600_17955) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_19102 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_19102_14600 q@@8 w@@13 r@@8 u@@8)) (InsidePredicate_19862_14600 p@@14 v_1@@13 r@@8 u@@8))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_19102 p@@14 v_1@@13 q@@8 w@@13) (InsidePredicate_19102_14600 q@@8 w@@13 r@@8 u@@8))
)))
(assert (forall ((p@@15 T@Field_19862_19863) (v_1@@14 T@FrameType) (q@@9 T@Field_18458_18459) (w@@14 T@FrameType) (r@@9 T@Field_19862_19863) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_18427 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_18427_19862 q@@9 w@@14 r@@9 u@@9)) (InsidePredicate_19862_19862 p@@15 v_1@@14 r@@9 u@@9))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_18427 p@@15 v_1@@14 q@@9 w@@14) (InsidePredicate_18427_19862 q@@9 w@@14 r@@9 u@@9))
)))
(assert (forall ((p@@16 T@Field_19862_19863) (v_1@@15 T@FrameType) (q@@10 T@Field_18458_18459) (w@@15 T@FrameType) (r@@10 T@Field_19135_19136) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_18427 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_18427_19102 q@@10 w@@15 r@@10 u@@10)) (InsidePredicate_19862_19102 p@@16 v_1@@15 r@@10 u@@10))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_18427 p@@16 v_1@@15 q@@10 w@@15) (InsidePredicate_18427_19102 q@@10 w@@15 r@@10 u@@10))
)))
(assert (forall ((p@@17 T@Field_19862_19863) (v_1@@16 T@FrameType) (q@@11 T@Field_18458_18459) (w@@16 T@FrameType) (r@@11 T@Field_18458_18459) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_18427 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_18427_18427 q@@11 w@@16 r@@11 u@@11)) (InsidePredicate_19862_18427 p@@17 v_1@@16 r@@11 u@@11))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_18427 p@@17 v_1@@16 q@@11 w@@16) (InsidePredicate_18427_18427 q@@11 w@@16 r@@11 u@@11))
)))
(assert (forall ((p@@18 T@Field_19862_19863) (v_1@@17 T@FrameType) (q@@12 T@Field_18458_18459) (w@@17 T@FrameType) (r@@12 T@Field_17954_17955) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_18427 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_18427_17927 q@@12 w@@17 r@@12 u@@12)) (InsidePredicate_19862_17927 p@@18 v_1@@17 r@@12 u@@12))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_18427 p@@18 v_1@@17 q@@12 w@@17) (InsidePredicate_18427_17927 q@@12 w@@17 r@@12 u@@12))
)))
(assert (forall ((p@@19 T@Field_19862_19863) (v_1@@18 T@FrameType) (q@@13 T@Field_18458_18459) (w@@18 T@FrameType) (r@@13 T@Field_14600_17955) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_18427 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_18427_14600 q@@13 w@@18 r@@13 u@@13)) (InsidePredicate_19862_14600 p@@19 v_1@@18 r@@13 u@@13))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_18427 p@@19 v_1@@18 q@@13 w@@18) (InsidePredicate_18427_14600 q@@13 w@@18 r@@13 u@@13))
)))
(assert (forall ((p@@20 T@Field_19862_19863) (v_1@@19 T@FrameType) (q@@14 T@Field_17954_17955) (w@@19 T@FrameType) (r@@14 T@Field_19862_19863) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_17927 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_17927_19862 q@@14 w@@19 r@@14 u@@14)) (InsidePredicate_19862_19862 p@@20 v_1@@19 r@@14 u@@14))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_17927 p@@20 v_1@@19 q@@14 w@@19) (InsidePredicate_17927_19862 q@@14 w@@19 r@@14 u@@14))
)))
(assert (forall ((p@@21 T@Field_19862_19863) (v_1@@20 T@FrameType) (q@@15 T@Field_17954_17955) (w@@20 T@FrameType) (r@@15 T@Field_19135_19136) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_17927 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_17927_19102 q@@15 w@@20 r@@15 u@@15)) (InsidePredicate_19862_19102 p@@21 v_1@@20 r@@15 u@@15))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_17927 p@@21 v_1@@20 q@@15 w@@20) (InsidePredicate_17927_19102 q@@15 w@@20 r@@15 u@@15))
)))
(assert (forall ((p@@22 T@Field_19862_19863) (v_1@@21 T@FrameType) (q@@16 T@Field_17954_17955) (w@@21 T@FrameType) (r@@16 T@Field_18458_18459) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_17927 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_17927_18427 q@@16 w@@21 r@@16 u@@16)) (InsidePredicate_19862_18427 p@@22 v_1@@21 r@@16 u@@16))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_17927 p@@22 v_1@@21 q@@16 w@@21) (InsidePredicate_17927_18427 q@@16 w@@21 r@@16 u@@16))
)))
(assert (forall ((p@@23 T@Field_19862_19863) (v_1@@22 T@FrameType) (q@@17 T@Field_17954_17955) (w@@22 T@FrameType) (r@@17 T@Field_17954_17955) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_17927 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_17927_17927 q@@17 w@@22 r@@17 u@@17)) (InsidePredicate_19862_17927 p@@23 v_1@@22 r@@17 u@@17))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_17927 p@@23 v_1@@22 q@@17 w@@22) (InsidePredicate_17927_17927 q@@17 w@@22 r@@17 u@@17))
)))
(assert (forall ((p@@24 T@Field_19862_19863) (v_1@@23 T@FrameType) (q@@18 T@Field_17954_17955) (w@@23 T@FrameType) (r@@18 T@Field_14600_17955) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_17927 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_17927_14600 q@@18 w@@23 r@@18 u@@18)) (InsidePredicate_19862_14600 p@@24 v_1@@23 r@@18 u@@18))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_17927 p@@24 v_1@@23 q@@18 w@@23) (InsidePredicate_17927_14600 q@@18 w@@23 r@@18 u@@18))
)))
(assert (forall ((p@@25 T@Field_19862_19863) (v_1@@24 T@FrameType) (q@@19 T@Field_14600_17955) (w@@24 T@FrameType) (r@@19 T@Field_19862_19863) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_14600 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14600_19862 q@@19 w@@24 r@@19 u@@19)) (InsidePredicate_19862_19862 p@@25 v_1@@24 r@@19 u@@19))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_14600 p@@25 v_1@@24 q@@19 w@@24) (InsidePredicate_14600_19862 q@@19 w@@24 r@@19 u@@19))
)))
(assert (forall ((p@@26 T@Field_19862_19863) (v_1@@25 T@FrameType) (q@@20 T@Field_14600_17955) (w@@25 T@FrameType) (r@@20 T@Field_19135_19136) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_14600 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14600_19102 q@@20 w@@25 r@@20 u@@20)) (InsidePredicate_19862_19102 p@@26 v_1@@25 r@@20 u@@20))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_14600 p@@26 v_1@@25 q@@20 w@@25) (InsidePredicate_14600_19102 q@@20 w@@25 r@@20 u@@20))
)))
(assert (forall ((p@@27 T@Field_19862_19863) (v_1@@26 T@FrameType) (q@@21 T@Field_14600_17955) (w@@26 T@FrameType) (r@@21 T@Field_18458_18459) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_14600 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14600_18427 q@@21 w@@26 r@@21 u@@21)) (InsidePredicate_19862_18427 p@@27 v_1@@26 r@@21 u@@21))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_14600 p@@27 v_1@@26 q@@21 w@@26) (InsidePredicate_14600_18427 q@@21 w@@26 r@@21 u@@21))
)))
(assert (forall ((p@@28 T@Field_19862_19863) (v_1@@27 T@FrameType) (q@@22 T@Field_14600_17955) (w@@27 T@FrameType) (r@@22 T@Field_17954_17955) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_14600 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14600_17927 q@@22 w@@27 r@@22 u@@22)) (InsidePredicate_19862_17927 p@@28 v_1@@27 r@@22 u@@22))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_14600 p@@28 v_1@@27 q@@22 w@@27) (InsidePredicate_14600_17927 q@@22 w@@27 r@@22 u@@22))
)))
(assert (forall ((p@@29 T@Field_19862_19863) (v_1@@28 T@FrameType) (q@@23 T@Field_14600_17955) (w@@28 T@FrameType) (r@@23 T@Field_14600_17955) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_19862_14600 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14600_14600 q@@23 w@@28 r@@23 u@@23)) (InsidePredicate_19862_14600 p@@29 v_1@@28 r@@23 u@@23))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19862_14600 p@@29 v_1@@28 q@@23 w@@28) (InsidePredicate_14600_14600 q@@23 w@@28 r@@23 u@@23))
)))
(assert (forall ((p@@30 T@Field_19135_19136) (v_1@@29 T@FrameType) (q@@24 T@Field_19862_19863) (w@@29 T@FrameType) (r@@24 T@Field_19862_19863) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19862 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_19862_19862 q@@24 w@@29 r@@24 u@@24)) (InsidePredicate_19102_19862 p@@30 v_1@@29 r@@24 u@@24))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19862 p@@30 v_1@@29 q@@24 w@@29) (InsidePredicate_19862_19862 q@@24 w@@29 r@@24 u@@24))
)))
(assert (forall ((p@@31 T@Field_19135_19136) (v_1@@30 T@FrameType) (q@@25 T@Field_19862_19863) (w@@30 T@FrameType) (r@@25 T@Field_19135_19136) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19862 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_19862_19102 q@@25 w@@30 r@@25 u@@25)) (InsidePredicate_19102_19102 p@@31 v_1@@30 r@@25 u@@25))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19862 p@@31 v_1@@30 q@@25 w@@30) (InsidePredicate_19862_19102 q@@25 w@@30 r@@25 u@@25))
)))
(assert (forall ((p@@32 T@Field_19135_19136) (v_1@@31 T@FrameType) (q@@26 T@Field_19862_19863) (w@@31 T@FrameType) (r@@26 T@Field_18458_18459) (u@@26 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19862 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_19862_18427 q@@26 w@@31 r@@26 u@@26)) (InsidePredicate_19102_18427 p@@32 v_1@@31 r@@26 u@@26))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19862 p@@32 v_1@@31 q@@26 w@@31) (InsidePredicate_19862_18427 q@@26 w@@31 r@@26 u@@26))
)))
(assert (forall ((p@@33 T@Field_19135_19136) (v_1@@32 T@FrameType) (q@@27 T@Field_19862_19863) (w@@32 T@FrameType) (r@@27 T@Field_17954_17955) (u@@27 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19862 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_19862_17927 q@@27 w@@32 r@@27 u@@27)) (InsidePredicate_19102_17927 p@@33 v_1@@32 r@@27 u@@27))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19862 p@@33 v_1@@32 q@@27 w@@32) (InsidePredicate_19862_17927 q@@27 w@@32 r@@27 u@@27))
)))
(assert (forall ((p@@34 T@Field_19135_19136) (v_1@@33 T@FrameType) (q@@28 T@Field_19862_19863) (w@@33 T@FrameType) (r@@28 T@Field_14600_17955) (u@@28 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19862 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_19862_14600 q@@28 w@@33 r@@28 u@@28)) (InsidePredicate_19102_14600 p@@34 v_1@@33 r@@28 u@@28))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19862 p@@34 v_1@@33 q@@28 w@@33) (InsidePredicate_19862_14600 q@@28 w@@33 r@@28 u@@28))
)))
(assert (forall ((p@@35 T@Field_19135_19136) (v_1@@34 T@FrameType) (q@@29 T@Field_19135_19136) (w@@34 T@FrameType) (r@@29 T@Field_19862_19863) (u@@29 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19102 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_19102_19862 q@@29 w@@34 r@@29 u@@29)) (InsidePredicate_19102_19862 p@@35 v_1@@34 r@@29 u@@29))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19102 p@@35 v_1@@34 q@@29 w@@34) (InsidePredicate_19102_19862 q@@29 w@@34 r@@29 u@@29))
)))
(assert (forall ((p@@36 T@Field_19135_19136) (v_1@@35 T@FrameType) (q@@30 T@Field_19135_19136) (w@@35 T@FrameType) (r@@30 T@Field_19135_19136) (u@@30 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19102 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_19102_19102 q@@30 w@@35 r@@30 u@@30)) (InsidePredicate_19102_19102 p@@36 v_1@@35 r@@30 u@@30))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19102 p@@36 v_1@@35 q@@30 w@@35) (InsidePredicate_19102_19102 q@@30 w@@35 r@@30 u@@30))
)))
(assert (forall ((p@@37 T@Field_19135_19136) (v_1@@36 T@FrameType) (q@@31 T@Field_19135_19136) (w@@36 T@FrameType) (r@@31 T@Field_18458_18459) (u@@31 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19102 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_19102_18427 q@@31 w@@36 r@@31 u@@31)) (InsidePredicate_19102_18427 p@@37 v_1@@36 r@@31 u@@31))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19102 p@@37 v_1@@36 q@@31 w@@36) (InsidePredicate_19102_18427 q@@31 w@@36 r@@31 u@@31))
)))
(assert (forall ((p@@38 T@Field_19135_19136) (v_1@@37 T@FrameType) (q@@32 T@Field_19135_19136) (w@@37 T@FrameType) (r@@32 T@Field_17954_17955) (u@@32 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19102 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_19102_17927 q@@32 w@@37 r@@32 u@@32)) (InsidePredicate_19102_17927 p@@38 v_1@@37 r@@32 u@@32))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19102 p@@38 v_1@@37 q@@32 w@@37) (InsidePredicate_19102_17927 q@@32 w@@37 r@@32 u@@32))
)))
(assert (forall ((p@@39 T@Field_19135_19136) (v_1@@38 T@FrameType) (q@@33 T@Field_19135_19136) (w@@38 T@FrameType) (r@@33 T@Field_14600_17955) (u@@33 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_19102 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_19102_14600 q@@33 w@@38 r@@33 u@@33)) (InsidePredicate_19102_14600 p@@39 v_1@@38 r@@33 u@@33))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_19102 p@@39 v_1@@38 q@@33 w@@38) (InsidePredicate_19102_14600 q@@33 w@@38 r@@33 u@@33))
)))
(assert (forall ((p@@40 T@Field_19135_19136) (v_1@@39 T@FrameType) (q@@34 T@Field_18458_18459) (w@@39 T@FrameType) (r@@34 T@Field_19862_19863) (u@@34 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_18427 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_18427_19862 q@@34 w@@39 r@@34 u@@34)) (InsidePredicate_19102_19862 p@@40 v_1@@39 r@@34 u@@34))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_18427 p@@40 v_1@@39 q@@34 w@@39) (InsidePredicate_18427_19862 q@@34 w@@39 r@@34 u@@34))
)))
(assert (forall ((p@@41 T@Field_19135_19136) (v_1@@40 T@FrameType) (q@@35 T@Field_18458_18459) (w@@40 T@FrameType) (r@@35 T@Field_19135_19136) (u@@35 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_18427 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_18427_19102 q@@35 w@@40 r@@35 u@@35)) (InsidePredicate_19102_19102 p@@41 v_1@@40 r@@35 u@@35))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_18427 p@@41 v_1@@40 q@@35 w@@40) (InsidePredicate_18427_19102 q@@35 w@@40 r@@35 u@@35))
)))
(assert (forall ((p@@42 T@Field_19135_19136) (v_1@@41 T@FrameType) (q@@36 T@Field_18458_18459) (w@@41 T@FrameType) (r@@36 T@Field_18458_18459) (u@@36 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_18427 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_18427_18427 q@@36 w@@41 r@@36 u@@36)) (InsidePredicate_19102_18427 p@@42 v_1@@41 r@@36 u@@36))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_18427 p@@42 v_1@@41 q@@36 w@@41) (InsidePredicate_18427_18427 q@@36 w@@41 r@@36 u@@36))
)))
(assert (forall ((p@@43 T@Field_19135_19136) (v_1@@42 T@FrameType) (q@@37 T@Field_18458_18459) (w@@42 T@FrameType) (r@@37 T@Field_17954_17955) (u@@37 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_18427 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_18427_17927 q@@37 w@@42 r@@37 u@@37)) (InsidePredicate_19102_17927 p@@43 v_1@@42 r@@37 u@@37))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_18427 p@@43 v_1@@42 q@@37 w@@42) (InsidePredicate_18427_17927 q@@37 w@@42 r@@37 u@@37))
)))
(assert (forall ((p@@44 T@Field_19135_19136) (v_1@@43 T@FrameType) (q@@38 T@Field_18458_18459) (w@@43 T@FrameType) (r@@38 T@Field_14600_17955) (u@@38 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_18427 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_18427_14600 q@@38 w@@43 r@@38 u@@38)) (InsidePredicate_19102_14600 p@@44 v_1@@43 r@@38 u@@38))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_18427 p@@44 v_1@@43 q@@38 w@@43) (InsidePredicate_18427_14600 q@@38 w@@43 r@@38 u@@38))
)))
(assert (forall ((p@@45 T@Field_19135_19136) (v_1@@44 T@FrameType) (q@@39 T@Field_17954_17955) (w@@44 T@FrameType) (r@@39 T@Field_19862_19863) (u@@39 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_17927 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_17927_19862 q@@39 w@@44 r@@39 u@@39)) (InsidePredicate_19102_19862 p@@45 v_1@@44 r@@39 u@@39))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_17927 p@@45 v_1@@44 q@@39 w@@44) (InsidePredicate_17927_19862 q@@39 w@@44 r@@39 u@@39))
)))
(assert (forall ((p@@46 T@Field_19135_19136) (v_1@@45 T@FrameType) (q@@40 T@Field_17954_17955) (w@@45 T@FrameType) (r@@40 T@Field_19135_19136) (u@@40 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_17927 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_17927_19102 q@@40 w@@45 r@@40 u@@40)) (InsidePredicate_19102_19102 p@@46 v_1@@45 r@@40 u@@40))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_17927 p@@46 v_1@@45 q@@40 w@@45) (InsidePredicate_17927_19102 q@@40 w@@45 r@@40 u@@40))
)))
(assert (forall ((p@@47 T@Field_19135_19136) (v_1@@46 T@FrameType) (q@@41 T@Field_17954_17955) (w@@46 T@FrameType) (r@@41 T@Field_18458_18459) (u@@41 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_17927 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_17927_18427 q@@41 w@@46 r@@41 u@@41)) (InsidePredicate_19102_18427 p@@47 v_1@@46 r@@41 u@@41))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_17927 p@@47 v_1@@46 q@@41 w@@46) (InsidePredicate_17927_18427 q@@41 w@@46 r@@41 u@@41))
)))
(assert (forall ((p@@48 T@Field_19135_19136) (v_1@@47 T@FrameType) (q@@42 T@Field_17954_17955) (w@@47 T@FrameType) (r@@42 T@Field_17954_17955) (u@@42 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_17927 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_17927_17927 q@@42 w@@47 r@@42 u@@42)) (InsidePredicate_19102_17927 p@@48 v_1@@47 r@@42 u@@42))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_17927 p@@48 v_1@@47 q@@42 w@@47) (InsidePredicate_17927_17927 q@@42 w@@47 r@@42 u@@42))
)))
(assert (forall ((p@@49 T@Field_19135_19136) (v_1@@48 T@FrameType) (q@@43 T@Field_17954_17955) (w@@48 T@FrameType) (r@@43 T@Field_14600_17955) (u@@43 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_17927 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_17927_14600 q@@43 w@@48 r@@43 u@@43)) (InsidePredicate_19102_14600 p@@49 v_1@@48 r@@43 u@@43))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_17927 p@@49 v_1@@48 q@@43 w@@48) (InsidePredicate_17927_14600 q@@43 w@@48 r@@43 u@@43))
)))
(assert (forall ((p@@50 T@Field_19135_19136) (v_1@@49 T@FrameType) (q@@44 T@Field_14600_17955) (w@@49 T@FrameType) (r@@44 T@Field_19862_19863) (u@@44 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_14600 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14600_19862 q@@44 w@@49 r@@44 u@@44)) (InsidePredicate_19102_19862 p@@50 v_1@@49 r@@44 u@@44))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_14600 p@@50 v_1@@49 q@@44 w@@49) (InsidePredicate_14600_19862 q@@44 w@@49 r@@44 u@@44))
)))
(assert (forall ((p@@51 T@Field_19135_19136) (v_1@@50 T@FrameType) (q@@45 T@Field_14600_17955) (w@@50 T@FrameType) (r@@45 T@Field_19135_19136) (u@@45 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_14600 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14600_19102 q@@45 w@@50 r@@45 u@@45)) (InsidePredicate_19102_19102 p@@51 v_1@@50 r@@45 u@@45))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_14600 p@@51 v_1@@50 q@@45 w@@50) (InsidePredicate_14600_19102 q@@45 w@@50 r@@45 u@@45))
)))
(assert (forall ((p@@52 T@Field_19135_19136) (v_1@@51 T@FrameType) (q@@46 T@Field_14600_17955) (w@@51 T@FrameType) (r@@46 T@Field_18458_18459) (u@@46 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_14600 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14600_18427 q@@46 w@@51 r@@46 u@@46)) (InsidePredicate_19102_18427 p@@52 v_1@@51 r@@46 u@@46))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_14600 p@@52 v_1@@51 q@@46 w@@51) (InsidePredicate_14600_18427 q@@46 w@@51 r@@46 u@@46))
)))
(assert (forall ((p@@53 T@Field_19135_19136) (v_1@@52 T@FrameType) (q@@47 T@Field_14600_17955) (w@@52 T@FrameType) (r@@47 T@Field_17954_17955) (u@@47 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_14600 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14600_17927 q@@47 w@@52 r@@47 u@@47)) (InsidePredicate_19102_17927 p@@53 v_1@@52 r@@47 u@@47))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_14600 p@@53 v_1@@52 q@@47 w@@52) (InsidePredicate_14600_17927 q@@47 w@@52 r@@47 u@@47))
)))
(assert (forall ((p@@54 T@Field_19135_19136) (v_1@@53 T@FrameType) (q@@48 T@Field_14600_17955) (w@@53 T@FrameType) (r@@48 T@Field_14600_17955) (u@@48 T@FrameType) ) (!  (=> (and (InsidePredicate_19102_14600 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14600_14600 q@@48 w@@53 r@@48 u@@48)) (InsidePredicate_19102_14600 p@@54 v_1@@53 r@@48 u@@48))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19102_14600 p@@54 v_1@@53 q@@48 w@@53) (InsidePredicate_14600_14600 q@@48 w@@53 r@@48 u@@48))
)))
(assert (forall ((p@@55 T@Field_18458_18459) (v_1@@54 T@FrameType) (q@@49 T@Field_19862_19863) (w@@54 T@FrameType) (r@@49 T@Field_19862_19863) (u@@49 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19862 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_19862_19862 q@@49 w@@54 r@@49 u@@49)) (InsidePredicate_18427_19862 p@@55 v_1@@54 r@@49 u@@49))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19862 p@@55 v_1@@54 q@@49 w@@54) (InsidePredicate_19862_19862 q@@49 w@@54 r@@49 u@@49))
)))
(assert (forall ((p@@56 T@Field_18458_18459) (v_1@@55 T@FrameType) (q@@50 T@Field_19862_19863) (w@@55 T@FrameType) (r@@50 T@Field_19135_19136) (u@@50 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19862 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_19862_19102 q@@50 w@@55 r@@50 u@@50)) (InsidePredicate_18427_19102 p@@56 v_1@@55 r@@50 u@@50))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19862 p@@56 v_1@@55 q@@50 w@@55) (InsidePredicate_19862_19102 q@@50 w@@55 r@@50 u@@50))
)))
(assert (forall ((p@@57 T@Field_18458_18459) (v_1@@56 T@FrameType) (q@@51 T@Field_19862_19863) (w@@56 T@FrameType) (r@@51 T@Field_18458_18459) (u@@51 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19862 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_19862_18427 q@@51 w@@56 r@@51 u@@51)) (InsidePredicate_18427_18427 p@@57 v_1@@56 r@@51 u@@51))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19862 p@@57 v_1@@56 q@@51 w@@56) (InsidePredicate_19862_18427 q@@51 w@@56 r@@51 u@@51))
)))
(assert (forall ((p@@58 T@Field_18458_18459) (v_1@@57 T@FrameType) (q@@52 T@Field_19862_19863) (w@@57 T@FrameType) (r@@52 T@Field_17954_17955) (u@@52 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19862 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_19862_17927 q@@52 w@@57 r@@52 u@@52)) (InsidePredicate_18427_17927 p@@58 v_1@@57 r@@52 u@@52))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19862 p@@58 v_1@@57 q@@52 w@@57) (InsidePredicate_19862_17927 q@@52 w@@57 r@@52 u@@52))
)))
(assert (forall ((p@@59 T@Field_18458_18459) (v_1@@58 T@FrameType) (q@@53 T@Field_19862_19863) (w@@58 T@FrameType) (r@@53 T@Field_14600_17955) (u@@53 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19862 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_19862_14600 q@@53 w@@58 r@@53 u@@53)) (InsidePredicate_18427_14600 p@@59 v_1@@58 r@@53 u@@53))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19862 p@@59 v_1@@58 q@@53 w@@58) (InsidePredicate_19862_14600 q@@53 w@@58 r@@53 u@@53))
)))
(assert (forall ((p@@60 T@Field_18458_18459) (v_1@@59 T@FrameType) (q@@54 T@Field_19135_19136) (w@@59 T@FrameType) (r@@54 T@Field_19862_19863) (u@@54 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19102 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_19102_19862 q@@54 w@@59 r@@54 u@@54)) (InsidePredicate_18427_19862 p@@60 v_1@@59 r@@54 u@@54))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19102 p@@60 v_1@@59 q@@54 w@@59) (InsidePredicate_19102_19862 q@@54 w@@59 r@@54 u@@54))
)))
(assert (forall ((p@@61 T@Field_18458_18459) (v_1@@60 T@FrameType) (q@@55 T@Field_19135_19136) (w@@60 T@FrameType) (r@@55 T@Field_19135_19136) (u@@55 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19102 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_19102_19102 q@@55 w@@60 r@@55 u@@55)) (InsidePredicate_18427_19102 p@@61 v_1@@60 r@@55 u@@55))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19102 p@@61 v_1@@60 q@@55 w@@60) (InsidePredicate_19102_19102 q@@55 w@@60 r@@55 u@@55))
)))
(assert (forall ((p@@62 T@Field_18458_18459) (v_1@@61 T@FrameType) (q@@56 T@Field_19135_19136) (w@@61 T@FrameType) (r@@56 T@Field_18458_18459) (u@@56 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19102 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_19102_18427 q@@56 w@@61 r@@56 u@@56)) (InsidePredicate_18427_18427 p@@62 v_1@@61 r@@56 u@@56))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19102 p@@62 v_1@@61 q@@56 w@@61) (InsidePredicate_19102_18427 q@@56 w@@61 r@@56 u@@56))
)))
(assert (forall ((p@@63 T@Field_18458_18459) (v_1@@62 T@FrameType) (q@@57 T@Field_19135_19136) (w@@62 T@FrameType) (r@@57 T@Field_17954_17955) (u@@57 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19102 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_19102_17927 q@@57 w@@62 r@@57 u@@57)) (InsidePredicate_18427_17927 p@@63 v_1@@62 r@@57 u@@57))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19102 p@@63 v_1@@62 q@@57 w@@62) (InsidePredicate_19102_17927 q@@57 w@@62 r@@57 u@@57))
)))
(assert (forall ((p@@64 T@Field_18458_18459) (v_1@@63 T@FrameType) (q@@58 T@Field_19135_19136) (w@@63 T@FrameType) (r@@58 T@Field_14600_17955) (u@@58 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_19102 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_19102_14600 q@@58 w@@63 r@@58 u@@58)) (InsidePredicate_18427_14600 p@@64 v_1@@63 r@@58 u@@58))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_19102 p@@64 v_1@@63 q@@58 w@@63) (InsidePredicate_19102_14600 q@@58 w@@63 r@@58 u@@58))
)))
(assert (forall ((p@@65 T@Field_18458_18459) (v_1@@64 T@FrameType) (q@@59 T@Field_18458_18459) (w@@64 T@FrameType) (r@@59 T@Field_19862_19863) (u@@59 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_18427 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_18427_19862 q@@59 w@@64 r@@59 u@@59)) (InsidePredicate_18427_19862 p@@65 v_1@@64 r@@59 u@@59))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_18427 p@@65 v_1@@64 q@@59 w@@64) (InsidePredicate_18427_19862 q@@59 w@@64 r@@59 u@@59))
)))
(assert (forall ((p@@66 T@Field_18458_18459) (v_1@@65 T@FrameType) (q@@60 T@Field_18458_18459) (w@@65 T@FrameType) (r@@60 T@Field_19135_19136) (u@@60 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_18427 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_18427_19102 q@@60 w@@65 r@@60 u@@60)) (InsidePredicate_18427_19102 p@@66 v_1@@65 r@@60 u@@60))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_18427 p@@66 v_1@@65 q@@60 w@@65) (InsidePredicate_18427_19102 q@@60 w@@65 r@@60 u@@60))
)))
(assert (forall ((p@@67 T@Field_18458_18459) (v_1@@66 T@FrameType) (q@@61 T@Field_18458_18459) (w@@66 T@FrameType) (r@@61 T@Field_18458_18459) (u@@61 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_18427 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_18427_18427 q@@61 w@@66 r@@61 u@@61)) (InsidePredicate_18427_18427 p@@67 v_1@@66 r@@61 u@@61))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_18427 p@@67 v_1@@66 q@@61 w@@66) (InsidePredicate_18427_18427 q@@61 w@@66 r@@61 u@@61))
)))
(assert (forall ((p@@68 T@Field_18458_18459) (v_1@@67 T@FrameType) (q@@62 T@Field_18458_18459) (w@@67 T@FrameType) (r@@62 T@Field_17954_17955) (u@@62 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_18427 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_18427_17927 q@@62 w@@67 r@@62 u@@62)) (InsidePredicate_18427_17927 p@@68 v_1@@67 r@@62 u@@62))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_18427 p@@68 v_1@@67 q@@62 w@@67) (InsidePredicate_18427_17927 q@@62 w@@67 r@@62 u@@62))
)))
(assert (forall ((p@@69 T@Field_18458_18459) (v_1@@68 T@FrameType) (q@@63 T@Field_18458_18459) (w@@68 T@FrameType) (r@@63 T@Field_14600_17955) (u@@63 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_18427 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_18427_14600 q@@63 w@@68 r@@63 u@@63)) (InsidePredicate_18427_14600 p@@69 v_1@@68 r@@63 u@@63))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_18427 p@@69 v_1@@68 q@@63 w@@68) (InsidePredicate_18427_14600 q@@63 w@@68 r@@63 u@@63))
)))
(assert (forall ((p@@70 T@Field_18458_18459) (v_1@@69 T@FrameType) (q@@64 T@Field_17954_17955) (w@@69 T@FrameType) (r@@64 T@Field_19862_19863) (u@@64 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_17927 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_17927_19862 q@@64 w@@69 r@@64 u@@64)) (InsidePredicate_18427_19862 p@@70 v_1@@69 r@@64 u@@64))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_17927 p@@70 v_1@@69 q@@64 w@@69) (InsidePredicate_17927_19862 q@@64 w@@69 r@@64 u@@64))
)))
(assert (forall ((p@@71 T@Field_18458_18459) (v_1@@70 T@FrameType) (q@@65 T@Field_17954_17955) (w@@70 T@FrameType) (r@@65 T@Field_19135_19136) (u@@65 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_17927 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_17927_19102 q@@65 w@@70 r@@65 u@@65)) (InsidePredicate_18427_19102 p@@71 v_1@@70 r@@65 u@@65))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_17927 p@@71 v_1@@70 q@@65 w@@70) (InsidePredicate_17927_19102 q@@65 w@@70 r@@65 u@@65))
)))
(assert (forall ((p@@72 T@Field_18458_18459) (v_1@@71 T@FrameType) (q@@66 T@Field_17954_17955) (w@@71 T@FrameType) (r@@66 T@Field_18458_18459) (u@@66 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_17927 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_17927_18427 q@@66 w@@71 r@@66 u@@66)) (InsidePredicate_18427_18427 p@@72 v_1@@71 r@@66 u@@66))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_17927 p@@72 v_1@@71 q@@66 w@@71) (InsidePredicate_17927_18427 q@@66 w@@71 r@@66 u@@66))
)))
(assert (forall ((p@@73 T@Field_18458_18459) (v_1@@72 T@FrameType) (q@@67 T@Field_17954_17955) (w@@72 T@FrameType) (r@@67 T@Field_17954_17955) (u@@67 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_17927 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_17927_17927 q@@67 w@@72 r@@67 u@@67)) (InsidePredicate_18427_17927 p@@73 v_1@@72 r@@67 u@@67))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_17927 p@@73 v_1@@72 q@@67 w@@72) (InsidePredicate_17927_17927 q@@67 w@@72 r@@67 u@@67))
)))
(assert (forall ((p@@74 T@Field_18458_18459) (v_1@@73 T@FrameType) (q@@68 T@Field_17954_17955) (w@@73 T@FrameType) (r@@68 T@Field_14600_17955) (u@@68 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_17927 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_17927_14600 q@@68 w@@73 r@@68 u@@68)) (InsidePredicate_18427_14600 p@@74 v_1@@73 r@@68 u@@68))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_17927 p@@74 v_1@@73 q@@68 w@@73) (InsidePredicate_17927_14600 q@@68 w@@73 r@@68 u@@68))
)))
(assert (forall ((p@@75 T@Field_18458_18459) (v_1@@74 T@FrameType) (q@@69 T@Field_14600_17955) (w@@74 T@FrameType) (r@@69 T@Field_19862_19863) (u@@69 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_14600 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14600_19862 q@@69 w@@74 r@@69 u@@69)) (InsidePredicate_18427_19862 p@@75 v_1@@74 r@@69 u@@69))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_14600 p@@75 v_1@@74 q@@69 w@@74) (InsidePredicate_14600_19862 q@@69 w@@74 r@@69 u@@69))
)))
(assert (forall ((p@@76 T@Field_18458_18459) (v_1@@75 T@FrameType) (q@@70 T@Field_14600_17955) (w@@75 T@FrameType) (r@@70 T@Field_19135_19136) (u@@70 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_14600 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14600_19102 q@@70 w@@75 r@@70 u@@70)) (InsidePredicate_18427_19102 p@@76 v_1@@75 r@@70 u@@70))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_14600 p@@76 v_1@@75 q@@70 w@@75) (InsidePredicate_14600_19102 q@@70 w@@75 r@@70 u@@70))
)))
(assert (forall ((p@@77 T@Field_18458_18459) (v_1@@76 T@FrameType) (q@@71 T@Field_14600_17955) (w@@76 T@FrameType) (r@@71 T@Field_18458_18459) (u@@71 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_14600 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14600_18427 q@@71 w@@76 r@@71 u@@71)) (InsidePredicate_18427_18427 p@@77 v_1@@76 r@@71 u@@71))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_14600 p@@77 v_1@@76 q@@71 w@@76) (InsidePredicate_14600_18427 q@@71 w@@76 r@@71 u@@71))
)))
(assert (forall ((p@@78 T@Field_18458_18459) (v_1@@77 T@FrameType) (q@@72 T@Field_14600_17955) (w@@77 T@FrameType) (r@@72 T@Field_17954_17955) (u@@72 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_14600 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14600_17927 q@@72 w@@77 r@@72 u@@72)) (InsidePredicate_18427_17927 p@@78 v_1@@77 r@@72 u@@72))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_14600 p@@78 v_1@@77 q@@72 w@@77) (InsidePredicate_14600_17927 q@@72 w@@77 r@@72 u@@72))
)))
(assert (forall ((p@@79 T@Field_18458_18459) (v_1@@78 T@FrameType) (q@@73 T@Field_14600_17955) (w@@78 T@FrameType) (r@@73 T@Field_14600_17955) (u@@73 T@FrameType) ) (!  (=> (and (InsidePredicate_18427_14600 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14600_14600 q@@73 w@@78 r@@73 u@@73)) (InsidePredicate_18427_14600 p@@79 v_1@@78 r@@73 u@@73))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18427_14600 p@@79 v_1@@78 q@@73 w@@78) (InsidePredicate_14600_14600 q@@73 w@@78 r@@73 u@@73))
)))
(assert (forall ((p@@80 T@Field_17954_17955) (v_1@@79 T@FrameType) (q@@74 T@Field_19862_19863) (w@@79 T@FrameType) (r@@74 T@Field_19862_19863) (u@@74 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19862 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_19862_19862 q@@74 w@@79 r@@74 u@@74)) (InsidePredicate_17927_19862 p@@80 v_1@@79 r@@74 u@@74))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19862 p@@80 v_1@@79 q@@74 w@@79) (InsidePredicate_19862_19862 q@@74 w@@79 r@@74 u@@74))
)))
(assert (forall ((p@@81 T@Field_17954_17955) (v_1@@80 T@FrameType) (q@@75 T@Field_19862_19863) (w@@80 T@FrameType) (r@@75 T@Field_19135_19136) (u@@75 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19862 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_19862_19102 q@@75 w@@80 r@@75 u@@75)) (InsidePredicate_17927_19102 p@@81 v_1@@80 r@@75 u@@75))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19862 p@@81 v_1@@80 q@@75 w@@80) (InsidePredicate_19862_19102 q@@75 w@@80 r@@75 u@@75))
)))
(assert (forall ((p@@82 T@Field_17954_17955) (v_1@@81 T@FrameType) (q@@76 T@Field_19862_19863) (w@@81 T@FrameType) (r@@76 T@Field_18458_18459) (u@@76 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19862 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_19862_18427 q@@76 w@@81 r@@76 u@@76)) (InsidePredicate_17927_18427 p@@82 v_1@@81 r@@76 u@@76))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19862 p@@82 v_1@@81 q@@76 w@@81) (InsidePredicate_19862_18427 q@@76 w@@81 r@@76 u@@76))
)))
(assert (forall ((p@@83 T@Field_17954_17955) (v_1@@82 T@FrameType) (q@@77 T@Field_19862_19863) (w@@82 T@FrameType) (r@@77 T@Field_17954_17955) (u@@77 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19862 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_19862_17927 q@@77 w@@82 r@@77 u@@77)) (InsidePredicate_17927_17927 p@@83 v_1@@82 r@@77 u@@77))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19862 p@@83 v_1@@82 q@@77 w@@82) (InsidePredicate_19862_17927 q@@77 w@@82 r@@77 u@@77))
)))
(assert (forall ((p@@84 T@Field_17954_17955) (v_1@@83 T@FrameType) (q@@78 T@Field_19862_19863) (w@@83 T@FrameType) (r@@78 T@Field_14600_17955) (u@@78 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19862 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_19862_14600 q@@78 w@@83 r@@78 u@@78)) (InsidePredicate_17927_14600 p@@84 v_1@@83 r@@78 u@@78))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19862 p@@84 v_1@@83 q@@78 w@@83) (InsidePredicate_19862_14600 q@@78 w@@83 r@@78 u@@78))
)))
(assert (forall ((p@@85 T@Field_17954_17955) (v_1@@84 T@FrameType) (q@@79 T@Field_19135_19136) (w@@84 T@FrameType) (r@@79 T@Field_19862_19863) (u@@79 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19102 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_19102_19862 q@@79 w@@84 r@@79 u@@79)) (InsidePredicate_17927_19862 p@@85 v_1@@84 r@@79 u@@79))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19102 p@@85 v_1@@84 q@@79 w@@84) (InsidePredicate_19102_19862 q@@79 w@@84 r@@79 u@@79))
)))
(assert (forall ((p@@86 T@Field_17954_17955) (v_1@@85 T@FrameType) (q@@80 T@Field_19135_19136) (w@@85 T@FrameType) (r@@80 T@Field_19135_19136) (u@@80 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19102 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_19102_19102 q@@80 w@@85 r@@80 u@@80)) (InsidePredicate_17927_19102 p@@86 v_1@@85 r@@80 u@@80))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19102 p@@86 v_1@@85 q@@80 w@@85) (InsidePredicate_19102_19102 q@@80 w@@85 r@@80 u@@80))
)))
(assert (forall ((p@@87 T@Field_17954_17955) (v_1@@86 T@FrameType) (q@@81 T@Field_19135_19136) (w@@86 T@FrameType) (r@@81 T@Field_18458_18459) (u@@81 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19102 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_19102_18427 q@@81 w@@86 r@@81 u@@81)) (InsidePredicate_17927_18427 p@@87 v_1@@86 r@@81 u@@81))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19102 p@@87 v_1@@86 q@@81 w@@86) (InsidePredicate_19102_18427 q@@81 w@@86 r@@81 u@@81))
)))
(assert (forall ((p@@88 T@Field_17954_17955) (v_1@@87 T@FrameType) (q@@82 T@Field_19135_19136) (w@@87 T@FrameType) (r@@82 T@Field_17954_17955) (u@@82 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19102 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_19102_17927 q@@82 w@@87 r@@82 u@@82)) (InsidePredicate_17927_17927 p@@88 v_1@@87 r@@82 u@@82))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19102 p@@88 v_1@@87 q@@82 w@@87) (InsidePredicate_19102_17927 q@@82 w@@87 r@@82 u@@82))
)))
(assert (forall ((p@@89 T@Field_17954_17955) (v_1@@88 T@FrameType) (q@@83 T@Field_19135_19136) (w@@88 T@FrameType) (r@@83 T@Field_14600_17955) (u@@83 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_19102 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_19102_14600 q@@83 w@@88 r@@83 u@@83)) (InsidePredicate_17927_14600 p@@89 v_1@@88 r@@83 u@@83))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_19102 p@@89 v_1@@88 q@@83 w@@88) (InsidePredicate_19102_14600 q@@83 w@@88 r@@83 u@@83))
)))
(assert (forall ((p@@90 T@Field_17954_17955) (v_1@@89 T@FrameType) (q@@84 T@Field_18458_18459) (w@@89 T@FrameType) (r@@84 T@Field_19862_19863) (u@@84 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_18427 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_18427_19862 q@@84 w@@89 r@@84 u@@84)) (InsidePredicate_17927_19862 p@@90 v_1@@89 r@@84 u@@84))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_18427 p@@90 v_1@@89 q@@84 w@@89) (InsidePredicate_18427_19862 q@@84 w@@89 r@@84 u@@84))
)))
(assert (forall ((p@@91 T@Field_17954_17955) (v_1@@90 T@FrameType) (q@@85 T@Field_18458_18459) (w@@90 T@FrameType) (r@@85 T@Field_19135_19136) (u@@85 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_18427 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_18427_19102 q@@85 w@@90 r@@85 u@@85)) (InsidePredicate_17927_19102 p@@91 v_1@@90 r@@85 u@@85))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_18427 p@@91 v_1@@90 q@@85 w@@90) (InsidePredicate_18427_19102 q@@85 w@@90 r@@85 u@@85))
)))
(assert (forall ((p@@92 T@Field_17954_17955) (v_1@@91 T@FrameType) (q@@86 T@Field_18458_18459) (w@@91 T@FrameType) (r@@86 T@Field_18458_18459) (u@@86 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_18427 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_18427_18427 q@@86 w@@91 r@@86 u@@86)) (InsidePredicate_17927_18427 p@@92 v_1@@91 r@@86 u@@86))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_18427 p@@92 v_1@@91 q@@86 w@@91) (InsidePredicate_18427_18427 q@@86 w@@91 r@@86 u@@86))
)))
(assert (forall ((p@@93 T@Field_17954_17955) (v_1@@92 T@FrameType) (q@@87 T@Field_18458_18459) (w@@92 T@FrameType) (r@@87 T@Field_17954_17955) (u@@87 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_18427 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_18427_17927 q@@87 w@@92 r@@87 u@@87)) (InsidePredicate_17927_17927 p@@93 v_1@@92 r@@87 u@@87))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_18427 p@@93 v_1@@92 q@@87 w@@92) (InsidePredicate_18427_17927 q@@87 w@@92 r@@87 u@@87))
)))
(assert (forall ((p@@94 T@Field_17954_17955) (v_1@@93 T@FrameType) (q@@88 T@Field_18458_18459) (w@@93 T@FrameType) (r@@88 T@Field_14600_17955) (u@@88 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_18427 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_18427_14600 q@@88 w@@93 r@@88 u@@88)) (InsidePredicate_17927_14600 p@@94 v_1@@93 r@@88 u@@88))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_18427 p@@94 v_1@@93 q@@88 w@@93) (InsidePredicate_18427_14600 q@@88 w@@93 r@@88 u@@88))
)))
(assert (forall ((p@@95 T@Field_17954_17955) (v_1@@94 T@FrameType) (q@@89 T@Field_17954_17955) (w@@94 T@FrameType) (r@@89 T@Field_19862_19863) (u@@89 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_17927 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_17927_19862 q@@89 w@@94 r@@89 u@@89)) (InsidePredicate_17927_19862 p@@95 v_1@@94 r@@89 u@@89))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_17927 p@@95 v_1@@94 q@@89 w@@94) (InsidePredicate_17927_19862 q@@89 w@@94 r@@89 u@@89))
)))
(assert (forall ((p@@96 T@Field_17954_17955) (v_1@@95 T@FrameType) (q@@90 T@Field_17954_17955) (w@@95 T@FrameType) (r@@90 T@Field_19135_19136) (u@@90 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_17927 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_17927_19102 q@@90 w@@95 r@@90 u@@90)) (InsidePredicate_17927_19102 p@@96 v_1@@95 r@@90 u@@90))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_17927 p@@96 v_1@@95 q@@90 w@@95) (InsidePredicate_17927_19102 q@@90 w@@95 r@@90 u@@90))
)))
(assert (forall ((p@@97 T@Field_17954_17955) (v_1@@96 T@FrameType) (q@@91 T@Field_17954_17955) (w@@96 T@FrameType) (r@@91 T@Field_18458_18459) (u@@91 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_17927 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_17927_18427 q@@91 w@@96 r@@91 u@@91)) (InsidePredicate_17927_18427 p@@97 v_1@@96 r@@91 u@@91))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_17927 p@@97 v_1@@96 q@@91 w@@96) (InsidePredicate_17927_18427 q@@91 w@@96 r@@91 u@@91))
)))
(assert (forall ((p@@98 T@Field_17954_17955) (v_1@@97 T@FrameType) (q@@92 T@Field_17954_17955) (w@@97 T@FrameType) (r@@92 T@Field_17954_17955) (u@@92 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_17927 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_17927_17927 q@@92 w@@97 r@@92 u@@92)) (InsidePredicate_17927_17927 p@@98 v_1@@97 r@@92 u@@92))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_17927 p@@98 v_1@@97 q@@92 w@@97) (InsidePredicate_17927_17927 q@@92 w@@97 r@@92 u@@92))
)))
(assert (forall ((p@@99 T@Field_17954_17955) (v_1@@98 T@FrameType) (q@@93 T@Field_17954_17955) (w@@98 T@FrameType) (r@@93 T@Field_14600_17955) (u@@93 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_17927 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_17927_14600 q@@93 w@@98 r@@93 u@@93)) (InsidePredicate_17927_14600 p@@99 v_1@@98 r@@93 u@@93))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_17927 p@@99 v_1@@98 q@@93 w@@98) (InsidePredicate_17927_14600 q@@93 w@@98 r@@93 u@@93))
)))
(assert (forall ((p@@100 T@Field_17954_17955) (v_1@@99 T@FrameType) (q@@94 T@Field_14600_17955) (w@@99 T@FrameType) (r@@94 T@Field_19862_19863) (u@@94 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_14600 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14600_19862 q@@94 w@@99 r@@94 u@@94)) (InsidePredicate_17927_19862 p@@100 v_1@@99 r@@94 u@@94))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_14600 p@@100 v_1@@99 q@@94 w@@99) (InsidePredicate_14600_19862 q@@94 w@@99 r@@94 u@@94))
)))
(assert (forall ((p@@101 T@Field_17954_17955) (v_1@@100 T@FrameType) (q@@95 T@Field_14600_17955) (w@@100 T@FrameType) (r@@95 T@Field_19135_19136) (u@@95 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_14600 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14600_19102 q@@95 w@@100 r@@95 u@@95)) (InsidePredicate_17927_19102 p@@101 v_1@@100 r@@95 u@@95))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_14600 p@@101 v_1@@100 q@@95 w@@100) (InsidePredicate_14600_19102 q@@95 w@@100 r@@95 u@@95))
)))
(assert (forall ((p@@102 T@Field_17954_17955) (v_1@@101 T@FrameType) (q@@96 T@Field_14600_17955) (w@@101 T@FrameType) (r@@96 T@Field_18458_18459) (u@@96 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_14600 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14600_18427 q@@96 w@@101 r@@96 u@@96)) (InsidePredicate_17927_18427 p@@102 v_1@@101 r@@96 u@@96))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_14600 p@@102 v_1@@101 q@@96 w@@101) (InsidePredicate_14600_18427 q@@96 w@@101 r@@96 u@@96))
)))
(assert (forall ((p@@103 T@Field_17954_17955) (v_1@@102 T@FrameType) (q@@97 T@Field_14600_17955) (w@@102 T@FrameType) (r@@97 T@Field_17954_17955) (u@@97 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_14600 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14600_17927 q@@97 w@@102 r@@97 u@@97)) (InsidePredicate_17927_17927 p@@103 v_1@@102 r@@97 u@@97))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_14600 p@@103 v_1@@102 q@@97 w@@102) (InsidePredicate_14600_17927 q@@97 w@@102 r@@97 u@@97))
)))
(assert (forall ((p@@104 T@Field_17954_17955) (v_1@@103 T@FrameType) (q@@98 T@Field_14600_17955) (w@@103 T@FrameType) (r@@98 T@Field_14600_17955) (u@@98 T@FrameType) ) (!  (=> (and (InsidePredicate_17927_14600 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14600_14600 q@@98 w@@103 r@@98 u@@98)) (InsidePredicate_17927_14600 p@@104 v_1@@103 r@@98 u@@98))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_17927_14600 p@@104 v_1@@103 q@@98 w@@103) (InsidePredicate_14600_14600 q@@98 w@@103 r@@98 u@@98))
)))
(assert (forall ((p@@105 T@Field_14600_17955) (v_1@@104 T@FrameType) (q@@99 T@Field_19862_19863) (w@@104 T@FrameType) (r@@99 T@Field_19862_19863) (u@@99 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19862 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_19862_19862 q@@99 w@@104 r@@99 u@@99)) (InsidePredicate_14600_19862 p@@105 v_1@@104 r@@99 u@@99))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19862 p@@105 v_1@@104 q@@99 w@@104) (InsidePredicate_19862_19862 q@@99 w@@104 r@@99 u@@99))
)))
(assert (forall ((p@@106 T@Field_14600_17955) (v_1@@105 T@FrameType) (q@@100 T@Field_19862_19863) (w@@105 T@FrameType) (r@@100 T@Field_19135_19136) (u@@100 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19862 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_19862_19102 q@@100 w@@105 r@@100 u@@100)) (InsidePredicate_14600_19102 p@@106 v_1@@105 r@@100 u@@100))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19862 p@@106 v_1@@105 q@@100 w@@105) (InsidePredicate_19862_19102 q@@100 w@@105 r@@100 u@@100))
)))
(assert (forall ((p@@107 T@Field_14600_17955) (v_1@@106 T@FrameType) (q@@101 T@Field_19862_19863) (w@@106 T@FrameType) (r@@101 T@Field_18458_18459) (u@@101 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19862 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_19862_18427 q@@101 w@@106 r@@101 u@@101)) (InsidePredicate_14600_18427 p@@107 v_1@@106 r@@101 u@@101))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19862 p@@107 v_1@@106 q@@101 w@@106) (InsidePredicate_19862_18427 q@@101 w@@106 r@@101 u@@101))
)))
(assert (forall ((p@@108 T@Field_14600_17955) (v_1@@107 T@FrameType) (q@@102 T@Field_19862_19863) (w@@107 T@FrameType) (r@@102 T@Field_17954_17955) (u@@102 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19862 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_19862_17927 q@@102 w@@107 r@@102 u@@102)) (InsidePredicate_14600_17927 p@@108 v_1@@107 r@@102 u@@102))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19862 p@@108 v_1@@107 q@@102 w@@107) (InsidePredicate_19862_17927 q@@102 w@@107 r@@102 u@@102))
)))
(assert (forall ((p@@109 T@Field_14600_17955) (v_1@@108 T@FrameType) (q@@103 T@Field_19862_19863) (w@@108 T@FrameType) (r@@103 T@Field_14600_17955) (u@@103 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19862 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_19862_14600 q@@103 w@@108 r@@103 u@@103)) (InsidePredicate_14600_14600 p@@109 v_1@@108 r@@103 u@@103))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19862 p@@109 v_1@@108 q@@103 w@@108) (InsidePredicate_19862_14600 q@@103 w@@108 r@@103 u@@103))
)))
(assert (forall ((p@@110 T@Field_14600_17955) (v_1@@109 T@FrameType) (q@@104 T@Field_19135_19136) (w@@109 T@FrameType) (r@@104 T@Field_19862_19863) (u@@104 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19102 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_19102_19862 q@@104 w@@109 r@@104 u@@104)) (InsidePredicate_14600_19862 p@@110 v_1@@109 r@@104 u@@104))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19102 p@@110 v_1@@109 q@@104 w@@109) (InsidePredicate_19102_19862 q@@104 w@@109 r@@104 u@@104))
)))
(assert (forall ((p@@111 T@Field_14600_17955) (v_1@@110 T@FrameType) (q@@105 T@Field_19135_19136) (w@@110 T@FrameType) (r@@105 T@Field_19135_19136) (u@@105 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19102 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_19102_19102 q@@105 w@@110 r@@105 u@@105)) (InsidePredicate_14600_19102 p@@111 v_1@@110 r@@105 u@@105))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19102 p@@111 v_1@@110 q@@105 w@@110) (InsidePredicate_19102_19102 q@@105 w@@110 r@@105 u@@105))
)))
(assert (forall ((p@@112 T@Field_14600_17955) (v_1@@111 T@FrameType) (q@@106 T@Field_19135_19136) (w@@111 T@FrameType) (r@@106 T@Field_18458_18459) (u@@106 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19102 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_19102_18427 q@@106 w@@111 r@@106 u@@106)) (InsidePredicate_14600_18427 p@@112 v_1@@111 r@@106 u@@106))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19102 p@@112 v_1@@111 q@@106 w@@111) (InsidePredicate_19102_18427 q@@106 w@@111 r@@106 u@@106))
)))
(assert (forall ((p@@113 T@Field_14600_17955) (v_1@@112 T@FrameType) (q@@107 T@Field_19135_19136) (w@@112 T@FrameType) (r@@107 T@Field_17954_17955) (u@@107 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19102 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_19102_17927 q@@107 w@@112 r@@107 u@@107)) (InsidePredicate_14600_17927 p@@113 v_1@@112 r@@107 u@@107))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19102 p@@113 v_1@@112 q@@107 w@@112) (InsidePredicate_19102_17927 q@@107 w@@112 r@@107 u@@107))
)))
(assert (forall ((p@@114 T@Field_14600_17955) (v_1@@113 T@FrameType) (q@@108 T@Field_19135_19136) (w@@113 T@FrameType) (r@@108 T@Field_14600_17955) (u@@108 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_19102 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_19102_14600 q@@108 w@@113 r@@108 u@@108)) (InsidePredicate_14600_14600 p@@114 v_1@@113 r@@108 u@@108))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_19102 p@@114 v_1@@113 q@@108 w@@113) (InsidePredicate_19102_14600 q@@108 w@@113 r@@108 u@@108))
)))
(assert (forall ((p@@115 T@Field_14600_17955) (v_1@@114 T@FrameType) (q@@109 T@Field_18458_18459) (w@@114 T@FrameType) (r@@109 T@Field_19862_19863) (u@@109 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_18427 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_18427_19862 q@@109 w@@114 r@@109 u@@109)) (InsidePredicate_14600_19862 p@@115 v_1@@114 r@@109 u@@109))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_18427 p@@115 v_1@@114 q@@109 w@@114) (InsidePredicate_18427_19862 q@@109 w@@114 r@@109 u@@109))
)))
(assert (forall ((p@@116 T@Field_14600_17955) (v_1@@115 T@FrameType) (q@@110 T@Field_18458_18459) (w@@115 T@FrameType) (r@@110 T@Field_19135_19136) (u@@110 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_18427 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_18427_19102 q@@110 w@@115 r@@110 u@@110)) (InsidePredicate_14600_19102 p@@116 v_1@@115 r@@110 u@@110))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_18427 p@@116 v_1@@115 q@@110 w@@115) (InsidePredicate_18427_19102 q@@110 w@@115 r@@110 u@@110))
)))
(assert (forall ((p@@117 T@Field_14600_17955) (v_1@@116 T@FrameType) (q@@111 T@Field_18458_18459) (w@@116 T@FrameType) (r@@111 T@Field_18458_18459) (u@@111 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_18427 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_18427_18427 q@@111 w@@116 r@@111 u@@111)) (InsidePredicate_14600_18427 p@@117 v_1@@116 r@@111 u@@111))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_18427 p@@117 v_1@@116 q@@111 w@@116) (InsidePredicate_18427_18427 q@@111 w@@116 r@@111 u@@111))
)))
(assert (forall ((p@@118 T@Field_14600_17955) (v_1@@117 T@FrameType) (q@@112 T@Field_18458_18459) (w@@117 T@FrameType) (r@@112 T@Field_17954_17955) (u@@112 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_18427 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_18427_17927 q@@112 w@@117 r@@112 u@@112)) (InsidePredicate_14600_17927 p@@118 v_1@@117 r@@112 u@@112))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_18427 p@@118 v_1@@117 q@@112 w@@117) (InsidePredicate_18427_17927 q@@112 w@@117 r@@112 u@@112))
)))
(assert (forall ((p@@119 T@Field_14600_17955) (v_1@@118 T@FrameType) (q@@113 T@Field_18458_18459) (w@@118 T@FrameType) (r@@113 T@Field_14600_17955) (u@@113 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_18427 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_18427_14600 q@@113 w@@118 r@@113 u@@113)) (InsidePredicate_14600_14600 p@@119 v_1@@118 r@@113 u@@113))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_18427 p@@119 v_1@@118 q@@113 w@@118) (InsidePredicate_18427_14600 q@@113 w@@118 r@@113 u@@113))
)))
(assert (forall ((p@@120 T@Field_14600_17955) (v_1@@119 T@FrameType) (q@@114 T@Field_17954_17955) (w@@119 T@FrameType) (r@@114 T@Field_19862_19863) (u@@114 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_17927 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_17927_19862 q@@114 w@@119 r@@114 u@@114)) (InsidePredicate_14600_19862 p@@120 v_1@@119 r@@114 u@@114))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_17927 p@@120 v_1@@119 q@@114 w@@119) (InsidePredicate_17927_19862 q@@114 w@@119 r@@114 u@@114))
)))
(assert (forall ((p@@121 T@Field_14600_17955) (v_1@@120 T@FrameType) (q@@115 T@Field_17954_17955) (w@@120 T@FrameType) (r@@115 T@Field_19135_19136) (u@@115 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_17927 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_17927_19102 q@@115 w@@120 r@@115 u@@115)) (InsidePredicate_14600_19102 p@@121 v_1@@120 r@@115 u@@115))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_17927 p@@121 v_1@@120 q@@115 w@@120) (InsidePredicate_17927_19102 q@@115 w@@120 r@@115 u@@115))
)))
(assert (forall ((p@@122 T@Field_14600_17955) (v_1@@121 T@FrameType) (q@@116 T@Field_17954_17955) (w@@121 T@FrameType) (r@@116 T@Field_18458_18459) (u@@116 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_17927 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_17927_18427 q@@116 w@@121 r@@116 u@@116)) (InsidePredicate_14600_18427 p@@122 v_1@@121 r@@116 u@@116))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_17927 p@@122 v_1@@121 q@@116 w@@121) (InsidePredicate_17927_18427 q@@116 w@@121 r@@116 u@@116))
)))
(assert (forall ((p@@123 T@Field_14600_17955) (v_1@@122 T@FrameType) (q@@117 T@Field_17954_17955) (w@@122 T@FrameType) (r@@117 T@Field_17954_17955) (u@@117 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_17927 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_17927_17927 q@@117 w@@122 r@@117 u@@117)) (InsidePredicate_14600_17927 p@@123 v_1@@122 r@@117 u@@117))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_17927 p@@123 v_1@@122 q@@117 w@@122) (InsidePredicate_17927_17927 q@@117 w@@122 r@@117 u@@117))
)))
(assert (forall ((p@@124 T@Field_14600_17955) (v_1@@123 T@FrameType) (q@@118 T@Field_17954_17955) (w@@123 T@FrameType) (r@@118 T@Field_14600_17955) (u@@118 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_17927 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_17927_14600 q@@118 w@@123 r@@118 u@@118)) (InsidePredicate_14600_14600 p@@124 v_1@@123 r@@118 u@@118))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_17927 p@@124 v_1@@123 q@@118 w@@123) (InsidePredicate_17927_14600 q@@118 w@@123 r@@118 u@@118))
)))
(assert (forall ((p@@125 T@Field_14600_17955) (v_1@@124 T@FrameType) (q@@119 T@Field_14600_17955) (w@@124 T@FrameType) (r@@119 T@Field_19862_19863) (u@@119 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_14600 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14600_19862 q@@119 w@@124 r@@119 u@@119)) (InsidePredicate_14600_19862 p@@125 v_1@@124 r@@119 u@@119))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_14600 p@@125 v_1@@124 q@@119 w@@124) (InsidePredicate_14600_19862 q@@119 w@@124 r@@119 u@@119))
)))
(assert (forall ((p@@126 T@Field_14600_17955) (v_1@@125 T@FrameType) (q@@120 T@Field_14600_17955) (w@@125 T@FrameType) (r@@120 T@Field_19135_19136) (u@@120 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_14600 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14600_19102 q@@120 w@@125 r@@120 u@@120)) (InsidePredicate_14600_19102 p@@126 v_1@@125 r@@120 u@@120))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_14600 p@@126 v_1@@125 q@@120 w@@125) (InsidePredicate_14600_19102 q@@120 w@@125 r@@120 u@@120))
)))
(assert (forall ((p@@127 T@Field_14600_17955) (v_1@@126 T@FrameType) (q@@121 T@Field_14600_17955) (w@@126 T@FrameType) (r@@121 T@Field_18458_18459) (u@@121 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_14600 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14600_18427 q@@121 w@@126 r@@121 u@@121)) (InsidePredicate_14600_18427 p@@127 v_1@@126 r@@121 u@@121))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_14600 p@@127 v_1@@126 q@@121 w@@126) (InsidePredicate_14600_18427 q@@121 w@@126 r@@121 u@@121))
)))
(assert (forall ((p@@128 T@Field_14600_17955) (v_1@@127 T@FrameType) (q@@122 T@Field_14600_17955) (w@@127 T@FrameType) (r@@122 T@Field_17954_17955) (u@@122 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_14600 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14600_17927 q@@122 w@@127 r@@122 u@@122)) (InsidePredicate_14600_17927 p@@128 v_1@@127 r@@122 u@@122))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_14600 p@@128 v_1@@127 q@@122 w@@127) (InsidePredicate_14600_17927 q@@122 w@@127 r@@122 u@@122))
)))
(assert (forall ((p@@129 T@Field_14600_17955) (v_1@@128 T@FrameType) (q@@123 T@Field_14600_17955) (w@@128 T@FrameType) (r@@123 T@Field_14600_17955) (u@@123 T@FrameType) ) (!  (=> (and (InsidePredicate_14600_14600 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14600_14600 q@@123 w@@128 r@@123 u@@123)) (InsidePredicate_14600_14600 p@@129 v_1@@128 r@@123 u@@123))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14600_14600 p@@129 v_1@@128 q@@123 w@@128) (InsidePredicate_14600_14600 q@@123 w@@128 r@@123 u@@123))
)))
(assert (forall ((Heap@@64 T@PolymorphicMapType_14540) (ExhaleHeap@@36 T@PolymorphicMapType_14540) (Mask@@87 T@PolymorphicMapType_14561) (pm_f_16@@9 T@Field_19862_19863) ) (!  (=> (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (=> (and (HasDirectPerm_19862_17955 Mask@@87 null pm_f_16@@9) (IsPredicateField_8162_8163 pm_f_16@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16 T@Ref) (f_40@@24 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16 f_40@@24) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@64) o2_16 f_40@@24) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16 f_40@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16 f_40@@24))
)) (forall ((o2_16@@0 T@Ref) (f_40@@25 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@0 f_40@@25) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@64) o2_16@@0 f_40@@25) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@0 f_40@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@0 f_40@@25))
))) (forall ((o2_16@@1 T@Ref) (f_40@@26 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@1 f_40@@26) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@64) o2_16@@1 f_40@@26) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@1 f_40@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@1 f_40@@26))
))) (forall ((o2_16@@2 T@Ref) (f_40@@27 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@2 f_40@@27) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@64) o2_16@@2 f_40@@27) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@2 f_40@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@2 f_40@@27))
))) (forall ((o2_16@@3 T@Ref) (f_40@@28 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@3 f_40@@28) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@64) o2_16@@3 f_40@@28) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@3 f_40@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@3 f_40@@28))
))) (forall ((o2_16@@4 T@Ref) (f_40@@29 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@4 f_40@@29) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@64) o2_16@@4 f_40@@29) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@4 f_40@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@4 f_40@@29))
))) (forall ((o2_16@@5 T@Ref) (f_40@@30 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@5 f_40@@30) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@64) o2_16@@5 f_40@@30) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@5 f_40@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@5 f_40@@30))
))) (forall ((o2_16@@6 T@Ref) (f_40@@31 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@6 f_40@@31) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@64) o2_16@@6 f_40@@31) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@6 f_40@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@6 f_40@@31))
))) (forall ((o2_16@@7 T@Ref) (f_40@@32 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@7 f_40@@32) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@64) o2_16@@7 f_40@@32) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@7 f_40@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@7 f_40@@32))
))) (forall ((o2_16@@8 T@Ref) (f_40@@33 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@8 f_40@@33) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@64) o2_16@@8 f_40@@33) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@8 f_40@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@8 f_40@@33))
))) (forall ((o2_16@@9 T@Ref) (f_40@@34 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@9 f_40@@34) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@64) o2_16@@9 f_40@@34) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@9 f_40@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@9 f_40@@34))
))) (forall ((o2_16@@10 T@Ref) (f_40@@35 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@10 f_40@@35) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@64) o2_16@@10 f_40@@35) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@10 f_40@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@10 f_40@@35))
))) (forall ((o2_16@@11 T@Ref) (f_40@@36 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@11 f_40@@36) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@64) o2_16@@11 f_40@@36) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@11 f_40@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@11 f_40@@36))
))) (forall ((o2_16@@12 T@Ref) (f_40@@37 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@12 f_40@@37) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@64) o2_16@@12 f_40@@37) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@12 f_40@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@12 f_40@@37))
))) (forall ((o2_16@@13 T@Ref) (f_40@@38 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@13 f_40@@38) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@64) o2_16@@13 f_40@@38) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@13 f_40@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@13 f_40@@38))
))) (forall ((o2_16@@14 T@Ref) (f_40@@39 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@14 f_40@@39) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@64) o2_16@@14 f_40@@39) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@14 f_40@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@14 f_40@@39))
))) (forall ((o2_16@@15 T@Ref) (f_40@@40 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@15 f_40@@40) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@64) o2_16@@15 f_40@@40) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@15 f_40@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@15 f_40@@40))
))) (forall ((o2_16@@16 T@Ref) (f_40@@41 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@16 f_40@@41) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@64) o2_16@@16 f_40@@41) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@16 f_40@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@16 f_40@@41))
))) (forall ((o2_16@@17 T@Ref) (f_40@@42 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@17 f_40@@42) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@64) o2_16@@17 f_40@@42) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@17 f_40@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@17 f_40@@42))
))) (forall ((o2_16@@18 T@Ref) (f_40@@43 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@18 f_40@@43) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@64) o2_16@@18 f_40@@43) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@18 f_40@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@18 f_40@@43))
))) (forall ((o2_16@@19 T@Ref) (f_40@@44 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@19 f_40@@44) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@64) o2_16@@19 f_40@@44) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@19 f_40@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@19 f_40@@44))
))) (forall ((o2_16@@20 T@Ref) (f_40@@45 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@20 f_40@@45) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@64) o2_16@@20 f_40@@45) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@20 f_40@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@20 f_40@@45))
))) (forall ((o2_16@@21 T@Ref) (f_40@@46 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@21 f_40@@46) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@64) o2_16@@21 f_40@@46) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@21 f_40@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@21 f_40@@46))
))) (forall ((o2_16@@22 T@Ref) (f_40@@47 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@22 f_40@@47) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) o2_16@@22 f_40@@47) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@22 f_40@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@22 f_40@@47))
))) (forall ((o2_16@@23 T@Ref) (f_40@@48 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@64) null (PredicateMaskField_8162 pm_f_16@@9))) o2_16@@23 f_40@@48) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@64) o2_16@@23 f_40@@48) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@23 f_40@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@36) o2_16@@23 f_40@@48))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@64 ExhaleHeap@@36 Mask@@87) (IsPredicateField_8162_8163 pm_f_16@@9))
)))
(assert (forall ((Heap@@65 T@PolymorphicMapType_14540) (ExhaleHeap@@37 T@PolymorphicMapType_14540) (Mask@@88 T@PolymorphicMapType_14561) (pm_f_16@@10 T@Field_19135_19136) ) (!  (=> (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (=> (and (HasDirectPerm_19102_17955 Mask@@88 null pm_f_16@@10) (IsPredicateField_8126_8127 pm_f_16@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@24 T@Ref) (f_40@@49 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@24 f_40@@49) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@65) o2_16@@24 f_40@@49) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@24 f_40@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@24 f_40@@49))
)) (forall ((o2_16@@25 T@Ref) (f_40@@50 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@25 f_40@@50) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@65) o2_16@@25 f_40@@50) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@25 f_40@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@25 f_40@@50))
))) (forall ((o2_16@@26 T@Ref) (f_40@@51 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@26 f_40@@51) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@65) o2_16@@26 f_40@@51) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@26 f_40@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@26 f_40@@51))
))) (forall ((o2_16@@27 T@Ref) (f_40@@52 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@27 f_40@@52) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@65) o2_16@@27 f_40@@52) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@27 f_40@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@27 f_40@@52))
))) (forall ((o2_16@@28 T@Ref) (f_40@@53 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@28 f_40@@53) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@65) o2_16@@28 f_40@@53) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@28 f_40@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@28 f_40@@53))
))) (forall ((o2_16@@29 T@Ref) (f_40@@54 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@29 f_40@@54) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@65) o2_16@@29 f_40@@54) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@29 f_40@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@29 f_40@@54))
))) (forall ((o2_16@@30 T@Ref) (f_40@@55 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@30 f_40@@55) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@65) o2_16@@30 f_40@@55) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@30 f_40@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@30 f_40@@55))
))) (forall ((o2_16@@31 T@Ref) (f_40@@56 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@31 f_40@@56) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@65) o2_16@@31 f_40@@56) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@31 f_40@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@31 f_40@@56))
))) (forall ((o2_16@@32 T@Ref) (f_40@@57 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@32 f_40@@57) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@65) o2_16@@32 f_40@@57) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@32 f_40@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@32 f_40@@57))
))) (forall ((o2_16@@33 T@Ref) (f_40@@58 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@33 f_40@@58) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@65) o2_16@@33 f_40@@58) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@33 f_40@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@33 f_40@@58))
))) (forall ((o2_16@@34 T@Ref) (f_40@@59 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@34 f_40@@59) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@65) o2_16@@34 f_40@@59) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@34 f_40@@59)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@34 f_40@@59))
))) (forall ((o2_16@@35 T@Ref) (f_40@@60 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@35 f_40@@60) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@65) o2_16@@35 f_40@@60) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@35 f_40@@60)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@35 f_40@@60))
))) (forall ((o2_16@@36 T@Ref) (f_40@@61 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@36 f_40@@61) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@65) o2_16@@36 f_40@@61) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@36 f_40@@61)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@36 f_40@@61))
))) (forall ((o2_16@@37 T@Ref) (f_40@@62 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@37 f_40@@62) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@65) o2_16@@37 f_40@@62) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@37 f_40@@62)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@37 f_40@@62))
))) (forall ((o2_16@@38 T@Ref) (f_40@@63 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@38 f_40@@63) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@65) o2_16@@38 f_40@@63) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@38 f_40@@63)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@38 f_40@@63))
))) (forall ((o2_16@@39 T@Ref) (f_40@@64 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@39 f_40@@64) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@65) o2_16@@39 f_40@@64) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@39 f_40@@64)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@39 f_40@@64))
))) (forall ((o2_16@@40 T@Ref) (f_40@@65 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@40 f_40@@65) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@65) o2_16@@40 f_40@@65) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@40 f_40@@65)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@40 f_40@@65))
))) (forall ((o2_16@@41 T@Ref) (f_40@@66 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@41 f_40@@66) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@65) o2_16@@41 f_40@@66) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@41 f_40@@66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@41 f_40@@66))
))) (forall ((o2_16@@42 T@Ref) (f_40@@67 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@42 f_40@@67) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) o2_16@@42 f_40@@67) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@42 f_40@@67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@42 f_40@@67))
))) (forall ((o2_16@@43 T@Ref) (f_40@@68 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@43 f_40@@68) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@65) o2_16@@43 f_40@@68) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@43 f_40@@68)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@43 f_40@@68))
))) (forall ((o2_16@@44 T@Ref) (f_40@@69 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@44 f_40@@69) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@65) o2_16@@44 f_40@@69) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@44 f_40@@69)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@44 f_40@@69))
))) (forall ((o2_16@@45 T@Ref) (f_40@@70 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@45 f_40@@70) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@65) o2_16@@45 f_40@@70) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@45 f_40@@70)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@45 f_40@@70))
))) (forall ((o2_16@@46 T@Ref) (f_40@@71 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@46 f_40@@71) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@65) o2_16@@46 f_40@@71) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@46 f_40@@71)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@46 f_40@@71))
))) (forall ((o2_16@@47 T@Ref) (f_40@@72 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@47 f_40@@72) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@65) o2_16@@47 f_40@@72) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@47 f_40@@72)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@47 f_40@@72))
))) (forall ((o2_16@@48 T@Ref) (f_40@@73 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@65) null (PredicateMaskField_19102 pm_f_16@@10))) o2_16@@48 f_40@@73) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@65) o2_16@@48 f_40@@73) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@48 f_40@@73)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@37) o2_16@@48 f_40@@73))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@65 ExhaleHeap@@37 Mask@@88) (IsPredicateField_8126_8127 pm_f_16@@10))
)))
(assert (forall ((Heap@@66 T@PolymorphicMapType_14540) (ExhaleHeap@@38 T@PolymorphicMapType_14540) (Mask@@89 T@PolymorphicMapType_14561) (pm_f_16@@11 T@Field_18458_18459) ) (!  (=> (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (=> (and (HasDirectPerm_18427_17955 Mask@@89 null pm_f_16@@11) (IsPredicateField_8082_8083 pm_f_16@@11)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@49 T@Ref) (f_40@@74 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@49 f_40@@74) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@66) o2_16@@49 f_40@@74) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@49 f_40@@74)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@49 f_40@@74))
)) (forall ((o2_16@@50 T@Ref) (f_40@@75 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@50 f_40@@75) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@66) o2_16@@50 f_40@@75) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@50 f_40@@75)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@50 f_40@@75))
))) (forall ((o2_16@@51 T@Ref) (f_40@@76 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@51 f_40@@76) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@66) o2_16@@51 f_40@@76) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@51 f_40@@76)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@51 f_40@@76))
))) (forall ((o2_16@@52 T@Ref) (f_40@@77 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@52 f_40@@77) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@66) o2_16@@52 f_40@@77) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@52 f_40@@77)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@52 f_40@@77))
))) (forall ((o2_16@@53 T@Ref) (f_40@@78 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@53 f_40@@78) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@66) o2_16@@53 f_40@@78) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@53 f_40@@78)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@53 f_40@@78))
))) (forall ((o2_16@@54 T@Ref) (f_40@@79 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@54 f_40@@79) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@66) o2_16@@54 f_40@@79) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@54 f_40@@79)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@54 f_40@@79))
))) (forall ((o2_16@@55 T@Ref) (f_40@@80 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@55 f_40@@80) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@66) o2_16@@55 f_40@@80) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@55 f_40@@80)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@55 f_40@@80))
))) (forall ((o2_16@@56 T@Ref) (f_40@@81 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@56 f_40@@81) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@66) o2_16@@56 f_40@@81) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@56 f_40@@81)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@56 f_40@@81))
))) (forall ((o2_16@@57 T@Ref) (f_40@@82 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@57 f_40@@82) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@66) o2_16@@57 f_40@@82) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@57 f_40@@82)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@57 f_40@@82))
))) (forall ((o2_16@@58 T@Ref) (f_40@@83 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@58 f_40@@83) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@66) o2_16@@58 f_40@@83) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@58 f_40@@83)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@58 f_40@@83))
))) (forall ((o2_16@@59 T@Ref) (f_40@@84 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@59 f_40@@84) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@66) o2_16@@59 f_40@@84) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@59 f_40@@84)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@59 f_40@@84))
))) (forall ((o2_16@@60 T@Ref) (f_40@@85 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@60 f_40@@85) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@66) o2_16@@60 f_40@@85) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@60 f_40@@85)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@60 f_40@@85))
))) (forall ((o2_16@@61 T@Ref) (f_40@@86 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@61 f_40@@86) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@66) o2_16@@61 f_40@@86) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@61 f_40@@86)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@61 f_40@@86))
))) (forall ((o2_16@@62 T@Ref) (f_40@@87 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@62 f_40@@87) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) o2_16@@62 f_40@@87) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@62 f_40@@87)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@62 f_40@@87))
))) (forall ((o2_16@@63 T@Ref) (f_40@@88 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@63 f_40@@88) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@66) o2_16@@63 f_40@@88) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@63 f_40@@88)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@63 f_40@@88))
))) (forall ((o2_16@@64 T@Ref) (f_40@@89 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@64 f_40@@89) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@66) o2_16@@64 f_40@@89) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@64 f_40@@89)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@64 f_40@@89))
))) (forall ((o2_16@@65 T@Ref) (f_40@@90 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@65 f_40@@90) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@66) o2_16@@65 f_40@@90) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@65 f_40@@90)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@65 f_40@@90))
))) (forall ((o2_16@@66 T@Ref) (f_40@@91 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@66 f_40@@91) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@66) o2_16@@66 f_40@@91) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@66 f_40@@91)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@66 f_40@@91))
))) (forall ((o2_16@@67 T@Ref) (f_40@@92 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@67 f_40@@92) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@66) o2_16@@67 f_40@@92) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@67 f_40@@92)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@67 f_40@@92))
))) (forall ((o2_16@@68 T@Ref) (f_40@@93 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@68 f_40@@93) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@66) o2_16@@68 f_40@@93) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@68 f_40@@93)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@68 f_40@@93))
))) (forall ((o2_16@@69 T@Ref) (f_40@@94 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@69 f_40@@94) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@66) o2_16@@69 f_40@@94) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@69 f_40@@94)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@69 f_40@@94))
))) (forall ((o2_16@@70 T@Ref) (f_40@@95 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@70 f_40@@95) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@66) o2_16@@70 f_40@@95) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@70 f_40@@95)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@70 f_40@@95))
))) (forall ((o2_16@@71 T@Ref) (f_40@@96 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@71 f_40@@96) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@66) o2_16@@71 f_40@@96) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@71 f_40@@96)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@71 f_40@@96))
))) (forall ((o2_16@@72 T@Ref) (f_40@@97 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@72 f_40@@97) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@66) o2_16@@72 f_40@@97) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@72 f_40@@97)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@72 f_40@@97))
))) (forall ((o2_16@@73 T@Ref) (f_40@@98 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@66) null (PredicateMaskField_18427 pm_f_16@@11))) o2_16@@73 f_40@@98) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@66) o2_16@@73 f_40@@98) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@73 f_40@@98)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@38) o2_16@@73 f_40@@98))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@66 ExhaleHeap@@38 Mask@@89) (IsPredicateField_8082_8083 pm_f_16@@11))
)))
(assert (forall ((Heap@@67 T@PolymorphicMapType_14540) (ExhaleHeap@@39 T@PolymorphicMapType_14540) (Mask@@90 T@PolymorphicMapType_14561) (pm_f_16@@12 T@Field_17954_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (=> (and (HasDirectPerm_17927_17955 Mask@@90 null pm_f_16@@12) (IsPredicateField_8057_8058 pm_f_16@@12)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@74 T@Ref) (f_40@@99 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@74 f_40@@99) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@67) o2_16@@74 f_40@@99) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@74 f_40@@99)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@74 f_40@@99))
)) (forall ((o2_16@@75 T@Ref) (f_40@@100 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@75 f_40@@100) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@67) o2_16@@75 f_40@@100) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@75 f_40@@100)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@75 f_40@@100))
))) (forall ((o2_16@@76 T@Ref) (f_40@@101 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@76 f_40@@101) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@67) o2_16@@76 f_40@@101) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@76 f_40@@101)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@76 f_40@@101))
))) (forall ((o2_16@@77 T@Ref) (f_40@@102 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@77 f_40@@102) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@67) o2_16@@77 f_40@@102) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@77 f_40@@102)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@77 f_40@@102))
))) (forall ((o2_16@@78 T@Ref) (f_40@@103 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@78 f_40@@103) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@67) o2_16@@78 f_40@@103) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@78 f_40@@103)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@78 f_40@@103))
))) (forall ((o2_16@@79 T@Ref) (f_40@@104 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@79 f_40@@104) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@67) o2_16@@79 f_40@@104) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@79 f_40@@104)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@79 f_40@@104))
))) (forall ((o2_16@@80 T@Ref) (f_40@@105 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@80 f_40@@105) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@67) o2_16@@80 f_40@@105) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@80 f_40@@105)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@80 f_40@@105))
))) (forall ((o2_16@@81 T@Ref) (f_40@@106 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@81 f_40@@106) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@67) o2_16@@81 f_40@@106) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@81 f_40@@106)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@81 f_40@@106))
))) (forall ((o2_16@@82 T@Ref) (f_40@@107 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@82 f_40@@107) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) o2_16@@82 f_40@@107) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@82 f_40@@107)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@82 f_40@@107))
))) (forall ((o2_16@@83 T@Ref) (f_40@@108 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@83 f_40@@108) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@67) o2_16@@83 f_40@@108) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@83 f_40@@108)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@83 f_40@@108))
))) (forall ((o2_16@@84 T@Ref) (f_40@@109 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@84 f_40@@109) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@67) o2_16@@84 f_40@@109) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@84 f_40@@109)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@84 f_40@@109))
))) (forall ((o2_16@@85 T@Ref) (f_40@@110 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@85 f_40@@110) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@67) o2_16@@85 f_40@@110) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@85 f_40@@110)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@85 f_40@@110))
))) (forall ((o2_16@@86 T@Ref) (f_40@@111 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@86 f_40@@111) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@67) o2_16@@86 f_40@@111) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@86 f_40@@111)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@86 f_40@@111))
))) (forall ((o2_16@@87 T@Ref) (f_40@@112 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@87 f_40@@112) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@67) o2_16@@87 f_40@@112) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@87 f_40@@112)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@87 f_40@@112))
))) (forall ((o2_16@@88 T@Ref) (f_40@@113 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@88 f_40@@113) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@67) o2_16@@88 f_40@@113) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@88 f_40@@113)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@88 f_40@@113))
))) (forall ((o2_16@@89 T@Ref) (f_40@@114 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@89 f_40@@114) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@67) o2_16@@89 f_40@@114) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@89 f_40@@114)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@89 f_40@@114))
))) (forall ((o2_16@@90 T@Ref) (f_40@@115 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@90 f_40@@115) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@67) o2_16@@90 f_40@@115) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@90 f_40@@115)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@90 f_40@@115))
))) (forall ((o2_16@@91 T@Ref) (f_40@@116 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@91 f_40@@116) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@67) o2_16@@91 f_40@@116) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@91 f_40@@116)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@91 f_40@@116))
))) (forall ((o2_16@@92 T@Ref) (f_40@@117 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@92 f_40@@117) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@67) o2_16@@92 f_40@@117) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@92 f_40@@117)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@92 f_40@@117))
))) (forall ((o2_16@@93 T@Ref) (f_40@@118 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@93 f_40@@118) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@67) o2_16@@93 f_40@@118) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@93 f_40@@118)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@93 f_40@@118))
))) (forall ((o2_16@@94 T@Ref) (f_40@@119 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@94 f_40@@119) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@67) o2_16@@94 f_40@@119) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@94 f_40@@119)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@94 f_40@@119))
))) (forall ((o2_16@@95 T@Ref) (f_40@@120 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@95 f_40@@120) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@67) o2_16@@95 f_40@@120) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@95 f_40@@120)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@95 f_40@@120))
))) (forall ((o2_16@@96 T@Ref) (f_40@@121 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@96 f_40@@121) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@67) o2_16@@96 f_40@@121) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@96 f_40@@121)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@96 f_40@@121))
))) (forall ((o2_16@@97 T@Ref) (f_40@@122 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@97 f_40@@122) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@67) o2_16@@97 f_40@@122) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@97 f_40@@122)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@97 f_40@@122))
))) (forall ((o2_16@@98 T@Ref) (f_40@@123 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@67) null (PredicateMaskField_17927 pm_f_16@@12))) o2_16@@98 f_40@@123) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@67) o2_16@@98 f_40@@123) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@98 f_40@@123)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@39) o2_16@@98 f_40@@123))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@67 ExhaleHeap@@39 Mask@@90) (IsPredicateField_8057_8058 pm_f_16@@12))
)))
(assert (forall ((Heap@@68 T@PolymorphicMapType_14540) (ExhaleHeap@@40 T@PolymorphicMapType_14540) (Mask@@91 T@PolymorphicMapType_14561) (pm_f_16@@13 T@Field_14600_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (=> (and (HasDirectPerm_14600_17955 Mask@@91 null pm_f_16@@13) (IsPredicateField_14600_51941 pm_f_16@@13)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@99 T@Ref) (f_40@@124 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@99 f_40@@124) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@68) o2_16@@99 f_40@@124) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@99 f_40@@124)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@99 f_40@@124))
)) (forall ((o2_16@@100 T@Ref) (f_40@@125 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@100 f_40@@125) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@68) o2_16@@100 f_40@@125) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@100 f_40@@125)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@100 f_40@@125))
))) (forall ((o2_16@@101 T@Ref) (f_40@@126 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@101 f_40@@126) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@68) o2_16@@101 f_40@@126) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@101 f_40@@126)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@101 f_40@@126))
))) (forall ((o2_16@@102 T@Ref) (f_40@@127 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@102 f_40@@127) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) o2_16@@102 f_40@@127) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@102 f_40@@127)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@102 f_40@@127))
))) (forall ((o2_16@@103 T@Ref) (f_40@@128 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@103 f_40@@128) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@68) o2_16@@103 f_40@@128) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@103 f_40@@128)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@103 f_40@@128))
))) (forall ((o2_16@@104 T@Ref) (f_40@@129 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@104 f_40@@129) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@68) o2_16@@104 f_40@@129) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@104 f_40@@129)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@104 f_40@@129))
))) (forall ((o2_16@@105 T@Ref) (f_40@@130 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@105 f_40@@130) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@68) o2_16@@105 f_40@@130) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@105 f_40@@130)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@105 f_40@@130))
))) (forall ((o2_16@@106 T@Ref) (f_40@@131 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@106 f_40@@131) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@68) o2_16@@106 f_40@@131) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@106 f_40@@131)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@106 f_40@@131))
))) (forall ((o2_16@@107 T@Ref) (f_40@@132 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@107 f_40@@132) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@68) o2_16@@107 f_40@@132) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@107 f_40@@132)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@107 f_40@@132))
))) (forall ((o2_16@@108 T@Ref) (f_40@@133 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@108 f_40@@133) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@68) o2_16@@108 f_40@@133) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@108 f_40@@133)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@108 f_40@@133))
))) (forall ((o2_16@@109 T@Ref) (f_40@@134 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@109 f_40@@134) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@68) o2_16@@109 f_40@@134) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@109 f_40@@134)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@109 f_40@@134))
))) (forall ((o2_16@@110 T@Ref) (f_40@@135 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@110 f_40@@135) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@68) o2_16@@110 f_40@@135) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@110 f_40@@135)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@110 f_40@@135))
))) (forall ((o2_16@@111 T@Ref) (f_40@@136 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@111 f_40@@136) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@68) o2_16@@111 f_40@@136) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@111 f_40@@136)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@111 f_40@@136))
))) (forall ((o2_16@@112 T@Ref) (f_40@@137 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@112 f_40@@137) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@68) o2_16@@112 f_40@@137) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@112 f_40@@137)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@112 f_40@@137))
))) (forall ((o2_16@@113 T@Ref) (f_40@@138 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@113 f_40@@138) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@68) o2_16@@113 f_40@@138) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@113 f_40@@138)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@113 f_40@@138))
))) (forall ((o2_16@@114 T@Ref) (f_40@@139 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@114 f_40@@139) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@68) o2_16@@114 f_40@@139) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@114 f_40@@139)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@114 f_40@@139))
))) (forall ((o2_16@@115 T@Ref) (f_40@@140 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@115 f_40@@140) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@68) o2_16@@115 f_40@@140) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@115 f_40@@140)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@115 f_40@@140))
))) (forall ((o2_16@@116 T@Ref) (f_40@@141 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@116 f_40@@141) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@68) o2_16@@116 f_40@@141) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@116 f_40@@141)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@116 f_40@@141))
))) (forall ((o2_16@@117 T@Ref) (f_40@@142 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@117 f_40@@142) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@68) o2_16@@117 f_40@@142) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@117 f_40@@142)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@117 f_40@@142))
))) (forall ((o2_16@@118 T@Ref) (f_40@@143 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@118 f_40@@143) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@68) o2_16@@118 f_40@@143) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@118 f_40@@143)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@118 f_40@@143))
))) (forall ((o2_16@@119 T@Ref) (f_40@@144 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@119 f_40@@144) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@68) o2_16@@119 f_40@@144) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@119 f_40@@144)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@119 f_40@@144))
))) (forall ((o2_16@@120 T@Ref) (f_40@@145 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@120 f_40@@145) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@68) o2_16@@120 f_40@@145) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@120 f_40@@145)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@120 f_40@@145))
))) (forall ((o2_16@@121 T@Ref) (f_40@@146 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@121 f_40@@146) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@68) o2_16@@121 f_40@@146) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@121 f_40@@146)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@121 f_40@@146))
))) (forall ((o2_16@@122 T@Ref) (f_40@@147 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@122 f_40@@147) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@68) o2_16@@122 f_40@@147) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@122 f_40@@147)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@122 f_40@@147))
))) (forall ((o2_16@@123 T@Ref) (f_40@@148 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@68) null (PredicateMaskField_14600 pm_f_16@@13))) o2_16@@123 f_40@@148) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@68) o2_16@@123 f_40@@148) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@123 f_40@@148)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@40) o2_16@@123 f_40@@148))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@68 ExhaleHeap@@40 Mask@@91) (IsPredicateField_14600_51941 pm_f_16@@13))
)))
(assert (forall ((Heap@@69 T@PolymorphicMapType_14540) (ExhaleHeap@@41 T@PolymorphicMapType_14540) (Mask@@92 T@PolymorphicMapType_14561) (pm_f_16@@14 T@Field_19862_19863) ) (!  (=> (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (=> (and (HasDirectPerm_19862_17955 Mask@@92 null pm_f_16@@14) (IsWandField_19862_61650 pm_f_16@@14)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@124 T@Ref) (f_40@@149 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@124 f_40@@149) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@69) o2_16@@124 f_40@@149) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@124 f_40@@149)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@124 f_40@@149))
)) (forall ((o2_16@@125 T@Ref) (f_40@@150 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@125 f_40@@150) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@69) o2_16@@125 f_40@@150) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@125 f_40@@150)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@125 f_40@@150))
))) (forall ((o2_16@@126 T@Ref) (f_40@@151 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@126 f_40@@151) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@69) o2_16@@126 f_40@@151) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@126 f_40@@151)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@126 f_40@@151))
))) (forall ((o2_16@@127 T@Ref) (f_40@@152 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@127 f_40@@152) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@69) o2_16@@127 f_40@@152) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@127 f_40@@152)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@127 f_40@@152))
))) (forall ((o2_16@@128 T@Ref) (f_40@@153 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@128 f_40@@153) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@69) o2_16@@128 f_40@@153) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@128 f_40@@153)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@128 f_40@@153))
))) (forall ((o2_16@@129 T@Ref) (f_40@@154 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@129 f_40@@154) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@69) o2_16@@129 f_40@@154) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@129 f_40@@154)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@129 f_40@@154))
))) (forall ((o2_16@@130 T@Ref) (f_40@@155 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@130 f_40@@155) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@69) o2_16@@130 f_40@@155) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@130 f_40@@155)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@130 f_40@@155))
))) (forall ((o2_16@@131 T@Ref) (f_40@@156 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@131 f_40@@156) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@69) o2_16@@131 f_40@@156) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@131 f_40@@156)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@131 f_40@@156))
))) (forall ((o2_16@@132 T@Ref) (f_40@@157 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@132 f_40@@157) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@69) o2_16@@132 f_40@@157) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@132 f_40@@157)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@132 f_40@@157))
))) (forall ((o2_16@@133 T@Ref) (f_40@@158 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@133 f_40@@158) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@69) o2_16@@133 f_40@@158) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@133 f_40@@158)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@133 f_40@@158))
))) (forall ((o2_16@@134 T@Ref) (f_40@@159 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@134 f_40@@159) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@69) o2_16@@134 f_40@@159) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@134 f_40@@159)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@134 f_40@@159))
))) (forall ((o2_16@@135 T@Ref) (f_40@@160 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@135 f_40@@160) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@69) o2_16@@135 f_40@@160) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@135 f_40@@160)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@135 f_40@@160))
))) (forall ((o2_16@@136 T@Ref) (f_40@@161 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@136 f_40@@161) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@69) o2_16@@136 f_40@@161) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@136 f_40@@161)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@136 f_40@@161))
))) (forall ((o2_16@@137 T@Ref) (f_40@@162 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@137 f_40@@162) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@69) o2_16@@137 f_40@@162) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@137 f_40@@162)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@137 f_40@@162))
))) (forall ((o2_16@@138 T@Ref) (f_40@@163 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@138 f_40@@163) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@69) o2_16@@138 f_40@@163) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@138 f_40@@163)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@138 f_40@@163))
))) (forall ((o2_16@@139 T@Ref) (f_40@@164 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@139 f_40@@164) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@69) o2_16@@139 f_40@@164) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@139 f_40@@164)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@139 f_40@@164))
))) (forall ((o2_16@@140 T@Ref) (f_40@@165 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@140 f_40@@165) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@69) o2_16@@140 f_40@@165) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@140 f_40@@165)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@140 f_40@@165))
))) (forall ((o2_16@@141 T@Ref) (f_40@@166 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@141 f_40@@166) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@69) o2_16@@141 f_40@@166) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@141 f_40@@166)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@141 f_40@@166))
))) (forall ((o2_16@@142 T@Ref) (f_40@@167 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@142 f_40@@167) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@69) o2_16@@142 f_40@@167) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@142 f_40@@167)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@142 f_40@@167))
))) (forall ((o2_16@@143 T@Ref) (f_40@@168 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@143 f_40@@168) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@69) o2_16@@143 f_40@@168) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@143 f_40@@168)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@143 f_40@@168))
))) (forall ((o2_16@@144 T@Ref) (f_40@@169 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@144 f_40@@169) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@69) o2_16@@144 f_40@@169) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@144 f_40@@169)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@144 f_40@@169))
))) (forall ((o2_16@@145 T@Ref) (f_40@@170 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@145 f_40@@170) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@69) o2_16@@145 f_40@@170) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@145 f_40@@170)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@145 f_40@@170))
))) (forall ((o2_16@@146 T@Ref) (f_40@@171 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@146 f_40@@171) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@69) o2_16@@146 f_40@@171) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@146 f_40@@171)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@146 f_40@@171))
))) (forall ((o2_16@@147 T@Ref) (f_40@@172 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@147 f_40@@172) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) o2_16@@147 f_40@@172) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@147 f_40@@172)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@147 f_40@@172))
))) (forall ((o2_16@@148 T@Ref) (f_40@@173 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@69) null (WandMaskField_19862 pm_f_16@@14))) o2_16@@148 f_40@@173) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@69) o2_16@@148 f_40@@173) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@148 f_40@@173)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@41) o2_16@@148 f_40@@173))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@69 ExhaleHeap@@41 Mask@@92) (IsWandField_19862_61650 pm_f_16@@14))
)))
(assert (forall ((Heap@@70 T@PolymorphicMapType_14540) (ExhaleHeap@@42 T@PolymorphicMapType_14540) (Mask@@93 T@PolymorphicMapType_14561) (pm_f_16@@15 T@Field_19135_19136) ) (!  (=> (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (=> (and (HasDirectPerm_19102_17955 Mask@@93 null pm_f_16@@15) (IsWandField_8126_8127 pm_f_16@@15)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@149 T@Ref) (f_40@@174 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@149 f_40@@174) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@70) o2_16@@149 f_40@@174) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@149 f_40@@174)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@149 f_40@@174))
)) (forall ((o2_16@@150 T@Ref) (f_40@@175 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@150 f_40@@175) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@70) o2_16@@150 f_40@@175) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@150 f_40@@175)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@150 f_40@@175))
))) (forall ((o2_16@@151 T@Ref) (f_40@@176 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@151 f_40@@176) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@70) o2_16@@151 f_40@@176) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@151 f_40@@176)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@151 f_40@@176))
))) (forall ((o2_16@@152 T@Ref) (f_40@@177 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@152 f_40@@177) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@70) o2_16@@152 f_40@@177) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@152 f_40@@177)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@152 f_40@@177))
))) (forall ((o2_16@@153 T@Ref) (f_40@@178 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@153 f_40@@178) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@70) o2_16@@153 f_40@@178) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@153 f_40@@178)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@153 f_40@@178))
))) (forall ((o2_16@@154 T@Ref) (f_40@@179 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@154 f_40@@179) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@70) o2_16@@154 f_40@@179) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@154 f_40@@179)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@154 f_40@@179))
))) (forall ((o2_16@@155 T@Ref) (f_40@@180 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@155 f_40@@180) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@70) o2_16@@155 f_40@@180) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@155 f_40@@180)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@155 f_40@@180))
))) (forall ((o2_16@@156 T@Ref) (f_40@@181 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@156 f_40@@181) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@70) o2_16@@156 f_40@@181) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@156 f_40@@181)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@156 f_40@@181))
))) (forall ((o2_16@@157 T@Ref) (f_40@@182 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@157 f_40@@182) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@70) o2_16@@157 f_40@@182) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@157 f_40@@182)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@157 f_40@@182))
))) (forall ((o2_16@@158 T@Ref) (f_40@@183 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@158 f_40@@183) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@70) o2_16@@158 f_40@@183) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@158 f_40@@183)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@158 f_40@@183))
))) (forall ((o2_16@@159 T@Ref) (f_40@@184 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@159 f_40@@184) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@70) o2_16@@159 f_40@@184) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@159 f_40@@184)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@159 f_40@@184))
))) (forall ((o2_16@@160 T@Ref) (f_40@@185 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@160 f_40@@185) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@70) o2_16@@160 f_40@@185) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@160 f_40@@185)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@160 f_40@@185))
))) (forall ((o2_16@@161 T@Ref) (f_40@@186 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@161 f_40@@186) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@70) o2_16@@161 f_40@@186) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@161 f_40@@186)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@161 f_40@@186))
))) (forall ((o2_16@@162 T@Ref) (f_40@@187 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@162 f_40@@187) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@70) o2_16@@162 f_40@@187) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@162 f_40@@187)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@162 f_40@@187))
))) (forall ((o2_16@@163 T@Ref) (f_40@@188 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@163 f_40@@188) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@70) o2_16@@163 f_40@@188) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@163 f_40@@188)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@163 f_40@@188))
))) (forall ((o2_16@@164 T@Ref) (f_40@@189 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@164 f_40@@189) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@70) o2_16@@164 f_40@@189) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@164 f_40@@189)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@164 f_40@@189))
))) (forall ((o2_16@@165 T@Ref) (f_40@@190 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@165 f_40@@190) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@70) o2_16@@165 f_40@@190) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@165 f_40@@190)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@165 f_40@@190))
))) (forall ((o2_16@@166 T@Ref) (f_40@@191 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@166 f_40@@191) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@70) o2_16@@166 f_40@@191) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@166 f_40@@191)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@166 f_40@@191))
))) (forall ((o2_16@@167 T@Ref) (f_40@@192 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@167 f_40@@192) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) o2_16@@167 f_40@@192) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@167 f_40@@192)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@167 f_40@@192))
))) (forall ((o2_16@@168 T@Ref) (f_40@@193 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@168 f_40@@193) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@70) o2_16@@168 f_40@@193) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@168 f_40@@193)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@168 f_40@@193))
))) (forall ((o2_16@@169 T@Ref) (f_40@@194 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@169 f_40@@194) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@70) o2_16@@169 f_40@@194) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@169 f_40@@194)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@169 f_40@@194))
))) (forall ((o2_16@@170 T@Ref) (f_40@@195 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@170 f_40@@195) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@70) o2_16@@170 f_40@@195) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@170 f_40@@195)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@170 f_40@@195))
))) (forall ((o2_16@@171 T@Ref) (f_40@@196 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@171 f_40@@196) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@70) o2_16@@171 f_40@@196) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@171 f_40@@196)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@171 f_40@@196))
))) (forall ((o2_16@@172 T@Ref) (f_40@@197 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@172 f_40@@197) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@70) o2_16@@172 f_40@@197) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@172 f_40@@197)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@172 f_40@@197))
))) (forall ((o2_16@@173 T@Ref) (f_40@@198 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@70) null (WandMaskField_8126 pm_f_16@@15))) o2_16@@173 f_40@@198) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@70) o2_16@@173 f_40@@198) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@173 f_40@@198)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@42) o2_16@@173 f_40@@198))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@70 ExhaleHeap@@42 Mask@@93) (IsWandField_8126_8127 pm_f_16@@15))
)))
(assert (forall ((Heap@@71 T@PolymorphicMapType_14540) (ExhaleHeap@@43 T@PolymorphicMapType_14540) (Mask@@94 T@PolymorphicMapType_14561) (pm_f_16@@16 T@Field_18458_18459) ) (!  (=> (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (=> (and (HasDirectPerm_18427_17955 Mask@@94 null pm_f_16@@16) (IsWandField_8082_8083 pm_f_16@@16)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@174 T@Ref) (f_40@@199 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@174 f_40@@199) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@71) o2_16@@174 f_40@@199) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@174 f_40@@199)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@174 f_40@@199))
)) (forall ((o2_16@@175 T@Ref) (f_40@@200 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@175 f_40@@200) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@71) o2_16@@175 f_40@@200) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@175 f_40@@200)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@175 f_40@@200))
))) (forall ((o2_16@@176 T@Ref) (f_40@@201 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@176 f_40@@201) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@71) o2_16@@176 f_40@@201) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@176 f_40@@201)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@176 f_40@@201))
))) (forall ((o2_16@@177 T@Ref) (f_40@@202 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@177 f_40@@202) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@71) o2_16@@177 f_40@@202) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@177 f_40@@202)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@177 f_40@@202))
))) (forall ((o2_16@@178 T@Ref) (f_40@@203 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@178 f_40@@203) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@71) o2_16@@178 f_40@@203) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@178 f_40@@203)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@178 f_40@@203))
))) (forall ((o2_16@@179 T@Ref) (f_40@@204 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@179 f_40@@204) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@71) o2_16@@179 f_40@@204) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@179 f_40@@204)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@179 f_40@@204))
))) (forall ((o2_16@@180 T@Ref) (f_40@@205 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@180 f_40@@205) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@71) o2_16@@180 f_40@@205) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@180 f_40@@205)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@180 f_40@@205))
))) (forall ((o2_16@@181 T@Ref) (f_40@@206 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@181 f_40@@206) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@71) o2_16@@181 f_40@@206) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@181 f_40@@206)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@181 f_40@@206))
))) (forall ((o2_16@@182 T@Ref) (f_40@@207 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@182 f_40@@207) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@71) o2_16@@182 f_40@@207) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@182 f_40@@207)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@182 f_40@@207))
))) (forall ((o2_16@@183 T@Ref) (f_40@@208 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@183 f_40@@208) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@71) o2_16@@183 f_40@@208) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@183 f_40@@208)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@183 f_40@@208))
))) (forall ((o2_16@@184 T@Ref) (f_40@@209 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@184 f_40@@209) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@71) o2_16@@184 f_40@@209) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@184 f_40@@209)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@184 f_40@@209))
))) (forall ((o2_16@@185 T@Ref) (f_40@@210 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@185 f_40@@210) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@71) o2_16@@185 f_40@@210) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@185 f_40@@210)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@185 f_40@@210))
))) (forall ((o2_16@@186 T@Ref) (f_40@@211 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@186 f_40@@211) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@71) o2_16@@186 f_40@@211) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@186 f_40@@211)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@186 f_40@@211))
))) (forall ((o2_16@@187 T@Ref) (f_40@@212 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@187 f_40@@212) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) o2_16@@187 f_40@@212) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@187 f_40@@212)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@187 f_40@@212))
))) (forall ((o2_16@@188 T@Ref) (f_40@@213 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@188 f_40@@213) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@71) o2_16@@188 f_40@@213) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@188 f_40@@213)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@188 f_40@@213))
))) (forall ((o2_16@@189 T@Ref) (f_40@@214 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@189 f_40@@214) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@71) o2_16@@189 f_40@@214) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@189 f_40@@214)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@189 f_40@@214))
))) (forall ((o2_16@@190 T@Ref) (f_40@@215 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@190 f_40@@215) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@71) o2_16@@190 f_40@@215) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@190 f_40@@215)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@190 f_40@@215))
))) (forall ((o2_16@@191 T@Ref) (f_40@@216 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@191 f_40@@216) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@71) o2_16@@191 f_40@@216) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@191 f_40@@216)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@191 f_40@@216))
))) (forall ((o2_16@@192 T@Ref) (f_40@@217 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@192 f_40@@217) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@71) o2_16@@192 f_40@@217) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@192 f_40@@217)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@192 f_40@@217))
))) (forall ((o2_16@@193 T@Ref) (f_40@@218 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@193 f_40@@218) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@71) o2_16@@193 f_40@@218) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@193 f_40@@218)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@193 f_40@@218))
))) (forall ((o2_16@@194 T@Ref) (f_40@@219 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@194 f_40@@219) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@71) o2_16@@194 f_40@@219) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@194 f_40@@219)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@194 f_40@@219))
))) (forall ((o2_16@@195 T@Ref) (f_40@@220 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@195 f_40@@220) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@71) o2_16@@195 f_40@@220) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@195 f_40@@220)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@195 f_40@@220))
))) (forall ((o2_16@@196 T@Ref) (f_40@@221 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@196 f_40@@221) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@71) o2_16@@196 f_40@@221) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@196 f_40@@221)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@196 f_40@@221))
))) (forall ((o2_16@@197 T@Ref) (f_40@@222 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@197 f_40@@222) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@71) o2_16@@197 f_40@@222) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@197 f_40@@222)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@197 f_40@@222))
))) (forall ((o2_16@@198 T@Ref) (f_40@@223 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@71) null (WandMaskField_8082 pm_f_16@@16))) o2_16@@198 f_40@@223) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@71) o2_16@@198 f_40@@223) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@198 f_40@@223)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@43) o2_16@@198 f_40@@223))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@71 ExhaleHeap@@43 Mask@@94) (IsWandField_8082_8083 pm_f_16@@16))
)))
(assert (forall ((Heap@@72 T@PolymorphicMapType_14540) (ExhaleHeap@@44 T@PolymorphicMapType_14540) (Mask@@95 T@PolymorphicMapType_14561) (pm_f_16@@17 T@Field_17954_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (=> (and (HasDirectPerm_17927_17955 Mask@@95 null pm_f_16@@17) (IsWandField_8057_8058 pm_f_16@@17)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@199 T@Ref) (f_40@@224 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@199 f_40@@224) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@72) o2_16@@199 f_40@@224) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@199 f_40@@224)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@199 f_40@@224))
)) (forall ((o2_16@@200 T@Ref) (f_40@@225 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@200 f_40@@225) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@72) o2_16@@200 f_40@@225) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@200 f_40@@225)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@200 f_40@@225))
))) (forall ((o2_16@@201 T@Ref) (f_40@@226 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@201 f_40@@226) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@72) o2_16@@201 f_40@@226) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@201 f_40@@226)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@201 f_40@@226))
))) (forall ((o2_16@@202 T@Ref) (f_40@@227 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@202 f_40@@227) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@72) o2_16@@202 f_40@@227) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@202 f_40@@227)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@202 f_40@@227))
))) (forall ((o2_16@@203 T@Ref) (f_40@@228 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@203 f_40@@228) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@72) o2_16@@203 f_40@@228) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@203 f_40@@228)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@203 f_40@@228))
))) (forall ((o2_16@@204 T@Ref) (f_40@@229 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@204 f_40@@229) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@72) o2_16@@204 f_40@@229) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@204 f_40@@229)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@204 f_40@@229))
))) (forall ((o2_16@@205 T@Ref) (f_40@@230 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@205 f_40@@230) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@72) o2_16@@205 f_40@@230) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@205 f_40@@230)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@205 f_40@@230))
))) (forall ((o2_16@@206 T@Ref) (f_40@@231 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@206 f_40@@231) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@72) o2_16@@206 f_40@@231) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@206 f_40@@231)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@206 f_40@@231))
))) (forall ((o2_16@@207 T@Ref) (f_40@@232 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@207 f_40@@232) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) o2_16@@207 f_40@@232) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@207 f_40@@232)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@207 f_40@@232))
))) (forall ((o2_16@@208 T@Ref) (f_40@@233 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@208 f_40@@233) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@72) o2_16@@208 f_40@@233) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@208 f_40@@233)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@208 f_40@@233))
))) (forall ((o2_16@@209 T@Ref) (f_40@@234 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@209 f_40@@234) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@72) o2_16@@209 f_40@@234) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@209 f_40@@234)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@209 f_40@@234))
))) (forall ((o2_16@@210 T@Ref) (f_40@@235 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@210 f_40@@235) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@72) o2_16@@210 f_40@@235) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@210 f_40@@235)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@210 f_40@@235))
))) (forall ((o2_16@@211 T@Ref) (f_40@@236 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@211 f_40@@236) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@72) o2_16@@211 f_40@@236) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@211 f_40@@236)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@211 f_40@@236))
))) (forall ((o2_16@@212 T@Ref) (f_40@@237 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@212 f_40@@237) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@72) o2_16@@212 f_40@@237) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@212 f_40@@237)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@212 f_40@@237))
))) (forall ((o2_16@@213 T@Ref) (f_40@@238 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@213 f_40@@238) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@72) o2_16@@213 f_40@@238) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@213 f_40@@238)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@213 f_40@@238))
))) (forall ((o2_16@@214 T@Ref) (f_40@@239 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@214 f_40@@239) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@72) o2_16@@214 f_40@@239) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@214 f_40@@239)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@214 f_40@@239))
))) (forall ((o2_16@@215 T@Ref) (f_40@@240 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@215 f_40@@240) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@72) o2_16@@215 f_40@@240) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@215 f_40@@240)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@215 f_40@@240))
))) (forall ((o2_16@@216 T@Ref) (f_40@@241 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@216 f_40@@241) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@72) o2_16@@216 f_40@@241) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@216 f_40@@241)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@216 f_40@@241))
))) (forall ((o2_16@@217 T@Ref) (f_40@@242 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@217 f_40@@242) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@72) o2_16@@217 f_40@@242) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@217 f_40@@242)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@217 f_40@@242))
))) (forall ((o2_16@@218 T@Ref) (f_40@@243 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@218 f_40@@243) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@72) o2_16@@218 f_40@@243) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@218 f_40@@243)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@218 f_40@@243))
))) (forall ((o2_16@@219 T@Ref) (f_40@@244 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@219 f_40@@244) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@72) o2_16@@219 f_40@@244) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@219 f_40@@244)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@219 f_40@@244))
))) (forall ((o2_16@@220 T@Ref) (f_40@@245 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@220 f_40@@245) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@72) o2_16@@220 f_40@@245) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@220 f_40@@245)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@220 f_40@@245))
))) (forall ((o2_16@@221 T@Ref) (f_40@@246 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@221 f_40@@246) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@72) o2_16@@221 f_40@@246) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@221 f_40@@246)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@221 f_40@@246))
))) (forall ((o2_16@@222 T@Ref) (f_40@@247 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@222 f_40@@247) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@72) o2_16@@222 f_40@@247) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@222 f_40@@247)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@222 f_40@@247))
))) (forall ((o2_16@@223 T@Ref) (f_40@@248 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@72) null (WandMaskField_8057 pm_f_16@@17))) o2_16@@223 f_40@@248) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@72) o2_16@@223 f_40@@248) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@223 f_40@@248)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@44) o2_16@@223 f_40@@248))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@72 ExhaleHeap@@44 Mask@@95) (IsWandField_8057_8058 pm_f_16@@17))
)))
(assert (forall ((Heap@@73 T@PolymorphicMapType_14540) (ExhaleHeap@@45 T@PolymorphicMapType_14540) (Mask@@96 T@PolymorphicMapType_14561) (pm_f_16@@18 T@Field_14600_17955) ) (!  (=> (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (=> (and (HasDirectPerm_14600_17955 Mask@@96 null pm_f_16@@18) (IsWandField_14600_60318 pm_f_16@@18)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_16@@224 T@Ref) (f_40@@249 T@Field_14600_53) ) (!  (=> (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@224 f_40@@249) (= (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@73) o2_16@@224 f_40@@249) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@224 f_40@@249)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@224 f_40@@249))
)) (forall ((o2_16@@225 T@Ref) (f_40@@250 T@Field_14613_14614) ) (!  (=> (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@225 f_40@@250) (= (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@73) o2_16@@225 f_40@@250) (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@225 f_40@@250)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@225 f_40@@250))
))) (forall ((o2_16@@226 T@Ref) (f_40@@251 T@Field_14600_1195) ) (!  (=> (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@226 f_40@@251) (= (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@73) o2_16@@226 f_40@@251) (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@226 f_40@@251)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@226 f_40@@251))
))) (forall ((o2_16@@227 T@Ref) (f_40@@252 T@Field_14600_17944) ) (!  (=> (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@227 f_40@@252) (= (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) o2_16@@227 f_40@@252) (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@227 f_40@@252)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@227 f_40@@252))
))) (forall ((o2_16@@228 T@Ref) (f_40@@253 T@Field_14600_17955) ) (!  (=> (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@228 f_40@@253) (= (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@73) o2_16@@228 f_40@@253) (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@228 f_40@@253)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@228 f_40@@253))
))) (forall ((o2_16@@229 T@Ref) (f_40@@254 T@Field_17927_53) ) (!  (=> (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@229 f_40@@254) (= (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@73) o2_16@@229 f_40@@254) (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@229 f_40@@254)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@229 f_40@@254))
))) (forall ((o2_16@@230 T@Ref) (f_40@@255 T@Field_17927_14614) ) (!  (=> (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@230 f_40@@255) (= (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@73) o2_16@@230 f_40@@255) (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@230 f_40@@255)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@230 f_40@@255))
))) (forall ((o2_16@@231 T@Ref) (f_40@@256 T@Field_17927_1195) ) (!  (=> (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@231 f_40@@256) (= (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@73) o2_16@@231 f_40@@256) (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@231 f_40@@256)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@231 f_40@@256))
))) (forall ((o2_16@@232 T@Ref) (f_40@@257 T@Field_17939_17944) ) (!  (=> (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@232 f_40@@257) (= (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@73) o2_16@@232 f_40@@257) (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@232 f_40@@257)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@232 f_40@@257))
))) (forall ((o2_16@@233 T@Ref) (f_40@@258 T@Field_17954_17955) ) (!  (=> (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@233 f_40@@258) (= (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@73) o2_16@@233 f_40@@258) (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@233 f_40@@258)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@233 f_40@@258))
))) (forall ((o2_16@@234 T@Ref) (f_40@@259 T@Field_18427_53) ) (!  (=> (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@234 f_40@@259) (= (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@73) o2_16@@234 f_40@@259) (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@234 f_40@@259)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@234 f_40@@259))
))) (forall ((o2_16@@235 T@Ref) (f_40@@260 T@Field_18427_14614) ) (!  (=> (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@235 f_40@@260) (= (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@73) o2_16@@235 f_40@@260) (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@235 f_40@@260)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@235 f_40@@260))
))) (forall ((o2_16@@236 T@Ref) (f_40@@261 T@Field_18427_1411) ) (!  (=> (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@236 f_40@@261) (= (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@73) o2_16@@236 f_40@@261) (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@236 f_40@@261)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@236 f_40@@261))
))) (forall ((o2_16@@237 T@Ref) (f_40@@262 T@Field_18441_18446) ) (!  (=> (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@237 f_40@@262) (= (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@73) o2_16@@237 f_40@@262) (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@237 f_40@@262)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@237 f_40@@262))
))) (forall ((o2_16@@238 T@Ref) (f_40@@263 T@Field_18458_18459) ) (!  (=> (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@238 f_40@@263) (= (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@73) o2_16@@238 f_40@@263) (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@238 f_40@@263)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@238 f_40@@263))
))) (forall ((o2_16@@239 T@Ref) (f_40@@264 T@Field_19102_53) ) (!  (=> (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@239 f_40@@264) (= (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@73) o2_16@@239 f_40@@264) (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@239 f_40@@264)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@239 f_40@@264))
))) (forall ((o2_16@@240 T@Ref) (f_40@@265 T@Field_19102_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@240 f_40@@265) (= (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@73) o2_16@@240 f_40@@265) (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@240 f_40@@265)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@240 f_40@@265))
))) (forall ((o2_16@@241 T@Ref) (f_40@@266 T@Field_19102_1737) ) (!  (=> (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@241 f_40@@266) (= (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@73) o2_16@@241 f_40@@266) (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@241 f_40@@266)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@241 f_40@@266))
))) (forall ((o2_16@@242 T@Ref) (f_40@@267 T@Field_19117_19122) ) (!  (=> (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@242 f_40@@267) (= (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@73) o2_16@@242 f_40@@267) (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@242 f_40@@267)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@242 f_40@@267))
))) (forall ((o2_16@@243 T@Ref) (f_40@@268 T@Field_19135_19136) ) (!  (=> (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@243 f_40@@268) (= (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@73) o2_16@@243 f_40@@268) (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@243 f_40@@268)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@243 f_40@@268))
))) (forall ((o2_16@@244 T@Ref) (f_40@@269 T@Field_19862_53) ) (!  (=> (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@244 f_40@@269) (= (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@73) o2_16@@244 f_40@@269) (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@244 f_40@@269)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@244 f_40@@269))
))) (forall ((o2_16@@245 T@Ref) (f_40@@270 T@Field_19862_14614) ) (!  (=> (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@245 f_40@@270) (= (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@73) o2_16@@245 f_40@@270) (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@245 f_40@@270)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@245 f_40@@270))
))) (forall ((o2_16@@246 T@Ref) (f_40@@271 T@Field_19862_1195) ) (!  (=> (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@246 f_40@@271) (= (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@73) o2_16@@246 f_40@@271) (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@246 f_40@@271)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@246 f_40@@271))
))) (forall ((o2_16@@247 T@Ref) (f_40@@272 T@Field_19875_19880) ) (!  (=> (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@247 f_40@@272) (= (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@73) o2_16@@247 f_40@@272) (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@247 f_40@@272)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@247 f_40@@272))
))) (forall ((o2_16@@248 T@Ref) (f_40@@273 T@Field_19862_19863) ) (!  (=> (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@73) null (WandMaskField_14600 pm_f_16@@18))) o2_16@@248 f_40@@273) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@73) o2_16@@248 f_40@@273) (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@248 f_40@@273)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| ExhaleHeap@@45) o2_16@@248 f_40@@273))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@73 ExhaleHeap@@45 Mask@@96) (IsWandField_14600_60318 pm_f_16@@18))
)))
(assert (forall ((arg1@@19 T@Ref) (arg2@@19 T@Ref) (arg3@@12 T@Ref) (arg4@@12 Bool) (arg1_2@@1 T@Ref) (arg2_2@@1 T@Ref) (arg3_2@@0 T@Ref) (arg4_2@@0 Bool) ) (!  (=> (= (wand_1 arg1@@19 arg2@@19 arg3@@12 arg4@@12) (wand_1 arg1_2@@1 arg2_2@@1 arg3_2@@0 arg4_2@@0)) (and (= arg1@@19 arg1_2@@1) (and (= arg2@@19 arg2_2@@1) (and (= arg3@@12 arg3_2@@0) (= arg4@@12 arg4_2@@0)))))
 :qid |stdinbpl.240:15|
 :skolemid |35|
 :pattern ( (wand_1 arg1@@19 arg2@@19 arg3@@12 arg4@@12) (wand_1 arg1_2@@1 arg2_2@@1 arg3_2@@0 arg4_2@@0))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun WandDefRHSMask@0 () T@PolymorphicMapType_14561)
(declare-fun z () T@Ref)
(declare-fun WandDefLHSMask@0 () T@PolymorphicMapType_14561)
(declare-fun y () T@Ref)
(declare-fun WandDefLHSHeap@0 () T@PolymorphicMapType_14540)
(declare-fun WandDefLHSMask@1 () T@PolymorphicMapType_14561)
(declare-fun WandDefRHSHeap@0 () T@PolymorphicMapType_14540)
(declare-fun Mask@11 () T@PolymorphicMapType_14561)
(declare-fun x@@5 () T@Ref)
(declare-fun AssertMask@2 () T@PolymorphicMapType_14561)
(declare-fun AssertMask@1 () T@PolymorphicMapType_14561)
(declare-fun Heap@7 () T@PolymorphicMapType_14540)
(declare-fun AssertMask@0 () T@PolymorphicMapType_14561)
(declare-fun Mask@10 () T@PolymorphicMapType_14561)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_14561)
(declare-fun Result_4Mask () T@PolymorphicMapType_14561)
(declare-fun Result_4Heap () T@PolymorphicMapType_14540)
(declare-fun b_10@19 () Bool)
(declare-fun b_15@6 () Bool)
(declare-fun b_10@18 () Bool)
(declare-fun neededTransfer@11 () Real)
(declare-fun Used_8Mask@3 () T@PolymorphicMapType_14561)
(declare-fun initNeededTransfer@2 () Real)
(declare-fun b_16@0 () Bool)
(declare-fun b_16@1 () Bool)
(declare-fun b_16@2 () Bool)
(declare-fun Ops_5Mask@11 () T@PolymorphicMapType_14561)
(declare-fun b_16@3 () Bool)
(declare-fun Ops_5Heap@0 () T@PolymorphicMapType_14540)
(declare-fun Used_8Heap@0 () T@PolymorphicMapType_14540)
(declare-fun b_16@4 () Bool)
(declare-fun takeTransfer@5 () Real)
(declare-fun Heap@5 () T@PolymorphicMapType_14540)
(declare-fun neededTransfer@9 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_14561)
(declare-fun b_15@3 () Bool)
(declare-fun Used_8Mask@1 () T@PolymorphicMapType_14561)
(declare-fun neededTransfer@10 () Real)
(declare-fun Used_8Mask@2 () T@PolymorphicMapType_14561)
(declare-fun b_15@4 () Bool)
(declare-fun TempMask@5 () T@PolymorphicMapType_14561)
(declare-fun b_15@5 () Bool)
(declare-fun Mask@9 () T@PolymorphicMapType_14561)
(declare-fun newPMask@2 () T@PolymorphicMapType_15089)
(declare-fun Heap@6 () T@PolymorphicMapType_14540)
(declare-fun maskTransfer@5 () Real)
(declare-fun takeTransfer@4 () Real)
(declare-fun Ops_5Mask@9 () T@PolymorphicMapType_14561)
(declare-fun b_15@0 () Bool)
(declare-fun neededTransfer@8 () Real)
(declare-fun Used_8Mask@0 () T@PolymorphicMapType_14561)
(declare-fun b_15@1 () Bool)
(declare-fun TempMask@4 () T@PolymorphicMapType_14561)
(declare-fun b_15@2 () Bool)
(declare-fun Ops_5Mask@10 () T@PolymorphicMapType_14561)
(declare-fun maskTransfer@4 () Real)
(declare-fun b_15 () Bool)
(declare-fun b_10@12 () Bool)
(declare-fun b_13@6 () Bool)
(declare-fun neededTransfer@7 () Real)
(declare-fun Used_7Mask@3 () T@PolymorphicMapType_14561)
(declare-fun initNeededTransfer@1 () Real)
(declare-fun b_14@0 () Bool)
(declare-fun b_14@1 () Bool)
(declare-fun Result_3Heap () T@PolymorphicMapType_14540)
(declare-fun Result_3Mask () T@PolymorphicMapType_14561)
(declare-fun b_14@2 () Bool)
(declare-fun Ops_5Mask@8 () T@PolymorphicMapType_14561)
(declare-fun b_14@3 () Bool)
(declare-fun Used_7Heap@0 () T@PolymorphicMapType_14540)
(declare-fun b_14@4 () Bool)
(declare-fun b_10@13 () Bool)
(declare-fun b_10@14 () Bool)
(declare-fun b_10@15 () Bool)
(declare-fun b_10@16 () Bool)
(declare-fun b_10@17 () Bool)
(declare-fun Heap@4 () T@PolymorphicMapType_14540)
(declare-fun Mask@7 () T@PolymorphicMapType_14561)
(declare-fun takeTransfer@3 () Real)
(declare-fun Mask@5 () T@PolymorphicMapType_14561)
(declare-fun neededTransfer@5 () Real)
(declare-fun Heap@2 () T@PolymorphicMapType_14540)
(declare-fun b_13@3 () Bool)
(declare-fun Used_7Mask@1 () T@PolymorphicMapType_14561)
(declare-fun neededTransfer@6 () Real)
(declare-fun Used_7Mask@2 () T@PolymorphicMapType_14561)
(declare-fun b_13@4 () Bool)
(declare-fun TempMask@3 () T@PolymorphicMapType_14561)
(declare-fun b_13@5 () Bool)
(declare-fun Mask@6 () T@PolymorphicMapType_14561)
(declare-fun newPMask@1 () T@PolymorphicMapType_15089)
(declare-fun Heap@3 () T@PolymorphicMapType_14540)
(declare-fun maskTransfer@3 () Real)
(declare-fun takeTransfer@2 () Real)
(declare-fun Ops_5Mask@6 () T@PolymorphicMapType_14561)
(declare-fun b_13@0 () Bool)
(declare-fun neededTransfer@4 () Real)
(declare-fun Used_7Mask@0 () T@PolymorphicMapType_14561)
(declare-fun b_13@1 () Bool)
(declare-fun TempMask@2 () T@PolymorphicMapType_14561)
(declare-fun b_13@2 () Bool)
(declare-fun Ops_5Mask@7 () T@PolymorphicMapType_14561)
(declare-fun maskTransfer@2 () Real)
(declare-fun b_13 () Bool)
(declare-fun b_10@6 () Bool)
(declare-fun b_11@6 () Bool)
(declare-fun neededTransfer@3 () Real)
(declare-fun Used_6Mask@3 () T@PolymorphicMapType_14561)
(declare-fun initNeededTransfer@0 () Real)
(declare-fun b_12@0 () Bool)
(declare-fun b_12@1 () Bool)
(declare-fun Result_2Heap () T@PolymorphicMapType_14540)
(declare-fun Result_2Mask () T@PolymorphicMapType_14561)
(declare-fun b_12@2 () Bool)
(declare-fun Ops_5Mask@5 () T@PolymorphicMapType_14561)
(declare-fun b_12@3 () Bool)
(declare-fun Used_6Heap@0 () T@PolymorphicMapType_14540)
(declare-fun b_12@4 () Bool)
(declare-fun b_10@7 () Bool)
(declare-fun b_10@8 () Bool)
(declare-fun b_10@9 () Bool)
(declare-fun b_10@10 () Bool)
(declare-fun b_10@11 () Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_14561)
(declare-fun Heap@1 () T@PolymorphicMapType_14540)
(declare-fun takeTransfer@1 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_14561)
(declare-fun neededTransfer@1 () Real)
(declare-fun b_11@3 () Bool)
(declare-fun Used_6Mask@1 () T@PolymorphicMapType_14561)
(declare-fun Heap@@74 () T@PolymorphicMapType_14540)
(declare-fun neededTransfer@2 () Real)
(declare-fun Used_6Mask@2 () T@PolymorphicMapType_14561)
(declare-fun b_11@4 () Bool)
(declare-fun TempMask@1 () T@PolymorphicMapType_14561)
(declare-fun b_11@5 () Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_14561)
(declare-fun newPMask@0 () T@PolymorphicMapType_15089)
(declare-fun Heap@0 () T@PolymorphicMapType_14540)
(declare-fun maskTransfer@1 () Real)
(declare-fun takeTransfer@0 () Real)
(declare-fun Ops_5Mask@3 () T@PolymorphicMapType_14561)
(declare-fun b_11@0 () Bool)
(declare-fun neededTransfer@0 () Real)
(declare-fun Used_6Mask@0 () T@PolymorphicMapType_14561)
(declare-fun b_11@1 () Bool)
(declare-fun TempMask@0 () T@PolymorphicMapType_14561)
(declare-fun b_11@2 () Bool)
(declare-fun Ops_5Mask@4 () T@PolymorphicMapType_14561)
(declare-fun maskTransfer@0 () Real)
(declare-fun b_11 () Bool)
(declare-fun b_10@5 () Bool)
(declare-fun b_10@4 () Bool)
(declare-fun b_10@2 () Bool)
(declare-fun Ops_5Mask@1 () T@PolymorphicMapType_14561)
(declare-fun Ops_5Mask@2 () T@PolymorphicMapType_14561)
(declare-fun b_10@3 () Bool)
(declare-fun b_10@0 () Bool)
(declare-fun Ops_5Mask@0 () T@PolymorphicMapType_14561)
(declare-fun b_10@1 () Bool)
(declare-fun Mask@0 () T@PolymorphicMapType_14561)
(declare-fun Mask@1 () T@PolymorphicMapType_14561)
(declare-fun b_10 () Bool)
(declare-fun b_9@0 () Bool)
(declare-fun b_9 () Bool)
(declare-fun Used_5Heap@0 () T@PolymorphicMapType_14540)
(set-info :boogie-vc-id test03)
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
 (=> (= (ControlFlow 0 0) 87) (let ((anon53_correct true))
(let ((anon88_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 18) 15)) anon53_correct)))
(let ((anon88_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 16) (- 0 17)) (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| WandDefRHSMask@0) null (P z)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| WandDefRHSMask@0) null (P z))) (=> (= (ControlFlow 0 16) 15) anon53_correct))))))
(let ((anon87_Then_correct  (=> (and (= WandDefLHSMask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask))) (state WandDefLHSHeap@0 WandDefLHSMask@0)) (=> (and (and (and (= WandDefLHSMask@1 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| WandDefLHSMask@0) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| WandDefLHSMask@0) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| WandDefLHSMask@0) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| WandDefLHSMask@0))) (state WandDefLHSHeap@0 WandDefLHSMask@1)) (and (state WandDefLHSHeap@0 WandDefLHSMask@1) (state WandDefLHSHeap@0 WandDefLHSMask@1))) (and (and (= WandDefRHSMask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask))) (state WandDefRHSHeap@0 WandDefRHSMask@0)) (and (|P#trigger_8162| WandDefRHSHeap@0 (P z)) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| WandDefRHSHeap@0) null (P z)) EmptyFrame)))) (and (=> (= (ControlFlow 0 19) 16) anon88_Then_correct) (=> (= (ControlFlow 0 19) 18) anon88_Else_correct))))))
(let ((anon60_correct true))
(let ((anon91_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 4) 1)) anon60_correct)))
(let ((anon91_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 2) (- 0 3)) (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P x@@5)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P x@@5))) (=> (= (ControlFlow 0 2) 1) anon60_correct))))))
(let ((anon58_correct  (=> (and (= AssertMask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| AssertMask@1) null (P z) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| AssertMask@1) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| AssertMask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| AssertMask@1))) (state Heap@7 Mask@11)) (and (=> (= (ControlFlow 0 5) 2) anon91_Then_correct) (=> (= (ControlFlow 0 5) 4) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 8) 5)) anon58_correct)))
(let ((anon90_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| AssertMask@1) null (P z)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| AssertMask@1) null (P z))) (=> (= (ControlFlow 0 6) 5) anon58_correct))))))
(let ((anon56_correct  (=> (= AssertMask@1 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P y) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P y)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@11))) (and (=> (= (ControlFlow 0 9) 6) anon90_Then_correct) (=> (= (ControlFlow 0 9) 8) anon90_Else_correct)))))
(let ((anon89_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon56_correct)))
(let ((anon89_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P y)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) null (P y))) (=> (= (ControlFlow 0 10) 9) anon56_correct))))))
(let ((anon87_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (<= FullPerm (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@11) null (wand_2 y z z z true)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@11) null (wand_2 y z z z true))) (=> (and (= AssertMask@0 (PolymorphicMapType_14561 (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@11) (store (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@11) null (wand_2 y z z z true) (- (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@11) null (wand_2 y z z z true)) FullPerm)) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@11) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@11))) (state Heap@7 Mask@11)) (and (=> (= (ControlFlow 0 13) 10) anon89_Then_correct) (=> (= (ControlFlow 0 13) 12) anon89_Else_correct)))))))
(let ((anon50_correct  (=> (and (and (= Mask@11 (PolymorphicMapType_14561 (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@10) (store (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@10) null (wand_2 y z z z true) (+ (select (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@10) null (wand_2 y z z z true)) FullPerm)) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@10) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@10))) (state Heap@7 Mask@11)) (and (state Heap@7 Mask@11) (state Heap@7 Mask@11))) (and (=> (= (ControlFlow 0 20) 19) anon87_Then_correct) (=> (= (ControlFlow 0 20) 13) anon87_Else_correct)))))
(let ((anon49_correct  (=> (and (and (= UnfoldingMask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Result_4Mask) null (P z) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Result_4Mask) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Result_4Mask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Result_4Mask))) (state Result_4Heap UnfoldingMask@0)) (and (state Result_4Heap Result_4Mask) (= (ControlFlow 0 23) 20))) anon50_correct)))
(let ((anon86_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 23)) anon49_correct)))
(let ((anon86_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Result_4Mask) null (P z)))) (=> (<= FullPerm (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Result_4Mask) null (P z))) (=> (= (ControlFlow 0 24) 23) anon49_correct))))))
(let ((anon85_Then_correct  (=> b_10@19 (=> (and (|P#trigger_8162| Result_4Heap (P z)) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Result_4Heap) null (P z)) EmptyFrame)) (and (=> (= (ControlFlow 0 27) 24) anon86_Then_correct) (=> (= (ControlFlow 0 27) 26) anon86_Else_correct))))))
(let ((anon85_Else_correct  (=> (and (not b_10@19) (= (ControlFlow 0 22) 20)) anon50_correct)))
(let ((anon84_Then_correct  (=> (and (and b_10@19 b_10@19) b_15@6) (and (=> (= (ControlFlow 0 28) 27) anon85_Then_correct) (=> (= (ControlFlow 0 28) 22) anon85_Else_correct)))))
(let ((anon84_Else_correct  (=> (and (not (and (and b_10@19 b_10@19) b_15@6)) (= (ControlFlow 0 21) 20)) anon50_correct)))
(let ((anon45_correct  (and (=> (= (ControlFlow 0 29) (- 0 30)) (=> (and (and b_10@18 b_10@18) b_15@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_8Mask@3) null (P z)) initNeededTransfer@2)))) (=> (=> (and (and b_10@18 b_10@18) b_15@6) (and (= neededTransfer@11 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_8Mask@3) null (P z)) initNeededTransfer@2))) (=> (and (= b_16@0  (and b_10@18 b_15@6)) (= b_16@1  (and b_16@0 (state Result_4Heap Result_4Mask)))) (=> (and (and (= b_16@2  (and b_16@1 (sumMask Result_4Mask Ops_5Mask@11 Used_8Mask@3))) (= b_16@3  (and (and b_16@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_4Heap Ops_5Mask@11)) (IdenticalOnKnownLocations Used_8Heap@0 Result_4Heap Used_8Mask@3)))) (and (= b_16@4  (and b_16@3 (state Result_4Heap Result_4Mask))) (= b_10@19  (and b_10@18 b_16@4)))) (and (=> (= (ControlFlow 0 29) 28) anon84_Then_correct) (=> (= (ControlFlow 0 29) 21) anon84_Else_correct))))))))
(let ((anon83_Else_correct  (=> (>= 0.0 takeTransfer@5) (=> (and (= Heap@7 Heap@5) (= neededTransfer@11 neededTransfer@9)) (=> (and (and (= Mask@10 Mask@8) (= b_15@6 b_15@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 33) 29))) anon45_correct)))))
(let ((anon83_Then_correct  (=> (> takeTransfer@5 0.0) (=> (and (= neededTransfer@10 (- neededTransfer@9 takeTransfer@5)) (= Used_8Mask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_8Mask@1) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_8Mask@1) null (P z)) takeTransfer@5)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Used_8Mask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Used_8Mask@1)))) (=> (and (and (= b_15@4  (and b_15@3 (state Used_8Heap@0 Used_8Mask@2))) (= TempMask@5 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_15@5  (and b_15@4 (IdenticalOnKnownLocations Heap@5 Used_8Heap@0 TempMask@5))) (= Mask@9 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@8) null (P z) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@8) null (P z)) takeTransfer@5)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@8) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@8))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_26 T@Ref) (f_29 T@Field_14600_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26 f_29) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26 f_29)) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@2) o_26 f_29))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@2) o_26 f_29))
)) (forall ((o_26@@0 T@Ref) (f_29@@0 T@Field_14613_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@0 f_29@@0) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@0 f_29@@0)) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@2) o_26@@0 f_29@@0))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@2) o_26@@0 f_29@@0))
))) (forall ((o_26@@1 T@Ref) (f_29@@1 T@Field_14600_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@1 f_29@@1) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@1 f_29@@1)) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@2) o_26@@1 f_29@@1))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@2) o_26@@1 f_29@@1))
))) (forall ((o_26@@2 T@Ref) (f_29@@2 T@Field_14600_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@2 f_29@@2) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@2 f_29@@2)) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@2) o_26@@2 f_29@@2))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@2) o_26@@2 f_29@@2))
))) (forall ((o_26@@3 T@Ref) (f_29@@3 T@Field_14600_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@3 f_29@@3) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@3 f_29@@3)) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@2) o_26@@3 f_29@@3))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@2) o_26@@3 f_29@@3))
))) (forall ((o_26@@4 T@Ref) (f_29@@4 T@Field_17927_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@4 f_29@@4) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@4 f_29@@4)) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@2) o_26@@4 f_29@@4))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@2) o_26@@4 f_29@@4))
))) (forall ((o_26@@5 T@Ref) (f_29@@5 T@Field_17927_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@5 f_29@@5) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@5 f_29@@5)) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@2) o_26@@5 f_29@@5))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@2) o_26@@5 f_29@@5))
))) (forall ((o_26@@6 T@Ref) (f_29@@6 T@Field_17927_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@6 f_29@@6) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@6 f_29@@6)) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@2) o_26@@6 f_29@@6))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@2) o_26@@6 f_29@@6))
))) (forall ((o_26@@7 T@Ref) (f_29@@7 T@Field_17939_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@7 f_29@@7) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@7 f_29@@7)) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@2) o_26@@7 f_29@@7))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@2) o_26@@7 f_29@@7))
))) (forall ((o_26@@8 T@Ref) (f_29@@8 T@Field_17954_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@8 f_29@@8) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@8 f_29@@8)) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@2) o_26@@8 f_29@@8))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@2) o_26@@8 f_29@@8))
))) (forall ((o_26@@9 T@Ref) (f_29@@9 T@Field_18427_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@9 f_29@@9) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@9 f_29@@9)) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@2) o_26@@9 f_29@@9))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@2) o_26@@9 f_29@@9))
))) (forall ((o_26@@10 T@Ref) (f_29@@10 T@Field_18427_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@10 f_29@@10) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@10 f_29@@10)) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@2) o_26@@10 f_29@@10))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@2) o_26@@10 f_29@@10))
))) (forall ((o_26@@11 T@Ref) (f_29@@11 T@Field_18427_1411) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@11 f_29@@11) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@11 f_29@@11)) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@2) o_26@@11 f_29@@11))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@2) o_26@@11 f_29@@11))
))) (forall ((o_26@@12 T@Ref) (f_29@@12 T@Field_18441_18446) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@12 f_29@@12) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@12 f_29@@12)) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@2) o_26@@12 f_29@@12))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@2) o_26@@12 f_29@@12))
))) (forall ((o_26@@13 T@Ref) (f_29@@13 T@Field_18458_18459) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@13 f_29@@13) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@13 f_29@@13)) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@2) o_26@@13 f_29@@13))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@2) o_26@@13 f_29@@13))
))) (forall ((o_26@@14 T@Ref) (f_29@@14 T@Field_19102_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@14 f_29@@14) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@14 f_29@@14)) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@2) o_26@@14 f_29@@14))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@2) o_26@@14 f_29@@14))
))) (forall ((o_26@@15 T@Ref) (f_29@@15 T@Field_19102_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@15 f_29@@15) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@15 f_29@@15)) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@2) o_26@@15 f_29@@15))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@2) o_26@@15 f_29@@15))
))) (forall ((o_26@@16 T@Ref) (f_29@@16 T@Field_19102_1737) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@16 f_29@@16) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@16 f_29@@16)) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@2) o_26@@16 f_29@@16))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@2) o_26@@16 f_29@@16))
))) (forall ((o_26@@17 T@Ref) (f_29@@17 T@Field_19117_19122) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@17 f_29@@17) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@17 f_29@@17)) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@2) o_26@@17 f_29@@17))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@2) o_26@@17 f_29@@17))
))) (forall ((o_26@@18 T@Ref) (f_29@@18 T@Field_19135_19136) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@18 f_29@@18) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@18 f_29@@18)) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@2) o_26@@18 f_29@@18))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@2) o_26@@18 f_29@@18))
))) (forall ((o_26@@19 T@Ref) (f_29@@19 T@Field_19862_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@19 f_29@@19) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@19 f_29@@19)) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@2) o_26@@19 f_29@@19))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@2) o_26@@19 f_29@@19))
))) (forall ((o_26@@20 T@Ref) (f_29@@20 T@Field_19862_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@20 f_29@@20) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@20 f_29@@20)) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@2) o_26@@20 f_29@@20))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@2) o_26@@20 f_29@@20))
))) (forall ((o_26@@21 T@Ref) (f_29@@21 T@Field_19862_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@21 f_29@@21) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@21 f_29@@21)) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@2) o_26@@21 f_29@@21))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@2) o_26@@21 f_29@@21))
))) (forall ((o_26@@22 T@Ref) (f_29@@22 T@Field_19875_19880) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@22 f_29@@22) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@22 f_29@@22)) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@2) o_26@@22 f_29@@22))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@2) o_26@@22 f_29@@22))
))) (forall ((o_26@@23 T@Ref) (f_29@@23 T@Field_19862_19863) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true))) o_26@@23 f_29@@23) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) null (|P#sm| z))) o_26@@23 f_29@@23)) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@2) o_26@@23 f_29@@23))
 :qid |stdinbpl.1119:35|
 :skolemid |53|
 :pattern ( (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@2) o_26@@23 f_29@@23))
))) (= Heap@6 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@5) (store (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@5) null (|wand_2#sm| y z z z true) newPMask@2) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@5) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@5)))) (and (= Heap@7 Heap@6) (= neededTransfer@11 neededTransfer@10))) (and (and (= Mask@10 Mask@9) (= b_15@6 b_15@5)) (and (= Used_8Mask@3 Used_8Mask@2) (= (ControlFlow 0 32) 29)))) anon45_correct))))))
(let ((anon82_Else_correct  (=> (and (< maskTransfer@5 neededTransfer@9) (= takeTransfer@5 maskTransfer@5)) (and (=> (= (ControlFlow 0 35) 32) anon83_Then_correct) (=> (= (ControlFlow 0 35) 33) anon83_Else_correct)))))
(let ((anon82_Then_correct  (=> (and (<= neededTransfer@9 maskTransfer@5) (= takeTransfer@5 neededTransfer@9)) (and (=> (= (ControlFlow 0 34) 32) anon83_Then_correct) (=> (= (ControlFlow 0 34) 33) anon83_Else_correct)))))
(let ((anon81_Then_correct  (=> (and (and (and (and (and b_10@18 b_10@18) b_15@3) true) (> neededTransfer@9 0.0)) (= maskTransfer@5 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@8) null (P z)))) (and (=> (= (ControlFlow 0 36) 34) anon82_Then_correct) (=> (= (ControlFlow 0 36) 35) anon82_Else_correct)))))
(let ((anon81_Else_correct  (=> (not (and (and (and (and b_10@18 b_10@18) b_15@3) true) (> neededTransfer@9 0.0))) (=> (and (= Heap@7 Heap@5) (= neededTransfer@11 neededTransfer@9)) (=> (and (and (= Mask@10 Mask@8) (= b_15@6 b_15@3)) (and (= Used_8Mask@3 Used_8Mask@1) (= (ControlFlow 0 31) 29))) anon45_correct)))))
(let ((anon80_Else_correct  (=> (>= 0.0 takeTransfer@4) (=> (and (and (= Ops_5Mask@11 Ops_5Mask@9) (= Used_8Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 39) 36) anon81_Then_correct) (=> (= (ControlFlow 0 39) 31) anon81_Else_correct))))))
(let ((anon80_Then_correct  (=> (> takeTransfer@4 0.0) (=> (and (= neededTransfer@8 (- FullPerm takeTransfer@4)) (= Used_8Mask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z)) takeTransfer@4)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (=> (and (and (and (= b_15@1  (and b_15@0 (state Used_8Heap@0 Used_8Mask@0))) (= TempMask@4 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_15@2  (and b_15@1 (IdenticalOnKnownLocations Ops_5Heap@0 Used_8Heap@0 TempMask@4))) (= Ops_5Mask@10 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@9) null (P z) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@9) null (P z)) takeTransfer@4)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Ops_5Mask@9) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Ops_5Mask@9))))) (and (and (= Ops_5Mask@11 Ops_5Mask@10) (= Used_8Mask@1 Used_8Mask@0)) (and (= b_15@3 b_15@2) (= neededTransfer@9 neededTransfer@8)))) (and (=> (= (ControlFlow 0 38) 36) anon81_Then_correct) (=> (= (ControlFlow 0 38) 31) anon81_Else_correct)))))))
(let ((anon79_Else_correct  (=> (and (< maskTransfer@4 FullPerm) (= takeTransfer@4 maskTransfer@4)) (and (=> (= (ControlFlow 0 41) 38) anon80_Then_correct) (=> (= (ControlFlow 0 41) 39) anon80_Else_correct)))))
(let ((anon79_Then_correct  (=> (and (<= FullPerm maskTransfer@4) (= takeTransfer@4 FullPerm)) (and (=> (= (ControlFlow 0 40) 38) anon80_Then_correct) (=> (= (ControlFlow 0 40) 39) anon80_Else_correct)))))
(let ((anon78_Then_correct  (=> (and (and (and (and (and b_10@18 b_10@18) b_15@0) true) (> FullPerm 0.0)) (= maskTransfer@4 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@9) null (P z)))) (and (=> (= (ControlFlow 0 42) 40) anon79_Then_correct) (=> (= (ControlFlow 0 42) 41) anon79_Else_correct)))))
(let ((anon78_Else_correct  (=> (not (and (and (and (and b_10@18 b_10@18) b_15@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_5Mask@11 Ops_5Mask@9) (= Used_8Mask@1 ZeroMask)) (and (= b_15@3 b_15@0) (= neededTransfer@9 FullPerm))) (and (=> (= (ControlFlow 0 37) 36) anon81_Then_correct) (=> (= (ControlFlow 0 37) 31) anon81_Else_correct))))))
(let ((anon33_correct  (=> (and (= b_15@0  (and b_15 (state Used_8Heap@0 ZeroMask))) (= initNeededTransfer@2 (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P z)) FullPerm))) (and (=> (= (ControlFlow 0 43) (- 0 44)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 43) 42) anon78_Then_correct) (=> (= (ControlFlow 0 43) 37) anon78_Else_correct)))))))
(let ((anon32_correct  (and (=> (= (ControlFlow 0 46) (- 0 47)) (=> (and b_10@12 b_13@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_7Mask@3) null (P y)) initNeededTransfer@1)))) (=> (=> (and b_10@12 b_13@6) (and (= neededTransfer@7 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_7Mask@3) null (P y)) initNeededTransfer@1))) (=> (= b_14@0  (and b_10@12 b_13@6)) (=> (and (= b_14@1  (and b_14@0 (state Result_3Heap Result_3Mask))) (= b_14@2  (and b_14@1 (sumMask Result_3Mask Ops_5Mask@8 Used_7Mask@3)))) (=> (and (and (= b_14@3  (and (and b_14@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_3Heap Ops_5Mask@8)) (IdenticalOnKnownLocations Used_7Heap@0 Result_3Heap Used_7Mask@3))) (= b_14@4  (and b_14@3 (state Result_3Heap Result_3Mask)))) (and (= b_10@13  (and b_10@12 b_14@4)) (= b_10@14  (and b_10@13 b_13@6)))) (=> (and (and (and (= b_10@15  (and b_10@14 (= Used_7Heap@0 Ops_5Heap@0))) (= b_10@16  (and b_10@15 (state Ops_5Heap@0 Ops_5Mask@8)))) (and (= b_10@17  (and b_10@16 (state Ops_5Heap@0 Ops_5Mask@8))) (= b_10@18 b_10@17))) (and (and (= Heap@5 Heap@4) (= Mask@8 Mask@7)) (and (= Ops_5Mask@9 Ops_5Mask@8) (= (ControlFlow 0 46) 43)))) anon33_correct))))))))
(let ((anon77_Else_correct  (=> (>= 0.0 takeTransfer@3) (=> (and (= Mask@7 Mask@5) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_13@6 b_13@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 50) 46))) anon32_correct)))))
(let ((anon77_Then_correct  (=> (> takeTransfer@3 0.0) (=> (and (= neededTransfer@6 (- neededTransfer@5 takeTransfer@3)) (= Used_7Mask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_7Mask@1) null (P y) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_7Mask@1) null (P y)) takeTransfer@3)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Used_7Mask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Used_7Mask@1)))) (=> (and (and (= b_13@4  (and b_13@3 (state Used_7Heap@0 Used_7Mask@2))) (= TempMask@3 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_13@5  (and b_13@4 (IdenticalOnKnownLocations Heap@2 Used_7Heap@0 TempMask@3))) (= Mask@6 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@5) null (P y) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@5) null (P y)) takeTransfer@3)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@5) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@5))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_14600_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53 f_56) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53 f_56)) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@1) o_53 f_56))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@1) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_14613_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@0 f_56@@0)) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@1) o_53@@0 f_56@@0))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@1) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_14600_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@1 f_56@@1)) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@1) o_53@@1 f_56@@1))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@1) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_14600_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@2 f_56@@2)) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@1) o_53@@2 f_56@@2))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@1) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_14600_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@3 f_56@@3)) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@1) o_53@@3 f_56@@3))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@1) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_17927_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@4 f_56@@4)) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@1) o_53@@4 f_56@@4))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@1) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_17927_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@5 f_56@@5)) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@1) o_53@@5 f_56@@5))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@1) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_17927_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@6 f_56@@6)) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@1) o_53@@6 f_56@@6))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@1) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_17939_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@7 f_56@@7)) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@1) o_53@@7 f_56@@7))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@1) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_17954_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@8 f_56@@8)) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@1) o_53@@8 f_56@@8))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@1) o_53@@8 f_56@@8))
))) (forall ((o_53@@9 T@Ref) (f_56@@9 T@Field_18427_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@9 f_56@@9) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@9 f_56@@9)) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@1) o_53@@9 f_56@@9))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@1) o_53@@9 f_56@@9))
))) (forall ((o_53@@10 T@Ref) (f_56@@10 T@Field_18427_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@10 f_56@@10) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@10 f_56@@10)) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@1) o_53@@10 f_56@@10))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@1) o_53@@10 f_56@@10))
))) (forall ((o_53@@11 T@Ref) (f_56@@11 T@Field_18427_1411) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@11 f_56@@11) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@11 f_56@@11)) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@1) o_53@@11 f_56@@11))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@1) o_53@@11 f_56@@11))
))) (forall ((o_53@@12 T@Ref) (f_56@@12 T@Field_18441_18446) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@12 f_56@@12) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@12 f_56@@12)) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@1) o_53@@12 f_56@@12))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@1) o_53@@12 f_56@@12))
))) (forall ((o_53@@13 T@Ref) (f_56@@13 T@Field_18458_18459) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@13 f_56@@13) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@13 f_56@@13)) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@1) o_53@@13 f_56@@13))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@1) o_53@@13 f_56@@13))
))) (forall ((o_53@@14 T@Ref) (f_56@@14 T@Field_19102_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@14 f_56@@14) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@14 f_56@@14)) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@1) o_53@@14 f_56@@14))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@1) o_53@@14 f_56@@14))
))) (forall ((o_53@@15 T@Ref) (f_56@@15 T@Field_19102_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@15 f_56@@15) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@15 f_56@@15)) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@1) o_53@@15 f_56@@15))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@1) o_53@@15 f_56@@15))
))) (forall ((o_53@@16 T@Ref) (f_56@@16 T@Field_19102_1737) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@16 f_56@@16) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@16 f_56@@16)) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@1) o_53@@16 f_56@@16))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@1) o_53@@16 f_56@@16))
))) (forall ((o_53@@17 T@Ref) (f_56@@17 T@Field_19117_19122) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@17 f_56@@17) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@17 f_56@@17)) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@1) o_53@@17 f_56@@17))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@1) o_53@@17 f_56@@17))
))) (forall ((o_53@@18 T@Ref) (f_56@@18 T@Field_19135_19136) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@18 f_56@@18) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@18 f_56@@18)) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@1) o_53@@18 f_56@@18))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@1) o_53@@18 f_56@@18))
))) (forall ((o_53@@19 T@Ref) (f_56@@19 T@Field_19862_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@19 f_56@@19) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@19 f_56@@19)) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@1) o_53@@19 f_56@@19))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@1) o_53@@19 f_56@@19))
))) (forall ((o_53@@20 T@Ref) (f_56@@20 T@Field_19862_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@20 f_56@@20) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@20 f_56@@20)) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@1) o_53@@20 f_56@@20))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@1) o_53@@20 f_56@@20))
))) (forall ((o_53@@21 T@Ref) (f_56@@21 T@Field_19862_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@21 f_56@@21) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@21 f_56@@21)) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@1) o_53@@21 f_56@@21))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@1) o_53@@21 f_56@@21))
))) (forall ((o_53@@22 T@Ref) (f_56@@22 T@Field_19875_19880) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@22 f_56@@22) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@22 f_56@@22)) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@1) o_53@@22 f_56@@22))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@1) o_53@@22 f_56@@22))
))) (forall ((o_53@@23 T@Ref) (f_56@@23 T@Field_19862_19863) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true))) o_53@@23 f_56@@23) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) null (|P#sm| y))) o_53@@23 f_56@@23)) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@1) o_53@@23 f_56@@23))
 :qid |stdinbpl.1044:39|
 :skolemid |52|
 :pattern ( (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@1) o_53@@23 f_56@@23))
))) (= Heap@3 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@2) (store (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@2) null (|wand_2#sm| y z z z true) newPMask@1) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@2) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@2)))) (and (= Mask@7 Mask@6) (= neededTransfer@7 neededTransfer@6))) (and (and (= Heap@4 Heap@3) (= b_13@6 b_13@5)) (and (= Used_7Mask@3 Used_7Mask@2) (= (ControlFlow 0 49) 46)))) anon32_correct))))))
(let ((anon76_Else_correct  (=> (and (< maskTransfer@3 neededTransfer@5) (= takeTransfer@3 maskTransfer@3)) (and (=> (= (ControlFlow 0 52) 49) anon77_Then_correct) (=> (= (ControlFlow 0 52) 50) anon77_Else_correct)))))
(let ((anon76_Then_correct  (=> (and (<= neededTransfer@5 maskTransfer@3) (= takeTransfer@3 neededTransfer@5)) (and (=> (= (ControlFlow 0 51) 49) anon77_Then_correct) (=> (= (ControlFlow 0 51) 50) anon77_Else_correct)))))
(let ((anon75_Then_correct  (=> (and (and (and (and b_10@12 b_13@3) true) (> neededTransfer@5 0.0)) (= maskTransfer@3 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@5) null (P y)))) (and (=> (= (ControlFlow 0 53) 51) anon76_Then_correct) (=> (= (ControlFlow 0 53) 52) anon76_Else_correct)))))
(let ((anon75_Else_correct  (=> (not (and (and (and b_10@12 b_13@3) true) (> neededTransfer@5 0.0))) (=> (and (= Mask@7 Mask@5) (= neededTransfer@7 neededTransfer@5)) (=> (and (and (= Heap@4 Heap@2) (= b_13@6 b_13@3)) (and (= Used_7Mask@3 Used_7Mask@1) (= (ControlFlow 0 48) 46))) anon32_correct)))))
(let ((anon74_Else_correct  (=> (>= 0.0 takeTransfer@2) (=> (and (and (= Ops_5Mask@8 Ops_5Mask@6) (= Used_7Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 56) 53) anon75_Then_correct) (=> (= (ControlFlow 0 56) 48) anon75_Else_correct))))))
(let ((anon74_Then_correct  (=> (> takeTransfer@2 0.0) (=> (and (= neededTransfer@4 (- FullPerm takeTransfer@2)) (= Used_7Mask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y)) takeTransfer@2)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (=> (and (and (and (= b_13@1  (and b_13@0 (state Used_7Heap@0 Used_7Mask@0))) (= TempMask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_13@2  (and b_13@1 (IdenticalOnKnownLocations Ops_5Heap@0 Used_7Heap@0 TempMask@2))) (= Ops_5Mask@7 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@6) null (P y) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@6) null (P y)) takeTransfer@2)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Ops_5Mask@6) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Ops_5Mask@6))))) (and (and (= Ops_5Mask@8 Ops_5Mask@7) (= Used_7Mask@1 Used_7Mask@0)) (and (= b_13@3 b_13@2) (= neededTransfer@5 neededTransfer@4)))) (and (=> (= (ControlFlow 0 55) 53) anon75_Then_correct) (=> (= (ControlFlow 0 55) 48) anon75_Else_correct)))))))
(let ((anon73_Else_correct  (=> (and (< maskTransfer@2 FullPerm) (= takeTransfer@2 maskTransfer@2)) (and (=> (= (ControlFlow 0 58) 55) anon74_Then_correct) (=> (= (ControlFlow 0 58) 56) anon74_Else_correct)))))
(let ((anon73_Then_correct  (=> (and (<= FullPerm maskTransfer@2) (= takeTransfer@2 FullPerm)) (and (=> (= (ControlFlow 0 57) 55) anon74_Then_correct) (=> (= (ControlFlow 0 57) 56) anon74_Else_correct)))))
(let ((anon72_Then_correct  (=> (and (and (and (and b_10@12 b_13@0) true) (> FullPerm 0.0)) (= maskTransfer@2 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@6) null (P y)))) (and (=> (= (ControlFlow 0 59) 57) anon73_Then_correct) (=> (= (ControlFlow 0 59) 58) anon73_Else_correct)))))
(let ((anon72_Else_correct  (=> (not (and (and (and b_10@12 b_13@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_5Mask@8 Ops_5Mask@6) (= Used_7Mask@1 ZeroMask)) (and (= b_13@3 b_13@0) (= neededTransfer@5 FullPerm))) (and (=> (= (ControlFlow 0 54) 53) anon75_Then_correct) (=> (= (ControlFlow 0 54) 48) anon75_Else_correct))))))
(let ((anon71_Then_correct  (=> b_10@12 (=> (and (and (|P#trigger_8162| Ops_5Heap@0 (P y)) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Ops_5Heap@0) null (P y)) EmptyFrame)) (and (= b_13@0  (and b_13 (state Used_7Heap@0 ZeroMask))) (= initNeededTransfer@1 (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y)) FullPerm)))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 60) 59) anon72_Then_correct) (=> (= (ControlFlow 0 60) 54) anon72_Else_correct))))))))
(let ((anon71_Else_correct  (=> (and (not b_10@12) (= b_10@18 b_10@12)) (=> (and (and (= Heap@5 Heap@2) (= Mask@8 Mask@5)) (and (= Ops_5Mask@9 Ops_5Mask@6) (= (ControlFlow 0 45) 43))) anon33_correct))))
(let ((anon18_correct  (and (=> (= (ControlFlow 0 63) (- 0 64)) (=> (and b_10@6 b_11@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_6Mask@3) null (P x@@5)) initNeededTransfer@0)))) (=> (=> (and b_10@6 b_11@6) (and (= neededTransfer@3 0.0) (= (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_6Mask@3) null (P x@@5)) initNeededTransfer@0))) (=> (and (= b_12@0  (and b_10@6 b_11@6)) (= b_12@1  (and b_12@0 (state Result_2Heap Result_2Mask)))) (=> (and (and (= b_12@2  (and b_12@1 (sumMask Result_2Mask Ops_5Mask@5 Used_6Mask@3))) (= b_12@3  (and (and b_12@2 (IdenticalOnKnownLocations Ops_5Heap@0 Result_2Heap Ops_5Mask@5)) (IdenticalOnKnownLocations Used_6Heap@0 Result_2Heap Used_6Mask@3)))) (and (= b_12@4  (and b_12@3 (state Result_2Heap Result_2Mask))) (= b_10@7  (and b_10@6 b_12@4)))) (=> (and (and (and (= b_10@8  (and b_10@7 b_11@6)) (= b_10@9  (and b_10@8 (= Used_6Heap@0 Ops_5Heap@0)))) (and (= b_10@10  (and b_10@9 (state Ops_5Heap@0 Ops_5Mask@5))) (= b_10@11  (and b_10@10 (state Ops_5Heap@0 Ops_5Mask@5))))) (and (and (= b_10@12 b_10@11) (= Mask@5 Mask@4)) (and (= Ops_5Mask@6 Ops_5Mask@5) (= Heap@2 Heap@1)))) (and (=> (= (ControlFlow 0 63) 60) anon71_Then_correct) (=> (= (ControlFlow 0 63) 45) anon71_Else_correct)))))))))
(let ((anon70_Else_correct  (=> (>= 0.0 takeTransfer@1) (=> (and (= Mask@4 Mask@2) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_11@6 b_11@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@74) (= (ControlFlow 0 67) 63))) anon18_correct)))))
(let ((anon70_Then_correct  (=> (> takeTransfer@1 0.0) (=> (and (= neededTransfer@2 (- neededTransfer@1 takeTransfer@1)) (= Used_6Mask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_6Mask@1) null (P x@@5) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Used_6Mask@1) null (P x@@5)) takeTransfer@1)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Used_6Mask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Used_6Mask@1)))) (=> (and (and (= b_11@4  (and b_11@3 (state Used_6Heap@0 Used_6Mask@2))) (= TempMask@1 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_11@5  (and b_11@4 (IdenticalOnKnownLocations Heap@@74 Used_6Heap@0 TempMask@1))) (= Mask@3 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@2) null (P x@@5) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@2) null (P x@@5)) takeTransfer@1)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@2) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@2))))) (=> (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_14600_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52 f_55) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52 f_55)) (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@0) o_52 f_55))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_14600_53#PolymorphicMapType_15089| newPMask@0) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_14613_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@0 f_55@@0)) (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@0) o_52@@0 f_55@@0))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_14600_14614#PolymorphicMapType_15089| newPMask@0) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_14600_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@1 f_55@@1)) (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@0) o_52@@1 f_55@@1))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_14600_1195#PolymorphicMapType_15089| newPMask@0) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_14600_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@2 f_55@@2)) (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@0) o_52@@2 f_55@@2))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_14600_54271#PolymorphicMapType_15089| newPMask@0) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_14600_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@3 f_55@@3)) (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@0) o_52@@3 f_55@@3))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_14600_17955#PolymorphicMapType_15089| newPMask@0) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_17927_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@4 f_55@@4)) (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@0) o_52@@4 f_55@@4))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_17927_53#PolymorphicMapType_15089| newPMask@0) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_17927_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@5 f_55@@5)) (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@0) o_52@@5 f_55@@5))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_17927_14614#PolymorphicMapType_15089| newPMask@0) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_17927_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@6 f_55@@6)) (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@0) o_52@@6 f_55@@6))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_17927_1195#PolymorphicMapType_15089| newPMask@0) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_17939_17944) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@7 f_55@@7)) (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@0) o_52@@7 f_55@@7))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_17927_55319#PolymorphicMapType_15089| newPMask@0) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_17954_17955) ) (!  (=> (or (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@8 f_55@@8)) (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@0) o_52@@8 f_55@@8))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_17927_17955#PolymorphicMapType_15089| newPMask@0) o_52@@8 f_55@@8))
))) (forall ((o_52@@9 T@Ref) (f_55@@9 T@Field_18427_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@9 f_55@@9) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@9 f_55@@9)) (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@0) o_52@@9 f_55@@9))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_18427_53#PolymorphicMapType_15089| newPMask@0) o_52@@9 f_55@@9))
))) (forall ((o_52@@10 T@Ref) (f_55@@10 T@Field_18427_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@10 f_55@@10) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@10 f_55@@10)) (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@0) o_52@@10 f_55@@10))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_18427_14614#PolymorphicMapType_15089| newPMask@0) o_52@@10 f_55@@10))
))) (forall ((o_52@@11 T@Ref) (f_55@@11 T@Field_18427_1411) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@11 f_55@@11) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@11 f_55@@11)) (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@0) o_52@@11 f_55@@11))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_18427_1195#PolymorphicMapType_15089| newPMask@0) o_52@@11 f_55@@11))
))) (forall ((o_52@@12 T@Ref) (f_55@@12 T@Field_18441_18446) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@12 f_55@@12) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@12 f_55@@12)) (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@0) o_52@@12 f_55@@12))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_18427_56367#PolymorphicMapType_15089| newPMask@0) o_52@@12 f_55@@12))
))) (forall ((o_52@@13 T@Ref) (f_55@@13 T@Field_18458_18459) ) (!  (=> (or (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@13 f_55@@13) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@13 f_55@@13)) (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@0) o_52@@13 f_55@@13))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_18427_17955#PolymorphicMapType_15089| newPMask@0) o_52@@13 f_55@@13))
))) (forall ((o_52@@14 T@Ref) (f_55@@14 T@Field_19102_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@14 f_55@@14) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@14 f_55@@14)) (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@0) o_52@@14 f_55@@14))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19102_53#PolymorphicMapType_15089| newPMask@0) o_52@@14 f_55@@14))
))) (forall ((o_52@@15 T@Ref) (f_55@@15 T@Field_19102_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@15 f_55@@15) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@15 f_55@@15)) (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@0) o_52@@15 f_55@@15))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19102_14614#PolymorphicMapType_15089| newPMask@0) o_52@@15 f_55@@15))
))) (forall ((o_52@@16 T@Ref) (f_55@@16 T@Field_19102_1737) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@16 f_55@@16) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@16 f_55@@16)) (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@0) o_52@@16 f_55@@16))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19102_1195#PolymorphicMapType_15089| newPMask@0) o_52@@16 f_55@@16))
))) (forall ((o_52@@17 T@Ref) (f_55@@17 T@Field_19117_19122) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@17 f_55@@17) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@17 f_55@@17)) (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@0) o_52@@17 f_55@@17))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19102_57415#PolymorphicMapType_15089| newPMask@0) o_52@@17 f_55@@17))
))) (forall ((o_52@@18 T@Ref) (f_55@@18 T@Field_19135_19136) ) (!  (=> (or (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@18 f_55@@18) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@18 f_55@@18)) (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@0) o_52@@18 f_55@@18))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19102_17955#PolymorphicMapType_15089| newPMask@0) o_52@@18 f_55@@18))
))) (forall ((o_52@@19 T@Ref) (f_55@@19 T@Field_19862_53) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@19 f_55@@19) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@19 f_55@@19)) (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@0) o_52@@19 f_55@@19))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19862_53#PolymorphicMapType_15089| newPMask@0) o_52@@19 f_55@@19))
))) (forall ((o_52@@20 T@Ref) (f_55@@20 T@Field_19862_14614) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@20 f_55@@20) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@20 f_55@@20)) (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@0) o_52@@20 f_55@@20))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19862_14614#PolymorphicMapType_15089| newPMask@0) o_52@@20 f_55@@20))
))) (forall ((o_52@@21 T@Ref) (f_55@@21 T@Field_19862_1195) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@21 f_55@@21) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@21 f_55@@21)) (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@0) o_52@@21 f_55@@21))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19862_1195#PolymorphicMapType_15089| newPMask@0) o_52@@21 f_55@@21))
))) (forall ((o_52@@22 T@Ref) (f_55@@22 T@Field_19875_19880) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@22 f_55@@22) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@22 f_55@@22)) (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@0) o_52@@22 f_55@@22))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19862_58463#PolymorphicMapType_15089| newPMask@0) o_52@@22 f_55@@22))
))) (forall ((o_52@@23 T@Ref) (f_55@@23 T@Field_19862_19863) ) (!  (=> (or (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true))) o_52@@23 f_55@@23) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| (select (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) null (|P#sm| x@@5))) o_52@@23 f_55@@23)) (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@0) o_52@@23 f_55@@23))
 :qid |stdinbpl.963:39|
 :skolemid |51|
 :pattern ( (select (|PolymorphicMapType_15089_19862_17955#PolymorphicMapType_15089| newPMask@0) o_52@@23 f_55@@23))
))) (= Heap@0 (PolymorphicMapType_14540 (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_7924_7925#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_8053_22914#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_8166_23033#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_8076_27098#PolymorphicMapType_14540| Heap@@74) (store (|PolymorphicMapType_14540_8119_33544#PolymorphicMapType_14540| Heap@@74) null (|wand_2#sm| y z z z true) newPMask@0) (|PolymorphicMapType_14540_14600_1195#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_14600_46946#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_14600_17955#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_17927_53#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_17927_14614#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_17927_1195#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_17927_17955#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_18427_53#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_18427_14614#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_18427_1195#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_18427_17955#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19102_53#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19102_14614#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19102_1195#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19102_17955#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19862_53#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19862_14614#PolymorphicMapType_14540| Heap@@74) (|PolymorphicMapType_14540_19862_1195#PolymorphicMapType_14540| Heap@@74)))) (and (= Mask@4 Mask@3) (= neededTransfer@3 neededTransfer@2))) (and (and (= b_11@6 b_11@5) (= Used_6Mask@3 Used_6Mask@2)) (and (= Heap@1 Heap@0) (= (ControlFlow 0 66) 63)))) anon18_correct))))))
(let ((anon69_Else_correct  (=> (and (< maskTransfer@1 neededTransfer@1) (= takeTransfer@1 maskTransfer@1)) (and (=> (= (ControlFlow 0 69) 66) anon70_Then_correct) (=> (= (ControlFlow 0 69) 67) anon70_Else_correct)))))
(let ((anon69_Then_correct  (=> (and (<= neededTransfer@1 maskTransfer@1) (= takeTransfer@1 neededTransfer@1)) (and (=> (= (ControlFlow 0 68) 66) anon70_Then_correct) (=> (= (ControlFlow 0 68) 67) anon70_Else_correct)))))
(let ((anon68_Then_correct  (=> (and (and (and (and b_10@6 b_11@3) true) (> neededTransfer@1 0.0)) (= maskTransfer@1 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@2) null (P x@@5)))) (and (=> (= (ControlFlow 0 70) 68) anon69_Then_correct) (=> (= (ControlFlow 0 70) 69) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (not (and (and (and b_10@6 b_11@3) true) (> neededTransfer@1 0.0))) (=> (and (= Mask@4 Mask@2) (= neededTransfer@3 neededTransfer@1)) (=> (and (and (= b_11@6 b_11@3) (= Used_6Mask@3 Used_6Mask@1)) (and (= Heap@1 Heap@@74) (= (ControlFlow 0 65) 63))) anon18_correct)))))
(let ((anon67_Else_correct  (=> (>= 0.0 takeTransfer@0) (=> (and (and (= Ops_5Mask@5 Ops_5Mask@3) (= Used_6Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 73) 70) anon68_Then_correct) (=> (= (ControlFlow 0 73) 65) anon68_Else_correct))))))
(let ((anon67_Then_correct  (=> (> takeTransfer@0 0.0) (=> (and (= neededTransfer@0 (- FullPerm takeTransfer@0)) (= Used_6Mask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5)) takeTransfer@0)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (=> (and (and (and (= b_11@1  (and b_11@0 (state Used_6Heap@0 Used_6Mask@0))) (= TempMask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5) FullPerm) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask)))) (and (= b_11@2  (and b_11@1 (IdenticalOnKnownLocations Ops_5Heap@0 Used_6Heap@0 TempMask@0))) (= Ops_5Mask@4 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@3) null (P x@@5) (- (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@3) null (P x@@5)) takeTransfer@0)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Ops_5Mask@3) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Ops_5Mask@3))))) (and (and (= Ops_5Mask@5 Ops_5Mask@4) (= Used_6Mask@1 Used_6Mask@0)) (and (= b_11@3 b_11@2) (= neededTransfer@1 neededTransfer@0)))) (and (=> (= (ControlFlow 0 72) 70) anon68_Then_correct) (=> (= (ControlFlow 0 72) 65) anon68_Else_correct)))))))
(let ((anon66_Else_correct  (=> (and (< maskTransfer@0 FullPerm) (= takeTransfer@0 maskTransfer@0)) (and (=> (= (ControlFlow 0 75) 72) anon67_Then_correct) (=> (= (ControlFlow 0 75) 73) anon67_Else_correct)))))
(let ((anon66_Then_correct  (=> (and (<= FullPerm maskTransfer@0) (= takeTransfer@0 FullPerm)) (and (=> (= (ControlFlow 0 74) 72) anon67_Then_correct) (=> (= (ControlFlow 0 74) 73) anon67_Else_correct)))))
(let ((anon65_Then_correct  (=> (and (and (and (and b_10@6 b_11@0) true) (> FullPerm 0.0)) (= maskTransfer@0 (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@3) null (P x@@5)))) (and (=> (= (ControlFlow 0 76) 74) anon66_Then_correct) (=> (= (ControlFlow 0 76) 75) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (not (and (and (and b_10@6 b_11@0) true) (> FullPerm 0.0))) (=> (and (and (= Ops_5Mask@5 Ops_5Mask@3) (= Used_6Mask@1 ZeroMask)) (and (= b_11@3 b_11@0) (= neededTransfer@1 FullPerm))) (and (=> (= (ControlFlow 0 71) 70) anon68_Then_correct) (=> (= (ControlFlow 0 71) 65) anon68_Else_correct))))))
(let ((anon64_Then_correct  (=> b_10@6 (=> (and (and (|P#trigger_8162| Ops_5Heap@0 (P x@@5)) (= (select (|PolymorphicMapType_14540_8162_8163#PolymorphicMapType_14540| Ops_5Heap@0) null (P x@@5)) EmptyFrame)) (and (= b_11@0  (and b_11 (state Used_6Heap@0 ZeroMask))) (= initNeededTransfer@0 (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5)) FullPerm)))) (and (=> (= (ControlFlow 0 77) (- 0 78)) (>= FullPerm 0.0)) (=> (>= FullPerm 0.0) (and (=> (= (ControlFlow 0 77) 76) anon65_Then_correct) (=> (= (ControlFlow 0 77) 71) anon65_Else_correct))))))))
(let ((anon64_Else_correct  (=> (not b_10@6) (=> (and (and (= b_10@12 b_10@6) (= Mask@5 Mask@2)) (and (= Ops_5Mask@6 Ops_5Mask@3) (= Heap@2 Heap@@74))) (and (=> (= (ControlFlow 0 62) 60) anon71_Then_correct) (=> (= (ControlFlow 0 62) 45) anon71_Else_correct))))))
(let ((anon5_correct  (=> (and (= b_10@5  (and b_10@4 (state Ops_5Heap@0 Ops_5Mask@3))) (= b_10@6  (and b_10@5 (state Ops_5Heap@0 Ops_5Mask@3)))) (and (=> (= (ControlFlow 0 79) 77) anon64_Then_correct) (=> (= (ControlFlow 0 79) 62) anon64_Else_correct)))))
(let ((anon63_Else_correct  (=> (and (and (not b_10@2) (= b_10@4 b_10@2)) (and (= Ops_5Mask@3 Ops_5Mask@1) (= (ControlFlow 0 82) 79))) anon5_correct)))
(let ((anon63_Then_correct  (=> (and b_10@2 (= Ops_5Mask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@1) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Ops_5Mask@1) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Ops_5Mask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Ops_5Mask@1)))) (=> (and (and (= b_10@3  (and b_10@2 (state Ops_5Heap@0 Ops_5Mask@2))) (= b_10@4 b_10@3)) (and (= Ops_5Mask@3 Ops_5Mask@2) (= (ControlFlow 0 81) 79))) anon5_correct))))
(let ((anon62_Else_correct  (=> (not b_10@0) (=> (and (= Ops_5Mask@1 ZeroMask) (= b_10@2 b_10@0)) (and (=> (= (ControlFlow 0 84) 81) anon63_Then_correct) (=> (= (ControlFlow 0 84) 82) anon63_Else_correct))))))
(let ((anon62_Then_correct  (=> b_10@0 (=> (and (and (= Ops_5Mask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P y)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask))) (= b_10@1  (and b_10@0 (state Ops_5Heap@0 Ops_5Mask@0)))) (and (= Ops_5Mask@1 Ops_5Mask@0) (= b_10@2 b_10@1))) (and (=> (= (ControlFlow 0 83) 81) anon63_Then_correct) (=> (= (ControlFlow 0 83) 82) anon63_Else_correct))))))
(let ((anon61_Then_correct  (=> b_10@0 (and (=> (= (ControlFlow 0 85) 83) anon62_Then_correct) (=> (= (ControlFlow 0 85) 84) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (and (not b_10@0) (= b_10@4 b_10@0)) (and (= Ops_5Mask@3 ZeroMask) (= (ControlFlow 0 80) 79))) anon5_correct)))
(let ((anon0_correct  (=> (state Heap@@74 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@74) x@@5 $allocated)) (=> (and (and (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@74) y $allocated) (select (|PolymorphicMapType_14540_7921_53#PolymorphicMapType_14540| Heap@@74) z $allocated)) (and (= Mask@0 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| ZeroMask) null (P x@@5)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| ZeroMask) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| ZeroMask))) (state Heap@@74 Mask@0))) (=> (and (and (and (= Mask@1 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@0) null (P y) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@0) null (P y)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@0) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@0))) (state Heap@@74 Mask@1)) (and (= Mask@2 (PolymorphicMapType_14561 (store (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@1) null (P z) (+ (select (|PolymorphicMapType_14561_8162_8163#PolymorphicMapType_14561| Mask@1) null (P z)) FullPerm)) (|PolymorphicMapType_14561_8050_1195#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8071_1411#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8113_1737#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8162_1195#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8162_53#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8162_14614#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8162_71312#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8050_8163#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8050_53#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8050_14614#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8050_71726#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8071_8163#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8071_53#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8071_14614#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8071_72140#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8113_8163#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8113_53#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8113_14614#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_8113_72554#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_14600_8163#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_14600_1195#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_14600_53#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_14600_14614#PolymorphicMapType_14561| Mask@1) (|PolymorphicMapType_14561_14600_72980#PolymorphicMapType_14561| Mask@1))) (state Heap@@74 Mask@2))) (and (and (state Heap@@74 Mask@2) (state Heap@@74 Mask@2)) (and (= b_10@0  (and b_10 (state Ops_5Heap@0 ZeroMask))) (= b_9@0  (and b_9 (state Used_5Heap@0 ZeroMask)))))) (and (=> (= (ControlFlow 0 86) 85) anon61_Then_correct) (=> (= (ControlFlow 0 86) 80) anon61_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 87) 86) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
