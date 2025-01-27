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
(declare-sort T@Field_15079_53 0)
(declare-sort T@Field_15092_15093 0)
(declare-sort T@Field_24057_24058 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_23960_5155 0)
(declare-sort T@Field_24070_24075 0)
(declare-sort T@Field_24978_24979 0)
(declare-sort T@Field_24992_24997 0)
(declare-sort T@Field_9788_24058 0)
(declare-sort T@Field_9788_24075 0)
(declare-sort T@Field_24057_5155 0)
(declare-sort T@Field_24057_53 0)
(declare-sort T@Field_24057_15093 0)
(declare-sort T@Field_24978_5155 0)
(declare-sort T@Field_24978_53 0)
(declare-sort T@Field_24978_15093 0)
(declare-datatypes ((T@PolymorphicMapType_15040 0)) (((PolymorphicMapType_15040 (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| (Array T@Ref T@Field_23960_5155 Real)) (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| (Array T@Ref T@Field_15092_15093 Real)) (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| (Array T@Ref T@Field_24057_24058 Real)) (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| (Array T@Ref T@Field_24978_24979 Real)) (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| (Array T@Ref T@Field_9788_24058 Real)) (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| (Array T@Ref T@Field_15079_53 Real)) (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| (Array T@Ref T@Field_9788_24075 Real)) (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| (Array T@Ref T@Field_24057_5155 Real)) (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| (Array T@Ref T@Field_24057_15093 Real)) (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| (Array T@Ref T@Field_24057_53 Real)) (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| (Array T@Ref T@Field_24070_24075 Real)) (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| (Array T@Ref T@Field_24978_5155 Real)) (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| (Array T@Ref T@Field_24978_15093 Real)) (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| (Array T@Ref T@Field_24978_53 Real)) (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| (Array T@Ref T@Field_24992_24997 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15568 0)) (((PolymorphicMapType_15568 (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (Array T@Ref T@Field_23960_5155 Bool)) (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (Array T@Ref T@Field_15092_15093 Bool)) (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (Array T@Ref T@Field_15079_53 Bool)) (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (Array T@Ref T@Field_9788_24058 Bool)) (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (Array T@Ref T@Field_9788_24075 Bool)) (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (Array T@Ref T@Field_24057_5155 Bool)) (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (Array T@Ref T@Field_24057_15093 Bool)) (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (Array T@Ref T@Field_24057_53 Bool)) (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (Array T@Ref T@Field_24057_24058 Bool)) (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (Array T@Ref T@Field_24070_24075 Bool)) (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (Array T@Ref T@Field_24978_5155 Bool)) (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (Array T@Ref T@Field_24978_15093 Bool)) (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (Array T@Ref T@Field_24978_53 Bool)) (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (Array T@Ref T@Field_24978_24979 Bool)) (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (Array T@Ref T@Field_24992_24997 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15019 0)) (((PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| (Array T@Ref T@Field_15079_53 Bool)) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| (Array T@Ref T@Field_15092_15093 T@Ref)) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| (Array T@Ref T@Field_24057_24058 T@FrameType)) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| (Array T@Ref T@Field_23960_5155 Int)) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| (Array T@Ref T@Field_24070_24075 T@PolymorphicMapType_15568)) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| (Array T@Ref T@Field_24978_24979 T@FrameType)) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| (Array T@Ref T@Field_24992_24997 T@PolymorphicMapType_15568)) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| (Array T@Ref T@Field_9788_24058 T@FrameType)) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| (Array T@Ref T@Field_9788_24075 T@PolymorphicMapType_15568)) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| (Array T@Ref T@Field_24057_5155 Int)) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| (Array T@Ref T@Field_24057_53 Bool)) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| (Array T@Ref T@Field_24057_15093 T@Ref)) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| (Array T@Ref T@Field_24978_5155 Int)) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| (Array T@Ref T@Field_24978_53 Bool)) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| (Array T@Ref T@Field_24978_15093 T@Ref)) ) ) ))
(declare-fun $allocated () T@Field_15079_53)
(declare-fun val () T@Field_23960_5155)
(declare-fun next () T@Field_15092_15093)
(declare-sort T@Seq_27111 0)
(declare-fun |Seq#Length_9887| (T@Seq_27111) Int)
(declare-fun |Seq#Drop_9887| (T@Seq_27111 Int) T@Seq_27111)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_15019 T@PolymorphicMapType_15019) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15019 T@PolymorphicMapType_15019) Bool)
(declare-fun state (T@PolymorphicMapType_15019 T@PolymorphicMapType_15040) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15040) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_15568)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_9887| (T@Seq_27111 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_9887| () T@Seq_27111)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun Node (T@Ref) T@Field_24057_24058)
(declare-fun IsPredicateField_9794_9795 (T@Field_24057_24058) Bool)
(declare-fun GRAPH ((Array T@Ref Bool)) T@Field_24978_24979)
(declare-fun IsPredicateField_9821_9822 (T@Field_24978_24979) Bool)
(declare-fun |Node#trigger_9794| (T@PolymorphicMapType_15019 T@Field_24057_24058) Bool)
(declare-fun |Node#everUsed_9794| (T@Field_24057_24058) Bool)
(declare-fun |GRAPH#trigger_9821| (T@PolymorphicMapType_15019 T@Field_24978_24979) Bool)
(declare-fun |GRAPH#everUsed_9821| (T@Field_24978_24979) Bool)
(declare-fun |Seq#Update_9887| (T@Seq_27111 Int T@Ref) T@Seq_27111)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Seq#Take_9887| (T@Seq_27111 Int) T@Seq_27111)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Seq#Contains_27111| (T@Seq_27111 T@Ref) Bool)
(declare-fun |Seq#Skolem_27111| (T@Seq_27111 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15019 T@PolymorphicMapType_15019 T@PolymorphicMapType_15040) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_9821 (T@Field_24978_24979) T@Field_24992_24997)
(declare-fun HasDirectPerm_24978_24058 (T@PolymorphicMapType_15040 T@Ref T@Field_24978_24979) Bool)
(declare-fun PredicateMaskField_9794 (T@Field_24057_24058) T@Field_24070_24075)
(declare-fun HasDirectPerm_24057_24058 (T@PolymorphicMapType_15040 T@Ref T@Field_24057_24058) Bool)
(declare-fun IsPredicateField_9788_44387 (T@Field_9788_24058) Bool)
(declare-fun PredicateMaskField_9788 (T@Field_9788_24058) T@Field_9788_24075)
(declare-fun HasDirectPerm_9788_24058 (T@PolymorphicMapType_15040 T@Ref T@Field_9788_24058) Bool)
(declare-fun IsWandField_24978_50068 (T@Field_24978_24979) Bool)
(declare-fun WandMaskField_24978 (T@Field_24978_24979) T@Field_24992_24997)
(declare-fun IsWandField_24057_49711 (T@Field_24057_24058) Bool)
(declare-fun WandMaskField_24057 (T@Field_24057_24058) T@Field_24070_24075)
(declare-fun IsWandField_9788_49354 (T@Field_9788_24058) Bool)
(declare-fun WandMaskField_9788 (T@Field_9788_24058) T@Field_9788_24075)
(declare-fun |Seq#Singleton_9887| (T@Ref) T@Seq_27111)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |Node#sm| (T@Ref) T@Field_24070_24075)
(declare-fun |GRAPH#sm| ((Array T@Ref Bool)) T@Field_24992_24997)
(declare-fun |Seq#Append_27111| (T@Seq_27111 T@Seq_27111) T@Seq_27111)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_15019)
(declare-fun ZeroMask () T@PolymorphicMapType_15040)
(declare-fun InsidePredicate_24978_24978 (T@Field_24978_24979 T@FrameType T@Field_24978_24979 T@FrameType) Bool)
(declare-fun InsidePredicate_24057_24057 (T@Field_24057_24058 T@FrameType T@Field_24057_24058 T@FrameType) Bool)
(declare-fun InsidePredicate_15079_15079 (T@Field_9788_24058 T@FrameType T@Field_9788_24058 T@FrameType) Bool)
(declare-fun IsPredicateField_9788_5155 (T@Field_23960_5155) Bool)
(declare-fun IsWandField_9788_5155 (T@Field_23960_5155) Bool)
(declare-fun IsPredicateField_9790_9791 (T@Field_15092_15093) Bool)
(declare-fun IsWandField_9790_9791 (T@Field_15092_15093) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_9821_60357 (T@Field_24992_24997) Bool)
(declare-fun IsWandField_9821_60373 (T@Field_24992_24997) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_9821_53 (T@Field_24978_53) Bool)
(declare-fun IsWandField_9821_53 (T@Field_24978_53) Bool)
(declare-fun IsPredicateField_9821_9791 (T@Field_24978_15093) Bool)
(declare-fun IsWandField_9821_9791 (T@Field_24978_15093) Bool)
(declare-fun IsPredicateField_9821_5155 (T@Field_24978_5155) Bool)
(declare-fun IsWandField_9821_5155 (T@Field_24978_5155) Bool)
(declare-fun IsPredicateField_9794_59526 (T@Field_24070_24075) Bool)
(declare-fun IsWandField_9794_59542 (T@Field_24070_24075) Bool)
(declare-fun IsPredicateField_9794_53 (T@Field_24057_53) Bool)
(declare-fun IsWandField_9794_53 (T@Field_24057_53) Bool)
(declare-fun IsPredicateField_9794_9791 (T@Field_24057_15093) Bool)
(declare-fun IsWandField_9794_9791 (T@Field_24057_15093) Bool)
(declare-fun IsPredicateField_9794_5155 (T@Field_24057_5155) Bool)
(declare-fun IsWandField_9794_5155 (T@Field_24057_5155) Bool)
(declare-fun IsPredicateField_9788_58695 (T@Field_9788_24075) Bool)
(declare-fun IsWandField_9788_58711 (T@Field_9788_24075) Bool)
(declare-fun IsPredicateField_9788_53 (T@Field_15079_53) Bool)
(declare-fun IsWandField_9788_53 (T@Field_15079_53) Bool)
(declare-fun HasDirectPerm_24978_44142 (T@PolymorphicMapType_15040 T@Ref T@Field_24992_24997) Bool)
(declare-fun HasDirectPerm_24978_15093 (T@PolymorphicMapType_15040 T@Ref T@Field_24978_15093) Bool)
(declare-fun HasDirectPerm_24978_53 (T@PolymorphicMapType_15040 T@Ref T@Field_24978_53) Bool)
(declare-fun HasDirectPerm_24978_5155 (T@PolymorphicMapType_15040 T@Ref T@Field_24978_5155) Bool)
(declare-fun HasDirectPerm_24057_43024 (T@PolymorphicMapType_15040 T@Ref T@Field_24070_24075) Bool)
(declare-fun HasDirectPerm_24057_15093 (T@PolymorphicMapType_15040 T@Ref T@Field_24057_15093) Bool)
(declare-fun HasDirectPerm_24057_53 (T@PolymorphicMapType_15040 T@Ref T@Field_24057_53) Bool)
(declare-fun HasDirectPerm_24057_5155 (T@PolymorphicMapType_15040 T@Ref T@Field_24057_5155) Bool)
(declare-fun HasDirectPerm_9788_41863 (T@PolymorphicMapType_15040 T@Ref T@Field_9788_24075) Bool)
(declare-fun HasDirectPerm_9788_15093 (T@PolymorphicMapType_15040 T@Ref T@Field_15092_15093) Bool)
(declare-fun HasDirectPerm_9788_53 (T@PolymorphicMapType_15040 T@Ref T@Field_15079_53) Bool)
(declare-fun HasDirectPerm_9788_5155 (T@PolymorphicMapType_15040 T@Ref T@Field_23960_5155) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15040 T@PolymorphicMapType_15040 T@PolymorphicMapType_15040) Bool)
(declare-fun |Seq#Equal_27111| (T@Seq_27111 T@Seq_27111) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Seq#ContainsTrigger_9887| (T@Seq_27111 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun getPredWandId_9794_9795 (T@Field_24057_24058) Int)
(declare-fun getPredWandId_9821_9822 (T@Field_24978_24979) Int)
(declare-fun |GRAPH#condqp1| (T@PolymorphicMapType_15019 (Array T@Ref Bool)) Int)
(declare-fun |sk_GRAPH#condqp1| (Int Int) T@Ref)
(declare-fun |Seq#SkolemDiff_27111| (T@Seq_27111 T@Seq_27111) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(declare-fun InsidePredicate_24978_24057 (T@Field_24978_24979 T@FrameType T@Field_24057_24058 T@FrameType) Bool)
(declare-fun InsidePredicate_24978_15079 (T@Field_24978_24979 T@FrameType T@Field_9788_24058 T@FrameType) Bool)
(declare-fun InsidePredicate_24057_24978 (T@Field_24057_24058 T@FrameType T@Field_24978_24979 T@FrameType) Bool)
(declare-fun InsidePredicate_24057_15079 (T@Field_24057_24058 T@FrameType T@Field_9788_24058 T@FrameType) Bool)
(declare-fun InsidePredicate_15079_24978 (T@Field_9788_24058 T@FrameType T@Field_24978_24979 T@FrameType) Bool)
(declare-fun InsidePredicate_15079_24057 (T@Field_9788_24058 T@FrameType T@Field_24057_24058 T@FrameType) Bool)
(assert (forall ((s T@Seq_27111) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_9887| s)) (= (|Seq#Length_9887| (|Seq#Drop_9887| s n)) (- (|Seq#Length_9887| s) n))) (=> (< (|Seq#Length_9887| s) n) (= (|Seq#Length_9887| (|Seq#Drop_9887| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_9887| (|Seq#Drop_9887| s n)) (|Seq#Length_9887| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_9887| (|Seq#Drop_9887| s n)))
 :pattern ( (|Seq#Length_9887| s) (|Seq#Drop_9887| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15019) (Heap1 T@PolymorphicMapType_15019) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15019) (Mask T@PolymorphicMapType_15040) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15019) (Heap1@@0 T@PolymorphicMapType_15019) (Heap2 T@PolymorphicMapType_15019) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24992_24997) ) (!  (not (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24978_24979) ) (!  (not (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_24978_53) ) (!  (not (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_24978_15093) ) (!  (not (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_24978_5155) ) (!  (not (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_24070_24075) ) (!  (not (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_24057_24058) ) (!  (not (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_24057_53) ) (!  (not (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_24057_15093) ) (!  (not (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_24057_5155) ) (!  (not (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_9788_24075) ) (!  (not (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_9788_24058) ) (!  (not (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_15079_53) ) (!  (not (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_15092_15093) ) (!  (not (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_23960_5155) ) (!  (not (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.670:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_27111) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_9887| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_9887| (|Seq#Drop_9887| s@@1 n@@1) j) (|Seq#Index_9887| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_9887| (|Seq#Drop_9887| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_9887| |Seq#Empty_9887|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((self T@Ref) ) (! (IsPredicateField_9794_9795 (Node self))
 :qid |stdinbpl.786:15|
 :skolemid |119|
 :pattern ( (Node self))
)))
(assert (forall ((nodes (Array T@Ref Bool)) ) (! (IsPredicateField_9821_9822 (GRAPH nodes))
 :qid |stdinbpl.840:15|
 :skolemid |125|
 :pattern ( (GRAPH nodes))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15019) (self@@0 T@Ref) ) (! (|Node#everUsed_9794| (Node self@@0))
 :qid |stdinbpl.805:15|
 :skolemid |123|
 :pattern ( (|Node#trigger_9794| Heap@@0 (Node self@@0)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15019) (nodes@@0 (Array T@Ref Bool)) ) (! (|GRAPH#everUsed_9821| (GRAPH nodes@@0))
 :qid |stdinbpl.859:15|
 :skolemid |129|
 :pattern ( (|GRAPH#trigger_9821| Heap@@1 (GRAPH nodes@@0)))
)))
(assert (forall ((s@@3 T@Seq_27111) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_9887| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_9887| (|Seq#Update_9887| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_9887| (|Seq#Update_9887| s@@3 i v) n@@3) (|Seq#Index_9887| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_9887| (|Seq#Update_9887| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_9887| s@@3 n@@3) (|Seq#Update_9887| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_27111) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_9887| s@@5)) (= (|Seq#Length_9887| (|Seq#Take_9887| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_9887| s@@5) n@@5) (= (|Seq#Length_9887| (|Seq#Take_9887| s@@5 n@@5)) (|Seq#Length_9887| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_9887| (|Seq#Take_9887| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_9887| (|Seq#Take_9887| s@@5 n@@5)))
 :pattern ( (|Seq#Take_9887| s@@5 n@@5) (|Seq#Length_9887| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3032) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3032| s@@6)) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3032| s@@6) n@@6) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) (|Seq#Length_3032| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3032| (|Seq#Take_3032| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3032| s@@6 n@@6) (|Seq#Length_3032| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.567:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_27111) (x T@Ref) ) (!  (=> (|Seq#Contains_27111| s@@7 x) (and (and (<= 0 (|Seq#Skolem_27111| s@@7 x)) (< (|Seq#Skolem_27111| s@@7 x) (|Seq#Length_9887| s@@7))) (= (|Seq#Index_9887| s@@7 (|Seq#Skolem_27111| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_27111| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_27111) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_9887| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_9887| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3032) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3032| s@@10 n@@8) s@@10))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3032| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.260:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.673:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15019) (ExhaleHeap T@PolymorphicMapType_15019) (Mask@@0 T@PolymorphicMapType_15040) (pm_f_45 T@Field_24978_24979) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_24978_24058 Mask@@0 null pm_f_45) (IsPredicateField_9821_9822 pm_f_45)) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@2) null (PredicateMaskField_9821 pm_f_45)) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap) null (PredicateMaskField_9821 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_9821_9822 pm_f_45) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap) null (PredicateMaskField_9821 pm_f_45)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15019) (ExhaleHeap@@0 T@PolymorphicMapType_15019) (Mask@@1 T@PolymorphicMapType_15040) (pm_f_45@@0 T@Field_24057_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_24057_24058 Mask@@1 null pm_f_45@@0) (IsPredicateField_9794_9795 pm_f_45@@0)) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@3) null (PredicateMaskField_9794 pm_f_45@@0)) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@0) null (PredicateMaskField_9794 pm_f_45@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsPredicateField_9794_9795 pm_f_45@@0) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@0) null (PredicateMaskField_9794 pm_f_45@@0)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15019) (ExhaleHeap@@1 T@PolymorphicMapType_15019) (Mask@@2 T@PolymorphicMapType_15040) (pm_f_45@@1 T@Field_9788_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_9788_24058 Mask@@2 null pm_f_45@@1) (IsPredicateField_9788_44387 pm_f_45@@1)) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@4) null (PredicateMaskField_9788 pm_f_45@@1)) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@1) null (PredicateMaskField_9788 pm_f_45@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (IsPredicateField_9788_44387 pm_f_45@@1) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@1) null (PredicateMaskField_9788 pm_f_45@@1)))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15019) (ExhaleHeap@@2 T@PolymorphicMapType_15019) (Mask@@3 T@PolymorphicMapType_15040) (pm_f_45@@2 T@Field_24978_24979) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_24978_24058 Mask@@3 null pm_f_45@@2) (IsWandField_24978_50068 pm_f_45@@2)) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@5) null (WandMaskField_24978 pm_f_45@@2)) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@2) null (WandMaskField_24978 pm_f_45@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (IsWandField_24978_50068 pm_f_45@@2) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@2) null (WandMaskField_24978 pm_f_45@@2)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15019) (ExhaleHeap@@3 T@PolymorphicMapType_15019) (Mask@@4 T@PolymorphicMapType_15040) (pm_f_45@@3 T@Field_24057_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_24057_24058 Mask@@4 null pm_f_45@@3) (IsWandField_24057_49711 pm_f_45@@3)) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@6) null (WandMaskField_24057 pm_f_45@@3)) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@3) null (WandMaskField_24057 pm_f_45@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@4) (IsWandField_24057_49711 pm_f_45@@3) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@3) null (WandMaskField_24057 pm_f_45@@3)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15019) (ExhaleHeap@@4 T@PolymorphicMapType_15019) (Mask@@5 T@PolymorphicMapType_15040) (pm_f_45@@4 T@Field_9788_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_9788_24058 Mask@@5 null pm_f_45@@4) (IsWandField_9788_49354 pm_f_45@@4)) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@7) null (WandMaskField_9788 pm_f_45@@4)) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@4) null (WandMaskField_9788 pm_f_45@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@5) (IsWandField_9788_49354 pm_f_45@@4) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@4) null (WandMaskField_9788 pm_f_45@@4)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_27111| (|Seq#Singleton_9887| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_27111| (|Seq#Singleton_9887| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_27111) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_9887| s@@11))) (= (|Seq#Index_9887| (|Seq#Take_9887| s@@11 n@@9) j@@3) (|Seq#Index_9887| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_9887| (|Seq#Take_9887| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_9887| s@@11 j@@3) (|Seq#Take_9887| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((self@@1 T@Ref) (self2 T@Ref) ) (!  (=> (= (Node self@@1) (Node self2)) (= self@@1 self2))
 :qid |stdinbpl.796:15|
 :skolemid |121|
 :pattern ( (Node self@@1) (Node self2))
)))
(assert (forall ((self@@2 T@Ref) (self2@@0 T@Ref) ) (!  (=> (= (|Node#sm| self@@2) (|Node#sm| self2@@0)) (= self@@2 self2@@0))
 :qid |stdinbpl.800:15|
 :skolemid |122|
 :pattern ( (|Node#sm| self@@2) (|Node#sm| self2@@0))
)))
(assert (forall ((nodes@@1 (Array T@Ref Bool)) (nodes2 (Array T@Ref Bool)) ) (!  (=> (= (GRAPH nodes@@1) (GRAPH nodes2)) (= nodes@@1 nodes2))
 :qid |stdinbpl.850:15|
 :skolemid |127|
 :pattern ( (GRAPH nodes@@1) (GRAPH nodes2))
)))
(assert (forall ((nodes@@2 (Array T@Ref Bool)) (nodes2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|GRAPH#sm| nodes@@2) (|GRAPH#sm| nodes2@@0)) (= nodes@@2 nodes2@@0))
 :qid |stdinbpl.854:15|
 :skolemid |128|
 :pattern ( (|GRAPH#sm| nodes@@2) (|GRAPH#sm| nodes2@@0))
)))
(assert (forall ((s@@13 T@Seq_27111) (t T@Seq_27111) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_9887| s@@13))) (< n@@11 (|Seq#Length_9887| (|Seq#Append_27111| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_9887| s@@13)) (|Seq#Length_9887| s@@13)) n@@11) (= (|Seq#Take_9887| (|Seq#Append_27111| s@@13 t) n@@11) (|Seq#Append_27111| s@@13 (|Seq#Take_9887| t (|Seq#Sub| n@@11 (|Seq#Length_9887| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_9887| (|Seq#Append_27111| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15019) (ExhaleHeap@@5 T@PolymorphicMapType_15019) (Mask@@6 T@PolymorphicMapType_15040) (o_48 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@8) o_48 $allocated) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@5) o_48 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@5) o_48 $allocated))
)))
(assert (forall ((p T@Field_24978_24979) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_24978_24978 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24978_24978 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24057_24058) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_24057_24057 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_24057_24057 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_9788_24058) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_15079_15079 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15079_15079 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_27111) (s1 T@Seq_27111) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_9887|)) (not (= s1 |Seq#Empty_9887|))) (<= (|Seq#Length_9887| s0) n@@13)) (< n@@13 (|Seq#Length_9887| (|Seq#Append_27111| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_9887| s0)) (|Seq#Length_9887| s0)) n@@13) (= (|Seq#Index_9887| (|Seq#Append_27111| s0 s1) n@@13) (|Seq#Index_9887| s1 (|Seq#Sub| n@@13 (|Seq#Length_9887| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_9887| (|Seq#Append_27111| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_9788_5155 val)))
(assert  (not (IsWandField_9788_5155 val)))
(assert  (not (IsPredicateField_9790_9791 next)))
(assert  (not (IsWandField_9790_9791 next)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15019) (ExhaleHeap@@6 T@PolymorphicMapType_15019) (Mask@@7 T@PolymorphicMapType_15040) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@9 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15040) (o_2@@14 T@Ref) (f_4@@14 T@Field_24992_24997) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| Mask@@8) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_9821_60357 f_4@@14))) (not (IsWandField_9821_60373 f_4@@14))) (<= (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| Mask@@8) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| Mask@@8) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15040) (o_2@@15 T@Ref) (f_4@@15 T@Field_24978_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| Mask@@9) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_9821_53 f_4@@15))) (not (IsWandField_9821_53 f_4@@15))) (<= (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| Mask@@9) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| Mask@@9) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15040) (o_2@@16 T@Ref) (f_4@@16 T@Field_24978_24979) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| Mask@@10) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_9821_9822 f_4@@16))) (not (IsWandField_24978_50068 f_4@@16))) (<= (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| Mask@@10) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| Mask@@10) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15040) (o_2@@17 T@Ref) (f_4@@17 T@Field_24978_15093) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| Mask@@11) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_9821_9791 f_4@@17))) (not (IsWandField_9821_9791 f_4@@17))) (<= (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| Mask@@11) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| Mask@@11) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15040) (o_2@@18 T@Ref) (f_4@@18 T@Field_24978_5155) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| Mask@@12) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_9821_5155 f_4@@18))) (not (IsWandField_9821_5155 f_4@@18))) (<= (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| Mask@@12) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| Mask@@12) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15040) (o_2@@19 T@Ref) (f_4@@19 T@Field_24070_24075) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| Mask@@13) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_9794_59526 f_4@@19))) (not (IsWandField_9794_59542 f_4@@19))) (<= (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| Mask@@13) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| Mask@@13) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_15040) (o_2@@20 T@Ref) (f_4@@20 T@Field_24057_53) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| Mask@@14) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_9794_53 f_4@@20))) (not (IsWandField_9794_53 f_4@@20))) (<= (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| Mask@@14) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| Mask@@14) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_15040) (o_2@@21 T@Ref) (f_4@@21 T@Field_24057_24058) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| Mask@@15) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_9794_9795 f_4@@21))) (not (IsWandField_24057_49711 f_4@@21))) (<= (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| Mask@@15) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| Mask@@15) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_15040) (o_2@@22 T@Ref) (f_4@@22 T@Field_24057_15093) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| Mask@@16) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_9794_9791 f_4@@22))) (not (IsWandField_9794_9791 f_4@@22))) (<= (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| Mask@@16) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| Mask@@16) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_15040) (o_2@@23 T@Ref) (f_4@@23 T@Field_24057_5155) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| Mask@@17) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_9794_5155 f_4@@23))) (not (IsWandField_9794_5155 f_4@@23))) (<= (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| Mask@@17) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| Mask@@17) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_15040) (o_2@@24 T@Ref) (f_4@@24 T@Field_9788_24075) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| Mask@@18) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_9788_58695 f_4@@24))) (not (IsWandField_9788_58711 f_4@@24))) (<= (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| Mask@@18) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| Mask@@18) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_15040) (o_2@@25 T@Ref) (f_4@@25 T@Field_15079_53) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| Mask@@19) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_9788_53 f_4@@25))) (not (IsWandField_9788_53 f_4@@25))) (<= (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| Mask@@19) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| Mask@@19) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_15040) (o_2@@26 T@Ref) (f_4@@26 T@Field_9788_24058) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| Mask@@20) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_9788_44387 f_4@@26))) (not (IsWandField_9788_49354 f_4@@26))) (<= (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| Mask@@20) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| Mask@@20) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_15040) (o_2@@27 T@Ref) (f_4@@27 T@Field_15092_15093) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| Mask@@21) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_9790_9791 f_4@@27))) (not (IsWandField_9790_9791 f_4@@27))) (<= (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| Mask@@21) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| Mask@@21) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_15040) (o_2@@28 T@Ref) (f_4@@28 T@Field_23960_5155) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| Mask@@22) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_9788_5155 f_4@@28))) (not (IsWandField_9788_5155 f_4@@28))) (<= (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| Mask@@22) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| Mask@@22) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_15040) (o_2@@29 T@Ref) (f_4@@29 T@Field_24992_24997) ) (! (= (HasDirectPerm_24978_44142 Mask@@23 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| Mask@@23) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24978_44142 Mask@@23 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_15040) (o_2@@30 T@Ref) (f_4@@30 T@Field_24978_24979) ) (! (= (HasDirectPerm_24978_24058 Mask@@24 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| Mask@@24) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24978_24058 Mask@@24 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_15040) (o_2@@31 T@Ref) (f_4@@31 T@Field_24978_15093) ) (! (= (HasDirectPerm_24978_15093 Mask@@25 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| Mask@@25) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24978_15093 Mask@@25 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_15040) (o_2@@32 T@Ref) (f_4@@32 T@Field_24978_53) ) (! (= (HasDirectPerm_24978_53 Mask@@26 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| Mask@@26) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24978_53 Mask@@26 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_15040) (o_2@@33 T@Ref) (f_4@@33 T@Field_24978_5155) ) (! (= (HasDirectPerm_24978_5155 Mask@@27 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| Mask@@27) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24978_5155 Mask@@27 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_15040) (o_2@@34 T@Ref) (f_4@@34 T@Field_24070_24075) ) (! (= (HasDirectPerm_24057_43024 Mask@@28 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| Mask@@28) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24057_43024 Mask@@28 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_15040) (o_2@@35 T@Ref) (f_4@@35 T@Field_24057_24058) ) (! (= (HasDirectPerm_24057_24058 Mask@@29 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| Mask@@29) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24057_24058 Mask@@29 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_15040) (o_2@@36 T@Ref) (f_4@@36 T@Field_24057_15093) ) (! (= (HasDirectPerm_24057_15093 Mask@@30 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| Mask@@30) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24057_15093 Mask@@30 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_15040) (o_2@@37 T@Ref) (f_4@@37 T@Field_24057_53) ) (! (= (HasDirectPerm_24057_53 Mask@@31 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| Mask@@31) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24057_53 Mask@@31 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_15040) (o_2@@38 T@Ref) (f_4@@38 T@Field_24057_5155) ) (! (= (HasDirectPerm_24057_5155 Mask@@32 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| Mask@@32) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_24057_5155 Mask@@32 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_15040) (o_2@@39 T@Ref) (f_4@@39 T@Field_9788_24075) ) (! (= (HasDirectPerm_9788_41863 Mask@@33 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| Mask@@33) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9788_41863 Mask@@33 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_15040) (o_2@@40 T@Ref) (f_4@@40 T@Field_9788_24058) ) (! (= (HasDirectPerm_9788_24058 Mask@@34 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| Mask@@34) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9788_24058 Mask@@34 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_15040) (o_2@@41 T@Ref) (f_4@@41 T@Field_15092_15093) ) (! (= (HasDirectPerm_9788_15093 Mask@@35 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| Mask@@35) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9788_15093 Mask@@35 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_15040) (o_2@@42 T@Ref) (f_4@@42 T@Field_15079_53) ) (! (= (HasDirectPerm_9788_53 Mask@@36 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| Mask@@36) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9788_53 Mask@@36 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_15040) (o_2@@43 T@Ref) (f_4@@43 T@Field_23960_5155) ) (! (= (HasDirectPerm_9788_5155 Mask@@37 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| Mask@@37) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_9788_5155 Mask@@37 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15019) (ExhaleHeap@@7 T@PolymorphicMapType_15019) (Mask@@38 T@PolymorphicMapType_15040) (o_48@@0 T@Ref) (f_66 T@Field_24992_24997) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (=> (HasDirectPerm_24978_44142 Mask@@38 o_48@@0 f_66) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@10) o_48@@0 f_66) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@7) o_48@@0 f_66))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@38) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@7) o_48@@0 f_66))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15019) (ExhaleHeap@@8 T@PolymorphicMapType_15019) (Mask@@39 T@PolymorphicMapType_15040) (o_48@@1 T@Ref) (f_66@@0 T@Field_24978_24979) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (=> (HasDirectPerm_24978_24058 Mask@@39 o_48@@1 f_66@@0) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@11) o_48@@1 f_66@@0) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@8) o_48@@1 f_66@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@39) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@8) o_48@@1 f_66@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15019) (ExhaleHeap@@9 T@PolymorphicMapType_15019) (Mask@@40 T@PolymorphicMapType_15040) (o_48@@2 T@Ref) (f_66@@1 T@Field_24978_15093) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (=> (HasDirectPerm_24978_15093 Mask@@40 o_48@@2 f_66@@1) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@12) o_48@@2 f_66@@1) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@9) o_48@@2 f_66@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@40) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@9) o_48@@2 f_66@@1))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15019) (ExhaleHeap@@10 T@PolymorphicMapType_15019) (Mask@@41 T@PolymorphicMapType_15040) (o_48@@3 T@Ref) (f_66@@2 T@Field_24978_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (=> (HasDirectPerm_24978_53 Mask@@41 o_48@@3 f_66@@2) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@13) o_48@@3 f_66@@2) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@10) o_48@@3 f_66@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@10 Mask@@41) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@10) o_48@@3 f_66@@2))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15019) (ExhaleHeap@@11 T@PolymorphicMapType_15019) (Mask@@42 T@PolymorphicMapType_15040) (o_48@@4 T@Ref) (f_66@@3 T@Field_24978_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (=> (HasDirectPerm_24978_5155 Mask@@42 o_48@@4 f_66@@3) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@14) o_48@@4 f_66@@3) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@11) o_48@@4 f_66@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@11 Mask@@42) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@11) o_48@@4 f_66@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15019) (ExhaleHeap@@12 T@PolymorphicMapType_15019) (Mask@@43 T@PolymorphicMapType_15040) (o_48@@5 T@Ref) (f_66@@4 T@Field_24070_24075) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (=> (HasDirectPerm_24057_43024 Mask@@43 o_48@@5 f_66@@4) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@15) o_48@@5 f_66@@4) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@12) o_48@@5 f_66@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@12 Mask@@43) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@12) o_48@@5 f_66@@4))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_15019) (ExhaleHeap@@13 T@PolymorphicMapType_15019) (Mask@@44 T@PolymorphicMapType_15040) (o_48@@6 T@Ref) (f_66@@5 T@Field_24057_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (=> (HasDirectPerm_24057_24058 Mask@@44 o_48@@6 f_66@@5) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@16) o_48@@6 f_66@@5) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@13) o_48@@6 f_66@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@13 Mask@@44) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@13) o_48@@6 f_66@@5))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_15019) (ExhaleHeap@@14 T@PolymorphicMapType_15019) (Mask@@45 T@PolymorphicMapType_15040) (o_48@@7 T@Ref) (f_66@@6 T@Field_24057_15093) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (=> (HasDirectPerm_24057_15093 Mask@@45 o_48@@7 f_66@@6) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@17) o_48@@7 f_66@@6) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@14) o_48@@7 f_66@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@14 Mask@@45) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@14) o_48@@7 f_66@@6))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_15019) (ExhaleHeap@@15 T@PolymorphicMapType_15019) (Mask@@46 T@PolymorphicMapType_15040) (o_48@@8 T@Ref) (f_66@@7 T@Field_24057_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (=> (HasDirectPerm_24057_53 Mask@@46 o_48@@8 f_66@@7) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@18) o_48@@8 f_66@@7) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@15) o_48@@8 f_66@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@15 Mask@@46) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@15) o_48@@8 f_66@@7))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_15019) (ExhaleHeap@@16 T@PolymorphicMapType_15019) (Mask@@47 T@PolymorphicMapType_15040) (o_48@@9 T@Ref) (f_66@@8 T@Field_24057_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (=> (HasDirectPerm_24057_5155 Mask@@47 o_48@@9 f_66@@8) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@19) o_48@@9 f_66@@8) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@16) o_48@@9 f_66@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@16 Mask@@47) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@16) o_48@@9 f_66@@8))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_15019) (ExhaleHeap@@17 T@PolymorphicMapType_15019) (Mask@@48 T@PolymorphicMapType_15040) (o_48@@10 T@Ref) (f_66@@9 T@Field_9788_24075) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (=> (HasDirectPerm_9788_41863 Mask@@48 o_48@@10 f_66@@9) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@20) o_48@@10 f_66@@9) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@17) o_48@@10 f_66@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@17 Mask@@48) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@17) o_48@@10 f_66@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_15019) (ExhaleHeap@@18 T@PolymorphicMapType_15019) (Mask@@49 T@PolymorphicMapType_15040) (o_48@@11 T@Ref) (f_66@@10 T@Field_9788_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (=> (HasDirectPerm_9788_24058 Mask@@49 o_48@@11 f_66@@10) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@21) o_48@@11 f_66@@10) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@18) o_48@@11 f_66@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@18 Mask@@49) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@18) o_48@@11 f_66@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_15019) (ExhaleHeap@@19 T@PolymorphicMapType_15019) (Mask@@50 T@PolymorphicMapType_15040) (o_48@@12 T@Ref) (f_66@@11 T@Field_15092_15093) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (=> (HasDirectPerm_9788_15093 Mask@@50 o_48@@12 f_66@@11) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@22) o_48@@12 f_66@@11) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@19) o_48@@12 f_66@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@19 Mask@@50) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@19) o_48@@12 f_66@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_15019) (ExhaleHeap@@20 T@PolymorphicMapType_15019) (Mask@@51 T@PolymorphicMapType_15040) (o_48@@13 T@Ref) (f_66@@12 T@Field_15079_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (=> (HasDirectPerm_9788_53 Mask@@51 o_48@@13 f_66@@12) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@23) o_48@@13 f_66@@12) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@20) o_48@@13 f_66@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@20 Mask@@51) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@20) o_48@@13 f_66@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_15019) (ExhaleHeap@@21 T@PolymorphicMapType_15019) (Mask@@52 T@PolymorphicMapType_15040) (o_48@@14 T@Ref) (f_66@@13 T@Field_23960_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (=> (HasDirectPerm_9788_5155 Mask@@52 o_48@@14 f_66@@13) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@24) o_48@@14 f_66@@13) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@21) o_48@@14 f_66@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@21 Mask@@52) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@21) o_48@@14 f_66@@13))
)))
(assert (forall ((s0@@1 T@Seq_27111) (s1@@1 T@Seq_27111) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_9887|)) (not (= s1@@1 |Seq#Empty_9887|))) (= (|Seq#Length_9887| (|Seq#Append_27111| s0@@1 s1@@1)) (+ (|Seq#Length_9887| s0@@1) (|Seq#Length_9887| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_9887| (|Seq#Append_27111| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_24992_24997) ) (! (= (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_24978_53) ) (! (= (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_24978_24979) ) (! (= (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_24978_15093) ) (! (= (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_24978_5155) ) (! (= (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_24070_24075) ) (! (= (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_24057_53) ) (! (= (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_24057_24058) ) (! (= (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_24057_15093) ) (! (= (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_24057_5155) ) (! (= (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_9788_24075) ) (! (= (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_15079_53) ) (! (= (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_9788_24058) ) (! (= (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_15092_15093) ) (! (= (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_23960_5155) ) (! (= (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@15 T@Seq_27111) (t@@1 T@Seq_27111) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_9887| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_9887| s@@15)) (|Seq#Length_9887| s@@15)) n@@15) (= (|Seq#Drop_9887| (|Seq#Append_27111| s@@15 t@@1) n@@15) (|Seq#Drop_9887| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_9887| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_9887| (|Seq#Append_27111| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15040) (SummandMask1 T@PolymorphicMapType_15040) (SummandMask2 T@PolymorphicMapType_15040) (o_2@@59 T@Ref) (f_4@@59 T@Field_24992_24997) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15040_9821_56916#PolymorphicMapType_15040| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15040) (SummandMask1@@0 T@PolymorphicMapType_15040) (SummandMask2@@0 T@PolymorphicMapType_15040) (o_2@@60 T@Ref) (f_4@@60 T@Field_24978_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15040_9821_53#PolymorphicMapType_15040| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15040) (SummandMask1@@1 T@PolymorphicMapType_15040) (SummandMask2@@1 T@PolymorphicMapType_15040) (o_2@@61 T@Ref) (f_4@@61 T@Field_24978_24979) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15040_9821_9822#PolymorphicMapType_15040| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15040) (SummandMask1@@2 T@PolymorphicMapType_15040) (SummandMask2@@2 T@PolymorphicMapType_15040) (o_2@@62 T@Ref) (f_4@@62 T@Field_24978_15093) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15040_9821_9791#PolymorphicMapType_15040| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15040) (SummandMask1@@3 T@PolymorphicMapType_15040) (SummandMask2@@3 T@PolymorphicMapType_15040) (o_2@@63 T@Ref) (f_4@@63 T@Field_24978_5155) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15040_9821_5155#PolymorphicMapType_15040| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_15040) (SummandMask1@@4 T@PolymorphicMapType_15040) (SummandMask2@@4 T@PolymorphicMapType_15040) (o_2@@64 T@Ref) (f_4@@64 T@Field_24070_24075) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_15040_9794_56505#PolymorphicMapType_15040| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_15040) (SummandMask1@@5 T@PolymorphicMapType_15040) (SummandMask2@@5 T@PolymorphicMapType_15040) (o_2@@65 T@Ref) (f_4@@65 T@Field_24057_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_15040_9794_53#PolymorphicMapType_15040| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_15040) (SummandMask1@@6 T@PolymorphicMapType_15040) (SummandMask2@@6 T@PolymorphicMapType_15040) (o_2@@66 T@Ref) (f_4@@66 T@Field_24057_24058) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_15040_9794_9795#PolymorphicMapType_15040| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_15040) (SummandMask1@@7 T@PolymorphicMapType_15040) (SummandMask2@@7 T@PolymorphicMapType_15040) (o_2@@67 T@Ref) (f_4@@67 T@Field_24057_15093) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_15040_9794_9791#PolymorphicMapType_15040| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_15040) (SummandMask1@@8 T@PolymorphicMapType_15040) (SummandMask2@@8 T@PolymorphicMapType_15040) (o_2@@68 T@Ref) (f_4@@68 T@Field_24057_5155) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_15040_9794_5155#PolymorphicMapType_15040| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_15040) (SummandMask1@@9 T@PolymorphicMapType_15040) (SummandMask2@@9 T@PolymorphicMapType_15040) (o_2@@69 T@Ref) (f_4@@69 T@Field_9788_24075) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_15040_9788_56094#PolymorphicMapType_15040| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_15040) (SummandMask1@@10 T@PolymorphicMapType_15040) (SummandMask2@@10 T@PolymorphicMapType_15040) (o_2@@70 T@Ref) (f_4@@70 T@Field_15079_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_15040_9788_53#PolymorphicMapType_15040| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_15040) (SummandMask1@@11 T@PolymorphicMapType_15040) (SummandMask2@@11 T@PolymorphicMapType_15040) (o_2@@71 T@Ref) (f_4@@71 T@Field_9788_24058) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_15040_9788_9795#PolymorphicMapType_15040| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_15040) (SummandMask1@@12 T@PolymorphicMapType_15040) (SummandMask2@@12 T@PolymorphicMapType_15040) (o_2@@72 T@Ref) (f_4@@72 T@Field_15092_15093) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_15040_9790_9791#PolymorphicMapType_15040| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_15040) (SummandMask1@@13 T@PolymorphicMapType_15040) (SummandMask2@@13 T@PolymorphicMapType_15040) (o_2@@73 T@Ref) (f_4@@73 T@Field_23960_5155) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_15040_9788_5155#PolymorphicMapType_15040| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_15019) (ExhaleHeap@@22 T@PolymorphicMapType_15019) (Mask@@53 T@PolymorphicMapType_15040) (pm_f_45@@5 T@Field_24978_24979) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (=> (and (HasDirectPerm_24978_24058 Mask@@53 null pm_f_45@@5) (IsPredicateField_9821_9822 pm_f_45@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45 T@Ref) (f_66@@14 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45 f_66@@14) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@25) o2_45 f_66@@14) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45 f_66@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45 f_66@@14))
)) (forall ((o2_45@@0 T@Ref) (f_66@@15 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@0 f_66@@15) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@25) o2_45@@0 f_66@@15) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@0 f_66@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@0 f_66@@15))
))) (forall ((o2_45@@1 T@Ref) (f_66@@16 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@1 f_66@@16) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@25) o2_45@@1 f_66@@16) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@1 f_66@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@1 f_66@@16))
))) (forall ((o2_45@@2 T@Ref) (f_66@@17 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@2 f_66@@17) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@25) o2_45@@2 f_66@@17) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@2 f_66@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@2 f_66@@17))
))) (forall ((o2_45@@3 T@Ref) (f_66@@18 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@3 f_66@@18) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@25) o2_45@@3 f_66@@18) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@3 f_66@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@3 f_66@@18))
))) (forall ((o2_45@@4 T@Ref) (f_66@@19 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@4 f_66@@19) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@25) o2_45@@4 f_66@@19) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@4 f_66@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@4 f_66@@19))
))) (forall ((o2_45@@5 T@Ref) (f_66@@20 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@5 f_66@@20) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@25) o2_45@@5 f_66@@20) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@5 f_66@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@5 f_66@@20))
))) (forall ((o2_45@@6 T@Ref) (f_66@@21 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@6 f_66@@21) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@25) o2_45@@6 f_66@@21) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@6 f_66@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@6 f_66@@21))
))) (forall ((o2_45@@7 T@Ref) (f_66@@22 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@7 f_66@@22) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@25) o2_45@@7 f_66@@22) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@7 f_66@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@7 f_66@@22))
))) (forall ((o2_45@@8 T@Ref) (f_66@@23 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@8 f_66@@23) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@25) o2_45@@8 f_66@@23) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@8 f_66@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@8 f_66@@23))
))) (forall ((o2_45@@9 T@Ref) (f_66@@24 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@9 f_66@@24) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@25) o2_45@@9 f_66@@24) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@9 f_66@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@9 f_66@@24))
))) (forall ((o2_45@@10 T@Ref) (f_66@@25 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@10 f_66@@25) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@25) o2_45@@10 f_66@@25) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@10 f_66@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@10 f_66@@25))
))) (forall ((o2_45@@11 T@Ref) (f_66@@26 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@11 f_66@@26) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@25) o2_45@@11 f_66@@26) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@11 f_66@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@11 f_66@@26))
))) (forall ((o2_45@@12 T@Ref) (f_66@@27 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@12 f_66@@27) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@25) o2_45@@12 f_66@@27) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@12 f_66@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@12 f_66@@27))
))) (forall ((o2_45@@13 T@Ref) (f_66@@28 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) null (PredicateMaskField_9821 pm_f_45@@5))) o2_45@@13 f_66@@28) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@25) o2_45@@13 f_66@@28) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@13 f_66@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@22) o2_45@@13 f_66@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@22 Mask@@53) (IsPredicateField_9821_9822 pm_f_45@@5))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_15019) (ExhaleHeap@@23 T@PolymorphicMapType_15019) (Mask@@54 T@PolymorphicMapType_15040) (pm_f_45@@6 T@Field_24057_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (=> (and (HasDirectPerm_24057_24058 Mask@@54 null pm_f_45@@6) (IsPredicateField_9794_9795 pm_f_45@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@14 T@Ref) (f_66@@29 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@14 f_66@@29) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@26) o2_45@@14 f_66@@29) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@14 f_66@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@14 f_66@@29))
)) (forall ((o2_45@@15 T@Ref) (f_66@@30 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@15 f_66@@30) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@26) o2_45@@15 f_66@@30) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@15 f_66@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@15 f_66@@30))
))) (forall ((o2_45@@16 T@Ref) (f_66@@31 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@16 f_66@@31) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@26) o2_45@@16 f_66@@31) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@16 f_66@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@16 f_66@@31))
))) (forall ((o2_45@@17 T@Ref) (f_66@@32 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@17 f_66@@32) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@26) o2_45@@17 f_66@@32) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@17 f_66@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@17 f_66@@32))
))) (forall ((o2_45@@18 T@Ref) (f_66@@33 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@18 f_66@@33) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@26) o2_45@@18 f_66@@33) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@18 f_66@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@18 f_66@@33))
))) (forall ((o2_45@@19 T@Ref) (f_66@@34 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@19 f_66@@34) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@26) o2_45@@19 f_66@@34) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@19 f_66@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@19 f_66@@34))
))) (forall ((o2_45@@20 T@Ref) (f_66@@35 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@20 f_66@@35) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@26) o2_45@@20 f_66@@35) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@20 f_66@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@20 f_66@@35))
))) (forall ((o2_45@@21 T@Ref) (f_66@@36 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@21 f_66@@36) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@26) o2_45@@21 f_66@@36) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@21 f_66@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@21 f_66@@36))
))) (forall ((o2_45@@22 T@Ref) (f_66@@37 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@22 f_66@@37) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@26) o2_45@@22 f_66@@37) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@22 f_66@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@22 f_66@@37))
))) (forall ((o2_45@@23 T@Ref) (f_66@@38 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@23 f_66@@38) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) o2_45@@23 f_66@@38) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@23 f_66@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@23 f_66@@38))
))) (forall ((o2_45@@24 T@Ref) (f_66@@39 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@24 f_66@@39) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@26) o2_45@@24 f_66@@39) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@24 f_66@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@24 f_66@@39))
))) (forall ((o2_45@@25 T@Ref) (f_66@@40 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@25 f_66@@40) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@26) o2_45@@25 f_66@@40) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@25 f_66@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@25 f_66@@40))
))) (forall ((o2_45@@26 T@Ref) (f_66@@41 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@26 f_66@@41) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@26) o2_45@@26 f_66@@41) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@26 f_66@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@26 f_66@@41))
))) (forall ((o2_45@@27 T@Ref) (f_66@@42 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@27 f_66@@42) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@26) o2_45@@27 f_66@@42) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@27 f_66@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@27 f_66@@42))
))) (forall ((o2_45@@28 T@Ref) (f_66@@43 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@26) null (PredicateMaskField_9794 pm_f_45@@6))) o2_45@@28 f_66@@43) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@26) o2_45@@28 f_66@@43) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@28 f_66@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@23) o2_45@@28 f_66@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@23 Mask@@54) (IsPredicateField_9794_9795 pm_f_45@@6))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_15019) (ExhaleHeap@@24 T@PolymorphicMapType_15019) (Mask@@55 T@PolymorphicMapType_15040) (pm_f_45@@7 T@Field_9788_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (=> (and (HasDirectPerm_9788_24058 Mask@@55 null pm_f_45@@7) (IsPredicateField_9788_44387 pm_f_45@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@29 T@Ref) (f_66@@44 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@29 f_66@@44) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@27) o2_45@@29 f_66@@44) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@29 f_66@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@29 f_66@@44))
)) (forall ((o2_45@@30 T@Ref) (f_66@@45 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@30 f_66@@45) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@27) o2_45@@30 f_66@@45) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@30 f_66@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@30 f_66@@45))
))) (forall ((o2_45@@31 T@Ref) (f_66@@46 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@31 f_66@@46) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@27) o2_45@@31 f_66@@46) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@31 f_66@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@31 f_66@@46))
))) (forall ((o2_45@@32 T@Ref) (f_66@@47 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@32 f_66@@47) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@27) o2_45@@32 f_66@@47) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@32 f_66@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@32 f_66@@47))
))) (forall ((o2_45@@33 T@Ref) (f_66@@48 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@33 f_66@@48) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) o2_45@@33 f_66@@48) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@33 f_66@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@33 f_66@@48))
))) (forall ((o2_45@@34 T@Ref) (f_66@@49 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@34 f_66@@49) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@27) o2_45@@34 f_66@@49) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@34 f_66@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@34 f_66@@49))
))) (forall ((o2_45@@35 T@Ref) (f_66@@50 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@35 f_66@@50) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@27) o2_45@@35 f_66@@50) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@35 f_66@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@35 f_66@@50))
))) (forall ((o2_45@@36 T@Ref) (f_66@@51 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@36 f_66@@51) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@27) o2_45@@36 f_66@@51) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@36 f_66@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@36 f_66@@51))
))) (forall ((o2_45@@37 T@Ref) (f_66@@52 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@37 f_66@@52) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@27) o2_45@@37 f_66@@52) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@37 f_66@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@37 f_66@@52))
))) (forall ((o2_45@@38 T@Ref) (f_66@@53 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@38 f_66@@53) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@27) o2_45@@38 f_66@@53) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@38 f_66@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@38 f_66@@53))
))) (forall ((o2_45@@39 T@Ref) (f_66@@54 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@39 f_66@@54) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@27) o2_45@@39 f_66@@54) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@39 f_66@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@39 f_66@@54))
))) (forall ((o2_45@@40 T@Ref) (f_66@@55 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@40 f_66@@55) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@27) o2_45@@40 f_66@@55) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@40 f_66@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@40 f_66@@55))
))) (forall ((o2_45@@41 T@Ref) (f_66@@56 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@41 f_66@@56) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@27) o2_45@@41 f_66@@56) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@41 f_66@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@41 f_66@@56))
))) (forall ((o2_45@@42 T@Ref) (f_66@@57 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@42 f_66@@57) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@27) o2_45@@42 f_66@@57) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@42 f_66@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@42 f_66@@57))
))) (forall ((o2_45@@43 T@Ref) (f_66@@58 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@27) null (PredicateMaskField_9788 pm_f_45@@7))) o2_45@@43 f_66@@58) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@27) o2_45@@43 f_66@@58) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@43 f_66@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@24) o2_45@@43 f_66@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@24 Mask@@55) (IsPredicateField_9788_44387 pm_f_45@@7))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_15019) (ExhaleHeap@@25 T@PolymorphicMapType_15019) (Mask@@56 T@PolymorphicMapType_15040) (pm_f_45@@8 T@Field_24978_24979) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (=> (and (HasDirectPerm_24978_24058 Mask@@56 null pm_f_45@@8) (IsWandField_24978_50068 pm_f_45@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@44 T@Ref) (f_66@@59 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@44 f_66@@59) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@28) o2_45@@44 f_66@@59) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@44 f_66@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@44 f_66@@59))
)) (forall ((o2_45@@45 T@Ref) (f_66@@60 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@45 f_66@@60) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@28) o2_45@@45 f_66@@60) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@45 f_66@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@45 f_66@@60))
))) (forall ((o2_45@@46 T@Ref) (f_66@@61 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@46 f_66@@61) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@28) o2_45@@46 f_66@@61) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@46 f_66@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@46 f_66@@61))
))) (forall ((o2_45@@47 T@Ref) (f_66@@62 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@47 f_66@@62) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@28) o2_45@@47 f_66@@62) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@47 f_66@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@47 f_66@@62))
))) (forall ((o2_45@@48 T@Ref) (f_66@@63 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@48 f_66@@63) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@28) o2_45@@48 f_66@@63) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@48 f_66@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@48 f_66@@63))
))) (forall ((o2_45@@49 T@Ref) (f_66@@64 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@49 f_66@@64) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@28) o2_45@@49 f_66@@64) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@49 f_66@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@49 f_66@@64))
))) (forall ((o2_45@@50 T@Ref) (f_66@@65 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@50 f_66@@65) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@28) o2_45@@50 f_66@@65) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@50 f_66@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@50 f_66@@65))
))) (forall ((o2_45@@51 T@Ref) (f_66@@66 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@51 f_66@@66) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@28) o2_45@@51 f_66@@66) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@51 f_66@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@51 f_66@@66))
))) (forall ((o2_45@@52 T@Ref) (f_66@@67 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@52 f_66@@67) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@28) o2_45@@52 f_66@@67) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@52 f_66@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@52 f_66@@67))
))) (forall ((o2_45@@53 T@Ref) (f_66@@68 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@53 f_66@@68) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@28) o2_45@@53 f_66@@68) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@53 f_66@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@53 f_66@@68))
))) (forall ((o2_45@@54 T@Ref) (f_66@@69 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@54 f_66@@69) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@28) o2_45@@54 f_66@@69) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@54 f_66@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@54 f_66@@69))
))) (forall ((o2_45@@55 T@Ref) (f_66@@70 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@55 f_66@@70) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@28) o2_45@@55 f_66@@70) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@55 f_66@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@55 f_66@@70))
))) (forall ((o2_45@@56 T@Ref) (f_66@@71 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@56 f_66@@71) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@28) o2_45@@56 f_66@@71) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@56 f_66@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@56 f_66@@71))
))) (forall ((o2_45@@57 T@Ref) (f_66@@72 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@57 f_66@@72) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@28) o2_45@@57 f_66@@72) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@57 f_66@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@57 f_66@@72))
))) (forall ((o2_45@@58 T@Ref) (f_66@@73 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) null (WandMaskField_24978 pm_f_45@@8))) o2_45@@58 f_66@@73) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@28) o2_45@@58 f_66@@73) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@58 f_66@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@25) o2_45@@58 f_66@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@25 Mask@@56) (IsWandField_24978_50068 pm_f_45@@8))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_15019) (ExhaleHeap@@26 T@PolymorphicMapType_15019) (Mask@@57 T@PolymorphicMapType_15040) (pm_f_45@@9 T@Field_24057_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (=> (and (HasDirectPerm_24057_24058 Mask@@57 null pm_f_45@@9) (IsWandField_24057_49711 pm_f_45@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@59 T@Ref) (f_66@@74 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@59 f_66@@74) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@29) o2_45@@59 f_66@@74) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@59 f_66@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@59 f_66@@74))
)) (forall ((o2_45@@60 T@Ref) (f_66@@75 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@60 f_66@@75) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@29) o2_45@@60 f_66@@75) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@60 f_66@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@60 f_66@@75))
))) (forall ((o2_45@@61 T@Ref) (f_66@@76 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@61 f_66@@76) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@29) o2_45@@61 f_66@@76) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@61 f_66@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@61 f_66@@76))
))) (forall ((o2_45@@62 T@Ref) (f_66@@77 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@62 f_66@@77) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@29) o2_45@@62 f_66@@77) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@62 f_66@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@62 f_66@@77))
))) (forall ((o2_45@@63 T@Ref) (f_66@@78 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@63 f_66@@78) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@29) o2_45@@63 f_66@@78) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@63 f_66@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@63 f_66@@78))
))) (forall ((o2_45@@64 T@Ref) (f_66@@79 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@64 f_66@@79) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@29) o2_45@@64 f_66@@79) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@64 f_66@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@64 f_66@@79))
))) (forall ((o2_45@@65 T@Ref) (f_66@@80 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@65 f_66@@80) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@29) o2_45@@65 f_66@@80) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@65 f_66@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@65 f_66@@80))
))) (forall ((o2_45@@66 T@Ref) (f_66@@81 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@66 f_66@@81) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@29) o2_45@@66 f_66@@81) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@66 f_66@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@66 f_66@@81))
))) (forall ((o2_45@@67 T@Ref) (f_66@@82 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@67 f_66@@82) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@29) o2_45@@67 f_66@@82) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@67 f_66@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@67 f_66@@82))
))) (forall ((o2_45@@68 T@Ref) (f_66@@83 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@68 f_66@@83) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) o2_45@@68 f_66@@83) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@68 f_66@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@68 f_66@@83))
))) (forall ((o2_45@@69 T@Ref) (f_66@@84 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@69 f_66@@84) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@29) o2_45@@69 f_66@@84) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@69 f_66@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@69 f_66@@84))
))) (forall ((o2_45@@70 T@Ref) (f_66@@85 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@70 f_66@@85) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@29) o2_45@@70 f_66@@85) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@70 f_66@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@70 f_66@@85))
))) (forall ((o2_45@@71 T@Ref) (f_66@@86 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@71 f_66@@86) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@29) o2_45@@71 f_66@@86) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@71 f_66@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@71 f_66@@86))
))) (forall ((o2_45@@72 T@Ref) (f_66@@87 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@72 f_66@@87) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@29) o2_45@@72 f_66@@87) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@72 f_66@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@72 f_66@@87))
))) (forall ((o2_45@@73 T@Ref) (f_66@@88 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@29) null (WandMaskField_24057 pm_f_45@@9))) o2_45@@73 f_66@@88) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@29) o2_45@@73 f_66@@88) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@73 f_66@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@26) o2_45@@73 f_66@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@26 Mask@@57) (IsWandField_24057_49711 pm_f_45@@9))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_15019) (ExhaleHeap@@27 T@PolymorphicMapType_15019) (Mask@@58 T@PolymorphicMapType_15040) (pm_f_45@@10 T@Field_9788_24058) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (=> (and (HasDirectPerm_9788_24058 Mask@@58 null pm_f_45@@10) (IsWandField_9788_49354 pm_f_45@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_45@@74 T@Ref) (f_66@@89 T@Field_23960_5155) ) (!  (=> (select (|PolymorphicMapType_15568_9788_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@74 f_66@@89) (= (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@30) o2_45@@74 f_66@@89) (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@74 f_66@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@74 f_66@@89))
)) (forall ((o2_45@@75 T@Ref) (f_66@@90 T@Field_15092_15093) ) (!  (=> (select (|PolymorphicMapType_15568_9790_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@75 f_66@@90) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@30) o2_45@@75 f_66@@90) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@75 f_66@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@75 f_66@@90))
))) (forall ((o2_45@@76 T@Ref) (f_66@@91 T@Field_15079_53) ) (!  (=> (select (|PolymorphicMapType_15568_9788_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@76 f_66@@91) (= (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@30) o2_45@@76 f_66@@91) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@76 f_66@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@76 f_66@@91))
))) (forall ((o2_45@@77 T@Ref) (f_66@@92 T@Field_9788_24058) ) (!  (=> (select (|PolymorphicMapType_15568_9788_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@77 f_66@@92) (= (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@30) o2_45@@77 f_66@@92) (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@77 f_66@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@77 f_66@@92))
))) (forall ((o2_45@@78 T@Ref) (f_66@@93 T@Field_9788_24075) ) (!  (=> (select (|PolymorphicMapType_15568_9788_46169#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@78 f_66@@93) (= (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) o2_45@@78 f_66@@93) (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@78 f_66@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@78 f_66@@93))
))) (forall ((o2_45@@79 T@Ref) (f_66@@94 T@Field_24057_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24057_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@79 f_66@@94) (= (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@30) o2_45@@79 f_66@@94) (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@79 f_66@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@79 f_66@@94))
))) (forall ((o2_45@@80 T@Ref) (f_66@@95 T@Field_24057_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24057_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@80 f_66@@95) (= (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@30) o2_45@@80 f_66@@95) (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@80 f_66@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@80 f_66@@95))
))) (forall ((o2_45@@81 T@Ref) (f_66@@96 T@Field_24057_53) ) (!  (=> (select (|PolymorphicMapType_15568_24057_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@81 f_66@@96) (= (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@30) o2_45@@81 f_66@@96) (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@81 f_66@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@81 f_66@@96))
))) (forall ((o2_45@@82 T@Ref) (f_66@@97 T@Field_24057_24058) ) (!  (=> (select (|PolymorphicMapType_15568_24057_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@82 f_66@@97) (= (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@30) o2_45@@82 f_66@@97) (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@82 f_66@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@82 f_66@@97))
))) (forall ((o2_45@@83 T@Ref) (f_66@@98 T@Field_24070_24075) ) (!  (=> (select (|PolymorphicMapType_15568_24057_47217#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@83 f_66@@98) (= (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@30) o2_45@@83 f_66@@98) (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@83 f_66@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@83 f_66@@98))
))) (forall ((o2_45@@84 T@Ref) (f_66@@99 T@Field_24978_5155) ) (!  (=> (select (|PolymorphicMapType_15568_24978_5155#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@84 f_66@@99) (= (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@30) o2_45@@84 f_66@@99) (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@84 f_66@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@84 f_66@@99))
))) (forall ((o2_45@@85 T@Ref) (f_66@@100 T@Field_24978_15093) ) (!  (=> (select (|PolymorphicMapType_15568_24978_9791#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@85 f_66@@100) (= (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@30) o2_45@@85 f_66@@100) (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@85 f_66@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@85 f_66@@100))
))) (forall ((o2_45@@86 T@Ref) (f_66@@101 T@Field_24978_53) ) (!  (=> (select (|PolymorphicMapType_15568_24978_53#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@86 f_66@@101) (= (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@30) o2_45@@86 f_66@@101) (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@86 f_66@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@86 f_66@@101))
))) (forall ((o2_45@@87 T@Ref) (f_66@@102 T@Field_24978_24979) ) (!  (=> (select (|PolymorphicMapType_15568_24978_24058#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@87 f_66@@102) (= (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@30) o2_45@@87 f_66@@102) (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@87 f_66@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@87 f_66@@102))
))) (forall ((o2_45@@88 T@Ref) (f_66@@103 T@Field_24992_24997) ) (!  (=> (select (|PolymorphicMapType_15568_24978_48265#PolymorphicMapType_15568| (select (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@30) null (WandMaskField_9788 pm_f_45@@10))) o2_45@@88 f_66@@103) (= (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@30) o2_45@@88 f_66@@103) (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@88 f_66@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| ExhaleHeap@@27) o2_45@@88 f_66@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@27 Mask@@58) (IsWandField_9788_49354 pm_f_45@@10))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_27111) (b@@0 T@Seq_27111) ) (!  (=> (|Seq#Equal_27111| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_27111| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_3032) (b@@1 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@2 b@@1))
)))
(assert (forall ((s@@17 T@Seq_27111) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_9887| s@@17))) (|Seq#ContainsTrigger_9887| s@@17 (|Seq#Index_9887| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_9887| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_27111) (s1@@3 T@Seq_27111) ) (!  (and (=> (= s0@@3 |Seq#Empty_9887|) (= (|Seq#Append_27111| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_9887|) (= (|Seq#Append_27111| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_27111| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_9887| (|Seq#Singleton_9887| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_9887| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_27111) ) (! (<= 0 (|Seq#Length_9887| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_9887| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_27111) (s1@@5 T@Seq_27111) ) (!  (=> (|Seq#Equal_27111| s0@@5 s1@@5) (and (= (|Seq#Length_9887| s0@@5) (|Seq#Length_9887| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_9887| s0@@5))) (= (|Seq#Index_9887| s0@@5 j@@6) (|Seq#Index_9887| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_9887| s0@@5 j@@6))
 :pattern ( (|Seq#Index_9887| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_27111| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3032) (s1@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| s0@@6 s1@@6) (and (= (|Seq#Length_3032| s0@@6) (|Seq#Length_3032| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3032| s0@@6))) (= (|Seq#Index_3032| s0@@6 j@@7) (|Seq#Index_3032| s1@@6 j@@7)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3032| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3032| s1@@6 j@@7))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3032| s0@@6 s1@@6))
)))
(assert (forall ((self@@3 T@Ref) ) (! (= (getPredWandId_9794_9795 (Node self@@3)) 0)
 :qid |stdinbpl.790:15|
 :skolemid |120|
 :pattern ( (Node self@@3))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_9887| (|Seq#Singleton_9887| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_9887| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((nodes@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_9821_9822 (GRAPH nodes@@3)) 1)
 :qid |stdinbpl.844:15|
 :skolemid |126|
 :pattern ( (GRAPH nodes@@3))
)))
(assert (forall ((s@@21 T@Seq_27111) (t@@7 T@Seq_27111) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_9887| s@@21))) (= (|Seq#Take_9887| (|Seq#Append_27111| s@@21 t@@7) n@@17) (|Seq#Take_9887| s@@21 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_9887| (|Seq#Append_27111| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@22))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18) (|Seq#Take_3032| s@@22 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_27111) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_9887| s@@23))) (= (|Seq#Length_9887| (|Seq#Update_9887| s@@23 i@@5 v@@2)) (|Seq#Length_9887| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_9887| (|Seq#Update_9887| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_9887| s@@23) (|Seq#Update_9887| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@24))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)) (|Seq#Length_3032| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@24) (|Seq#Update_3032| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_15019) (o_39 T@Ref) (f_53 T@Field_24992_24997) (v@@4 T@PolymorphicMapType_15568) ) (! (succHeap Heap@@31 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@31) (store (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@31) o_39 f_53 v@@4) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@31) (store (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@31) o_39 f_53 v@@4) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@31) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_15019) (o_39@@0 T@Ref) (f_53@@0 T@Field_24978_5155) (v@@5 Int) ) (! (succHeap Heap@@32 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@32) (store (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@32) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@32) (store (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@32) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@32) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_15019) (o_39@@1 T@Ref) (f_53@@1 T@Field_24978_24979) (v@@6 T@FrameType) ) (! (succHeap Heap@@33 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@33) (store (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@33) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@33) (store (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@33) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@33) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_15019) (o_39@@2 T@Ref) (f_53@@2 T@Field_24978_15093) (v@@7 T@Ref) ) (! (succHeap Heap@@34 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@34) (store (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@34) o_39@@2 f_53@@2 v@@7)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@34) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@34) (store (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@34) o_39@@2 f_53@@2 v@@7)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_15019) (o_39@@3 T@Ref) (f_53@@3 T@Field_24978_53) (v@@8 Bool) ) (! (succHeap Heap@@35 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@35) (store (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@35) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@35) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@35) (store (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@35) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_15019) (o_39@@4 T@Ref) (f_53@@4 T@Field_24070_24075) (v@@9 T@PolymorphicMapType_15568) ) (! (succHeap Heap@@36 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@36) (store (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@36) o_39@@4 f_53@@4 v@@9) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@36) (store (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@36) o_39@@4 f_53@@4 v@@9) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@36) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@36)))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_15019) (o_39@@5 T@Ref) (f_53@@5 T@Field_24057_5155) (v@@10 Int) ) (! (succHeap Heap@@37 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@37) (store (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@37) o_39@@5 f_53@@5 v@@10) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@37)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@37) (store (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@37) o_39@@5 f_53@@5 v@@10) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@37) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@37)))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_15019) (o_39@@6 T@Ref) (f_53@@6 T@Field_24057_24058) (v@@11 T@FrameType) ) (! (succHeap Heap@@38 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@38) (store (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@38) o_39@@6 f_53@@6 v@@11) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@38) (store (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@38) o_39@@6 f_53@@6 v@@11) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@38) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_15019) (o_39@@7 T@Ref) (f_53@@7 T@Field_24057_15093) (v@@12 T@Ref) ) (! (succHeap Heap@@39 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@39) (store (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@39) o_39@@7 f_53@@7 v@@12) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@39) (store (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@39) o_39@@7 f_53@@7 v@@12) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@39) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_15019) (o_39@@8 T@Ref) (f_53@@8 T@Field_24057_53) (v@@13 Bool) ) (! (succHeap Heap@@40 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@40) (store (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@40) o_39@@8 f_53@@8 v@@13) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@40) (store (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@40) o_39@@8 f_53@@8 v@@13) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@40) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_15019) (o_39@@9 T@Ref) (f_53@@9 T@Field_9788_24075) (v@@14 T@PolymorphicMapType_15568) ) (! (succHeap Heap@@41 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@41) (store (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@41) o_39@@9 f_53@@9 v@@14) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@41) (store (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@41) o_39@@9 f_53@@9 v@@14) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@41) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_15019) (o_39@@10 T@Ref) (f_53@@10 T@Field_23960_5155) (v@@15 Int) ) (! (succHeap Heap@@42 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@42) (store (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@42) o_39@@10 f_53@@10 v@@15) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@42)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@42) (store (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@42) o_39@@10 f_53@@10 v@@15) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@42) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@42)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_15019) (o_39@@11 T@Ref) (f_53@@11 T@Field_9788_24058) (v@@16 T@FrameType) ) (! (succHeap Heap@@43 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@43) (store (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@43) o_39@@11 f_53@@11 v@@16) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@43) (store (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@43) o_39@@11 f_53@@11 v@@16) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@43) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_15019) (o_39@@12 T@Ref) (f_53@@12 T@Field_15092_15093) (v@@17 T@Ref) ) (! (succHeap Heap@@44 (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@44) (store (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@44) o_39@@12 f_53@@12 v@@17) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@44) (store (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@44) o_39@@12 f_53@@12 v@@17) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@44) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_15019) (o_39@@13 T@Ref) (f_53@@13 T@Field_15079_53) (v@@18 Bool) ) (! (succHeap Heap@@45 (PolymorphicMapType_15019 (store (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@45) o_39@@13 f_53@@13 v@@18) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15019 (store (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@45) o_39@@13 f_53@@13 v@@18) (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9794_9795#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9798_29880#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9821_9822#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9827_36975#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_24058#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_9788_41905#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_53#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24057_15093#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_5155#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_53#PolymorphicMapType_15019| Heap@@45) (|PolymorphicMapType_15019_24978_15093#PolymorphicMapType_15019| Heap@@45)))
)))
(assert (forall ((self@@4 T@Ref) ) (! (= (PredicateMaskField_9794 (Node self@@4)) (|Node#sm| self@@4))
 :qid |stdinbpl.782:15|
 :skolemid |118|
 :pattern ( (PredicateMaskField_9794 (Node self@@4)))
)))
(assert (forall ((nodes@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_9821 (GRAPH nodes@@4)) (|GRAPH#sm| nodes@@4))
 :qid |stdinbpl.836:15|
 :skolemid |124|
 :pattern ( (PredicateMaskField_9821 (GRAPH nodes@@4)))
)))
(assert (forall ((s@@25 T@Seq_27111) (t@@9 T@Seq_27111) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_9887| s@@25))) (= (|Seq#Drop_9887| (|Seq#Append_27111| s@@25 t@@9) n@@19) (|Seq#Append_27111| (|Seq#Drop_9887| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_9887| (|Seq#Append_27111| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@26))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.669:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_27111) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_9887| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_9887| (|Seq#Drop_9887| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_9887| s@@27 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_9887| s@@27 n@@21) (|Seq#Index_9887| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@28 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Index_3032| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_27111) (s1@@7 T@Seq_27111) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_9887|)) (not (= s1@@7 |Seq#Empty_9887|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_9887| s0@@7))) (= (|Seq#Index_9887| (|Seq#Append_27111| s0@@7 s1@@7) n@@23) (|Seq#Index_9887| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_9887| (|Seq#Append_27111| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_9887| s0@@7 n@@23) (|Seq#Append_27111| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_15019) (Heap1Heap T@PolymorphicMapType_15019) (nodes@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select nodes@@5 (|sk_GRAPH#condqp1| (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm))  (and (select nodes@@5 (|sk_GRAPH#condqp1| (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm))) (=> (and (select nodes@@5 (|sk_GRAPH#condqp1| (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap2Heap) (|sk_GRAPH#condqp1| (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5)) next) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap1Heap) (|sk_GRAPH#condqp1| (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5)) next)))) (= (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5)))
 :qid |stdinbpl.870:15|
 :skolemid |130|
 :pattern ( (|GRAPH#condqp1| Heap2Heap nodes@@5) (|GRAPH#condqp1| Heap1Heap nodes@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((s0@@9 T@Seq_27111) (s1@@9 T@Seq_27111) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_9887|)) (not (= s1@@9 |Seq#Empty_9887|))) (<= 0 m)) (< m (|Seq#Length_9887| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_9887| s0@@9)) (|Seq#Length_9887| s0@@9)) m) (= (|Seq#Index_9887| (|Seq#Append_27111| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_9887| s0@@9))) (|Seq#Index_9887| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_9887| s1@@9 m) (|Seq#Append_27111| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((o_39@@14 T@Ref) (f_21 T@Field_15092_15093) (Heap@@46 T@PolymorphicMapType_15019) ) (!  (=> (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@46) o_39@@14 $allocated) (select (|PolymorphicMapType_15019_9417_53#PolymorphicMapType_15019| Heap@@46) (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@46) o_39@@14 f_21) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15019_9420_9421#PolymorphicMapType_15019| Heap@@46) o_39@@14 f_21))
)))
(assert (forall ((s@@29 T@Seq_27111) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_9887| s@@29))) (= (|Seq#Index_9887| s@@29 i@@9) x@@3)) (|Seq#Contains_27111| s@@29 x@@3))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_27111| s@@29 x@@3) (|Seq#Index_9887| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3032) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@30))) (= (|Seq#Index_3032| s@@30 i@@10) x@@4)) (|Seq#Contains_3032| s@@30 x@@4))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@30 x@@4) (|Seq#Index_3032| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_27111) (s1@@11 T@Seq_27111) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_27111| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_27111| s0@@11 s1@@11))) (not (= (|Seq#Length_9887| s0@@11) (|Seq#Length_9887| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_27111| s0@@11 s1@@11))) (= (|Seq#Length_9887| s0@@11) (|Seq#Length_9887| s1@@11))) (= (|Seq#SkolemDiff_27111| s0@@11 s1@@11) (|Seq#SkolemDiff_27111| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_27111| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_27111| s0@@11 s1@@11) (|Seq#Length_9887| s0@@11))) (not (= (|Seq#Index_9887| s0@@11 (|Seq#SkolemDiff_27111| s0@@11 s1@@11)) (|Seq#Index_9887| s1@@11 (|Seq#SkolemDiff_27111| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_27111| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@3 T@Field_24978_24979) (v_1@@2 T@FrameType) (q T@Field_24978_24979) (w@@2 T@FrameType) (r T@Field_24978_24979) (u T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24978 p@@3 v_1@@2 q w@@2) (InsidePredicate_24978_24978 q w@@2 r u)) (InsidePredicate_24978_24978 p@@3 v_1@@2 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24978 p@@3 v_1@@2 q w@@2) (InsidePredicate_24978_24978 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_24978_24979) (v_1@@3 T@FrameType) (q@@0 T@Field_24978_24979) (w@@3 T@FrameType) (r@@0 T@Field_24057_24058) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24978 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_24978_24057 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_24978_24057 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24978 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_24978_24057 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_24978_24979) (v_1@@4 T@FrameType) (q@@1 T@Field_24978_24979) (w@@4 T@FrameType) (r@@1 T@Field_9788_24058) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24978 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_24978_15079 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_24978_15079 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24978 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_24978_15079 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_24978_24979) (v_1@@5 T@FrameType) (q@@2 T@Field_24057_24058) (w@@5 T@FrameType) (r@@2 T@Field_24978_24979) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24057 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_24057_24978 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_24978_24978 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24057 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_24057_24978 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_24978_24979) (v_1@@6 T@FrameType) (q@@3 T@Field_24057_24058) (w@@6 T@FrameType) (r@@3 T@Field_24057_24058) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24057 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_24057_24057 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_24978_24057 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24057 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_24057_24057 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_24978_24979) (v_1@@7 T@FrameType) (q@@4 T@Field_24057_24058) (w@@7 T@FrameType) (r@@4 T@Field_9788_24058) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_24057 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_24057_15079 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_24978_15079 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_24057 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_24057_15079 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_24978_24979) (v_1@@8 T@FrameType) (q@@5 T@Field_9788_24058) (w@@8 T@FrameType) (r@@5 T@Field_24978_24979) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_15079 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15079_24978 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_24978_24978 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_15079 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_15079_24978 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_24978_24979) (v_1@@9 T@FrameType) (q@@6 T@Field_9788_24058) (w@@9 T@FrameType) (r@@6 T@Field_24057_24058) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_15079 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15079_24057 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_24978_24057 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_15079 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_15079_24057 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_24978_24979) (v_1@@10 T@FrameType) (q@@7 T@Field_9788_24058) (w@@10 T@FrameType) (r@@7 T@Field_9788_24058) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_24978_15079 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15079_15079 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_24978_15079 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24978_15079 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_15079_15079 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_24057_24058) (v_1@@11 T@FrameType) (q@@8 T@Field_24978_24979) (w@@11 T@FrameType) (r@@8 T@Field_24978_24979) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24978 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_24978_24978 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_24057_24978 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24978 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_24978_24978 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_24057_24058) (v_1@@12 T@FrameType) (q@@9 T@Field_24978_24979) (w@@12 T@FrameType) (r@@9 T@Field_24057_24058) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24978 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_24978_24057 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_24057_24057 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24978 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_24978_24057 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_24057_24058) (v_1@@13 T@FrameType) (q@@10 T@Field_24978_24979) (w@@13 T@FrameType) (r@@10 T@Field_9788_24058) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24978 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_24978_15079 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_24057_15079 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24978 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_24978_15079 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_24057_24058) (v_1@@14 T@FrameType) (q@@11 T@Field_24057_24058) (w@@14 T@FrameType) (r@@11 T@Field_24978_24979) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24057 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_24057_24978 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_24057_24978 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24057 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_24057_24978 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_24057_24058) (v_1@@15 T@FrameType) (q@@12 T@Field_24057_24058) (w@@15 T@FrameType) (r@@12 T@Field_24057_24058) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24057 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_24057_24057 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_24057_24057 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24057 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_24057_24057 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_24057_24058) (v_1@@16 T@FrameType) (q@@13 T@Field_24057_24058) (w@@16 T@FrameType) (r@@13 T@Field_9788_24058) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_24057 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_24057_15079 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_24057_15079 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_24057 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_24057_15079 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_24057_24058) (v_1@@17 T@FrameType) (q@@14 T@Field_9788_24058) (w@@17 T@FrameType) (r@@14 T@Field_24978_24979) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_15079 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15079_24978 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_24057_24978 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_15079 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_15079_24978 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_24057_24058) (v_1@@18 T@FrameType) (q@@15 T@Field_9788_24058) (w@@18 T@FrameType) (r@@15 T@Field_24057_24058) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_15079 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15079_24057 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_24057_24057 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_15079 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_15079_24057 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_24057_24058) (v_1@@19 T@FrameType) (q@@16 T@Field_9788_24058) (w@@19 T@FrameType) (r@@16 T@Field_9788_24058) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_24057_15079 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15079_15079 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_24057_15079 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_24057_15079 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_15079_15079 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_9788_24058) (v_1@@20 T@FrameType) (q@@17 T@Field_24978_24979) (w@@20 T@FrameType) (r@@17 T@Field_24978_24979) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24978 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_24978_24978 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_15079_24978 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24978 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_24978_24978 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_9788_24058) (v_1@@21 T@FrameType) (q@@18 T@Field_24978_24979) (w@@21 T@FrameType) (r@@18 T@Field_24057_24058) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24978 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_24978_24057 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_15079_24057 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24978 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_24978_24057 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_9788_24058) (v_1@@22 T@FrameType) (q@@19 T@Field_24978_24979) (w@@22 T@FrameType) (r@@19 T@Field_9788_24058) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24978 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_24978_15079 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_15079_15079 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24978 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_24978_15079 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_9788_24058) (v_1@@23 T@FrameType) (q@@20 T@Field_24057_24058) (w@@23 T@FrameType) (r@@20 T@Field_24978_24979) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24057 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_24057_24978 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_15079_24978 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24057 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_24057_24978 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_9788_24058) (v_1@@24 T@FrameType) (q@@21 T@Field_24057_24058) (w@@24 T@FrameType) (r@@21 T@Field_24057_24058) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24057 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_24057_24057 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_15079_24057 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24057 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_24057_24057 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_9788_24058) (v_1@@25 T@FrameType) (q@@22 T@Field_24057_24058) (w@@25 T@FrameType) (r@@22 T@Field_9788_24058) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_24057 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_24057_15079 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_15079_15079 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_24057 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_24057_15079 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_9788_24058) (v_1@@26 T@FrameType) (q@@23 T@Field_9788_24058) (w@@26 T@FrameType) (r@@23 T@Field_24978_24979) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_15079 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15079_24978 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_15079_24978 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_15079 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_15079_24978 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_9788_24058) (v_1@@27 T@FrameType) (q@@24 T@Field_9788_24058) (w@@27 T@FrameType) (r@@24 T@Field_24057_24058) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_15079 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15079_24057 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_15079_24057 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_15079 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_15079_24057 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_9788_24058) (v_1@@28 T@FrameType) (q@@25 T@Field_9788_24058) (w@@28 T@FrameType) (r@@25 T@Field_9788_24058) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_15079_15079 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15079_15079 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_15079_15079 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15079_15079 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_15079_15079 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.674:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((s@@31 T@Seq_27111) ) (!  (=> (= (|Seq#Length_9887| s@@31) 0) (= s@@31 |Seq#Empty_9887|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_9887| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@32) 0) (= s@@32 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@32))
)))
(assert (forall ((s@@33 T@Seq_27111) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_9887| s@@33 n@@25) |Seq#Empty_9887|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_9887| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@34 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun nodes@@6 () (Array T@Ref Bool))
(declare-fun Heap@@47 () T@PolymorphicMapType_15019)
(set-info :boogie-vc-id |GRAPH#definedness|)
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
 (=> (= (ControlFlow 0 0) 5) (let ((anon3_Else_correct  (=> (= (ControlFlow 0 3) (- 0 2)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select nodes@@6 n_2)) (select nodes@@6 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.893:15|
 :skolemid |131|
)))))
(let ((anon3_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@47 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 4) 1) anon3_Then_correct) (=> (= (ControlFlow 0 4) 3) anon3_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 5) 4) anon0_correct)))
PreconditionGeneratedEntry_correct)))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
