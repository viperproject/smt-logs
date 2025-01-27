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
(declare-sort T@Field_13898_53 0)
(declare-sort T@Field_13911_13912 0)
(declare-sort T@Field_20148_20150 0)
(declare-sort T@Field_20099_3382 0)
(declare-sort T@Field_20607_20608 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23694_23699 0)
(declare-sort T@Field_8234_8354 0)
(declare-sort T@Field_8234_23699 0)
(declare-sort T@Field_8353_21331 0)
(declare-sort T@Field_8353_3382 0)
(declare-sort T@Field_8353_53 0)
(declare-sort T@Field_8353_13912 0)
(declare-datatypes ((T@PolymorphicMapType_13859 0)) (((PolymorphicMapType_13859 (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| (Array T@Ref T@Field_20148_20150 Real)) (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| (Array T@Ref T@Field_20607_20608 Real)) (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| (Array T@Ref T@Field_20099_3382 Real)) (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| (Array T@Ref T@Field_8234_8354 Real)) (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| (Array T@Ref T@Field_13898_53 Real)) (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| (Array T@Ref T@Field_13911_13912 Real)) (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| (Array T@Ref T@Field_8234_23699 Real)) (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_21331 Real)) (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_3382 Real)) (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_53 Real)) (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_13912 Real)) (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| (Array T@Ref T@Field_23694_23699 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14387 0)) (((PolymorphicMapType_14387 (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (Array T@Ref T@Field_20099_3382 Bool)) (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (Array T@Ref T@Field_13898_53 Bool)) (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (Array T@Ref T@Field_13911_13912 Bool)) (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (Array T@Ref T@Field_20148_20150 Bool)) (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (Array T@Ref T@Field_8234_8354 Bool)) (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (Array T@Ref T@Field_8234_23699 Bool)) (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_3382 Bool)) (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_53 Bool)) (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_13912 Bool)) (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_21331 Bool)) (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (Array T@Ref T@Field_20607_20608 Bool)) (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (Array T@Ref T@Field_23694_23699 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13838 0)) (((PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| (Array T@Ref T@Field_13898_53 Bool)) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| (Array T@Ref T@Field_13911_13912 T@Ref)) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| (Array T@Ref T@Field_20148_20150 (Array T@Ref Bool))) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| (Array T@Ref T@Field_20099_3382 Int)) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| (Array T@Ref T@Field_20607_20608 T@FrameType)) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| (Array T@Ref T@Field_23694_23699 T@PolymorphicMapType_14387)) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| (Array T@Ref T@Field_8234_8354 T@FrameType)) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| (Array T@Ref T@Field_8234_23699 T@PolymorphicMapType_14387)) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_21331 (Array T@Ref Bool))) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_3382 Int)) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_53 Bool)) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_13912 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_13898_53)
(declare-fun fld () T@Field_20099_3382)
(declare-fun col_2 () T@Field_20148_20150)
(declare-fun succHeap (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838) Bool)
(declare-fun state (T@PolymorphicMapType_13838 T@PolymorphicMapType_13859) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13859) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14387)
(declare-fun |getField01'| (T@PolymorphicMapType_13838 (Array T@Ref Bool) T@Ref) Int)
(declare-fun dummyFunction_3622 (Int) Bool)
(declare-fun |getField01#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv ((Array T@Ref Bool)) T@Field_20607_20608)
(declare-fun IsPredicateField_8353_8354 (T@Field_20607_20608) Bool)
(declare-fun |getField'| (T@PolymorphicMapType_13838 T@Ref) Int)
(declare-fun |getField#triggerStateless| (T@Ref) Int)
(declare-fun |inv#trigger_8353| (T@PolymorphicMapType_13838 T@Field_20607_20608) Bool)
(declare-fun |inv#everUsed_8353| (T@Field_20607_20608) Bool)
(declare-fun getField (T@PolymorphicMapType_13838 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838 T@PolymorphicMapType_13859) Bool)
(declare-fun HasDirectPerm_8353_8354 (T@PolymorphicMapType_13859 T@Ref T@Field_20607_20608) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8353 (T@Field_20607_20608) T@Field_23694_23699)
(declare-fun IsPredicateField_8234_42971 (T@Field_8234_8354) Bool)
(declare-fun HasDirectPerm_8234_8354 (T@PolymorphicMapType_13859 T@Ref T@Field_8234_8354) Bool)
(declare-fun PredicateMaskField_8234 (T@Field_8234_8354) T@Field_8234_23699)
(declare-fun IsWandField_8353_47092 (T@Field_20607_20608) Bool)
(declare-fun WandMaskField_8353 (T@Field_20607_20608) T@Field_23694_23699)
(declare-fun IsWandField_8234_46735 (T@Field_8234_8354) Bool)
(declare-fun WandMaskField_8234 (T@Field_8234_8354) T@Field_8234_23699)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |getField#frame| (T@FrameType T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_20796 ((Array T@Ref Bool)) T@FrameType)
(declare-fun |inv#sm| ((Array T@Ref Bool)) T@Field_23694_23699)
(declare-fun dummyHeap () T@PolymorphicMapType_13838)
(declare-fun ZeroMask () T@PolymorphicMapType_13859)
(declare-fun getField01 (T@PolymorphicMapType_13838 (Array T@Ref Bool) T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_20607_20607 (T@Field_20607_20608 T@FrameType T@Field_20607_20608 T@FrameType) Bool)
(declare-fun InsidePredicate_13898_13898 (T@Field_8234_8354 T@FrameType T@Field_8234_8354 T@FrameType) Bool)
(declare-fun IsPredicateField_8232_3382 (T@Field_20099_3382) Bool)
(declare-fun IsWandField_8232_3382 (T@Field_20099_3382) Bool)
(declare-fun IsPredicateField_8234_20174 (T@Field_20148_20150) Bool)
(declare-fun IsWandField_8234_20201 (T@Field_20148_20150) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8353_55283 (T@Field_23694_23699) Bool)
(declare-fun IsWandField_8353_55299 (T@Field_23694_23699) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8353_13912 (T@Field_8353_13912) Bool)
(declare-fun IsWandField_8353_13912 (T@Field_8353_13912) Bool)
(declare-fun IsPredicateField_8353_53 (T@Field_8353_53) Bool)
(declare-fun IsWandField_8353_53 (T@Field_8353_53) Bool)
(declare-fun IsPredicateField_8353_3382 (T@Field_8353_3382) Bool)
(declare-fun IsWandField_8353_3382 (T@Field_8353_3382) Bool)
(declare-fun IsPredicateField_8353_54452 (T@Field_8353_21331) Bool)
(declare-fun IsWandField_8353_54468 (T@Field_8353_21331) Bool)
(declare-fun IsPredicateField_8234_54279 (T@Field_8234_23699) Bool)
(declare-fun IsWandField_8234_54295 (T@Field_8234_23699) Bool)
(declare-fun IsPredicateField_8234_13912 (T@Field_13911_13912) Bool)
(declare-fun IsWandField_8234_13912 (T@Field_13911_13912) Bool)
(declare-fun IsPredicateField_8234_53 (T@Field_13898_53) Bool)
(declare-fun IsWandField_8234_53 (T@Field_13898_53) Bool)
(declare-fun HasDirectPerm_8353_42726 (T@PolymorphicMapType_13859 T@Ref T@Field_23694_23699) Bool)
(declare-fun HasDirectPerm_8353_13912 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_13912) Bool)
(declare-fun HasDirectPerm_8353_53 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_53) Bool)
(declare-fun HasDirectPerm_8353_3382 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_3382) Bool)
(declare-fun HasDirectPerm_8353_41619 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_21331) Bool)
(declare-fun HasDirectPerm_8234_41339 (T@PolymorphicMapType_13859 T@Ref T@Field_8234_23699) Bool)
(declare-fun HasDirectPerm_8234_13912 (T@PolymorphicMapType_13859 T@Ref T@Field_13911_13912) Bool)
(declare-fun HasDirectPerm_8234_53 (T@PolymorphicMapType_13859 T@Ref T@Field_13898_53) Bool)
(declare-fun HasDirectPerm_8232_3382 (T@PolymorphicMapType_13859 T@Ref T@Field_20099_3382) Bool)
(declare-fun HasDirectPerm_8234_21331 (T@PolymorphicMapType_13859 T@Ref T@Field_20148_20150) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13859 T@PolymorphicMapType_13859 T@PolymorphicMapType_13859) Bool)
(declare-fun |getField01#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun getPredWandId_8353_8354 (T@Field_20607_20608) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_13838 (Array T@Ref Bool)) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_20607_13898 (T@Field_20607_20608 T@FrameType T@Field_8234_8354 T@FrameType) Bool)
(declare-fun InsidePredicate_13898_20607 (T@Field_8234_8354 T@FrameType T@Field_20607_20608 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_13838) (Heap1 T@PolymorphicMapType_13838) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13838) (Mask T@PolymorphicMapType_13859) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13838) (Heap1@@0 T@PolymorphicMapType_13838) (Heap2 T@PolymorphicMapType_13838) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23694_23699) ) (!  (not (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20607_20608) ) (!  (not (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8353_21331) ) (!  (not (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8353_13912) ) (!  (not (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8353_53) ) (!  (not (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8353_3382) ) (!  (not (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8234_23699) ) (!  (not (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8234_8354) ) (!  (not (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20148_20150) ) (!  (not (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13911_13912) ) (!  (not (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13898_53) ) (!  (not (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_20099_3382) ) (!  (not (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13838) (xs (Array T@Ref Bool)) (y T@Ref) ) (! (dummyFunction_3622 (|getField01#triggerStateless| xs y))
 :qid |stdinbpl.572:15|
 :skolemid |95|
 :pattern ( (|getField01'| Heap@@0 xs y))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.313:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((collection_1 (Array T@Ref Bool)) ) (! (IsPredicateField_8353_8354 (inv collection_1))
 :qid |stdinbpl.701:15|
 :skolemid |107|
 :pattern ( (inv collection_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13838) (this T@Ref) ) (! (dummyFunction_3622 (|getField#triggerStateless| this))
 :qid |stdinbpl.429:15|
 :skolemid |83|
 :pattern ( (|getField'| Heap@@1 this))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13838) (collection_1@@0 (Array T@Ref Bool)) ) (! (|inv#everUsed_8353| (inv collection_1@@0))
 :qid |stdinbpl.720:15|
 :skolemid |111|
 :pattern ( (|inv#trigger_8353| Heap@@2 (inv collection_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13838) (this@@0 T@Ref) ) (!  (and (= (getField Heap@@3 this@@0) (|getField'| Heap@@3 this@@0)) (dummyFunction_3622 (|getField#triggerStateless| this@@0)))
 :qid |stdinbpl.425:15|
 :skolemid |82|
 :pattern ( (getField Heap@@3 this@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13838) (ExhaleHeap T@PolymorphicMapType_13838) (Mask@@0 T@PolymorphicMapType_13859) (pm_f_20 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8353_8354 Mask@@0 null pm_f_20) (IsPredicateField_8353_8354 pm_f_20)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@4) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@4) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@4) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@4) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@4) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@4) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@4) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap) o2_20@@10 f_53@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_8353_8354 pm_f_20))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13838) (ExhaleHeap@@0 T@PolymorphicMapType_13838) (Mask@@1 T@PolymorphicMapType_13859) (pm_f_20@@0 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8234_8354 Mask@@1 null pm_f_20@@0) (IsPredicateField_8234_42971 pm_f_20@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@5) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@11 f_53@@11))
)) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@5) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@5) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@5) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@14 f_53@@14))
))) (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@5) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@15 f_53@@15))
))) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@5) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@5) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@18 f_53@@18))
))) (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@5) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@19 f_53@@19))
))) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@5) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@5) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@5) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@22 f_53@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8234_42971 pm_f_20@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13838) (ExhaleHeap@@1 T@PolymorphicMapType_13838) (Mask@@2 T@PolymorphicMapType_13859) (pm_f_20@@1 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8353_8354 Mask@@2 null pm_f_20@@1) (IsWandField_8353_47092 pm_f_20@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@6) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@23 f_53@@23))
)) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@6) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@6) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@6) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@6) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@6) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@28 f_53@@28))
))) (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@6) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@29 f_53@@29))
))) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@6) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@30 f_53@@30))
))) (forall ((o2_20@@31 T@Ref) (f_53@@31 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@31 f_53@@31) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@6) o2_20@@31 f_53@@31) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@31 f_53@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@31 f_53@@31))
))) (forall ((o2_20@@32 T@Ref) (f_53@@32 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@32 f_53@@32) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@6) o2_20@@32 f_53@@32) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@32 f_53@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@32 f_53@@32))
))) (forall ((o2_20@@33 T@Ref) (f_53@@33 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@33 f_53@@33) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@6) o2_20@@33 f_53@@33) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@33 f_53@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@33 f_53@@33))
))) (forall ((o2_20@@34 T@Ref) (f_53@@34 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@34 f_53@@34) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) o2_20@@34 f_53@@34) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@34 f_53@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@34 f_53@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsWandField_8353_47092 pm_f_20@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13838) (ExhaleHeap@@2 T@PolymorphicMapType_13838) (Mask@@3 T@PolymorphicMapType_13859) (pm_f_20@@2 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8234_8354 Mask@@3 null pm_f_20@@2) (IsWandField_8234_46735 pm_f_20@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@35 T@Ref) (f_53@@35 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@35 f_53@@35) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@7) o2_20@@35 f_53@@35) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@35 f_53@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@35 f_53@@35))
)) (forall ((o2_20@@36 T@Ref) (f_53@@36 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@36 f_53@@36) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@7) o2_20@@36 f_53@@36) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@36 f_53@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@36 f_53@@36))
))) (forall ((o2_20@@37 T@Ref) (f_53@@37 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@37 f_53@@37) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@7) o2_20@@37 f_53@@37) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@37 f_53@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@37 f_53@@37))
))) (forall ((o2_20@@38 T@Ref) (f_53@@38 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@38 f_53@@38) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@7) o2_20@@38 f_53@@38) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@38 f_53@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@38 f_53@@38))
))) (forall ((o2_20@@39 T@Ref) (f_53@@39 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@39 f_53@@39) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@7) o2_20@@39 f_53@@39) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@39 f_53@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@39 f_53@@39))
))) (forall ((o2_20@@40 T@Ref) (f_53@@40 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@40 f_53@@40) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) o2_20@@40 f_53@@40) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@40 f_53@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@40 f_53@@40))
))) (forall ((o2_20@@41 T@Ref) (f_53@@41 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@41 f_53@@41) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@7) o2_20@@41 f_53@@41) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@41 f_53@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@41 f_53@@41))
))) (forall ((o2_20@@42 T@Ref) (f_53@@42 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@42 f_53@@42) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@7) o2_20@@42 f_53@@42) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@42 f_53@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@42 f_53@@42))
))) (forall ((o2_20@@43 T@Ref) (f_53@@43 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@43 f_53@@43) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@7) o2_20@@43 f_53@@43) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@43 f_53@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@43 f_53@@43))
))) (forall ((o2_20@@44 T@Ref) (f_53@@44 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@44 f_53@@44) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@7) o2_20@@44 f_53@@44) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@44 f_53@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@44 f_53@@44))
))) (forall ((o2_20@@45 T@Ref) (f_53@@45 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@45 f_53@@45) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@7) o2_20@@45 f_53@@45) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@45 f_53@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@45 f_53@@45))
))) (forall ((o2_20@@46 T@Ref) (f_53@@46 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@46 f_53@@46) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@7) o2_20@@46 f_53@@46) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@46 f_53@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@46 f_53@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_8234_46735 pm_f_20@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.316:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13838) (ExhaleHeap@@3 T@PolymorphicMapType_13838) (Mask@@4 T@PolymorphicMapType_13859) (pm_f_20@@3 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8353_8354 Mask@@4 null pm_f_20@@3) (IsPredicateField_8353_8354 pm_f_20@@3)) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@8) null (PredicateMaskField_8353 pm_f_20@@3)) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@3) null (PredicateMaskField_8353 pm_f_20@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8353_8354 pm_f_20@@3) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@3) null (PredicateMaskField_8353 pm_f_20@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13838) (ExhaleHeap@@4 T@PolymorphicMapType_13838) (Mask@@5 T@PolymorphicMapType_13859) (pm_f_20@@4 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8234_8354 Mask@@5 null pm_f_20@@4) (IsPredicateField_8234_42971 pm_f_20@@4)) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@9) null (PredicateMaskField_8234 pm_f_20@@4)) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@4) null (PredicateMaskField_8234 pm_f_20@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8234_42971 pm_f_20@@4) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@4) null (PredicateMaskField_8234 pm_f_20@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13838) (ExhaleHeap@@5 T@PolymorphicMapType_13838) (Mask@@6 T@PolymorphicMapType_13859) (pm_f_20@@5 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8353_8354 Mask@@6 null pm_f_20@@5) (IsWandField_8353_47092 pm_f_20@@5)) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@10) null (WandMaskField_8353 pm_f_20@@5)) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@5) null (WandMaskField_8353 pm_f_20@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_8353_47092 pm_f_20@@5) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@5) null (WandMaskField_8353 pm_f_20@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13838) (ExhaleHeap@@6 T@PolymorphicMapType_13838) (Mask@@7 T@PolymorphicMapType_13859) (pm_f_20@@6 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8234_8354 Mask@@7 null pm_f_20@@6) (IsWandField_8234_46735 pm_f_20@@6)) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@11) null (WandMaskField_8234 pm_f_20@@6)) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@6) null (WandMaskField_8234 pm_f_20@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_8234_46735 pm_f_20@@6) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@6) null (WandMaskField_8234 pm_f_20@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13838) (Mask@@8 T@PolymorphicMapType_13859) (this@@1 T@Ref) ) (!  (=> (state Heap@@12 Mask@@8) (= (|getField'| Heap@@12 this@@1) (|getField#frame| (CombineFrames (FrameFragment_20796 (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@12) this@@1 col_2)) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@12) null (inv (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@12) this@@1 col_2)))) this@@1)))
 :qid |stdinbpl.442:15|
 :skolemid |85|
 :pattern ( (state Heap@@12 Mask@@8) (|getField'| Heap@@12 this@@1))
)))
(assert (forall ((collection_1@@1 (Array T@Ref Bool)) (collection2 (Array T@Ref Bool)) ) (!  (=> (= (inv collection_1@@1) (inv collection2)) (= collection_1@@1 collection2))
 :qid |stdinbpl.711:15|
 :skolemid |109|
 :pattern ( (inv collection_1@@1) (inv collection2))
)))
(assert (forall ((collection_1@@2 (Array T@Ref Bool)) (collection2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|inv#sm| collection_1@@2) (|inv#sm| collection2@@0)) (= collection_1@@2 collection2@@0))
 :qid |stdinbpl.715:15|
 :skolemid |110|
 :pattern ( (|inv#sm| collection_1@@2) (|inv#sm| collection2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13838) (Mask@@9 T@PolymorphicMapType_13859) (xs@@0 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@9) (< AssumeFunctionsAbove 1)) (=> (select xs@@0 y@@0) (= (getField01 Heap@@13 xs@@0 y@@0) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@13) y@@0 fld))))
 :qid |stdinbpl.578:15|
 :skolemid |96|
 :pattern ( (state Heap@@13 Mask@@9) (getField01 Heap@@13 xs@@0 y@@0))
 :pattern ( (state Heap@@13 Mask@@9) (|getField01#triggerStateless| xs@@0 y@@0) (|inv#trigger_8353| Heap@@13 (inv xs@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13838) (ExhaleHeap@@7 T@PolymorphicMapType_13838) (Mask@@10 T@PolymorphicMapType_13859) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_20607_20608) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20607_20607 p v_1 p w))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20607_20607 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8234_8354) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13898_13898 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13898_13898 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_8232_3382 fld)))
(assert  (not (IsWandField_8232_3382 fld)))
(assert  (not (IsPredicateField_8234_20174 col_2)))
(assert  (not (IsWandField_8234_20201 col_2)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13838) (ExhaleHeap@@8 T@PolymorphicMapType_13838) (Mask@@11 T@PolymorphicMapType_13859) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13859) (o_2@@11 T@Ref) (f_4@@11 T@Field_23694_23699) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8353_55283 f_4@@11))) (not (IsWandField_8353_55299 f_4@@11))) (<= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13859) (o_2@@12 T@Ref) (f_4@@12 T@Field_8353_13912) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8353_13912 f_4@@12))) (not (IsWandField_8353_13912 f_4@@12))) (<= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13859) (o_2@@13 T@Ref) (f_4@@13 T@Field_8353_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8353_53 f_4@@13))) (not (IsWandField_8353_53 f_4@@13))) (<= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13859) (o_2@@14 T@Ref) (f_4@@14 T@Field_8353_3382) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8353_3382 f_4@@14))) (not (IsWandField_8353_3382 f_4@@14))) (<= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13859) (o_2@@15 T@Ref) (f_4@@15 T@Field_20607_20608) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8353_8354 f_4@@15))) (not (IsWandField_8353_47092 f_4@@15))) (<= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13859) (o_2@@16 T@Ref) (f_4@@16 T@Field_8353_21331) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8353_54452 f_4@@16))) (not (IsWandField_8353_54468 f_4@@16))) (<= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13859) (o_2@@17 T@Ref) (f_4@@17 T@Field_8234_23699) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8234_54279 f_4@@17))) (not (IsWandField_8234_54295 f_4@@17))) (<= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13859) (o_2@@18 T@Ref) (f_4@@18 T@Field_13911_13912) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8234_13912 f_4@@18))) (not (IsWandField_8234_13912 f_4@@18))) (<= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13859) (o_2@@19 T@Ref) (f_4@@19 T@Field_13898_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8234_53 f_4@@19))) (not (IsWandField_8234_53 f_4@@19))) (<= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13859) (o_2@@20 T@Ref) (f_4@@20 T@Field_20099_3382) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8232_3382 f_4@@20))) (not (IsWandField_8232_3382 f_4@@20))) (<= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13859) (o_2@@21 T@Ref) (f_4@@21 T@Field_8234_8354) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8234_42971 f_4@@21))) (not (IsWandField_8234_46735 f_4@@21))) (<= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13859) (o_2@@22 T@Ref) (f_4@@22 T@Field_20148_20150) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8234_20174 f_4@@22))) (not (IsWandField_8234_20201 f_4@@22))) (<= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13859) (o_2@@23 T@Ref) (f_4@@23 T@Field_23694_23699) ) (! (= (HasDirectPerm_8353_42726 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_42726 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13859) (o_2@@24 T@Ref) (f_4@@24 T@Field_8353_13912) ) (! (= (HasDirectPerm_8353_13912 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_13912 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13859) (o_2@@25 T@Ref) (f_4@@25 T@Field_8353_53) ) (! (= (HasDirectPerm_8353_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13859) (o_2@@26 T@Ref) (f_4@@26 T@Field_20607_20608) ) (! (= (HasDirectPerm_8353_8354 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_8354 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13859) (o_2@@27 T@Ref) (f_4@@27 T@Field_8353_3382) ) (! (= (HasDirectPerm_8353_3382 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_3382 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13859) (o_2@@28 T@Ref) (f_4@@28 T@Field_8353_21331) ) (! (= (HasDirectPerm_8353_41619 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_41619 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13859) (o_2@@29 T@Ref) (f_4@@29 T@Field_8234_23699) ) (! (= (HasDirectPerm_8234_41339 Mask@@30 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@30) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_41339 Mask@@30 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13859) (o_2@@30 T@Ref) (f_4@@30 T@Field_13911_13912) ) (! (= (HasDirectPerm_8234_13912 Mask@@31 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@31) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_13912 Mask@@31 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13859) (o_2@@31 T@Ref) (f_4@@31 T@Field_13898_53) ) (! (= (HasDirectPerm_8234_53 Mask@@32 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@32) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_53 Mask@@32 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13859) (o_2@@32 T@Ref) (f_4@@32 T@Field_8234_8354) ) (! (= (HasDirectPerm_8234_8354 Mask@@33 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@33) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_8354 Mask@@33 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13859) (o_2@@33 T@Ref) (f_4@@33 T@Field_20099_3382) ) (! (= (HasDirectPerm_8232_3382 Mask@@34 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@34) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8232_3382 Mask@@34 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13859) (o_2@@34 T@Ref) (f_4@@34 T@Field_20148_20150) ) (! (= (HasDirectPerm_8234_21331 Mask@@35 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@35) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_21331 Mask@@35 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.199:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13838) (ExhaleHeap@@9 T@PolymorphicMapType_13838) (Mask@@36 T@PolymorphicMapType_13859) (o_41@@0 T@Ref) (f_53@@47 T@Field_23694_23699) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@36) (=> (HasDirectPerm_8353_42726 Mask@@36 o_41@@0 f_53@@47) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@16) o_41@@0 f_53@@47) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@9) o_41@@0 f_53@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@36) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@9) o_41@@0 f_53@@47))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13838) (ExhaleHeap@@10 T@PolymorphicMapType_13838) (Mask@@37 T@PolymorphicMapType_13859) (o_41@@1 T@Ref) (f_53@@48 T@Field_8353_13912) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@37) (=> (HasDirectPerm_8353_13912 Mask@@37 o_41@@1 f_53@@48) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@17) o_41@@1 f_53@@48) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@10) o_41@@1 f_53@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@37) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@10) o_41@@1 f_53@@48))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13838) (ExhaleHeap@@11 T@PolymorphicMapType_13838) (Mask@@38 T@PolymorphicMapType_13859) (o_41@@2 T@Ref) (f_53@@49 T@Field_8353_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@38) (=> (HasDirectPerm_8353_53 Mask@@38 o_41@@2 f_53@@49) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@18) o_41@@2 f_53@@49) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@11) o_41@@2 f_53@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@38) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@11) o_41@@2 f_53@@49))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13838) (ExhaleHeap@@12 T@PolymorphicMapType_13838) (Mask@@39 T@PolymorphicMapType_13859) (o_41@@3 T@Ref) (f_53@@50 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@39) (=> (HasDirectPerm_8353_8354 Mask@@39 o_41@@3 f_53@@50) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@19) o_41@@3 f_53@@50) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@12) o_41@@3 f_53@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@39) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@12) o_41@@3 f_53@@50))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13838) (ExhaleHeap@@13 T@PolymorphicMapType_13838) (Mask@@40 T@PolymorphicMapType_13859) (o_41@@4 T@Ref) (f_53@@51 T@Field_8353_3382) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@40) (=> (HasDirectPerm_8353_3382 Mask@@40 o_41@@4 f_53@@51) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@20) o_41@@4 f_53@@51) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@13) o_41@@4 f_53@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@40) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@13) o_41@@4 f_53@@51))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13838) (ExhaleHeap@@14 T@PolymorphicMapType_13838) (Mask@@41 T@PolymorphicMapType_13859) (o_41@@5 T@Ref) (f_53@@52 T@Field_8353_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@41) (=> (HasDirectPerm_8353_41619 Mask@@41 o_41@@5 f_53@@52) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@21) o_41@@5 f_53@@52) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@14) o_41@@5 f_53@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@41) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@14) o_41@@5 f_53@@52))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13838) (ExhaleHeap@@15 T@PolymorphicMapType_13838) (Mask@@42 T@PolymorphicMapType_13859) (o_41@@6 T@Ref) (f_53@@53 T@Field_8234_23699) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@42) (=> (HasDirectPerm_8234_41339 Mask@@42 o_41@@6 f_53@@53) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@22) o_41@@6 f_53@@53) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@15) o_41@@6 f_53@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@42) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@15) o_41@@6 f_53@@53))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13838) (ExhaleHeap@@16 T@PolymorphicMapType_13838) (Mask@@43 T@PolymorphicMapType_13859) (o_41@@7 T@Ref) (f_53@@54 T@Field_13911_13912) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@43) (=> (HasDirectPerm_8234_13912 Mask@@43 o_41@@7 f_53@@54) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@23) o_41@@7 f_53@@54) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@16) o_41@@7 f_53@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@43) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@16) o_41@@7 f_53@@54))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13838) (ExhaleHeap@@17 T@PolymorphicMapType_13838) (Mask@@44 T@PolymorphicMapType_13859) (o_41@@8 T@Ref) (f_53@@55 T@Field_13898_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@44) (=> (HasDirectPerm_8234_53 Mask@@44 o_41@@8 f_53@@55) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@24) o_41@@8 f_53@@55) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@17) o_41@@8 f_53@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@44) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@17) o_41@@8 f_53@@55))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13838) (ExhaleHeap@@18 T@PolymorphicMapType_13838) (Mask@@45 T@PolymorphicMapType_13859) (o_41@@9 T@Ref) (f_53@@56 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@45) (=> (HasDirectPerm_8234_8354 Mask@@45 o_41@@9 f_53@@56) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@25) o_41@@9 f_53@@56) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@18) o_41@@9 f_53@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@45) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@18) o_41@@9 f_53@@56))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13838) (ExhaleHeap@@19 T@PolymorphicMapType_13838) (Mask@@46 T@PolymorphicMapType_13859) (o_41@@10 T@Ref) (f_53@@57 T@Field_20099_3382) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@46) (=> (HasDirectPerm_8232_3382 Mask@@46 o_41@@10 f_53@@57) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@26) o_41@@10 f_53@@57) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@19) o_41@@10 f_53@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@46) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@19) o_41@@10 f_53@@57))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13838) (ExhaleHeap@@20 T@PolymorphicMapType_13838) (Mask@@47 T@PolymorphicMapType_13859) (o_41@@11 T@Ref) (f_53@@58 T@Field_20148_20150) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@47) (=> (HasDirectPerm_8234_21331 Mask@@47 o_41@@11 f_53@@58) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@27) o_41@@11 f_53@@58) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@20) o_41@@11 f_53@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@47) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@20) o_41@@11 f_53@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_23694_23699) ) (! (= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8353_13912) ) (! (= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8353_53) ) (! (= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8353_3382) ) (! (= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_20607_20608) ) (! (= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_8353_21331) ) (! (= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_8234_23699) ) (! (= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_13911_13912) ) (! (= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_13898_53) ) (! (= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_20099_3382) ) (! (= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8234_8354) ) (! (= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_20148_20150) ) (! (= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13838) (xs@@1 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (and (= (getField01 Heap@@28 xs@@1 y@@1) (|getField01'| Heap@@28 xs@@1 y@@1)) (dummyFunction_3622 (|getField01#triggerStateless| xs@@1 y@@1)))
 :qid |stdinbpl.568:15|
 :skolemid |94|
 :pattern ( (getField01 Heap@@28 xs@@1 y@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13838) (Mask@@48 T@PolymorphicMapType_13859) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@48) (< AssumeFunctionsAbove 0)) (=> (select (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@29) this@@2 col_2) this@@2) (= (getField Heap@@29 this@@2) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@29) this@@2 fld))))
 :qid |stdinbpl.435:15|
 :skolemid |84|
 :pattern ( (state Heap@@29 Mask@@48) (getField Heap@@29 this@@2))
 :pattern ( (state Heap@@29 Mask@@48) (|getField#triggerStateless| this@@2) (|inv#trigger_8353| Heap@@29 (inv (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@29) this@@2 col_2))))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13859) (SummandMask1 T@PolymorphicMapType_13859) (SummandMask2 T@PolymorphicMapType_13859) (o_2@@47 T@Ref) (f_4@@47 T@Field_23694_23699) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13859) (SummandMask1@@0 T@PolymorphicMapType_13859) (SummandMask2@@0 T@PolymorphicMapType_13859) (o_2@@48 T@Ref) (f_4@@48 T@Field_8353_13912) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13859) (SummandMask1@@1 T@PolymorphicMapType_13859) (SummandMask2@@1 T@PolymorphicMapType_13859) (o_2@@49 T@Ref) (f_4@@49 T@Field_8353_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13859) (SummandMask1@@2 T@PolymorphicMapType_13859) (SummandMask2@@2 T@PolymorphicMapType_13859) (o_2@@50 T@Ref) (f_4@@50 T@Field_8353_3382) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13859) (SummandMask1@@3 T@PolymorphicMapType_13859) (SummandMask2@@3 T@PolymorphicMapType_13859) (o_2@@51 T@Ref) (f_4@@51 T@Field_20607_20608) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13859) (SummandMask1@@4 T@PolymorphicMapType_13859) (SummandMask2@@4 T@PolymorphicMapType_13859) (o_2@@52 T@Ref) (f_4@@52 T@Field_8353_21331) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13859) (SummandMask1@@5 T@PolymorphicMapType_13859) (SummandMask2@@5 T@PolymorphicMapType_13859) (o_2@@53 T@Ref) (f_4@@53 T@Field_8234_23699) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13859) (SummandMask1@@6 T@PolymorphicMapType_13859) (SummandMask2@@6 T@PolymorphicMapType_13859) (o_2@@54 T@Ref) (f_4@@54 T@Field_13911_13912) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13859) (SummandMask1@@7 T@PolymorphicMapType_13859) (SummandMask2@@7 T@PolymorphicMapType_13859) (o_2@@55 T@Ref) (f_4@@55 T@Field_13898_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13859) (SummandMask1@@8 T@PolymorphicMapType_13859) (SummandMask2@@8 T@PolymorphicMapType_13859) (o_2@@56 T@Ref) (f_4@@56 T@Field_20099_3382) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13859) (SummandMask1@@9 T@PolymorphicMapType_13859) (SummandMask2@@9 T@PolymorphicMapType_13859) (o_2@@57 T@Ref) (f_4@@57 T@Field_8234_8354) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13859) (SummandMask1@@10 T@PolymorphicMapType_13859) (SummandMask2@@10 T@PolymorphicMapType_13859) (o_2@@58 T@Ref) (f_4@@58 T@Field_20148_20150) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13838) (Mask@@49 T@PolymorphicMapType_13859) (xs@@2 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (state Heap@@30 Mask@@49) (= (|getField01'| Heap@@30 xs@@2 y@@2) (|getField01#frame| (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@30) null (inv xs@@2)) xs@@2 y@@2)))
 :qid |stdinbpl.585:15|
 :skolemid |97|
 :pattern ( (state Heap@@30 Mask@@49) (|getField01'| Heap@@30 xs@@2 y@@2))
)))
(assert (forall ((collection_1@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_8353_8354 (inv collection_1@@3)) 0)
 :qid |stdinbpl.705:15|
 :skolemid |108|
 :pattern ( (inv collection_1@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13838) (o_15 T@Ref) (f_54 T@Field_23694_23699) (v T@PolymorphicMapType_14387) ) (! (succHeap Heap@@31 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@31) (store (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@31) o_15 f_54 v) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@31) (store (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@31) o_15 f_54 v) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13838) (o_15@@0 T@Ref) (f_54@@0 T@Field_20607_20608) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@32) (store (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@32) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@32) (store (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@32) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13838) (o_15@@1 T@Ref) (f_54@@1 T@Field_8353_3382) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@33) (store (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@33) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@33) (store (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@33) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13838) (o_15@@2 T@Ref) (f_54@@2 T@Field_8353_21331) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@34 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@34) (store (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@34) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@34) (store (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@34) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13838) (o_15@@3 T@Ref) (f_54@@3 T@Field_8353_13912) (v@@3 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@35) (store (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@35) o_15@@3 f_54@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@35) (store (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@35) o_15@@3 f_54@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13838) (o_15@@4 T@Ref) (f_54@@4 T@Field_8353_53) (v@@4 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@36) (store (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@36) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@36) (store (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@36) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13838) (o_15@@5 T@Ref) (f_54@@5 T@Field_8234_23699) (v@@5 T@PolymorphicMapType_14387) ) (! (succHeap Heap@@37 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@37) (store (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@37) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@37) (store (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@37) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13838) (o_15@@6 T@Ref) (f_54@@6 T@Field_8234_8354) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@38) (store (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@38) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@38) (store (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@38) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13838) (o_15@@7 T@Ref) (f_54@@7 T@Field_20099_3382) (v@@7 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@39) (store (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@39) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@39) (store (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@39) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13838) (o_15@@8 T@Ref) (f_54@@8 T@Field_20148_20150) (v@@8 (Array T@Ref Bool)) ) (! (succHeap Heap@@40 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@40) (store (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@40) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@40) (store (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@40) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13838) (o_15@@9 T@Ref) (f_54@@9 T@Field_13911_13912) (v@@9 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@41) (store (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@41) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@41) (store (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@41) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13838) (o_15@@10 T@Ref) (f_54@@10 T@Field_13898_53) (v@@10 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_13838 (store (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@42) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (store (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@42) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@42)))
)))
(assert (forall ((collection_1@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_8353 (inv collection_1@@4)) (|inv#sm| collection_1@@4))
 :qid |stdinbpl.697:15|
 :skolemid |106|
 :pattern ( (PredicateMaskField_8353 (inv collection_1@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.311:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.312:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_13838) (Heap1Heap T@PolymorphicMapType_13838) (collection_1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm))  (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm))) (=> (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)) fld) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)) fld)))) (= (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)))
 :qid |stdinbpl.731:15|
 :skolemid |112|
 :pattern ( (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_15@@11 T@Ref) (f_23 T@Field_13911_13912) (Heap@@43 T@PolymorphicMapType_13838) ) (!  (=> (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@43) o_15@@11 $allocated) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@43) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@43) o_15@@11 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@43) o_15@@11 f_23))
)))
(assert (forall ((p@@2 T@Field_20607_20608) (v_1@@1 T@FrameType) (q T@Field_20607_20608) (w@@1 T@FrameType) (r T@Field_20607_20608) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20607_20607 p@@2 v_1@@1 q w@@1) (InsidePredicate_20607_20607 q w@@1 r u)) (InsidePredicate_20607_20607 p@@2 v_1@@1 r u))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_20607 p@@2 v_1@@1 q w@@1) (InsidePredicate_20607_20607 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_20607_20608) (v_1@@2 T@FrameType) (q@@0 T@Field_20607_20608) (w@@2 T@FrameType) (r@@0 T@Field_8234_8354) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_20607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20607_13898 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_20607_13898 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_20607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20607_13898 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_20607_20608) (v_1@@3 T@FrameType) (q@@1 T@Field_8234_8354) (w@@3 T@FrameType) (r@@1 T@Field_20607_20608) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_13898 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13898_20607 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_20607_20607 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_13898 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13898_20607 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_20607_20608) (v_1@@4 T@FrameType) (q@@2 T@Field_8234_8354) (w@@4 T@FrameType) (r@@2 T@Field_8234_8354) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_13898 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13898_13898 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_20607_13898 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_13898 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13898_13898 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8234_8354) (v_1@@5 T@FrameType) (q@@3 T@Field_20607_20608) (w@@5 T@FrameType) (r@@3 T@Field_20607_20608) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_20607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20607_20607 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_13898_20607 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_20607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20607_20607 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8234_8354) (v_1@@6 T@FrameType) (q@@4 T@Field_20607_20608) (w@@6 T@FrameType) (r@@4 T@Field_8234_8354) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_20607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20607_13898 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_13898_13898 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_20607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20607_13898 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8234_8354) (v_1@@7 T@FrameType) (q@@5 T@Field_8234_8354) (w@@7 T@FrameType) (r@@5 T@Field_20607_20608) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_13898 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13898_20607 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_13898_20607 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_13898 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13898_20607 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8234_8354) (v_1@@8 T@FrameType) (q@@6 T@Field_8234_8354) (w@@8 T@FrameType) (r@@6 T@Field_8234_8354) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_13898 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13898_13898 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_13898_13898 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_13898 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13898_13898 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.317:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun collection_1@@6 () (Array T@Ref Bool))
(declare-fun Heap@@44 () T@PolymorphicMapType_13838)
(set-info :boogie-vc-id |inv#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((x_2_2 T@Ref) (x_2_3 T@Ref) ) (!  (=> (and (and (and (and (not (= x_2_2 x_2_3)) (select collection_1@@6 x_2_2)) (select collection_1@@6 x_2_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_2_2 x_2_3)))
 :qid |stdinbpl.755:15|
 :skolemid |113|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@44 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
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
(declare-sort T@Field_13898_53 0)
(declare-sort T@Field_13911_13912 0)
(declare-sort T@Field_20148_20150 0)
(declare-sort T@Field_20099_3382 0)
(declare-sort T@Field_20607_20608 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23694_23699 0)
(declare-sort T@Field_8234_8354 0)
(declare-sort T@Field_8234_23699 0)
(declare-sort T@Field_8353_21331 0)
(declare-sort T@Field_8353_3382 0)
(declare-sort T@Field_8353_53 0)
(declare-sort T@Field_8353_13912 0)
(declare-datatypes ((T@PolymorphicMapType_13859 0)) (((PolymorphicMapType_13859 (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| (Array T@Ref T@Field_20148_20150 Real)) (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| (Array T@Ref T@Field_20607_20608 Real)) (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| (Array T@Ref T@Field_20099_3382 Real)) (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| (Array T@Ref T@Field_8234_8354 Real)) (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| (Array T@Ref T@Field_13898_53 Real)) (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| (Array T@Ref T@Field_13911_13912 Real)) (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| (Array T@Ref T@Field_8234_23699 Real)) (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_21331 Real)) (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_3382 Real)) (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_53 Real)) (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| (Array T@Ref T@Field_8353_13912 Real)) (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| (Array T@Ref T@Field_23694_23699 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14387 0)) (((PolymorphicMapType_14387 (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (Array T@Ref T@Field_20099_3382 Bool)) (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (Array T@Ref T@Field_13898_53 Bool)) (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (Array T@Ref T@Field_13911_13912 Bool)) (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (Array T@Ref T@Field_20148_20150 Bool)) (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (Array T@Ref T@Field_8234_8354 Bool)) (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (Array T@Ref T@Field_8234_23699 Bool)) (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_3382 Bool)) (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_53 Bool)) (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_13912 Bool)) (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (Array T@Ref T@Field_8353_21331 Bool)) (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (Array T@Ref T@Field_20607_20608 Bool)) (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (Array T@Ref T@Field_23694_23699 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13838 0)) (((PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| (Array T@Ref T@Field_13898_53 Bool)) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| (Array T@Ref T@Field_13911_13912 T@Ref)) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| (Array T@Ref T@Field_20148_20150 (Array T@Ref Bool))) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| (Array T@Ref T@Field_20099_3382 Int)) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| (Array T@Ref T@Field_20607_20608 T@FrameType)) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| (Array T@Ref T@Field_23694_23699 T@PolymorphicMapType_14387)) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| (Array T@Ref T@Field_8234_8354 T@FrameType)) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| (Array T@Ref T@Field_8234_23699 T@PolymorphicMapType_14387)) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_21331 (Array T@Ref Bool))) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_3382 Int)) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_53 Bool)) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| (Array T@Ref T@Field_8353_13912 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_13898_53)
(declare-fun fld () T@Field_20099_3382)
(declare-fun col_2 () T@Field_20148_20150)
(declare-fun succHeap (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838) Bool)
(declare-fun state (T@PolymorphicMapType_13838 T@PolymorphicMapType_13859) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13859) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14387)
(declare-fun |getField01'| (T@PolymorphicMapType_13838 (Array T@Ref Bool) T@Ref) Int)
(declare-fun dummyFunction_3622 (Int) Bool)
(declare-fun |getField01#triggerStateless| ((Array T@Ref Bool) T@Ref) Int)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun inv ((Array T@Ref Bool)) T@Field_20607_20608)
(declare-fun IsPredicateField_8353_8354 (T@Field_20607_20608) Bool)
(declare-fun |getField'| (T@PolymorphicMapType_13838 T@Ref) Int)
(declare-fun |getField#triggerStateless| (T@Ref) Int)
(declare-fun |inv#trigger_8353| (T@PolymorphicMapType_13838 T@Field_20607_20608) Bool)
(declare-fun |inv#everUsed_8353| (T@Field_20607_20608) Bool)
(declare-fun getField (T@PolymorphicMapType_13838 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13838 T@PolymorphicMapType_13838 T@PolymorphicMapType_13859) Bool)
(declare-fun HasDirectPerm_8353_8354 (T@PolymorphicMapType_13859 T@Ref T@Field_20607_20608) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8353 (T@Field_20607_20608) T@Field_23694_23699)
(declare-fun IsPredicateField_8234_42971 (T@Field_8234_8354) Bool)
(declare-fun HasDirectPerm_8234_8354 (T@PolymorphicMapType_13859 T@Ref T@Field_8234_8354) Bool)
(declare-fun PredicateMaskField_8234 (T@Field_8234_8354) T@Field_8234_23699)
(declare-fun IsWandField_8353_47092 (T@Field_20607_20608) Bool)
(declare-fun WandMaskField_8353 (T@Field_20607_20608) T@Field_23694_23699)
(declare-fun IsWandField_8234_46735 (T@Field_8234_8354) Bool)
(declare-fun WandMaskField_8234 (T@Field_8234_8354) T@Field_8234_23699)
(declare-fun |Math#clip| (Int) Int)
(declare-fun |getField#frame| (T@FrameType T@Ref) Int)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_20796 ((Array T@Ref Bool)) T@FrameType)
(declare-fun |inv#sm| ((Array T@Ref Bool)) T@Field_23694_23699)
(declare-fun dummyHeap () T@PolymorphicMapType_13838)
(declare-fun ZeroMask () T@PolymorphicMapType_13859)
(declare-fun getField01 (T@PolymorphicMapType_13838 (Array T@Ref Bool) T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun InsidePredicate_20607_20607 (T@Field_20607_20608 T@FrameType T@Field_20607_20608 T@FrameType) Bool)
(declare-fun InsidePredicate_13898_13898 (T@Field_8234_8354 T@FrameType T@Field_8234_8354 T@FrameType) Bool)
(declare-fun IsPredicateField_8232_3382 (T@Field_20099_3382) Bool)
(declare-fun IsWandField_8232_3382 (T@Field_20099_3382) Bool)
(declare-fun IsPredicateField_8234_20174 (T@Field_20148_20150) Bool)
(declare-fun IsWandField_8234_20201 (T@Field_20148_20150) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8353_55283 (T@Field_23694_23699) Bool)
(declare-fun IsWandField_8353_55299 (T@Field_23694_23699) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8353_13912 (T@Field_8353_13912) Bool)
(declare-fun IsWandField_8353_13912 (T@Field_8353_13912) Bool)
(declare-fun IsPredicateField_8353_53 (T@Field_8353_53) Bool)
(declare-fun IsWandField_8353_53 (T@Field_8353_53) Bool)
(declare-fun IsPredicateField_8353_3382 (T@Field_8353_3382) Bool)
(declare-fun IsWandField_8353_3382 (T@Field_8353_3382) Bool)
(declare-fun IsPredicateField_8353_54452 (T@Field_8353_21331) Bool)
(declare-fun IsWandField_8353_54468 (T@Field_8353_21331) Bool)
(declare-fun IsPredicateField_8234_54279 (T@Field_8234_23699) Bool)
(declare-fun IsWandField_8234_54295 (T@Field_8234_23699) Bool)
(declare-fun IsPredicateField_8234_13912 (T@Field_13911_13912) Bool)
(declare-fun IsWandField_8234_13912 (T@Field_13911_13912) Bool)
(declare-fun IsPredicateField_8234_53 (T@Field_13898_53) Bool)
(declare-fun IsWandField_8234_53 (T@Field_13898_53) Bool)
(declare-fun HasDirectPerm_8353_42726 (T@PolymorphicMapType_13859 T@Ref T@Field_23694_23699) Bool)
(declare-fun HasDirectPerm_8353_13912 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_13912) Bool)
(declare-fun HasDirectPerm_8353_53 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_53) Bool)
(declare-fun HasDirectPerm_8353_3382 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_3382) Bool)
(declare-fun HasDirectPerm_8353_41619 (T@PolymorphicMapType_13859 T@Ref T@Field_8353_21331) Bool)
(declare-fun HasDirectPerm_8234_41339 (T@PolymorphicMapType_13859 T@Ref T@Field_8234_23699) Bool)
(declare-fun HasDirectPerm_8234_13912 (T@PolymorphicMapType_13859 T@Ref T@Field_13911_13912) Bool)
(declare-fun HasDirectPerm_8234_53 (T@PolymorphicMapType_13859 T@Ref T@Field_13898_53) Bool)
(declare-fun HasDirectPerm_8232_3382 (T@PolymorphicMapType_13859 T@Ref T@Field_20099_3382) Bool)
(declare-fun HasDirectPerm_8234_21331 (T@PolymorphicMapType_13859 T@Ref T@Field_20148_20150) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13859 T@PolymorphicMapType_13859 T@PolymorphicMapType_13859) Bool)
(declare-fun |getField01#frame| (T@FrameType (Array T@Ref Bool) T@Ref) Int)
(declare-fun getPredWandId_8353_8354 (T@Field_20607_20608) Int)
(declare-fun |inv#condqp1| (T@PolymorphicMapType_13838 (Array T@Ref Bool)) Int)
(declare-fun |sk_inv#condqp1| (Int Int) T@Ref)
(declare-fun InsidePredicate_20607_13898 (T@Field_20607_20608 T@FrameType T@Field_8234_8354 T@FrameType) Bool)
(declare-fun InsidePredicate_13898_20607 (T@Field_8234_8354 T@FrameType T@Field_20607_20608 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_13838) (Heap1 T@PolymorphicMapType_13838) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13838) (Mask T@PolymorphicMapType_13859) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13838) (Heap1@@0 T@PolymorphicMapType_13838) (Heap2 T@PolymorphicMapType_13838) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_23694_23699) ) (!  (not (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20607_20608) ) (!  (not (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8353_21331) ) (!  (not (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8353_13912) ) (!  (not (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8353_53) ) (!  (not (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8353_3382) ) (!  (not (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8234_23699) ) (!  (not (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_8234_8354) ) (!  (not (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20148_20150) ) (!  (not (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_13911_13912) ) (!  (not (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_13898_53) ) (!  (not (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_20099_3382) ) (!  (not (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13838) (xs (Array T@Ref Bool)) (y T@Ref) ) (! (dummyFunction_3622 (|getField01#triggerStateless| xs y))
 :qid |stdinbpl.572:15|
 :skolemid |95|
 :pattern ( (|getField01'| Heap@@0 xs y))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.313:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((collection_1 (Array T@Ref Bool)) ) (! (IsPredicateField_8353_8354 (inv collection_1))
 :qid |stdinbpl.701:15|
 :skolemid |107|
 :pattern ( (inv collection_1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13838) (this T@Ref) ) (! (dummyFunction_3622 (|getField#triggerStateless| this))
 :qid |stdinbpl.429:15|
 :skolemid |83|
 :pattern ( (|getField'| Heap@@1 this))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13838) (collection_1@@0 (Array T@Ref Bool)) ) (! (|inv#everUsed_8353| (inv collection_1@@0))
 :qid |stdinbpl.720:15|
 :skolemid |111|
 :pattern ( (|inv#trigger_8353| Heap@@2 (inv collection_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13838) (this@@0 T@Ref) ) (!  (and (= (getField Heap@@3 this@@0) (|getField'| Heap@@3 this@@0)) (dummyFunction_3622 (|getField#triggerStateless| this@@0)))
 :qid |stdinbpl.425:15|
 :skolemid |82|
 :pattern ( (getField Heap@@3 this@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13838) (ExhaleHeap T@PolymorphicMapType_13838) (Mask@@0 T@PolymorphicMapType_13859) (pm_f_20 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8353_8354 Mask@@0 null pm_f_20) (IsPredicateField_8353_8354 pm_f_20)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20 T@Ref) (f_53 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20 f_53) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@4) o2_20 f_53) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20 f_53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20 f_53))
)) (forall ((o2_20@@0 T@Ref) (f_53@@0 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@0 f_53@@0) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@4) o2_20@@0 f_53@@0) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@0 f_53@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@0 f_53@@0))
))) (forall ((o2_20@@1 T@Ref) (f_53@@1 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@1 f_53@@1) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@4) o2_20@@1 f_53@@1) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap) o2_20@@1 f_53@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap) o2_20@@1 f_53@@1))
))) (forall ((o2_20@@2 T@Ref) (f_53@@2 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@2 f_53@@2) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@4) o2_20@@2 f_53@@2) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap) o2_20@@2 f_53@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap) o2_20@@2 f_53@@2))
))) (forall ((o2_20@@3 T@Ref) (f_53@@3 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@3 f_53@@3) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@4) o2_20@@3 f_53@@3) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@3 f_53@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@3 f_53@@3))
))) (forall ((o2_20@@4 T@Ref) (f_53@@4 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@4 f_53@@4) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@4) o2_20@@4 f_53@@4) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap) o2_20@@4 f_53@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap) o2_20@@4 f_53@@4))
))) (forall ((o2_20@@5 T@Ref) (f_53@@5 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@5 f_53@@5) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@4) o2_20@@5 f_53@@5) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20@@5 f_53@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap) o2_20@@5 f_53@@5))
))) (forall ((o2_20@@6 T@Ref) (f_53@@6 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@6 f_53@@6) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@4) o2_20@@6 f_53@@6) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@6 f_53@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap) o2_20@@6 f_53@@6))
))) (forall ((o2_20@@7 T@Ref) (f_53@@7 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@7 f_53@@7) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@4) o2_20@@7 f_53@@7) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap) o2_20@@7 f_53@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap) o2_20@@7 f_53@@7))
))) (forall ((o2_20@@8 T@Ref) (f_53@@8 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@8 f_53@@8) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@4) o2_20@@8 f_53@@8) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap) o2_20@@8 f_53@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap) o2_20@@8 f_53@@8))
))) (forall ((o2_20@@9 T@Ref) (f_53@@9 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@9 f_53@@9) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@4) o2_20@@9 f_53@@9) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@9 f_53@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap) o2_20@@9 f_53@@9))
))) (forall ((o2_20@@10 T@Ref) (f_53@@10 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) null (PredicateMaskField_8353 pm_f_20))) o2_20@@10 f_53@@10) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@4) o2_20@@10 f_53@@10) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap) o2_20@@10 f_53@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap) o2_20@@10 f_53@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap Mask@@0) (IsPredicateField_8353_8354 pm_f_20))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13838) (ExhaleHeap@@0 T@PolymorphicMapType_13838) (Mask@@1 T@PolymorphicMapType_13859) (pm_f_20@@0 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8234_8354 Mask@@1 null pm_f_20@@0) (IsPredicateField_8234_42971 pm_f_20@@0)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@11 T@Ref) (f_53@@11 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@11 f_53@@11) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@5) o2_20@@11 f_53@@11) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@11 f_53@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@11 f_53@@11))
)) (forall ((o2_20@@12 T@Ref) (f_53@@12 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@12 f_53@@12) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@5) o2_20@@12 f_53@@12) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@12 f_53@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@12 f_53@@12))
))) (forall ((o2_20@@13 T@Ref) (f_53@@13 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@13 f_53@@13) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@5) o2_20@@13 f_53@@13) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@13 f_53@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@13 f_53@@13))
))) (forall ((o2_20@@14 T@Ref) (f_53@@14 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@14 f_53@@14) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@5) o2_20@@14 f_53@@14) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@14 f_53@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@14 f_53@@14))
))) (forall ((o2_20@@15 T@Ref) (f_53@@15 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@15 f_53@@15) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@5) o2_20@@15 f_53@@15) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@15 f_53@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@15 f_53@@15))
))) (forall ((o2_20@@16 T@Ref) (f_53@@16 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@16 f_53@@16) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) o2_20@@16 f_53@@16) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@16 f_53@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@16 f_53@@16))
))) (forall ((o2_20@@17 T@Ref) (f_53@@17 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@17 f_53@@17) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@5) o2_20@@17 f_53@@17) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@17 f_53@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@17 f_53@@17))
))) (forall ((o2_20@@18 T@Ref) (f_53@@18 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@18 f_53@@18) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@5) o2_20@@18 f_53@@18) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@18 f_53@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@18 f_53@@18))
))) (forall ((o2_20@@19 T@Ref) (f_53@@19 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@19 f_53@@19) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@5) o2_20@@19 f_53@@19) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@19 f_53@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@19 f_53@@19))
))) (forall ((o2_20@@20 T@Ref) (f_53@@20 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@20 f_53@@20) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@5) o2_20@@20 f_53@@20) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@20 f_53@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@20 f_53@@20))
))) (forall ((o2_20@@21 T@Ref) (f_53@@21 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@21 f_53@@21) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@5) o2_20@@21 f_53@@21) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@21 f_53@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@21 f_53@@21))
))) (forall ((o2_20@@22 T@Ref) (f_53@@22 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@5) null (PredicateMaskField_8234 pm_f_20@@0))) o2_20@@22 f_53@@22) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@5) o2_20@@22 f_53@@22) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@22 f_53@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@0) o2_20@@22 f_53@@22))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8234_42971 pm_f_20@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13838) (ExhaleHeap@@1 T@PolymorphicMapType_13838) (Mask@@2 T@PolymorphicMapType_13859) (pm_f_20@@1 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8353_8354 Mask@@2 null pm_f_20@@1) (IsWandField_8353_47092 pm_f_20@@1)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@23 T@Ref) (f_53@@23 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@23 f_53@@23) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@6) o2_20@@23 f_53@@23) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@23 f_53@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@23 f_53@@23))
)) (forall ((o2_20@@24 T@Ref) (f_53@@24 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@24 f_53@@24) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@6) o2_20@@24 f_53@@24) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@24 f_53@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@24 f_53@@24))
))) (forall ((o2_20@@25 T@Ref) (f_53@@25 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@25 f_53@@25) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@6) o2_20@@25 f_53@@25) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@25 f_53@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@25 f_53@@25))
))) (forall ((o2_20@@26 T@Ref) (f_53@@26 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@26 f_53@@26) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@6) o2_20@@26 f_53@@26) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@26 f_53@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@26 f_53@@26))
))) (forall ((o2_20@@27 T@Ref) (f_53@@27 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@27 f_53@@27) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@6) o2_20@@27 f_53@@27) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@27 f_53@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@27 f_53@@27))
))) (forall ((o2_20@@28 T@Ref) (f_53@@28 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@28 f_53@@28) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@6) o2_20@@28 f_53@@28) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@28 f_53@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@28 f_53@@28))
))) (forall ((o2_20@@29 T@Ref) (f_53@@29 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@29 f_53@@29) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@6) o2_20@@29 f_53@@29) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@29 f_53@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@29 f_53@@29))
))) (forall ((o2_20@@30 T@Ref) (f_53@@30 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@30 f_53@@30) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@6) o2_20@@30 f_53@@30) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@30 f_53@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@30 f_53@@30))
))) (forall ((o2_20@@31 T@Ref) (f_53@@31 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@31 f_53@@31) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@6) o2_20@@31 f_53@@31) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@31 f_53@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@31 f_53@@31))
))) (forall ((o2_20@@32 T@Ref) (f_53@@32 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@32 f_53@@32) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@6) o2_20@@32 f_53@@32) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@32 f_53@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@32 f_53@@32))
))) (forall ((o2_20@@33 T@Ref) (f_53@@33 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@33 f_53@@33) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@6) o2_20@@33 f_53@@33) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@33 f_53@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@33 f_53@@33))
))) (forall ((o2_20@@34 T@Ref) (f_53@@34 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) null (WandMaskField_8353 pm_f_20@@1))) o2_20@@34 f_53@@34) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@6) o2_20@@34 f_53@@34) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@34 f_53@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@1) o2_20@@34 f_53@@34))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@1 Mask@@2) (IsWandField_8353_47092 pm_f_20@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13838) (ExhaleHeap@@2 T@PolymorphicMapType_13838) (Mask@@3 T@PolymorphicMapType_13859) (pm_f_20@@2 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8234_8354 Mask@@3 null pm_f_20@@2) (IsWandField_8234_46735 pm_f_20@@2)) (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_20@@35 T@Ref) (f_53@@35 T@Field_20099_3382) ) (!  (=> (select (|PolymorphicMapType_14387_8232_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@35 f_53@@35) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@7) o2_20@@35 f_53@@35) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@35 f_53@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@35 f_53@@35))
)) (forall ((o2_20@@36 T@Ref) (f_53@@36 T@Field_13898_53) ) (!  (=> (select (|PolymorphicMapType_14387_8232_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@36 f_53@@36) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@7) o2_20@@36 f_53@@36) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@36 f_53@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@36 f_53@@36))
))) (forall ((o2_20@@37 T@Ref) (f_53@@37 T@Field_13911_13912) ) (!  (=> (select (|PolymorphicMapType_14387_8232_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@37 f_53@@37) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@7) o2_20@@37 f_53@@37) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@37 f_53@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@37 f_53@@37))
))) (forall ((o2_20@@38 T@Ref) (f_53@@38 T@Field_20148_20150) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44239#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@38 f_53@@38) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@7) o2_20@@38 f_53@@38) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@38 f_53@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@38 f_53@@38))
))) (forall ((o2_20@@39 T@Ref) (f_53@@39 T@Field_8234_8354) ) (!  (=> (select (|PolymorphicMapType_14387_8232_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@39 f_53@@39) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@7) o2_20@@39 f_53@@39) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@39 f_53@@39)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@39 f_53@@39))
))) (forall ((o2_20@@40 T@Ref) (f_53@@40 T@Field_8234_23699) ) (!  (=> (select (|PolymorphicMapType_14387_8232_44661#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@40 f_53@@40) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) o2_20@@40 f_53@@40) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@40 f_53@@40)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@40 f_53@@40))
))) (forall ((o2_20@@41 T@Ref) (f_53@@41 T@Field_8353_3382) ) (!  (=> (select (|PolymorphicMapType_14387_20607_3382#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@41 f_53@@41) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@7) o2_20@@41 f_53@@41) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@41 f_53@@41)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@41 f_53@@41))
))) (forall ((o2_20@@42 T@Ref) (f_53@@42 T@Field_8353_53) ) (!  (=> (select (|PolymorphicMapType_14387_20607_53#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@42 f_53@@42) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@7) o2_20@@42 f_53@@42) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@42 f_53@@42)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@42 f_53@@42))
))) (forall ((o2_20@@43 T@Ref) (f_53@@43 T@Field_8353_13912) ) (!  (=> (select (|PolymorphicMapType_14387_20607_13912#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@43 f_53@@43) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@7) o2_20@@43 f_53@@43) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@43 f_53@@43)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@43 f_53@@43))
))) (forall ((o2_20@@44 T@Ref) (f_53@@44 T@Field_8353_21331) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45505#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@44 f_53@@44) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@7) o2_20@@44 f_53@@44) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@44 f_53@@44)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@44 f_53@@44))
))) (forall ((o2_20@@45 T@Ref) (f_53@@45 T@Field_20607_20608) ) (!  (=> (select (|PolymorphicMapType_14387_20607_20608#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@45 f_53@@45) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@7) o2_20@@45 f_53@@45) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@45 f_53@@45)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@45 f_53@@45))
))) (forall ((o2_20@@46 T@Ref) (f_53@@46 T@Field_23694_23699) ) (!  (=> (select (|PolymorphicMapType_14387_20607_45927#PolymorphicMapType_14387| (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@7) null (WandMaskField_8234 pm_f_20@@2))) o2_20@@46 f_53@@46) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@7) o2_20@@46 f_53@@46) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@46 f_53@@46)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@2) o2_20@@46 f_53@@46))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@2 Mask@@3) (IsWandField_8234_46735 pm_f_20@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.316:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13838) (ExhaleHeap@@3 T@PolymorphicMapType_13838) (Mask@@4 T@PolymorphicMapType_13859) (pm_f_20@@3 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8353_8354 Mask@@4 null pm_f_20@@3) (IsPredicateField_8353_8354 pm_f_20@@3)) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@8) null (PredicateMaskField_8353 pm_f_20@@3)) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@3) null (PredicateMaskField_8353 pm_f_20@@3)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8353_8354 pm_f_20@@3) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@3) null (PredicateMaskField_8353 pm_f_20@@3)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13838) (ExhaleHeap@@4 T@PolymorphicMapType_13838) (Mask@@5 T@PolymorphicMapType_13859) (pm_f_20@@4 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8234_8354 Mask@@5 null pm_f_20@@4) (IsPredicateField_8234_42971 pm_f_20@@4)) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@9) null (PredicateMaskField_8234 pm_f_20@@4)) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@4) null (PredicateMaskField_8234 pm_f_20@@4)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8234_42971 pm_f_20@@4) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@4) null (PredicateMaskField_8234 pm_f_20@@4)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13838) (ExhaleHeap@@5 T@PolymorphicMapType_13838) (Mask@@6 T@PolymorphicMapType_13859) (pm_f_20@@5 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8353_8354 Mask@@6 null pm_f_20@@5) (IsWandField_8353_47092 pm_f_20@@5)) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@10) null (WandMaskField_8353 pm_f_20@@5)) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@5) null (WandMaskField_8353 pm_f_20@@5)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@5 Mask@@6) (IsWandField_8353_47092 pm_f_20@@5) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@5) null (WandMaskField_8353 pm_f_20@@5)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13838) (ExhaleHeap@@6 T@PolymorphicMapType_13838) (Mask@@7 T@PolymorphicMapType_13859) (pm_f_20@@6 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8234_8354 Mask@@7 null pm_f_20@@6) (IsWandField_8234_46735 pm_f_20@@6)) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@11) null (WandMaskField_8234 pm_f_20@@6)) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@6) null (WandMaskField_8234 pm_f_20@@6)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@6 Mask@@7) (IsWandField_8234_46735 pm_f_20@@6) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@6) null (WandMaskField_8234 pm_f_20@@6)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13838) (Mask@@8 T@PolymorphicMapType_13859) (this@@1 T@Ref) ) (!  (=> (state Heap@@12 Mask@@8) (= (|getField'| Heap@@12 this@@1) (|getField#frame| (CombineFrames (FrameFragment_20796 (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@12) this@@1 col_2)) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@12) null (inv (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@12) this@@1 col_2)))) this@@1)))
 :qid |stdinbpl.442:15|
 :skolemid |85|
 :pattern ( (state Heap@@12 Mask@@8) (|getField'| Heap@@12 this@@1))
)))
(assert (forall ((collection_1@@1 (Array T@Ref Bool)) (collection2 (Array T@Ref Bool)) ) (!  (=> (= (inv collection_1@@1) (inv collection2)) (= collection_1@@1 collection2))
 :qid |stdinbpl.711:15|
 :skolemid |109|
 :pattern ( (inv collection_1@@1) (inv collection2))
)))
(assert (forall ((collection_1@@2 (Array T@Ref Bool)) (collection2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|inv#sm| collection_1@@2) (|inv#sm| collection2@@0)) (= collection_1@@2 collection2@@0))
 :qid |stdinbpl.715:15|
 :skolemid |110|
 :pattern ( (|inv#sm| collection_1@@2) (|inv#sm| collection2@@0))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13838) (Mask@@9 T@PolymorphicMapType_13859) (xs@@0 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@9) (< AssumeFunctionsAbove 1)) (=> (select xs@@0 y@@0) (= (getField01 Heap@@13 xs@@0 y@@0) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@13) y@@0 fld))))
 :qid |stdinbpl.578:15|
 :skolemid |96|
 :pattern ( (state Heap@@13 Mask@@9) (getField01 Heap@@13 xs@@0 y@@0))
 :pattern ( (state Heap@@13 Mask@@9) (|getField01#triggerStateless| xs@@0 y@@0) (|inv#trigger_8353| Heap@@13 (inv xs@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13838) (ExhaleHeap@@7 T@PolymorphicMapType_13838) (Mask@@10 T@PolymorphicMapType_13859) (o_41 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (=> (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@14) o_41 $allocated) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@7) o_41 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@10) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@7) o_41 $allocated))
)))
(assert (forall ((p T@Field_20607_20608) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20607_20607 p v_1 p w))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20607_20607 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8234_8354) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_13898_13898 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.211:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13898_13898 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_8232_3382 fld)))
(assert  (not (IsWandField_8232_3382 fld)))
(assert  (not (IsPredicateField_8234_20174 col_2)))
(assert  (not (IsWandField_8234_20201 col_2)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13838) (ExhaleHeap@@8 T@PolymorphicMapType_13838) (Mask@@11 T@PolymorphicMapType_13859) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11) (succHeap Heap@@15 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13859) (o_2@@11 T@Ref) (f_4@@11 T@Field_23694_23699) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8353_55283 f_4@@11))) (not (IsWandField_8353_55299 f_4@@11))) (<= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13859) (o_2@@12 T@Ref) (f_4@@12 T@Field_8353_13912) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8353_13912 f_4@@12))) (not (IsWandField_8353_13912 f_4@@12))) (<= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13859) (o_2@@13 T@Ref) (f_4@@13 T@Field_8353_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8353_53 f_4@@13))) (not (IsWandField_8353_53 f_4@@13))) (<= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13859) (o_2@@14 T@Ref) (f_4@@14 T@Field_8353_3382) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8353_3382 f_4@@14))) (not (IsWandField_8353_3382 f_4@@14))) (<= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_13859) (o_2@@15 T@Ref) (f_4@@15 T@Field_20607_20608) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8353_8354 f_4@@15))) (not (IsWandField_8353_47092 f_4@@15))) (<= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_13859) (o_2@@16 T@Ref) (f_4@@16 T@Field_8353_21331) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8353_54452 f_4@@16))) (not (IsWandField_8353_54468 f_4@@16))) (<= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_13859) (o_2@@17 T@Ref) (f_4@@17 T@Field_8234_23699) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8234_54279 f_4@@17))) (not (IsWandField_8234_54295 f_4@@17))) (<= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_13859) (o_2@@18 T@Ref) (f_4@@18 T@Field_13911_13912) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8234_13912 f_4@@18))) (not (IsWandField_8234_13912 f_4@@18))) (<= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_13859) (o_2@@19 T@Ref) (f_4@@19 T@Field_13898_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_8234_53 f_4@@19))) (not (IsWandField_8234_53 f_4@@19))) (<= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@20) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_13859) (o_2@@20 T@Ref) (f_4@@20 T@Field_20099_3382) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_8232_3382 f_4@@20))) (not (IsWandField_8232_3382 f_4@@20))) (<= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@21) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_13859) (o_2@@21 T@Ref) (f_4@@21 T@Field_8234_8354) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_8234_42971 f_4@@21))) (not (IsWandField_8234_46735 f_4@@21))) (<= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@22) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_13859) (o_2@@22 T@Ref) (f_4@@22 T@Field_20148_20150) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_8234_20174 f_4@@22))) (not (IsWandField_8234_20201 f_4@@22))) (<= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@23) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_13859) (o_2@@23 T@Ref) (f_4@@23 T@Field_23694_23699) ) (! (= (HasDirectPerm_8353_42726 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_42726 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_13859) (o_2@@24 T@Ref) (f_4@@24 T@Field_8353_13912) ) (! (= (HasDirectPerm_8353_13912 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_13912 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_13859) (o_2@@25 T@Ref) (f_4@@25 T@Field_8353_53) ) (! (= (HasDirectPerm_8353_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_13859) (o_2@@26 T@Ref) (f_4@@26 T@Field_20607_20608) ) (! (= (HasDirectPerm_8353_8354 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_8354 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_13859) (o_2@@27 T@Ref) (f_4@@27 T@Field_8353_3382) ) (! (= (HasDirectPerm_8353_3382 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_3382 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_13859) (o_2@@28 T@Ref) (f_4@@28 T@Field_8353_21331) ) (! (= (HasDirectPerm_8353_41619 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8353_41619 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_13859) (o_2@@29 T@Ref) (f_4@@29 T@Field_8234_23699) ) (! (= (HasDirectPerm_8234_41339 Mask@@30 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| Mask@@30) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_41339 Mask@@30 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_13859) (o_2@@30 T@Ref) (f_4@@30 T@Field_13911_13912) ) (! (= (HasDirectPerm_8234_13912 Mask@@31 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| Mask@@31) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_13912 Mask@@31 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_13859) (o_2@@31 T@Ref) (f_4@@31 T@Field_13898_53) ) (! (= (HasDirectPerm_8234_53 Mask@@32 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| Mask@@32) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_53 Mask@@32 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_13859) (o_2@@32 T@Ref) (f_4@@32 T@Field_8234_8354) ) (! (= (HasDirectPerm_8234_8354 Mask@@33 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| Mask@@33) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_8354 Mask@@33 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_13859) (o_2@@33 T@Ref) (f_4@@33 T@Field_20099_3382) ) (! (= (HasDirectPerm_8232_3382 Mask@@34 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| Mask@@34) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8232_3382 Mask@@34 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_13859) (o_2@@34 T@Ref) (f_4@@34 T@Field_20148_20150) ) (! (= (HasDirectPerm_8234_21331 Mask@@35 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| Mask@@35) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8234_21331 Mask@@35 o_2@@34 f_4@@34))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.199:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13838) (ExhaleHeap@@9 T@PolymorphicMapType_13838) (Mask@@36 T@PolymorphicMapType_13859) (o_41@@0 T@Ref) (f_53@@47 T@Field_23694_23699) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@36) (=> (HasDirectPerm_8353_42726 Mask@@36 o_41@@0 f_53@@47) (= (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@16) o_41@@0 f_53@@47) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@9) o_41@@0 f_53@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@36) (select (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| ExhaleHeap@@9) o_41@@0 f_53@@47))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13838) (ExhaleHeap@@10 T@PolymorphicMapType_13838) (Mask@@37 T@PolymorphicMapType_13859) (o_41@@1 T@Ref) (f_53@@48 T@Field_8353_13912) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@37) (=> (HasDirectPerm_8353_13912 Mask@@37 o_41@@1 f_53@@48) (= (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@17) o_41@@1 f_53@@48) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@10) o_41@@1 f_53@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@37) (select (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| ExhaleHeap@@10) o_41@@1 f_53@@48))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_13838) (ExhaleHeap@@11 T@PolymorphicMapType_13838) (Mask@@38 T@PolymorphicMapType_13859) (o_41@@2 T@Ref) (f_53@@49 T@Field_8353_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@38) (=> (HasDirectPerm_8353_53 Mask@@38 o_41@@2 f_53@@49) (= (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@18) o_41@@2 f_53@@49) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@11) o_41@@2 f_53@@49))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@38) (select (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| ExhaleHeap@@11) o_41@@2 f_53@@49))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_13838) (ExhaleHeap@@12 T@PolymorphicMapType_13838) (Mask@@39 T@PolymorphicMapType_13859) (o_41@@3 T@Ref) (f_53@@50 T@Field_20607_20608) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@39) (=> (HasDirectPerm_8353_8354 Mask@@39 o_41@@3 f_53@@50) (= (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@19) o_41@@3 f_53@@50) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@12) o_41@@3 f_53@@50))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@39) (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| ExhaleHeap@@12) o_41@@3 f_53@@50))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_13838) (ExhaleHeap@@13 T@PolymorphicMapType_13838) (Mask@@40 T@PolymorphicMapType_13859) (o_41@@4 T@Ref) (f_53@@51 T@Field_8353_3382) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@40) (=> (HasDirectPerm_8353_3382 Mask@@40 o_41@@4 f_53@@51) (= (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@20) o_41@@4 f_53@@51) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@13) o_41@@4 f_53@@51))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@40) (select (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| ExhaleHeap@@13) o_41@@4 f_53@@51))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_13838) (ExhaleHeap@@14 T@PolymorphicMapType_13838) (Mask@@41 T@PolymorphicMapType_13859) (o_41@@5 T@Ref) (f_53@@52 T@Field_8353_21331) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@41) (=> (HasDirectPerm_8353_41619 Mask@@41 o_41@@5 f_53@@52) (= (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@21) o_41@@5 f_53@@52) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@14) o_41@@5 f_53@@52))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@41) (select (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| ExhaleHeap@@14) o_41@@5 f_53@@52))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_13838) (ExhaleHeap@@15 T@PolymorphicMapType_13838) (Mask@@42 T@PolymorphicMapType_13859) (o_41@@6 T@Ref) (f_53@@53 T@Field_8234_23699) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@42) (=> (HasDirectPerm_8234_41339 Mask@@42 o_41@@6 f_53@@53) (= (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@22) o_41@@6 f_53@@53) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@15) o_41@@6 f_53@@53))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@42) (select (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| ExhaleHeap@@15) o_41@@6 f_53@@53))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_13838) (ExhaleHeap@@16 T@PolymorphicMapType_13838) (Mask@@43 T@PolymorphicMapType_13859) (o_41@@7 T@Ref) (f_53@@54 T@Field_13911_13912) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@43) (=> (HasDirectPerm_8234_13912 Mask@@43 o_41@@7 f_53@@54) (= (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@23) o_41@@7 f_53@@54) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@16) o_41@@7 f_53@@54))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@43) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| ExhaleHeap@@16) o_41@@7 f_53@@54))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_13838) (ExhaleHeap@@17 T@PolymorphicMapType_13838) (Mask@@44 T@PolymorphicMapType_13859) (o_41@@8 T@Ref) (f_53@@55 T@Field_13898_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@44) (=> (HasDirectPerm_8234_53 Mask@@44 o_41@@8 f_53@@55) (= (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@24) o_41@@8 f_53@@55) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@17) o_41@@8 f_53@@55))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@44) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| ExhaleHeap@@17) o_41@@8 f_53@@55))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_13838) (ExhaleHeap@@18 T@PolymorphicMapType_13838) (Mask@@45 T@PolymorphicMapType_13859) (o_41@@9 T@Ref) (f_53@@56 T@Field_8234_8354) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@45) (=> (HasDirectPerm_8234_8354 Mask@@45 o_41@@9 f_53@@56) (= (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@25) o_41@@9 f_53@@56) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@18) o_41@@9 f_53@@56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@45) (select (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| ExhaleHeap@@18) o_41@@9 f_53@@56))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_13838) (ExhaleHeap@@19 T@PolymorphicMapType_13838) (Mask@@46 T@PolymorphicMapType_13859) (o_41@@10 T@Ref) (f_53@@57 T@Field_20099_3382) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@46) (=> (HasDirectPerm_8232_3382 Mask@@46 o_41@@10 f_53@@57) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@26) o_41@@10 f_53@@57) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@19) o_41@@10 f_53@@57))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@46) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| ExhaleHeap@@19) o_41@@10 f_53@@57))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_13838) (ExhaleHeap@@20 T@PolymorphicMapType_13838) (Mask@@47 T@PolymorphicMapType_13859) (o_41@@11 T@Ref) (f_53@@58 T@Field_20148_20150) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@47) (=> (HasDirectPerm_8234_21331 Mask@@47 o_41@@11 f_53@@58) (= (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@27) o_41@@11 f_53@@58) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@20) o_41@@11 f_53@@58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@47) (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| ExhaleHeap@@20) o_41@@11 f_53@@58))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_23694_23699) ) (! (= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8353_13912) ) (! (= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8353_53) ) (! (= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_8353_3382) ) (! (= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((o_2@@39 T@Ref) (f_4@@39 T@Field_20607_20608) ) (! (= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ZeroMask) o_2@@39 f_4@@39) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ZeroMask) o_2@@39 f_4@@39))
)))
(assert (forall ((o_2@@40 T@Ref) (f_4@@40 T@Field_8353_21331) ) (! (= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ZeroMask) o_2@@40 f_4@@40) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ZeroMask) o_2@@40 f_4@@40))
)))
(assert (forall ((o_2@@41 T@Ref) (f_4@@41 T@Field_8234_23699) ) (! (= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ZeroMask) o_2@@41 f_4@@41) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ZeroMask) o_2@@41 f_4@@41))
)))
(assert (forall ((o_2@@42 T@Ref) (f_4@@42 T@Field_13911_13912) ) (! (= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ZeroMask) o_2@@42 f_4@@42) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ZeroMask) o_2@@42 f_4@@42))
)))
(assert (forall ((o_2@@43 T@Ref) (f_4@@43 T@Field_13898_53) ) (! (= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ZeroMask) o_2@@43 f_4@@43) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ZeroMask) o_2@@43 f_4@@43))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_20099_3382) ) (! (= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_8234_8354) ) (! (= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_20148_20150) ) (! (= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_13838) (xs@@1 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (and (= (getField01 Heap@@28 xs@@1 y@@1) (|getField01'| Heap@@28 xs@@1 y@@1)) (dummyFunction_3622 (|getField01#triggerStateless| xs@@1 y@@1)))
 :qid |stdinbpl.568:15|
 :skolemid |94|
 :pattern ( (getField01 Heap@@28 xs@@1 y@@1))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_13838) (Mask@@48 T@PolymorphicMapType_13859) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@29 Mask@@48) (< AssumeFunctionsAbove 0)) (=> (select (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@29) this@@2 col_2) this@@2) (= (getField Heap@@29 this@@2) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@29) this@@2 fld))))
 :qid |stdinbpl.435:15|
 :skolemid |84|
 :pattern ( (state Heap@@29 Mask@@48) (getField Heap@@29 this@@2))
 :pattern ( (state Heap@@29 Mask@@48) (|getField#triggerStateless| this@@2) (|inv#trigger_8353| Heap@@29 (inv (select (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@29) this@@2 col_2))))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13859) (SummandMask1 T@PolymorphicMapType_13859) (SummandMask2 T@PolymorphicMapType_13859) (o_2@@47 T@Ref) (f_4@@47 T@Field_23694_23699) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ResultMask) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask1) o_2@@47 f_4@@47) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask2) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| ResultMask) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask1) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13859_8353_52523#PolymorphicMapType_13859| SummandMask2) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13859) (SummandMask1@@0 T@PolymorphicMapType_13859) (SummandMask2@@0 T@PolymorphicMapType_13859) (o_2@@48 T@Ref) (f_4@@48 T@Field_8353_13912) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ResultMask@@0) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask1@@0) o_2@@48 f_4@@48) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask2@@0) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| ResultMask@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask1@@0) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13859_8353_13912#PolymorphicMapType_13859| SummandMask2@@0) o_2@@48 f_4@@48))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13859) (SummandMask1@@1 T@PolymorphicMapType_13859) (SummandMask2@@1 T@PolymorphicMapType_13859) (o_2@@49 T@Ref) (f_4@@49 T@Field_8353_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ResultMask@@1) o_2@@49 f_4@@49) (+ (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask1@@1) o_2@@49 f_4@@49) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask2@@1) o_2@@49 f_4@@49))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| ResultMask@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask1@@1) o_2@@49 f_4@@49))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13859_8353_53#PolymorphicMapType_13859| SummandMask2@@1) o_2@@49 f_4@@49))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13859) (SummandMask1@@2 T@PolymorphicMapType_13859) (SummandMask2@@2 T@PolymorphicMapType_13859) (o_2@@50 T@Ref) (f_4@@50 T@Field_8353_3382) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ResultMask@@2) o_2@@50 f_4@@50) (+ (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask1@@2) o_2@@50 f_4@@50) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask2@@2) o_2@@50 f_4@@50))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| ResultMask@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask1@@2) o_2@@50 f_4@@50))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13859_8353_3382#PolymorphicMapType_13859| SummandMask2@@2) o_2@@50 f_4@@50))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13859) (SummandMask1@@3 T@PolymorphicMapType_13859) (SummandMask2@@3 T@PolymorphicMapType_13859) (o_2@@51 T@Ref) (f_4@@51 T@Field_20607_20608) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ResultMask@@3) o_2@@51 f_4@@51) (+ (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask1@@3) o_2@@51 f_4@@51) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask2@@3) o_2@@51 f_4@@51))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| ResultMask@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask1@@3) o_2@@51 f_4@@51))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13859_8353_8354#PolymorphicMapType_13859| SummandMask2@@3) o_2@@51 f_4@@51))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13859) (SummandMask1@@4 T@PolymorphicMapType_13859) (SummandMask2@@4 T@PolymorphicMapType_13859) (o_2@@52 T@Ref) (f_4@@52 T@Field_8353_21331) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ResultMask@@4) o_2@@52 f_4@@52) (+ (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask1@@4) o_2@@52 f_4@@52) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask2@@4) o_2@@52 f_4@@52))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| ResultMask@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask1@@4) o_2@@52 f_4@@52))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13859_8353_52123#PolymorphicMapType_13859| SummandMask2@@4) o_2@@52 f_4@@52))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_13859) (SummandMask1@@5 T@PolymorphicMapType_13859) (SummandMask2@@5 T@PolymorphicMapType_13859) (o_2@@53 T@Ref) (f_4@@53 T@Field_8234_23699) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ResultMask@@5) o_2@@53 f_4@@53) (+ (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask1@@5) o_2@@53 f_4@@53) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask2@@5) o_2@@53 f_4@@53))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| ResultMask@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask1@@5) o_2@@53 f_4@@53))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_13859_8234_52023#PolymorphicMapType_13859| SummandMask2@@5) o_2@@53 f_4@@53))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_13859) (SummandMask1@@6 T@PolymorphicMapType_13859) (SummandMask2@@6 T@PolymorphicMapType_13859) (o_2@@54 T@Ref) (f_4@@54 T@Field_13911_13912) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ResultMask@@6) o_2@@54 f_4@@54) (+ (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask1@@6) o_2@@54 f_4@@54) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask2@@6) o_2@@54 f_4@@54))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| ResultMask@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask1@@6) o_2@@54 f_4@@54))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_13859_8234_13912#PolymorphicMapType_13859| SummandMask2@@6) o_2@@54 f_4@@54))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_13859) (SummandMask1@@7 T@PolymorphicMapType_13859) (SummandMask2@@7 T@PolymorphicMapType_13859) (o_2@@55 T@Ref) (f_4@@55 T@Field_13898_53) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ResultMask@@7) o_2@@55 f_4@@55) (+ (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask1@@7) o_2@@55 f_4@@55) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask2@@7) o_2@@55 f_4@@55))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| ResultMask@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask1@@7) o_2@@55 f_4@@55))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_13859_8234_53#PolymorphicMapType_13859| SummandMask2@@7) o_2@@55 f_4@@55))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_13859) (SummandMask1@@8 T@PolymorphicMapType_13859) (SummandMask2@@8 T@PolymorphicMapType_13859) (o_2@@56 T@Ref) (f_4@@56 T@Field_20099_3382) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ResultMask@@8) o_2@@56 f_4@@56) (+ (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask1@@8) o_2@@56 f_4@@56) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask2@@8) o_2@@56 f_4@@56))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| ResultMask@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask1@@8) o_2@@56 f_4@@56))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_13859_8232_3382#PolymorphicMapType_13859| SummandMask2@@8) o_2@@56 f_4@@56))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_13859) (SummandMask1@@9 T@PolymorphicMapType_13859) (SummandMask2@@9 T@PolymorphicMapType_13859) (o_2@@57 T@Ref) (f_4@@57 T@Field_8234_8354) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ResultMask@@9) o_2@@57 f_4@@57) (+ (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask1@@9) o_2@@57 f_4@@57) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask2@@9) o_2@@57 f_4@@57))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| ResultMask@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask1@@9) o_2@@57 f_4@@57))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_13859_8234_8354#PolymorphicMapType_13859| SummandMask2@@9) o_2@@57 f_4@@57))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_13859) (SummandMask1@@10 T@PolymorphicMapType_13859) (SummandMask2@@10 T@PolymorphicMapType_13859) (o_2@@58 T@Ref) (f_4@@58 T@Field_20148_20150) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ResultMask@@10) o_2@@58 f_4@@58) (+ (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask1@@10) o_2@@58 f_4@@58) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask2@@10) o_2@@58 f_4@@58))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| ResultMask@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask1@@10) o_2@@58 f_4@@58))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_13859_8234_21213#PolymorphicMapType_13859| SummandMask2@@10) o_2@@58 f_4@@58))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_13838) (Mask@@49 T@PolymorphicMapType_13859) (xs@@2 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (state Heap@@30 Mask@@49) (= (|getField01'| Heap@@30 xs@@2 y@@2) (|getField01#frame| (select (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@30) null (inv xs@@2)) xs@@2 y@@2)))
 :qid |stdinbpl.585:15|
 :skolemid |97|
 :pattern ( (state Heap@@30 Mask@@49) (|getField01'| Heap@@30 xs@@2 y@@2))
)))
(assert (forall ((collection_1@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_8353_8354 (inv collection_1@@3)) 0)
 :qid |stdinbpl.705:15|
 :skolemid |108|
 :pattern ( (inv collection_1@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_13838) (o_15 T@Ref) (f_54 T@Field_23694_23699) (v T@PolymorphicMapType_14387) ) (! (succHeap Heap@@31 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@31) (store (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@31) o_15 f_54 v) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@31) (store (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@31) o_15 f_54 v) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@31) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_13838) (o_15@@0 T@Ref) (f_54@@0 T@Field_20607_20608) (v@@0 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@32) (store (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@32) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@32) (store (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@32) o_15@@0 f_54@@0 v@@0) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@32) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_13838) (o_15@@1 T@Ref) (f_54@@1 T@Field_8353_3382) (v@@1 Int) ) (! (succHeap Heap@@33 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@33) (store (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@33) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@33) (store (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@33) o_15@@1 f_54@@1 v@@1) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@33) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_13838) (o_15@@2 T@Ref) (f_54@@2 T@Field_8353_21331) (v@@2 (Array T@Ref Bool)) ) (! (succHeap Heap@@34 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@34) (store (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@34) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@34) (store (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@34) o_15@@2 f_54@@2 v@@2) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@34) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_13838) (o_15@@3 T@Ref) (f_54@@3 T@Field_8353_13912) (v@@3 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@35) (store (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@35) o_15@@3 f_54@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@35) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@35) (store (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@35) o_15@@3 f_54@@3 v@@3)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_13838) (o_15@@4 T@Ref) (f_54@@4 T@Field_8353_53) (v@@4 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@36) (store (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@36) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@36) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@36) (store (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@36) o_15@@4 f_54@@4 v@@4) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_13838) (o_15@@5 T@Ref) (f_54@@5 T@Field_8234_23699) (v@@5 T@PolymorphicMapType_14387) ) (! (succHeap Heap@@37 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@37) (store (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@37) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@37) (store (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@37) o_15@@5 f_54@@5 v@@5) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@37) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_13838) (o_15@@6 T@Ref) (f_54@@6 T@Field_8234_8354) (v@@6 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@38) (store (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@38) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@38) (store (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@38) o_15@@6 f_54@@6 v@@6) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@38) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_13838) (o_15@@7 T@Ref) (f_54@@7 T@Field_20099_3382) (v@@7 Int) ) (! (succHeap Heap@@39 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@39) (store (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@39) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@39) (store (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@39) o_15@@7 f_54@@7 v@@7) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@39) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_13838) (o_15@@8 T@Ref) (f_54@@8 T@Field_20148_20150) (v@@8 (Array T@Ref Bool)) ) (! (succHeap Heap@@40 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@40) (store (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@40) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@40) (store (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@40) o_15@@8 f_54@@8 v@@8) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@40) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_13838) (o_15@@9 T@Ref) (f_54@@9 T@Field_13911_13912) (v@@9 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@41) (store (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@41) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@41) (store (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@41) o_15@@9 f_54@@9 v@@9) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@41) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_13838) (o_15@@10 T@Ref) (f_54@@10 T@Field_13898_53) (v@@10 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_13838 (store (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@42) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13838 (store (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@42) o_15@@10 f_54@@10 v@@10) (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_20437#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8359_23735#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_8354#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8234_41381#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_41661#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_3382#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_53#PolymorphicMapType_13838| Heap@@42) (|PolymorphicMapType_13838_8353_13912#PolymorphicMapType_13838| Heap@@42)))
)))
(assert (forall ((collection_1@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_8353 (inv collection_1@@4)) (|inv#sm| collection_1@@4))
 :qid |stdinbpl.697:15|
 :skolemid |106|
 :pattern ( (PredicateMaskField_8353 (inv collection_1@@4)))
)))
(assert (forall ((a@@1 Int) (b@@0 Int) ) (! (= (<= a@@1 b@@0) (= (|Math#min| a@@1 b@@0) a@@1))
 :qid |stdinbpl.311:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@1 b@@0))
)))
(assert (forall ((a@@2 Int) (b@@1 Int) ) (! (= (<= b@@1 a@@2) (= (|Math#min| a@@2 b@@1) b@@1))
 :qid |stdinbpl.312:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@2 b@@1))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_13838) (Heap1Heap T@PolymorphicMapType_13838) (collection_1@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm))  (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm))) (=> (and (select collection_1@@5 (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap2Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)) fld) (select (|PolymorphicMapType_13838_8232_3382#PolymorphicMapType_13838| Heap1Heap) (|sk_inv#condqp1| (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)) fld)))) (= (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5)))
 :qid |stdinbpl.731:15|
 :skolemid |112|
 :pattern ( (|inv#condqp1| Heap2Heap collection_1@@5) (|inv#condqp1| Heap1Heap collection_1@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((o_15@@11 T@Ref) (f_23 T@Field_13911_13912) (Heap@@43 T@PolymorphicMapType_13838) ) (!  (=> (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@43) o_15@@11 $allocated) (select (|PolymorphicMapType_13838_7911_53#PolymorphicMapType_13838| Heap@@43) (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@43) o_15@@11 f_23) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13838_7914_7915#PolymorphicMapType_13838| Heap@@43) o_15@@11 f_23))
)))
(assert (forall ((p@@2 T@Field_20607_20608) (v_1@@1 T@FrameType) (q T@Field_20607_20608) (w@@1 T@FrameType) (r T@Field_20607_20608) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20607_20607 p@@2 v_1@@1 q w@@1) (InsidePredicate_20607_20607 q w@@1 r u)) (InsidePredicate_20607_20607 p@@2 v_1@@1 r u))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_20607 p@@2 v_1@@1 q w@@1) (InsidePredicate_20607_20607 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_20607_20608) (v_1@@2 T@FrameType) (q@@0 T@Field_20607_20608) (w@@2 T@FrameType) (r@@0 T@Field_8234_8354) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_20607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20607_13898 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_20607_13898 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_20607 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20607_13898 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_20607_20608) (v_1@@3 T@FrameType) (q@@1 T@Field_8234_8354) (w@@3 T@FrameType) (r@@1 T@Field_20607_20608) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_13898 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13898_20607 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_20607_20607 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_13898 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_13898_20607 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_20607_20608) (v_1@@4 T@FrameType) (q@@2 T@Field_8234_8354) (w@@4 T@FrameType) (r@@2 T@Field_8234_8354) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20607_13898 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13898_13898 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_20607_13898 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20607_13898 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_13898_13898 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8234_8354) (v_1@@5 T@FrameType) (q@@3 T@Field_20607_20608) (w@@5 T@FrameType) (r@@3 T@Field_20607_20608) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_20607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20607_20607 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_13898_20607 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_20607 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20607_20607 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8234_8354) (v_1@@6 T@FrameType) (q@@4 T@Field_20607_20608) (w@@6 T@FrameType) (r@@4 T@Field_8234_8354) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_20607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20607_13898 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_13898_13898 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_20607 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20607_13898 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8234_8354) (v_1@@7 T@FrameType) (q@@5 T@Field_8234_8354) (w@@7 T@FrameType) (r@@5 T@Field_20607_20608) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_13898 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13898_20607 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_13898_20607 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_13898 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_13898_20607 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8234_8354) (v_1@@8 T@FrameType) (q@@6 T@Field_8234_8354) (w@@8 T@FrameType) (r@@6 T@Field_8234_8354) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_13898_13898 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13898_13898 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_13898_13898 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.206:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13898_13898 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_13898_13898 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (< a@@3 0) (= (|Math#clip| a@@3) 0))
 :qid |stdinbpl.317:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

