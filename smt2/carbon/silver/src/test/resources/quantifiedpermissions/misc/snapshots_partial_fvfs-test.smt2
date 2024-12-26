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
(declare-sort T@Field_12061_53 0)
(declare-sort T@Field_12074_12075 0)
(declare-sort T@Field_18092_3154 0)
(declare-sort T@Field_18143_18144 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_18159_18164 0)
(declare-sort T@Field_8042_3154 0)
(declare-sort T@Field_8042_53 0)
(declare-sort T@Field_8042_12075 0)
(declare-sort T@Field_8038_8043 0)
(declare-sort T@Field_8038_18164 0)
(declare-datatypes ((T@PolymorphicMapType_12022 0)) (((PolymorphicMapType_12022 (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| (Array T@Ref T@Field_18092_3154 Real)) (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| (Array T@Ref T@Field_18143_18144 Real)) (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| (Array T@Ref T@Field_8038_8043 Real)) (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| (Array T@Ref T@Field_12061_53 Real)) (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| (Array T@Ref T@Field_12074_12075 Real)) (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| (Array T@Ref T@Field_8038_18164 Real)) (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| (Array T@Ref T@Field_8042_3154 Real)) (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| (Array T@Ref T@Field_8042_53 Real)) (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| (Array T@Ref T@Field_8042_12075 Real)) (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| (Array T@Ref T@Field_18159_18164 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12550 0)) (((PolymorphicMapType_12550 (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (Array T@Ref T@Field_18092_3154 Bool)) (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (Array T@Ref T@Field_12061_53 Bool)) (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (Array T@Ref T@Field_12074_12075 Bool)) (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (Array T@Ref T@Field_8038_8043 Bool)) (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (Array T@Ref T@Field_8038_18164 Bool)) (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (Array T@Ref T@Field_8042_3154 Bool)) (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (Array T@Ref T@Field_8042_53 Bool)) (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (Array T@Ref T@Field_8042_12075 Bool)) (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (Array T@Ref T@Field_18143_18144 Bool)) (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (Array T@Ref T@Field_18159_18164 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12001 0)) (((PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| (Array T@Ref T@Field_12061_53 Bool)) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| (Array T@Ref T@Field_12074_12075 T@Ref)) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| (Array T@Ref T@Field_18092_3154 Int)) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| (Array T@Ref T@Field_18143_18144 T@FrameType)) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| (Array T@Ref T@Field_18159_18164 T@PolymorphicMapType_12550)) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| (Array T@Ref T@Field_8042_3154 Int)) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| (Array T@Ref T@Field_8042_53 Bool)) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| (Array T@Ref T@Field_8042_12075 T@Ref)) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| (Array T@Ref T@Field_8038_8043 T@FrameType)) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| (Array T@Ref T@Field_8038_18164 T@PolymorphicMapType_12550)) ) ) ))
(declare-fun $allocated () T@Field_12061_53)
(declare-fun f_7 () T@Field_18092_3154)
(declare-sort T@Seq_18137 0)
(declare-fun |Seq#Length_8081| (T@Seq_18137) Int)
(declare-fun |Seq#Drop_8081| (T@Seq_18137 Int) T@Seq_18137)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_12001 T@PolymorphicMapType_12001) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12001 T@PolymorphicMapType_12001) Bool)
(declare-fun state (T@PolymorphicMapType_12001 T@PolymorphicMapType_12022) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12022) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12550)
(declare-fun |Seq#Index_8077| (T@Seq_18137 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_8081| () T@Seq_18137)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun P (T@Seq_18137) T@Field_18143_18144)
(declare-fun IsPredicateField_8042_8043 (T@Field_18143_18144) Bool)
(declare-fun |P#trigger_8042| (T@PolymorphicMapType_12001 T@Field_18143_18144) Bool)
(declare-fun |P#everUsed_8042| (T@Field_18143_18144) Bool)
(declare-fun |Seq#Update_8081| (T@Seq_18137 Int T@Ref) T@Seq_18137)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Seq#Take_8081| (T@Seq_18137 Int) T@Seq_18137)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Seq#Contains_18137| (T@Seq_18137 T@Ref) Bool)
(declare-fun |Seq#Skolem_18137| (T@Seq_18137 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12001 T@PolymorphicMapType_12001 T@PolymorphicMapType_12022) Bool)
(declare-fun IsPredicateField_8038_36101 (T@Field_8038_8043) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8038 (T@Field_8038_8043) T@Field_8038_18164)
(declare-fun HasDirectPerm_8038_8043 (T@PolymorphicMapType_12022 T@Ref T@Field_8038_8043) Bool)
(declare-fun PredicateMaskField_8042 (T@Field_18143_18144) T@Field_18159_18164)
(declare-fun HasDirectPerm_8042_8043 (T@PolymorphicMapType_12022 T@Ref T@Field_18143_18144) Bool)
(declare-fun IsWandField_8038_39461 (T@Field_8038_8043) Bool)
(declare-fun WandMaskField_8038 (T@Field_8038_8043) T@Field_8038_18164)
(declare-fun IsWandField_8042_39104 (T@Field_18143_18144) Bool)
(declare-fun WandMaskField_8042 (T@Field_18143_18144) T@Field_18159_18164)
(declare-fun |Seq#Singleton_8081| (T@Ref) T@Seq_18137)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |P#sm| (T@Seq_18137) T@Field_18159_18164)
(declare-fun |Seq#Append_18137| (T@Seq_18137 T@Seq_18137) T@Seq_18137)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_12001)
(declare-fun ZeroMask () T@PolymorphicMapType_12022)
(declare-fun InsidePredicate_18143_18143 (T@Field_18143_18144 T@FrameType T@Field_18143_18144 T@FrameType) Bool)
(declare-fun InsidePredicate_12061_12061 (T@Field_8038_8043 T@FrameType T@Field_8038_8043 T@FrameType) Bool)
(declare-fun IsPredicateField_8038_3154 (T@Field_18092_3154) Bool)
(declare-fun IsWandField_8038_3154 (T@Field_18092_3154) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8042_46393 (T@Field_18159_18164) Bool)
(declare-fun IsWandField_8042_46409 (T@Field_18159_18164) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8042_12075 (T@Field_8042_12075) Bool)
(declare-fun IsWandField_8042_12075 (T@Field_8042_12075) Bool)
(declare-fun IsPredicateField_8042_53 (T@Field_8042_53) Bool)
(declare-fun IsWandField_8042_53 (T@Field_8042_53) Bool)
(declare-fun IsPredicateField_8042_3154 (T@Field_8042_3154) Bool)
(declare-fun IsWandField_8042_3154 (T@Field_8042_3154) Bool)
(declare-fun IsPredicateField_8038_45562 (T@Field_8038_18164) Bool)
(declare-fun IsWandField_8038_45578 (T@Field_8038_18164) Bool)
(declare-fun IsPredicateField_8038_12075 (T@Field_12074_12075) Bool)
(declare-fun IsWandField_8038_12075 (T@Field_12074_12075) Bool)
(declare-fun IsPredicateField_8038_53 (T@Field_12061_53) Bool)
(declare-fun IsWandField_8038_53 (T@Field_12061_53) Bool)
(declare-fun HasDirectPerm_8038_35488 (T@PolymorphicMapType_12022 T@Ref T@Field_8038_18164) Bool)
(declare-fun HasDirectPerm_8038_12075 (T@PolymorphicMapType_12022 T@Ref T@Field_12074_12075) Bool)
(declare-fun HasDirectPerm_8038_53 (T@PolymorphicMapType_12022 T@Ref T@Field_12061_53) Bool)
(declare-fun HasDirectPerm_8038_3154 (T@PolymorphicMapType_12022 T@Ref T@Field_18092_3154) Bool)
(declare-fun HasDirectPerm_8042_34415 (T@PolymorphicMapType_12022 T@Ref T@Field_18159_18164) Bool)
(declare-fun HasDirectPerm_8042_12075 (T@PolymorphicMapType_12022 T@Ref T@Field_8042_12075) Bool)
(declare-fun HasDirectPerm_8042_53 (T@PolymorphicMapType_12022 T@Ref T@Field_8042_53) Bool)
(declare-fun HasDirectPerm_8042_3154 (T@PolymorphicMapType_12022 T@Ref T@Field_8042_3154) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |P#condqp1| (T@PolymorphicMapType_12001 T@Seq_18137) Int)
(declare-fun |sk_P#condqp1| (Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_12022 T@PolymorphicMapType_12022 T@PolymorphicMapType_12022) Bool)
(declare-fun |Seq#Equal_18137| (T@Seq_18137 T@Seq_18137) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Seq#ContainsTrigger_8081| (T@Seq_18137 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun getPredWandId_8042_8043 (T@Field_18143_18144) Int)
(declare-fun |Seq#SkolemDiff_18137| (T@Seq_18137 T@Seq_18137) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(declare-fun InsidePredicate_18143_12061 (T@Field_18143_18144 T@FrameType T@Field_8038_8043 T@FrameType) Bool)
(declare-fun InsidePredicate_12061_18143 (T@Field_8038_8043 T@FrameType T@Field_18143_18144 T@FrameType) Bool)
(assert (forall ((s T@Seq_18137) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8081| s)) (= (|Seq#Length_8081| (|Seq#Drop_8081| s n)) (- (|Seq#Length_8081| s) n))) (=> (< (|Seq#Length_8081| s) n) (= (|Seq#Length_8081| (|Seq#Drop_8081| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8081| (|Seq#Drop_8081| s n)) (|Seq#Length_8081| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8081| (|Seq#Drop_8081| s n)))
 :pattern ( (|Seq#Length_8081| s) (|Seq#Drop_8081| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12001) (Heap1 T@PolymorphicMapType_12001) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12001) (Mask T@PolymorphicMapType_12022) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12001) (Heap1@@0 T@PolymorphicMapType_12001) (Heap2 T@PolymorphicMapType_12001) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18159_18164) ) (!  (not (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18143_18144) ) (!  (not (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8042_12075) ) (!  (not (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8042_53) ) (!  (not (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8042_3154) ) (!  (not (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8038_18164) ) (!  (not (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8038_8043) ) (!  (not (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_12074_12075) ) (!  (not (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_12061_53) ) (!  (not (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_18092_3154) ) (!  (not (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((s@@1 T@Seq_18137) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8081| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8077| (|Seq#Drop_8081| s@@1 n@@1) j) (|Seq#Index_8077| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8077| (|Seq#Drop_8081| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8081| |Seq#Empty_8081|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((xs T@Seq_18137) ) (! (IsPredicateField_8042_8043 (P xs))
 :qid |stdinbpl.592:15|
 :skolemid |59|
 :pattern ( (P xs))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12001) (xs@@0 T@Seq_18137) ) (! (|P#everUsed_8042| (P xs@@0))
 :qid |stdinbpl.611:15|
 :skolemid |63|
 :pattern ( (|P#trigger_8042| Heap@@0 (P xs@@0)))
)))
(assert (forall ((s@@3 T@Seq_18137) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8081| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8077| (|Seq#Update_8081| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8077| (|Seq#Update_8081| s@@3 i v) n@@3) (|Seq#Index_8077| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8077| (|Seq#Update_8081| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8077| s@@3 n@@3) (|Seq#Update_8081| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_18137) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8081| s@@5)) (= (|Seq#Length_8081| (|Seq#Take_8081| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8081| s@@5) n@@5) (= (|Seq#Length_8081| (|Seq#Take_8081| s@@5 n@@5)) (|Seq#Length_8081| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8081| (|Seq#Take_8081| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8081| (|Seq#Take_8081| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8081| s@@5 n@@5) (|Seq#Length_8081| s@@5))
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
(assert (forall ((s@@7 T@Seq_18137) (x T@Ref) ) (!  (=> (|Seq#Contains_18137| s@@7 x) (and (and (<= 0 (|Seq#Skolem_18137| s@@7 x)) (< (|Seq#Skolem_18137| s@@7 x) (|Seq#Length_8081| s@@7))) (= (|Seq#Index_8077| s@@7 (|Seq#Skolem_18137| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18137| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_18137) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8081| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8081| s@@9 n@@7))
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
(assert (forall ((Heap@@1 T@PolymorphicMapType_12001) (ExhaleHeap T@PolymorphicMapType_12001) (Mask@@0 T@PolymorphicMapType_12022) (pm_f_8 T@Field_8038_8043) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8038_8043 Mask@@0 null pm_f_8) (IsPredicateField_8038_36101 pm_f_8)) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@1) null (PredicateMaskField_8038 pm_f_8)) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap) null (PredicateMaskField_8038 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_8038_36101 pm_f_8) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap) null (PredicateMaskField_8038 pm_f_8)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12001) (ExhaleHeap@@0 T@PolymorphicMapType_12001) (Mask@@1 T@PolymorphicMapType_12022) (pm_f_8@@0 T@Field_18143_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8042_8043 Mask@@1 null pm_f_8@@0) (IsPredicateField_8042_8043 pm_f_8@@0)) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@2) null (PredicateMaskField_8042 pm_f_8@@0)) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@0) null (PredicateMaskField_8042 pm_f_8@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8042_8043 pm_f_8@@0) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@0) null (PredicateMaskField_8042 pm_f_8@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12001) (ExhaleHeap@@1 T@PolymorphicMapType_12001) (Mask@@2 T@PolymorphicMapType_12022) (pm_f_8@@1 T@Field_8038_8043) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8038_8043 Mask@@2 null pm_f_8@@1) (IsWandField_8038_39461 pm_f_8@@1)) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@3) null (WandMaskField_8038 pm_f_8@@1)) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@1) null (WandMaskField_8038 pm_f_8@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_8038_39461 pm_f_8@@1) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@1) null (WandMaskField_8038 pm_f_8@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12001) (ExhaleHeap@@2 T@PolymorphicMapType_12001) (Mask@@3 T@PolymorphicMapType_12022) (pm_f_8@@2 T@Field_18143_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8042_8043 Mask@@3 null pm_f_8@@2) (IsWandField_8042_39104 pm_f_8@@2)) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@4) null (WandMaskField_8042 pm_f_8@@2)) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@2) null (WandMaskField_8042 pm_f_8@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_8042_39104 pm_f_8@@2) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@2) null (WandMaskField_8042 pm_f_8@@2)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18137| (|Seq#Singleton_8081| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18137| (|Seq#Singleton_8081| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_18137) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8081| s@@11))) (= (|Seq#Index_8077| (|Seq#Take_8081| s@@11 n@@9) j@@3) (|Seq#Index_8077| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8077| (|Seq#Take_8081| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8077| s@@11 j@@3) (|Seq#Take_8081| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((xs@@1 T@Seq_18137) (xs2 T@Seq_18137) ) (!  (=> (= (P xs@@1) (P xs2)) (= xs@@1 xs2))
 :qid |stdinbpl.602:15|
 :skolemid |61|
 :pattern ( (P xs@@1) (P xs2))
)))
(assert (forall ((xs@@2 T@Seq_18137) (xs2@@0 T@Seq_18137) ) (!  (=> (= (|P#sm| xs@@2) (|P#sm| xs2@@0)) (= xs@@2 xs2@@0))
 :qid |stdinbpl.606:15|
 :skolemid |62|
 :pattern ( (|P#sm| xs@@2) (|P#sm| xs2@@0))
)))
(assert (forall ((s@@13 T@Seq_18137) (t T@Seq_18137) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8081| s@@13))) (< n@@11 (|Seq#Length_8081| (|Seq#Append_18137| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8081| s@@13)) (|Seq#Length_8081| s@@13)) n@@11) (= (|Seq#Take_8081| (|Seq#Append_18137| s@@13 t) n@@11) (|Seq#Append_18137| s@@13 (|Seq#Take_8081| t (|Seq#Sub| n@@11 (|Seq#Length_8081| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8081| (|Seq#Append_18137| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12001) (ExhaleHeap@@3 T@PolymorphicMapType_12001) (Mask@@4 T@PolymorphicMapType_12022) (pm_f_8@@3 T@Field_8038_8043) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8038_8043 Mask@@4 null pm_f_8@@3) (IsPredicateField_8038_36101 pm_f_8@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_8 T@Ref) (f_25 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8 f_25) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@5) o2_8 f_25) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8 f_25))
)) (forall ((o2_8@@0 T@Ref) (f_25@@0 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@0 f_25@@0) (= (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@5) o2_8@@0 f_25@@0) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@0 f_25@@0))
))) (forall ((o2_8@@1 T@Ref) (f_25@@1 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@1 f_25@@1) (= (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@5) o2_8@@1 f_25@@1) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@1 f_25@@1))
))) (forall ((o2_8@@2 T@Ref) (f_25@@2 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@2 f_25@@2) (= (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@5) o2_8@@2 f_25@@2) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@2 f_25@@2))
))) (forall ((o2_8@@3 T@Ref) (f_25@@3 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@3 f_25@@3) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) o2_8@@3 f_25@@3) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@3 f_25@@3))
))) (forall ((o2_8@@4 T@Ref) (f_25@@4 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@4 f_25@@4) (= (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@5) o2_8@@4 f_25@@4) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@4 f_25@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@4 f_25@@4))
))) (forall ((o2_8@@5 T@Ref) (f_25@@5 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@5 f_25@@5) (= (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@5) o2_8@@5 f_25@@5) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@5 f_25@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@5 f_25@@5))
))) (forall ((o2_8@@6 T@Ref) (f_25@@6 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@6 f_25@@6) (= (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@5) o2_8@@6 f_25@@6) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@6 f_25@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@6 f_25@@6))
))) (forall ((o2_8@@7 T@Ref) (f_25@@7 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@7 f_25@@7) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@5) o2_8@@7 f_25@@7) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@7 f_25@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@7 f_25@@7))
))) (forall ((o2_8@@8 T@Ref) (f_25@@8 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@5) null (PredicateMaskField_8038 pm_f_8@@3))) o2_8@@8 f_25@@8) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@5) o2_8@@8 f_25@@8) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@8 f_25@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@3) o2_8@@8 f_25@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8038_36101 pm_f_8@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12001) (ExhaleHeap@@4 T@PolymorphicMapType_12001) (Mask@@5 T@PolymorphicMapType_12022) (pm_f_8@@4 T@Field_18143_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8042_8043 Mask@@5 null pm_f_8@@4) (IsPredicateField_8042_8043 pm_f_8@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@9 T@Ref) (f_25@@9 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@9 f_25@@9) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@6) o2_8@@9 f_25@@9) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@9 f_25@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@9 f_25@@9))
)) (forall ((o2_8@@10 T@Ref) (f_25@@10 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@10 f_25@@10) (= (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@6) o2_8@@10 f_25@@10) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@10 f_25@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@10 f_25@@10))
))) (forall ((o2_8@@11 T@Ref) (f_25@@11 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@11 f_25@@11) (= (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@6) o2_8@@11 f_25@@11) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@11 f_25@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@11 f_25@@11))
))) (forall ((o2_8@@12 T@Ref) (f_25@@12 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@12 f_25@@12) (= (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@6) o2_8@@12 f_25@@12) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@12 f_25@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@12 f_25@@12))
))) (forall ((o2_8@@13 T@Ref) (f_25@@13 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@13 f_25@@13) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@6) o2_8@@13 f_25@@13) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@13 f_25@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@13 f_25@@13))
))) (forall ((o2_8@@14 T@Ref) (f_25@@14 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@14 f_25@@14) (= (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@6) o2_8@@14 f_25@@14) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@14 f_25@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@14 f_25@@14))
))) (forall ((o2_8@@15 T@Ref) (f_25@@15 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@15 f_25@@15) (= (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@6) o2_8@@15 f_25@@15) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@15 f_25@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@15 f_25@@15))
))) (forall ((o2_8@@16 T@Ref) (f_25@@16 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@16 f_25@@16) (= (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@6) o2_8@@16 f_25@@16) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@16 f_25@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@16 f_25@@16))
))) (forall ((o2_8@@17 T@Ref) (f_25@@17 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@17 f_25@@17) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@6) o2_8@@17 f_25@@17) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@17 f_25@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@17 f_25@@17))
))) (forall ((o2_8@@18 T@Ref) (f_25@@18 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) null (PredicateMaskField_8042 pm_f_8@@4))) o2_8@@18 f_25@@18) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@6) o2_8@@18 f_25@@18) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@18 f_25@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@4) o2_8@@18 f_25@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8042_8043 pm_f_8@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12001) (ExhaleHeap@@5 T@PolymorphicMapType_12001) (Mask@@6 T@PolymorphicMapType_12022) (pm_f_8@@5 T@Field_8038_8043) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8038_8043 Mask@@6 null pm_f_8@@5) (IsWandField_8038_39461 pm_f_8@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@19 T@Ref) (f_25@@19 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@19 f_25@@19) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@7) o2_8@@19 f_25@@19) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@19 f_25@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@19 f_25@@19))
)) (forall ((o2_8@@20 T@Ref) (f_25@@20 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@20 f_25@@20) (= (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@7) o2_8@@20 f_25@@20) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@20 f_25@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@20 f_25@@20))
))) (forall ((o2_8@@21 T@Ref) (f_25@@21 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@21 f_25@@21) (= (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@7) o2_8@@21 f_25@@21) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@21 f_25@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@21 f_25@@21))
))) (forall ((o2_8@@22 T@Ref) (f_25@@22 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@22 f_25@@22) (= (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@7) o2_8@@22 f_25@@22) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@22 f_25@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@22 f_25@@22))
))) (forall ((o2_8@@23 T@Ref) (f_25@@23 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@23 f_25@@23) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) o2_8@@23 f_25@@23) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@23 f_25@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@23 f_25@@23))
))) (forall ((o2_8@@24 T@Ref) (f_25@@24 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@24 f_25@@24) (= (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@7) o2_8@@24 f_25@@24) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@24 f_25@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@24 f_25@@24))
))) (forall ((o2_8@@25 T@Ref) (f_25@@25 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@25 f_25@@25) (= (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@7) o2_8@@25 f_25@@25) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@25 f_25@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@25 f_25@@25))
))) (forall ((o2_8@@26 T@Ref) (f_25@@26 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@26 f_25@@26) (= (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@7) o2_8@@26 f_25@@26) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@26 f_25@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@26 f_25@@26))
))) (forall ((o2_8@@27 T@Ref) (f_25@@27 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@27 f_25@@27) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@7) o2_8@@27 f_25@@27) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@27 f_25@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@27 f_25@@27))
))) (forall ((o2_8@@28 T@Ref) (f_25@@28 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@7) null (WandMaskField_8038 pm_f_8@@5))) o2_8@@28 f_25@@28) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@7) o2_8@@28 f_25@@28) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@28 f_25@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@5) o2_8@@28 f_25@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_8038_39461 pm_f_8@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12001) (ExhaleHeap@@6 T@PolymorphicMapType_12001) (Mask@@7 T@PolymorphicMapType_12022) (pm_f_8@@6 T@Field_18143_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8042_8043 Mask@@7 null pm_f_8@@6) (IsWandField_8042_39104 pm_f_8@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_8@@29 T@Ref) (f_25@@29 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@29 f_25@@29) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@8) o2_8@@29 f_25@@29) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@29 f_25@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@29 f_25@@29))
)) (forall ((o2_8@@30 T@Ref) (f_25@@30 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@30 f_25@@30) (= (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@8) o2_8@@30 f_25@@30) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@30 f_25@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@30 f_25@@30))
))) (forall ((o2_8@@31 T@Ref) (f_25@@31 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@31 f_25@@31) (= (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@8) o2_8@@31 f_25@@31) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@31 f_25@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@31 f_25@@31))
))) (forall ((o2_8@@32 T@Ref) (f_25@@32 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@32 f_25@@32) (= (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@8) o2_8@@32 f_25@@32) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@32 f_25@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@32 f_25@@32))
))) (forall ((o2_8@@33 T@Ref) (f_25@@33 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@33 f_25@@33) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@8) o2_8@@33 f_25@@33) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@33 f_25@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@33 f_25@@33))
))) (forall ((o2_8@@34 T@Ref) (f_25@@34 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@34 f_25@@34) (= (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@8) o2_8@@34 f_25@@34) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@34 f_25@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@34 f_25@@34))
))) (forall ((o2_8@@35 T@Ref) (f_25@@35 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@35 f_25@@35) (= (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@8) o2_8@@35 f_25@@35) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@35 f_25@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@35 f_25@@35))
))) (forall ((o2_8@@36 T@Ref) (f_25@@36 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@36 f_25@@36) (= (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@8) o2_8@@36 f_25@@36) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@36 f_25@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@36 f_25@@36))
))) (forall ((o2_8@@37 T@Ref) (f_25@@37 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@37 f_25@@37) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@8) o2_8@@37 f_25@@37) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@37 f_25@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@37 f_25@@37))
))) (forall ((o2_8@@38 T@Ref) (f_25@@38 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) null (WandMaskField_8042 pm_f_8@@6))) o2_8@@38 f_25@@38) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@8) o2_8@@38 f_25@@38) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@38 f_25@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@6) o2_8@@38 f_25@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_8042_39104 pm_f_8@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12001) (ExhaleHeap@@7 T@PolymorphicMapType_12001) (Mask@@8 T@PolymorphicMapType_12022) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@9) o_23 $allocated) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@7) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@7) o_23 $allocated))
)))
(assert (forall ((p T@Field_18143_18144) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18143_18143 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18143_18143 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8038_8043) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_12061_12061 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12061_12061 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_18137) (s1 T@Seq_18137) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8081|)) (not (= s1 |Seq#Empty_8081|))) (<= (|Seq#Length_8081| s0) n@@13)) (< n@@13 (|Seq#Length_8081| (|Seq#Append_18137| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8081| s0)) (|Seq#Length_8081| s0)) n@@13) (= (|Seq#Index_8077| (|Seq#Append_18137| s0 s1) n@@13) (|Seq#Index_8077| s1 (|Seq#Sub| n@@13 (|Seq#Length_8081| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8077| (|Seq#Append_18137| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8038_3154 f_7)))
(assert  (not (IsWandField_8038_3154 f_7)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12001) (ExhaleHeap@@8 T@PolymorphicMapType_12001) (Mask@@9 T@PolymorphicMapType_12022) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12022) (o_2@@9 T@Ref) (f_4@@9 T@Field_18159_18164) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8042_46393 f_4@@9))) (not (IsWandField_8042_46409 f_4@@9))) (<= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12022) (o_2@@10 T@Ref) (f_4@@10 T@Field_8042_12075) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8042_12075 f_4@@10))) (not (IsWandField_8042_12075 f_4@@10))) (<= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12022) (o_2@@11 T@Ref) (f_4@@11 T@Field_8042_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8042_53 f_4@@11))) (not (IsWandField_8042_53 f_4@@11))) (<= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12022) (o_2@@12 T@Ref) (f_4@@12 T@Field_18143_18144) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8042_8043 f_4@@12))) (not (IsWandField_8042_39104 f_4@@12))) (<= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12022) (o_2@@13 T@Ref) (f_4@@13 T@Field_8042_3154) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8042_3154 f_4@@13))) (not (IsWandField_8042_3154 f_4@@13))) (<= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_12022) (o_2@@14 T@Ref) (f_4@@14 T@Field_8038_18164) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8038_45562 f_4@@14))) (not (IsWandField_8038_45578 f_4@@14))) (<= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_12022) (o_2@@15 T@Ref) (f_4@@15 T@Field_12074_12075) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8038_12075 f_4@@15))) (not (IsWandField_8038_12075 f_4@@15))) (<= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_12022) (o_2@@16 T@Ref) (f_4@@16 T@Field_12061_53) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8038_53 f_4@@16))) (not (IsWandField_8038_53 f_4@@16))) (<= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_12022) (o_2@@17 T@Ref) (f_4@@17 T@Field_8038_8043) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8038_36101 f_4@@17))) (not (IsWandField_8038_39461 f_4@@17))) (<= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_12022) (o_2@@18 T@Ref) (f_4@@18 T@Field_18092_3154) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8038_3154 f_4@@18))) (not (IsWandField_8038_3154 f_4@@18))) (<= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_12022) (o_2@@19 T@Ref) (f_4@@19 T@Field_8038_18164) ) (! (= (HasDirectPerm_8038_35488 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8038_35488 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_12022) (o_2@@20 T@Ref) (f_4@@20 T@Field_12074_12075) ) (! (= (HasDirectPerm_8038_12075 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8038_12075 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_12022) (o_2@@21 T@Ref) (f_4@@21 T@Field_12061_53) ) (! (= (HasDirectPerm_8038_53 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8038_53 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_12022) (o_2@@22 T@Ref) (f_4@@22 T@Field_18092_3154) ) (! (= (HasDirectPerm_8038_3154 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8038_3154 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_12022) (o_2@@23 T@Ref) (f_4@@23 T@Field_8038_8043) ) (! (= (HasDirectPerm_8038_8043 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8038_8043 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_12022) (o_2@@24 T@Ref) (f_4@@24 T@Field_18159_18164) ) (! (= (HasDirectPerm_8042_34415 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8042_34415 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_12022) (o_2@@25 T@Ref) (f_4@@25 T@Field_8042_12075) ) (! (= (HasDirectPerm_8042_12075 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8042_12075 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_12022) (o_2@@26 T@Ref) (f_4@@26 T@Field_8042_53) ) (! (= (HasDirectPerm_8042_53 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8042_53 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_12022) (o_2@@27 T@Ref) (f_4@@27 T@Field_8042_3154) ) (! (= (HasDirectPerm_8042_3154 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8042_3154 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_12022) (o_2@@28 T@Ref) (f_4@@28 T@Field_18143_18144) ) (! (= (HasDirectPerm_8042_8043 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8042_8043 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12001) (ExhaleHeap@@9 T@PolymorphicMapType_12001) (Mask@@30 T@PolymorphicMapType_12022) (o_23@@0 T@Ref) (f_25@@39 T@Field_8038_18164) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_8038_35488 Mask@@30 o_23@@0 f_25@@39) (= (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@11) o_23@@0 f_25@@39) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@9) o_23@@0 f_25@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| ExhaleHeap@@9) o_23@@0 f_25@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12001) (ExhaleHeap@@10 T@PolymorphicMapType_12001) (Mask@@31 T@PolymorphicMapType_12022) (o_23@@1 T@Ref) (f_25@@40 T@Field_12074_12075) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_8038_12075 Mask@@31 o_23@@1 f_25@@40) (= (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@12) o_23@@1 f_25@@40) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@10) o_23@@1 f_25@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| ExhaleHeap@@10) o_23@@1 f_25@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12001) (ExhaleHeap@@11 T@PolymorphicMapType_12001) (Mask@@32 T@PolymorphicMapType_12022) (o_23@@2 T@Ref) (f_25@@41 T@Field_12061_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_8038_53 Mask@@32 o_23@@2 f_25@@41) (= (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@13) o_23@@2 f_25@@41) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@11) o_23@@2 f_25@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| ExhaleHeap@@11) o_23@@2 f_25@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12001) (ExhaleHeap@@12 T@PolymorphicMapType_12001) (Mask@@33 T@PolymorphicMapType_12022) (o_23@@3 T@Ref) (f_25@@42 T@Field_18092_3154) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_8038_3154 Mask@@33 o_23@@3 f_25@@42) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@14) o_23@@3 f_25@@42) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@12) o_23@@3 f_25@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| ExhaleHeap@@12) o_23@@3 f_25@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12001) (ExhaleHeap@@13 T@PolymorphicMapType_12001) (Mask@@34 T@PolymorphicMapType_12022) (o_23@@4 T@Ref) (f_25@@43 T@Field_8038_8043) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_8038_8043 Mask@@34 o_23@@4 f_25@@43) (= (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@15) o_23@@4 f_25@@43) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@13) o_23@@4 f_25@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| ExhaleHeap@@13) o_23@@4 f_25@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12001) (ExhaleHeap@@14 T@PolymorphicMapType_12001) (Mask@@35 T@PolymorphicMapType_12022) (o_23@@5 T@Ref) (f_25@@44 T@Field_18159_18164) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_8042_34415 Mask@@35 o_23@@5 f_25@@44) (= (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@16) o_23@@5 f_25@@44) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@14) o_23@@5 f_25@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| ExhaleHeap@@14) o_23@@5 f_25@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12001) (ExhaleHeap@@15 T@PolymorphicMapType_12001) (Mask@@36 T@PolymorphicMapType_12022) (o_23@@6 T@Ref) (f_25@@45 T@Field_8042_12075) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_8042_12075 Mask@@36 o_23@@6 f_25@@45) (= (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@17) o_23@@6 f_25@@45) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@15) o_23@@6 f_25@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| ExhaleHeap@@15) o_23@@6 f_25@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12001) (ExhaleHeap@@16 T@PolymorphicMapType_12001) (Mask@@37 T@PolymorphicMapType_12022) (o_23@@7 T@Ref) (f_25@@46 T@Field_8042_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_8042_53 Mask@@37 o_23@@7 f_25@@46) (= (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@18) o_23@@7 f_25@@46) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@16) o_23@@7 f_25@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| ExhaleHeap@@16) o_23@@7 f_25@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12001) (ExhaleHeap@@17 T@PolymorphicMapType_12001) (Mask@@38 T@PolymorphicMapType_12022) (o_23@@8 T@Ref) (f_25@@47 T@Field_8042_3154) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_8042_3154 Mask@@38 o_23@@8 f_25@@47) (= (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@19) o_23@@8 f_25@@47) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@17) o_23@@8 f_25@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| ExhaleHeap@@17) o_23@@8 f_25@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_12001) (ExhaleHeap@@18 T@PolymorphicMapType_12001) (Mask@@39 T@PolymorphicMapType_12022) (o_23@@9 T@Ref) (f_25@@48 T@Field_18143_18144) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_8042_8043 Mask@@39 o_23@@9 f_25@@48) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@20) o_23@@9 f_25@@48) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@18) o_23@@9 f_25@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| ExhaleHeap@@18) o_23@@9 f_25@@48))
)))
(assert (forall ((s0@@1 T@Seq_18137) (s1@@1 T@Seq_18137) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8081|)) (not (= s1@@1 |Seq#Empty_8081|))) (= (|Seq#Length_8081| (|Seq#Append_18137| s0@@1 s1@@1)) (+ (|Seq#Length_8081| s0@@1) (|Seq#Length_8081| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8081| (|Seq#Append_18137| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_18159_18164) ) (! (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8042_12075) ) (! (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_8042_53) ) (! (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_18143_18144) ) (! (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8042_3154) ) (! (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8038_18164) ) (! (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_12074_12075) ) (! (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_12061_53) ) (! (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_8038_8043) ) (! (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_18092_3154) ) (! (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@15 T@Seq_18137) (t@@1 T@Seq_18137) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8081| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8081| s@@15)) (|Seq#Length_8081| s@@15)) n@@15) (= (|Seq#Drop_8081| (|Seq#Append_18137| s@@15 t@@1) n@@15) (|Seq#Drop_8081| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8081| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8081| (|Seq#Append_18137| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12001) (Heap1Heap T@PolymorphicMapType_12001) (xs@@3 T@Seq_18137) ) (!  (=> (and (=  (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3)) 3)) (< NoPerm FullPerm))  (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3)) 3)) (< NoPerm FullPerm))) (=> (and (and (<= 0 (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3))) (< (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3)) 3)) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap2Heap) (|Seq#Index_8077| xs@@3 (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3))) f_7) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap1Heap) (|Seq#Index_8077| xs@@3 (|sk_P#condqp1| (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3))) f_7)))) (= (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3)))
 :qid |stdinbpl.622:15|
 :skolemid |64|
 :pattern ( (|P#condqp1| Heap2Heap xs@@3) (|P#condqp1| Heap1Heap xs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12022) (SummandMask1 T@PolymorphicMapType_12022) (SummandMask2 T@PolymorphicMapType_12022) (o_2@@39 T@Ref) (f_4@@39 T@Field_18159_18164) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12022) (SummandMask1@@0 T@PolymorphicMapType_12022) (SummandMask2@@0 T@PolymorphicMapType_12022) (o_2@@40 T@Ref) (f_4@@40 T@Field_8042_12075) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12022) (SummandMask1@@1 T@PolymorphicMapType_12022) (SummandMask2@@1 T@PolymorphicMapType_12022) (o_2@@41 T@Ref) (f_4@@41 T@Field_8042_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12022) (SummandMask1@@2 T@PolymorphicMapType_12022) (SummandMask2@@2 T@PolymorphicMapType_12022) (o_2@@42 T@Ref) (f_4@@42 T@Field_18143_18144) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12022) (SummandMask1@@3 T@PolymorphicMapType_12022) (SummandMask2@@3 T@PolymorphicMapType_12022) (o_2@@43 T@Ref) (f_4@@43 T@Field_8042_3154) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_12022) (SummandMask1@@4 T@PolymorphicMapType_12022) (SummandMask2@@4 T@PolymorphicMapType_12022) (o_2@@44 T@Ref) (f_4@@44 T@Field_8038_18164) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_12022) (SummandMask1@@5 T@PolymorphicMapType_12022) (SummandMask2@@5 T@PolymorphicMapType_12022) (o_2@@45 T@Ref) (f_4@@45 T@Field_12074_12075) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_12022) (SummandMask1@@6 T@PolymorphicMapType_12022) (SummandMask2@@6 T@PolymorphicMapType_12022) (o_2@@46 T@Ref) (f_4@@46 T@Field_12061_53) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_12022) (SummandMask1@@7 T@PolymorphicMapType_12022) (SummandMask2@@7 T@PolymorphicMapType_12022) (o_2@@47 T@Ref) (f_4@@47 T@Field_8038_8043) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_12022) (SummandMask1@@8 T@PolymorphicMapType_12022) (SummandMask2@@8 T@PolymorphicMapType_12022) (o_2@@48 T@Ref) (f_4@@48 T@Field_18092_3154) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18137) (b T@Seq_18137) ) (!  (=> (|Seq#Equal_18137| a b) (= a b))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18137| a b))
)))
(assert (forall ((a@@0 T@Seq_3032) (b@@0 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18137) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8081| s@@17))) (|Seq#ContainsTrigger_8081| s@@17 (|Seq#Index_8077| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8077| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18137) (s1@@3 T@Seq_18137) ) (!  (and (=> (= s0@@3 |Seq#Empty_8081|) (= (|Seq#Append_18137| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8081|) (= (|Seq#Append_18137| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18137| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8077| (|Seq#Singleton_8081| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8081| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18137) ) (! (<= 0 (|Seq#Length_8081| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8081| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18137) (s1@@5 T@Seq_18137) ) (!  (=> (|Seq#Equal_18137| s0@@5 s1@@5) (and (= (|Seq#Length_8081| s0@@5) (|Seq#Length_8081| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8081| s0@@5))) (= (|Seq#Index_8077| s0@@5 j@@6) (|Seq#Index_8077| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8077| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8077| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18137| s0@@5 s1@@5))
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
(assert (forall ((xs@@4 T@Seq_18137) ) (! (= (getPredWandId_8042_8043 (P xs@@4)) 0)
 :qid |stdinbpl.596:15|
 :skolemid |60|
 :pattern ( (P xs@@4))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8081| (|Seq#Singleton_8081| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8081| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((s@@21 T@Seq_18137) (t@@7 T@Seq_18137) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8081| s@@21))) (= (|Seq#Take_8081| (|Seq#Append_18137| s@@21 t@@7) n@@17) (|Seq#Take_8081| s@@21 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8081| (|Seq#Append_18137| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@22))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18) (|Seq#Take_3032| s@@22 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18137) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8081| s@@23))) (= (|Seq#Length_8081| (|Seq#Update_8081| s@@23 i@@5 v@@2)) (|Seq#Length_8081| s@@23)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8081| (|Seq#Update_8081| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8081| s@@23) (|Seq#Update_8081| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@24))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)) (|Seq#Length_3032| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@24) (|Seq#Update_3032| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_12001) (o_27 T@Ref) (f_30 T@Field_18159_18164) (v@@4 T@PolymorphicMapType_12550) ) (! (succHeap Heap@@21 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@21) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@21) o_27 f_30 v@@4) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@21) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@21) o_27 f_30 v@@4) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@21) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_12001) (o_27@@0 T@Ref) (f_30@@0 T@Field_18143_18144) (v@@5 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@22) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@22) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@22) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@22) o_27@@0 f_30@@0 v@@5) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@22) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_12001) (o_27@@1 T@Ref) (f_30@@1 T@Field_8042_3154) (v@@6 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@23) (store (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@23) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@23) (store (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@23) o_27@@1 f_30@@1 v@@6) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@23) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_12001) (o_27@@2 T@Ref) (f_30@@2 T@Field_8042_12075) (v@@7 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@24) (store (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@24) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@24) (store (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@24) o_27@@2 f_30@@2 v@@7) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@24) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_12001) (o_27@@3 T@Ref) (f_30@@3 T@Field_8042_53) (v@@8 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@25) (store (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@25) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@25)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@25) (store (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@25) o_27@@3 f_30@@3 v@@8) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@25) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@25)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_12001) (o_27@@4 T@Ref) (f_30@@4 T@Field_8038_18164) (v@@9 T@PolymorphicMapType_12550) ) (! (succHeap Heap@@26 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@26) (store (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@26) o_27@@4 f_30@@4 v@@9)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@26) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@26) (store (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@26) o_27@@4 f_30@@4 v@@9)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_12001) (o_27@@5 T@Ref) (f_30@@5 T@Field_8038_8043) (v@@10 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@27) (store (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@27) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@27) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@27) (store (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@27) o_27@@5 f_30@@5 v@@10) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_12001) (o_27@@6 T@Ref) (f_30@@6 T@Field_18092_3154) (v@@11 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@28) (store (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@28) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@28) (store (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@28) o_27@@6 f_30@@6 v@@11) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@28) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_12001) (o_27@@7 T@Ref) (f_30@@7 T@Field_12074_12075) (v@@12 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@29) (store (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@29) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@29) (store (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@29) o_27@@7 f_30@@7 v@@12) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@29) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_12001) (o_27@@8 T@Ref) (f_30@@8 T@Field_12061_53) (v@@13 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_12001 (store (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@30) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12001 (store (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@30) o_27@@8 f_30@@8 v@@13) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@30) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@30)))
)))
(assert (forall ((xs@@5 T@Seq_18137) ) (! (= (PredicateMaskField_8042 (P xs@@5)) (|P#sm| xs@@5))
 :qid |stdinbpl.588:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_8042 (P xs@@5)))
)))
(assert (forall ((s@@25 T@Seq_18137) (t@@9 T@Seq_18137) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8081| s@@25))) (= (|Seq#Drop_8081| (|Seq#Append_18137| s@@25 t@@9) n@@19) (|Seq#Append_18137| (|Seq#Drop_8081| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8081| (|Seq#Append_18137| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@26))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18137) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8081| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8077| (|Seq#Drop_8081| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8077| s@@27 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8081| s@@27 n@@21) (|Seq#Index_8077| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@28 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@28 n@@22) (|Seq#Index_3032| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_18137) (s1@@7 T@Seq_18137) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8081|)) (not (= s1@@7 |Seq#Empty_8081|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8081| s0@@7))) (= (|Seq#Index_8077| (|Seq#Append_18137| s0@@7 s1@@7) n@@23) (|Seq#Index_8077| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8077| (|Seq#Append_18137| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8077| s0@@7 n@@23) (|Seq#Append_18137| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18137) (s1@@9 T@Seq_18137) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8081|)) (not (= s1@@9 |Seq#Empty_8081|))) (<= 0 m)) (< m (|Seq#Length_8081| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8081| s0@@9)) (|Seq#Length_8081| s0@@9)) m) (= (|Seq#Index_8077| (|Seq#Append_18137| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8081| s0@@9))) (|Seq#Index_8077| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8077| s1@@9 m) (|Seq#Append_18137| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((o_27@@9 T@Ref) (f_24 T@Field_12074_12075) (Heap@@31 T@PolymorphicMapType_12001) ) (!  (=> (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@31) o_27@@9 $allocated) (select (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@31) (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@31) o_27@@9 f_24) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@31) o_27@@9 f_24))
)))
(assert (forall ((s@@29 T@Seq_18137) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8081| s@@29))) (= (|Seq#Index_8077| s@@29 i@@9) x@@3)) (|Seq#Contains_18137| s@@29 x@@3))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18137| s@@29 x@@3) (|Seq#Index_8077| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3032) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@30))) (= (|Seq#Index_3032| s@@30 i@@10) x@@4)) (|Seq#Contains_3032| s@@30 x@@4))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@30 x@@4) (|Seq#Index_3032| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18137) (s1@@11 T@Seq_18137) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18137| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18137| s0@@11 s1@@11))) (not (= (|Seq#Length_8081| s0@@11) (|Seq#Length_8081| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18137| s0@@11 s1@@11))) (= (|Seq#Length_8081| s0@@11) (|Seq#Length_8081| s1@@11))) (= (|Seq#SkolemDiff_18137| s0@@11 s1@@11) (|Seq#SkolemDiff_18137| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18137| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18137| s0@@11 s1@@11) (|Seq#Length_8081| s0@@11))) (not (= (|Seq#Index_8077| s0@@11 (|Seq#SkolemDiff_18137| s0@@11 s1@@11)) (|Seq#Index_8077| s1@@11 (|Seq#SkolemDiff_18137| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18137| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@2 T@Field_18143_18144) (v_1@@1 T@FrameType) (q T@Field_18143_18144) (w@@1 T@FrameType) (r T@Field_18143_18144) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18143_18143 p@@2 v_1@@1 q w@@1) (InsidePredicate_18143_18143 q w@@1 r u)) (InsidePredicate_18143_18143 p@@2 v_1@@1 r u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18143_18143 p@@2 v_1@@1 q w@@1) (InsidePredicate_18143_18143 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_18143_18144) (v_1@@2 T@FrameType) (q@@0 T@Field_18143_18144) (w@@2 T@FrameType) (r@@0 T@Field_8038_8043) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18143_18143 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18143_12061 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_18143_12061 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18143_18143 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18143_12061 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_18143_18144) (v_1@@3 T@FrameType) (q@@1 T@Field_8038_8043) (w@@3 T@FrameType) (r@@1 T@Field_18143_18144) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18143_12061 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12061_18143 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_18143_18143 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18143_12061 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_12061_18143 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_18143_18144) (v_1@@4 T@FrameType) (q@@2 T@Field_8038_8043) (w@@4 T@FrameType) (r@@2 T@Field_8038_8043) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18143_12061 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12061_12061 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_18143_12061 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18143_12061 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_12061_12061 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_8038_8043) (v_1@@5 T@FrameType) (q@@3 T@Field_18143_18144) (w@@5 T@FrameType) (r@@3 T@Field_18143_18144) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_12061_18143 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18143_18143 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_12061_18143 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12061_18143 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18143_18143 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_8038_8043) (v_1@@6 T@FrameType) (q@@4 T@Field_18143_18144) (w@@6 T@FrameType) (r@@4 T@Field_8038_8043) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_12061_18143 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18143_12061 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_12061_12061 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12061_18143 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18143_12061 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_8038_8043) (v_1@@7 T@FrameType) (q@@5 T@Field_8038_8043) (w@@7 T@FrameType) (r@@5 T@Field_18143_18144) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_12061_12061 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12061_18143 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_12061_18143 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12061_12061 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_12061_18143 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_8038_8043) (v_1@@8 T@FrameType) (q@@6 T@Field_8038_8043) (w@@8 T@FrameType) (r@@6 T@Field_8038_8043) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_12061_12061 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12061_12061 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_12061_12061 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12061_12061 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_12061_12061 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@31 T@Seq_18137) ) (!  (=> (= (|Seq#Length_8081| s@@31) 0) (= s@@31 |Seq#Empty_8081|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8081| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@32) 0) (= s@@32 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18137) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8081| s@@33 n@@25) |Seq#Empty_8081|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8081| s@@33 n@@25))
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
(declare-fun xs@@6 () T@Seq_18137)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_12022)
(declare-fun Mask@3 () T@PolymorphicMapType_12022)
(declare-fun Heap@12 () T@PolymorphicMapType_12001)
(declare-fun QPMask@1 () T@PolymorphicMapType_12022)
(declare-fun Heap@@32 () T@PolymorphicMapType_12001)
(declare-fun Heap@10 () T@PolymorphicMapType_12001)
(declare-fun Heap@11 () T@PolymorphicMapType_12001)
(declare-fun newVersion@1 () T@FrameType)
(declare-fun Mask@2 () T@PolymorphicMapType_12022)
(declare-fun newPMask@1 () T@PolymorphicMapType_12550)
(declare-fun Heap@9 () T@PolymorphicMapType_12001)
(declare-fun FrameFragment_3356 (Int) T@FrameType)
(declare-fun Heap@6 () T@PolymorphicMapType_12001)
(declare-fun Heap@7 () T@PolymorphicMapType_12001)
(declare-fun Heap@8 () T@PolymorphicMapType_12001)
(declare-fun freshVersion@1 () T@FrameType)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun QPMask@3 () T@PolymorphicMapType_12022)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_12022)
(declare-fun i_12_1 () Int)
(declare-fun j_5_1 () Int)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_12022)
(declare-fun Heap@5 () T@PolymorphicMapType_12001)
(declare-fun Heap@3 () T@PolymorphicMapType_12001)
(declare-fun Heap@4 () T@PolymorphicMapType_12001)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_12022)
(declare-fun newPMask@0 () T@PolymorphicMapType_12550)
(declare-fun Heap@2 () T@PolymorphicMapType_12001)
(declare-fun Heap@0 () T@PolymorphicMapType_12001)
(declare-fun Heap@1 () T@PolymorphicMapType_12001)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_12022)
(declare-fun i_6_1 () Int)
(declare-fun j_2_1 () Int)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_12022)
(declare-fun i_7 () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun i_6 () Int)
(declare-fun i_4 () Int)
(declare-fun j_6 () Int)
(set-info :boogie-vc-id test)
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
 (=> (= (ControlFlow 0 0) 69) (let ((anon32_correct  (=> (and (< 3 (|Seq#Length_8081| xs@@6)) (forall ((i_16_1 Int) (j_7_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1) (not (= i_16_1 j_7_1)))) (not (= (|Seq#Index_8077| xs@@6 i_16_1) (|Seq#Index_8077| xs@@6 j_7_1))))
 :qid |stdinbpl.1112:20|
 :skolemid |110|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#Index_8077| xs@@6 j_7_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_16_1) (|Seq#Index_8077| xs@@6 j_7_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1) (|Seq#Index_8077| xs@@6 i_16_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_7_1) (|Seq#Index_8077| xs@@6 i_16_1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_16_1) (|Seq#Index_8077| xs@@6 j_7_1))
))) (and (=> (= (ControlFlow 0 27) (- 0 32)) (forall ((i_17 Int) (i_17_1 Int) ) (!  (=> (and (and (and (and (not (= i_17 i_17_1)) (and (<= 0 i_17) (< i_17 3))) (and (<= 0 i_17_1) (< i_17_1 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_17) (|Seq#Index_8077| xs@@6 i_17_1))))
 :qid |stdinbpl.1118:15|
 :skolemid |111|
))) (=> (forall ((i_17@@0 Int) (i_17_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_17@@0 i_17_1@@0)) (and (<= 0 i_17@@0) (< i_17@@0 3))) (and (<= 0 i_17_1@@0) (< i_17_1@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_17@@0) (|Seq#Index_8077| xs@@6 i_17_1@@0))))
 :qid |stdinbpl.1118:15|
 :skolemid |111|
)) (=> (and (and (forall ((i_17@@1 Int) ) (!  (=> (and (and (<= 0 i_17@@1) (< i_17@@1 3)) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_8077| xs@@6 i_17@@1)) (= (invRecv7 (|Seq#Index_8077| xs@@6 i_17@@1)) i_17@@1)))
 :qid |stdinbpl.1124:22|
 :skolemid |112|
 :pattern ( (|Seq#Index_8077| xs@@6 i_17@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_17@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv7 o_4)) (< (invRecv7 o_4) 3)) (< NoPerm FullPerm)) (qpRange7 o_4)) (= (|Seq#Index_8077| xs@@6 (invRecv7 o_4)) o_4))
 :qid |stdinbpl.1128:22|
 :skolemid |113|
 :pattern ( (invRecv7 o_4))
))) (and (forall ((i_17@@2 Int) ) (!  (=> (and (<= 0 i_17@@2) (< i_17@@2 3)) (not (= (|Seq#Index_8077| xs@@6 i_17@@2) null)))
 :qid |stdinbpl.1134:22|
 :skolemid |114|
 :pattern ( (|Seq#Index_8077| xs@@6 i_17@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_17@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv7 o_4@@0)) (< (invRecv7 o_4@@0) 3)) (< NoPerm FullPerm)) (qpRange7 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8077| xs@@6 (invRecv7 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@5) o_4@@0 f_7) (+ (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@3) o_4@@0 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv7 o_4@@0)) (< (invRecv7 o_4@@0) 3)) (< NoPerm FullPerm)) (qpRange7 o_4@@0))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@5) o_4@@0 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@3) o_4@@0 f_7))))
 :qid |stdinbpl.1140:22|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@5) o_4@@0 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@3) o_4@@1 f_5) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@5) o_4@@1 f_5)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@3) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@5) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@3) o_4@@2 f_5@@0) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@5) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@3) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@5) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_18092_3154) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@3) o_4@@3 f_5@@1) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@5) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@3) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@5) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@3) o_4@@4 f_5@@2) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@5) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@3) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@5) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@3) o_4@@5 f_5@@3) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@5) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@3) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@5) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@3) o_4@@6 f_5@@4) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@5) o_4@@6 f_5@@4)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@3) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@5) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@3) o_4@@7 f_5@@5) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@5) o_4@@7 f_5@@5)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@3) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@5) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@3) o_4@@8 f_5@@6) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@5) o_4@@8 f_5@@6)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@3) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@5) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@3) o_4@@9 f_5@@7) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@5) o_4@@9 f_5@@7)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@3) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@5) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@3) o_4@@10 f_5@@8) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@5) o_4@@10 f_5@@8)))
 :qid |stdinbpl.1144:29|
 :skolemid |116|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@3) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@5) o_4@@10 f_5@@8))
))) (state Heap@12 QPMask@5)) (and (state Heap@12 QPMask@5) (state Heap@12 QPMask@5))) (and (=> (= (ControlFlow 0 27) (- 0 31)) (< 4 (|Seq#Length_8081| xs@@6))) (=> (< 4 (|Seq#Length_8081| xs@@6)) (and (=> (= (ControlFlow 0 27) (- 0 30)) (HasDirectPerm_8038_3154 QPMask@5 (|Seq#Index_8077| xs@@6 4) f_7)) (=> (HasDirectPerm_8038_3154 QPMask@5 (|Seq#Index_8077| xs@@6 4) f_7) (and (=> (= (ControlFlow 0 27) (- 0 29)) (< 4 (|Seq#Length_8081| xs@@6))) (=> (< 4 (|Seq#Length_8081| xs@@6)) (and (=> (= (ControlFlow 0 27) (- 0 28)) (HasDirectPerm_8038_3154 QPMask@1 (|Seq#Index_8077| xs@@6 4) f_7)) (=> (HasDirectPerm_8038_3154 QPMask@1 (|Seq#Index_8077| xs@@6 4) f_7) (=> (= (ControlFlow 0 27) (- 0 26)) (= (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@12) (|Seq#Index_8077| xs@@6 4) f_7) (select (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@32) (|Seq#Index_8077| xs@@6 4) f_7))))))))))))))))))
(let ((anon48_Else_correct  (=> (HasDirectPerm_8042_8043 Mask@3 null (P xs@@6)) (=> (and (= Heap@12 Heap@10) (= (ControlFlow 0 34) 27)) anon32_correct))))
(let ((anon48_Then_correct  (=> (and (and (not (HasDirectPerm_8042_8043 Mask@3 null (P xs@@6))) (= Heap@11 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@10) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@10) null (P xs@@6) newVersion@1) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@10) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@10)))) (and (= Heap@12 Heap@11) (= (ControlFlow 0 33) 27))) anon32_correct)))
(let ((anon30_correct  (=> (= Mask@3 (PolymorphicMapType_12022 (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@2) (store (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@2) null (P xs@@6) (- (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@2) null (P xs@@6)) FullPerm)) (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@2) (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@2))) (and (=> (= (ControlFlow 0 35) 33) anon48_Then_correct) (=> (= (ControlFlow 0 35) 34) anon48_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 38) 35)) anon30_correct)))
(let ((anon47_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 36) (- 0 37)) (<= FullPerm (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@2) null (P xs@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@2) null (P xs@@6))) (=> (= (ControlFlow 0 36) 35) anon30_correct))))))
(let ((anon28_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_18 T@Ref) (f_22 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18 f_22) (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@1) o_18 f_22))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@1) o_18 f_22))
)) (forall ((o_18@@0 T@Ref) (f_22@@0 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@0 f_22@@0) (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| newPMask@1) o_18@@0 f_22@@0))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| newPMask@1) o_18@@0 f_22@@0))
))) (forall ((o_18@@1 T@Ref) (f_22@@1 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@1 f_22@@1) (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| newPMask@1) o_18@@1 f_22@@1))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| newPMask@1) o_18@@1 f_22@@1))
))) (forall ((o_18@@2 T@Ref) (f_22@@2 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@2 f_22@@2) (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| newPMask@1) o_18@@2 f_22@@2))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| newPMask@1) o_18@@2 f_22@@2))
))) (forall ((o_18@@3 T@Ref) (f_22@@3 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@3 f_22@@3) (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| newPMask@1) o_18@@3 f_22@@3))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| newPMask@1) o_18@@3 f_22@@3))
))) (forall ((o_18@@4 T@Ref) (f_22@@4 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@4 f_22@@4) (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| newPMask@1) o_18@@4 f_22@@4))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| newPMask@1) o_18@@4 f_22@@4))
))) (forall ((o_18@@5 T@Ref) (f_22@@5 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@5 f_22@@5) (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| newPMask@1) o_18@@5 f_22@@5))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| newPMask@1) o_18@@5 f_22@@5))
))) (forall ((o_18@@6 T@Ref) (f_22@@6 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@6 f_22@@6) (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| newPMask@1) o_18@@6 f_22@@6))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| newPMask@1) o_18@@6 f_22@@6))
))) (forall ((o_18@@7 T@Ref) (f_22@@7 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@7 f_22@@7) (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| newPMask@1) o_18@@7 f_22@@7))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| newPMask@1) o_18@@7 f_22@@7))
))) (forall ((o_18@@8 T@Ref) (f_22@@8 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6))) o_18@@8 f_22@@8) (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| newPMask@1) o_18@@8 f_22@@8))
 :qid |stdinbpl.1082:27|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| newPMask@1) o_18@@8 f_22@@8))
))) (and (forall ((i_15 Int) ) (!  (=> (and (<= 0 i_15) (< i_15 3)) (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@1) (|Seq#Index_8077| xs@@6 i_15) f_7))
 :qid |stdinbpl.1086:20|
 :skolemid |109|
)) (= Heap@10 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@9) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@9) null (|P#sm| xs@@6) newPMask@1) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@9) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@9))))) (and (and (state Heap@10 Mask@2) (state Heap@10 Mask@2)) (and (|P#trigger_8042| Heap@10 (P xs@@6)) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@10) null (P xs@@6)) (FrameFragment_3356 (|P#condqp1| Heap@10 xs@@6)))))) (and (=> (= (ControlFlow 0 39) 36) anon47_Then_correct) (=> (= (ControlFlow 0 39) 38) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (HasDirectPerm_8042_8043 Mask@2 null (P xs@@6)) (=> (and (= Heap@9 Heap@6) (= (ControlFlow 0 41) 39)) anon28_correct))))
(let ((anon46_Then_correct  (=> (not (HasDirectPerm_8042_8043 Mask@2 null (P xs@@6))) (=> (and (and (= Heap@7 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@6) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@6) null (|P#sm| xs@@6) ZeroPMask) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@6) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@6))) (= Heap@8 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@7) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@7) null (P xs@@6) freshVersion@1) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@7) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 40) 39))) anon28_correct))))
(let ((anon44_Else_correct  (=> (forall ((i_13_1_1 Int) (j_6_1_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1) (not (= i_13_1_1 j_6_1_1)))) (not (= (|Seq#Index_8077| xs@@6 i_13_1_1) (|Seq#Index_8077| xs@@6 j_6_1_1))))
 :qid |stdinbpl.1024:20|
 :skolemid |101|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#Index_8077| xs@@6 j_6_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_13_1_1) (|Seq#Index_8077| xs@@6 j_6_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1) (|Seq#Index_8077| xs@@6 i_13_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6_1_1) (|Seq#Index_8077| xs@@6 i_13_1_1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_13_1_1) (|Seq#Index_8077| xs@@6 j_6_1_1))
)) (and (=> (= (ControlFlow 0 42) (- 0 44)) (forall ((i_14_1 Int) (i_14_2 Int) ) (!  (=> (and (and (and (and (not (= i_14_1 i_14_2)) (and (<= 0 i_14_1) (< i_14_1 3))) (and (<= 0 i_14_2) (< i_14_2 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_14_1) (|Seq#Index_8077| xs@@6 i_14_2))))
 :qid |stdinbpl.1035:17|
 :skolemid |102|
 :pattern ( (neverTriggered6 i_14_1) (neverTriggered6 i_14_2))
))) (=> (forall ((i_14_1@@0 Int) (i_14_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_14_1@@0 i_14_2@@0)) (and (<= 0 i_14_1@@0) (< i_14_1@@0 3))) (and (<= 0 i_14_2@@0) (< i_14_2@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_14_1@@0) (|Seq#Index_8077| xs@@6 i_14_2@@0))))
 :qid |stdinbpl.1035:17|
 :skolemid |102|
 :pattern ( (neverTriggered6 i_14_1@@0) (neverTriggered6 i_14_2@@0))
)) (and (=> (= (ControlFlow 0 42) (- 0 43)) (forall ((i_14_1@@1 Int) ) (!  (=> (and (<= 0 i_14_1@@1) (< i_14_1@@1 3)) (>= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) (|Seq#Index_8077| xs@@6 i_14_1@@1) f_7) FullPerm))
 :qid |stdinbpl.1042:17|
 :skolemid |103|
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@1))
))) (=> (forall ((i_14_1@@2 Int) ) (!  (=> (and (<= 0 i_14_1@@2) (< i_14_1@@2 3)) (>= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) (|Seq#Index_8077| xs@@6 i_14_1@@2) f_7) FullPerm))
 :qid |stdinbpl.1042:17|
 :skolemid |103|
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@2))
)) (=> (forall ((i_14_1@@3 Int) ) (!  (=> (and (and (<= 0 i_14_1@@3) (< i_14_1@@3 3)) (< NoPerm FullPerm)) (and (qpRange6 (|Seq#Index_8077| xs@@6 i_14_1@@3)) (= (invRecv6 (|Seq#Index_8077| xs@@6 i_14_1@@3)) i_14_1@@3)))
 :qid |stdinbpl.1048:22|
 :skolemid |104|
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@3))
 :pattern ( (|Seq#Index_8077| xs@@6 i_14_1@@3))
)) (=> (and (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv6 o_4@@11)) (< (invRecv6 o_4@@11) 3)) (and (< NoPerm FullPerm) (qpRange6 o_4@@11))) (= (|Seq#Index_8077| xs@@6 (invRecv6 o_4@@11)) o_4@@11))
 :qid |stdinbpl.1052:22|
 :skolemid |105|
 :pattern ( (invRecv6 o_4@@11))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv6 o_4@@12)) (< (invRecv6 o_4@@12) 3)) (and (< NoPerm FullPerm) (qpRange6 o_4@@12))) (and (= (|Seq#Index_8077| xs@@6 (invRecv6 o_4@@12)) o_4@@12) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) o_4@@12 f_7) (- (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@12 f_7) FullPerm)))) (=> (not (and (and (<= 0 (invRecv6 o_4@@12)) (< (invRecv6 o_4@@12) 3)) (and (< NoPerm FullPerm) (qpRange6 o_4@@12)))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) o_4@@12 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@12 f_7))))
 :qid |stdinbpl.1058:22|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) o_4@@12 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@3) o_4@@13 f_5@@9) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@4) o_4@@13 f_5@@9)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@4) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@3) o_4@@14 f_5@@10) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@4) o_4@@14 f_5@@10)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@4) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_18092_3154) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@15 f_5@@11) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) o_4@@15 f_5@@11)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@3) o_4@@16 f_5@@12) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@4) o_4@@16 f_5@@12)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@4) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@3) o_4@@17 f_5@@13) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@4) o_4@@17 f_5@@13)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@4) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@3) o_4@@18 f_5@@14) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@4) o_4@@18 f_5@@14)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@4) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@3) o_4@@19 f_5@@15) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@4) o_4@@19 f_5@@15)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@4) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@3) o_4@@20 f_5@@16) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@4) o_4@@20 f_5@@16)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@4) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@3) o_4@@21 f_5@@17) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@4) o_4@@21 f_5@@17)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@4) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@3) o_4@@22 f_5@@18) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@4) o_4@@22 f_5@@18)))
 :qid |stdinbpl.1064:29|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@4) o_4@@22 f_5@@18))
))) (= Mask@2 (PolymorphicMapType_12022 (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@4) (store (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@4) null (P xs@@6) (+ (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@4) null (P xs@@6)) FullPerm)) (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@4) (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@4)))) (and (and (state Heap@6 Mask@2) (state Heap@6 Mask@2)) (and (|P#trigger_8042| Heap@6 (P xs@@6)) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@6) null (P xs@@6)) (FrameFragment_3356 (|P#condqp1| Heap@6 xs@@6)))))) (and (=> (= (ControlFlow 0 42) 40) anon46_Then_correct) (=> (= (ControlFlow 0 42) 41) anon46_Else_correct))))))))))))
(let ((anon25_correct true))
(let ((anon45_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_12_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_5_1) (not (= i_12_1 j_5_1))))) (= (ControlFlow 0 25) 22)) anon25_correct)))
(let ((anon45_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_12_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_5_1) (not (= i_12_1 j_5_1)))) (and (=> (= (ControlFlow 0 23) (- 0 24)) (not (= (|Seq#Index_8077| xs@@6 i_12_1) (|Seq#Index_8077| xs@@6 j_5_1)))) (=> (not (= (|Seq#Index_8077| xs@@6 i_12_1) (|Seq#Index_8077| xs@@6 j_5_1))) (=> (= (ControlFlow 0 23) 22) anon25_correct))))))
(let ((anon22_correct  (=> (and (< 3 (|Seq#Length_8081| xs@@6)) (forall ((i_10_1 Int) (j_4_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1) (not (= i_10_1 j_4_1)))) (not (= (|Seq#Index_8077| xs@@6 i_10_1) (|Seq#Index_8077| xs@@6 j_4_1))))
 :qid |stdinbpl.961:20|
 :skolemid |94|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#Index_8077| xs@@6 j_4_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_10_1) (|Seq#Index_8077| xs@@6 j_4_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1) (|Seq#Index_8077| xs@@6 i_10_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_4_1) (|Seq#Index_8077| xs@@6 i_10_1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_10_1) (|Seq#Index_8077| xs@@6 j_4_1))
))) (and (=> (= (ControlFlow 0 45) (- 0 49)) (forall ((i_11_1 Int) (i_11_2 Int) ) (!  (=> (and (and (and (and (not (= i_11_1 i_11_2)) (and (<= 0 i_11_1) (< i_11_1 3))) (and (<= 0 i_11_2) (< i_11_2 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_11_1) (|Seq#Index_8077| xs@@6 i_11_2))))
 :qid |stdinbpl.967:15|
 :skolemid |95|
))) (=> (forall ((i_11_1@@0 Int) (i_11_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_11_1@@0 i_11_2@@0)) (and (<= 0 i_11_1@@0) (< i_11_1@@0 3))) (and (<= 0 i_11_2@@0) (< i_11_2@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_11_1@@0) (|Seq#Index_8077| xs@@6 i_11_2@@0))))
 :qid |stdinbpl.967:15|
 :skolemid |95|
)) (=> (and (and (forall ((i_11_1@@1 Int) ) (!  (=> (and (and (<= 0 i_11_1@@1) (< i_11_1@@1 3)) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_8077| xs@@6 i_11_1@@1)) (= (invRecv5 (|Seq#Index_8077| xs@@6 i_11_1@@1)) i_11_1@@1)))
 :qid |stdinbpl.973:22|
 :skolemid |96|
 :pattern ( (|Seq#Index_8077| xs@@6 i_11_1@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_11_1@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv5 o_4@@23)) (< (invRecv5 o_4@@23) 3)) (< NoPerm FullPerm)) (qpRange5 o_4@@23)) (= (|Seq#Index_8077| xs@@6 (invRecv5 o_4@@23)) o_4@@23))
 :qid |stdinbpl.977:22|
 :skolemid |97|
 :pattern ( (invRecv5 o_4@@23))
))) (and (forall ((i_11_1@@2 Int) ) (!  (=> (and (<= 0 i_11_1@@2) (< i_11_1@@2 3)) (not (= (|Seq#Index_8077| xs@@6 i_11_1@@2) null)))
 :qid |stdinbpl.983:22|
 :skolemid |98|
 :pattern ( (|Seq#Index_8077| xs@@6 i_11_1@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_11_1@@2))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv5 o_4@@24)) (< (invRecv5 o_4@@24) 3)) (< NoPerm FullPerm)) (qpRange5 o_4@@24)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8077| xs@@6 (invRecv5 o_4@@24)) o_4@@24)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@24 f_7) (+ (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@1) o_4@@24 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv5 o_4@@24)) (< (invRecv5 o_4@@24) 3)) (< NoPerm FullPerm)) (qpRange5 o_4@@24))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@24 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@1) o_4@@24 f_7))))
 :qid |stdinbpl.989:22|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@24 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@19 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@1) o_4@@25 f_5@@19) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@3) o_4@@25 f_5@@19)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@1) o_4@@25 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@3) o_4@@25 f_5@@19))
)) (forall ((o_4@@26 T@Ref) (f_5@@20 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@1) o_4@@26 f_5@@20) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@3) o_4@@26 f_5@@20)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@1) o_4@@26 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@3) o_4@@26 f_5@@20))
))) (forall ((o_4@@27 T@Ref) (f_5@@21 T@Field_18092_3154) ) (!  (=> (not (= f_5@@21 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@1) o_4@@27 f_5@@21) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@27 f_5@@21)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@1) o_4@@27 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) o_4@@27 f_5@@21))
))) (forall ((o_4@@28 T@Ref) (f_5@@22 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@1) o_4@@28 f_5@@22) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@3) o_4@@28 f_5@@22)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@1) o_4@@28 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@3) o_4@@28 f_5@@22))
))) (forall ((o_4@@29 T@Ref) (f_5@@23 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@1) o_4@@29 f_5@@23) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@3) o_4@@29 f_5@@23)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@1) o_4@@29 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@3) o_4@@29 f_5@@23))
))) (forall ((o_4@@30 T@Ref) (f_5@@24 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@1) o_4@@30 f_5@@24) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@3) o_4@@30 f_5@@24)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@1) o_4@@30 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@3) o_4@@30 f_5@@24))
))) (forall ((o_4@@31 T@Ref) (f_5@@25 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@1) o_4@@31 f_5@@25) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@3) o_4@@31 f_5@@25)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@1) o_4@@31 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@3) o_4@@31 f_5@@25))
))) (forall ((o_4@@32 T@Ref) (f_5@@26 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@1) o_4@@32 f_5@@26) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@3) o_4@@32 f_5@@26)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@1) o_4@@32 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@3) o_4@@32 f_5@@26))
))) (forall ((o_4@@33 T@Ref) (f_5@@27 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@1) o_4@@33 f_5@@27) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@3) o_4@@33 f_5@@27)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@1) o_4@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@3) o_4@@33 f_5@@27))
))) (forall ((o_4@@34 T@Ref) (f_5@@28 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@1) o_4@@34 f_5@@28) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@3) o_4@@34 f_5@@28)))
 :qid |stdinbpl.993:29|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@1) o_4@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@3) o_4@@34 f_5@@28))
))) (state Heap@5 QPMask@3)) (and (state Heap@5 QPMask@3) (state Heap@5 QPMask@3))) (and (=> (= (ControlFlow 0 45) (- 0 48)) (< 4 (|Seq#Length_8081| xs@@6))) (=> (< 4 (|Seq#Length_8081| xs@@6)) (and (=> (= (ControlFlow 0 45) (- 0 47)) (= FullPerm (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) (|Seq#Index_8077| xs@@6 4) f_7))) (=> (= FullPerm (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@3) (|Seq#Index_8077| xs@@6 4) f_7)) (=> (and (= Heap@6 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@5) (store (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@5) (|Seq#Index_8077| xs@@6 4) f_7 0) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@5) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@5))) (state Heap@6 QPMask@3)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (< 3 (|Seq#Length_8081| xs@@6))) (=> (< 3 (|Seq#Length_8081| xs@@6)) (and (and (=> (= (ControlFlow 0 45) 42) anon44_Else_correct) (=> (= (ControlFlow 0 45) 23) anon45_Then_correct)) (=> (= (ControlFlow 0 45) 25) anon45_Else_correct))))))))))))))))
(let ((anon43_Else_correct  (=> (HasDirectPerm_8042_8043 Mask@1 null (P xs@@6)) (=> (and (= Heap@5 Heap@3) (= (ControlFlow 0 51) 45)) anon22_correct))))
(let ((anon43_Then_correct  (=> (and (and (not (HasDirectPerm_8042_8043 Mask@1 null (P xs@@6))) (= Heap@4 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@3) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@3) null (P xs@@6) newVersion@0) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@3) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@3)))) (and (= Heap@5 Heap@4) (= (ControlFlow 0 50) 45))) anon22_correct)))
(let ((anon20_correct  (=> (= Mask@1 (PolymorphicMapType_12022 (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| Mask@0) (store (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@0) null (P xs@@6) (- (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@0) null (P xs@@6)) FullPerm)) (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| Mask@0) (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| Mask@0))) (and (=> (= (ControlFlow 0 52) 50) anon43_Then_correct) (=> (= (ControlFlow 0 52) 51) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 55) 52)) anon20_correct)))
(let ((anon42_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 53) (- 0 54)) (<= FullPerm (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@0) null (P xs@@6)))) (=> (<= FullPerm (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| Mask@0) null (P xs@@6))) (=> (= (ControlFlow 0 53) 52) anon20_correct))))))
(let ((anon18_correct  (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_33 T@Ref) (f_39 T@Field_18092_3154) ) (!  (=> (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33 f_39) (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@0) o_33 f_39))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@0) o_33 f_39))
)) (forall ((o_33@@0 T@Ref) (f_39@@0 T@Field_12061_53) ) (!  (=> (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@0 f_39@@0) (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| newPMask@0) o_33@@0 f_39@@0))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_8038_53#PolymorphicMapType_12550| newPMask@0) o_33@@0 f_39@@0))
))) (forall ((o_33@@1 T@Ref) (f_39@@1 T@Field_12074_12075) ) (!  (=> (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@1 f_39@@1) (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| newPMask@0) o_33@@1 f_39@@1))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_8038_12075#PolymorphicMapType_12550| newPMask@0) o_33@@1 f_39@@1))
))) (forall ((o_33@@2 T@Ref) (f_39@@2 T@Field_8038_8043) ) (!  (=> (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@2 f_39@@2) (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| newPMask@0) o_33@@2 f_39@@2))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_8038_18144#PolymorphicMapType_12550| newPMask@0) o_33@@2 f_39@@2))
))) (forall ((o_33@@3 T@Ref) (f_39@@3 T@Field_8038_18164) ) (!  (=> (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@3 f_39@@3) (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| newPMask@0) o_33@@3 f_39@@3))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_8038_37248#PolymorphicMapType_12550| newPMask@0) o_33@@3 f_39@@3))
))) (forall ((o_33@@4 T@Ref) (f_39@@4 T@Field_8042_3154) ) (!  (=> (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@4 f_39@@4) (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| newPMask@0) o_33@@4 f_39@@4))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_18143_3154#PolymorphicMapType_12550| newPMask@0) o_33@@4 f_39@@4))
))) (forall ((o_33@@5 T@Ref) (f_39@@5 T@Field_8042_53) ) (!  (=> (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@5 f_39@@5) (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| newPMask@0) o_33@@5 f_39@@5))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_18143_53#PolymorphicMapType_12550| newPMask@0) o_33@@5 f_39@@5))
))) (forall ((o_33@@6 T@Ref) (f_39@@6 T@Field_8042_12075) ) (!  (=> (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@6 f_39@@6) (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| newPMask@0) o_33@@6 f_39@@6))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_18143_12075#PolymorphicMapType_12550| newPMask@0) o_33@@6 f_39@@6))
))) (forall ((o_33@@7 T@Ref) (f_39@@7 T@Field_18143_18144) ) (!  (=> (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@7 f_39@@7) (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| newPMask@0) o_33@@7 f_39@@7))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_18143_18144#PolymorphicMapType_12550| newPMask@0) o_33@@7 f_39@@7))
))) (forall ((o_33@@8 T@Ref) (f_39@@8 T@Field_18159_18164) ) (!  (=> (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| (select (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6))) o_33@@8 f_39@@8) (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| newPMask@0) o_33@@8 f_39@@8))
 :qid |stdinbpl.931:27|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_12550_18143_38296#PolymorphicMapType_12550| newPMask@0) o_33@@8 f_39@@8))
))) (and (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (< i_9_1 3)) (select (|PolymorphicMapType_12550_8038_3154#PolymorphicMapType_12550| newPMask@0) (|Seq#Index_8077| xs@@6 i_9_1) f_7))
 :qid |stdinbpl.935:20|
 :skolemid |93|
)) (= Heap@3 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@2) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@2) null (|P#sm| xs@@6) newPMask@0) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@2) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@2))))) (and (and (state Heap@3 Mask@0) (state Heap@3 Mask@0)) (and (|P#trigger_8042| Heap@3 (P xs@@6)) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@3) null (P xs@@6)) (FrameFragment_3356 (|P#condqp1| Heap@3 xs@@6)))))) (and (=> (= (ControlFlow 0 56) 53) anon42_Then_correct) (=> (= (ControlFlow 0 56) 55) anon42_Else_correct)))))
(let ((anon41_Else_correct  (=> (HasDirectPerm_8042_8043 Mask@0 null (P xs@@6)) (=> (and (= Heap@2 Heap@@32) (= (ControlFlow 0 58) 56)) anon18_correct))))
(let ((anon41_Then_correct  (=> (not (HasDirectPerm_8042_8043 Mask@0 null (P xs@@6))) (=> (and (and (= Heap@0 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@32) (store (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@@32) null (|P#sm| xs@@6) ZeroPMask) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@@32) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@@32))) (= Heap@1 (PolymorphicMapType_12001 (|PolymorphicMapType_12001_7836_53#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_7839_7840#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8038_3154#PolymorphicMapType_12001| Heap@0) (store (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@0) null (P xs@@6) freshVersion@0) (|PolymorphicMapType_12001_8047_25866#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8042_3154#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8042_53#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8042_12075#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8038_8043#PolymorphicMapType_12001| Heap@0) (|PolymorphicMapType_12001_8038_35530#PolymorphicMapType_12001| Heap@0)))) (and (= Heap@2 Heap@1) (= (ControlFlow 0 57) 56))) anon18_correct))))
(let ((anon39_Else_correct  (=> (forall ((i_7_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1) (not (= i_7_1_1 j_3_1_1)))) (not (= (|Seq#Index_8077| xs@@6 i_7_1_1) (|Seq#Index_8077| xs@@6 j_3_1_1))))
 :qid |stdinbpl.873:20|
 :skolemid |85|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#Index_8077| xs@@6 j_3_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_7_1_1) (|Seq#Index_8077| xs@@6 j_3_1_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1) (|Seq#Index_8077| xs@@6 i_7_1_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_3_1_1) (|Seq#Index_8077| xs@@6 i_7_1_1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_7_1_1) (|Seq#Index_8077| xs@@6 j_3_1_1))
)) (and (=> (= (ControlFlow 0 59) (- 0 61)) (forall ((i_8_2 Int) (i_8_3 Int) ) (!  (=> (and (and (and (and (not (= i_8_2 i_8_3)) (and (<= 0 i_8_2) (< i_8_2 3))) (and (<= 0 i_8_3) (< i_8_3 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_8_2) (|Seq#Index_8077| xs@@6 i_8_3))))
 :qid |stdinbpl.884:17|
 :skolemid |86|
 :pattern ( (neverTriggered4 i_8_2) (neverTriggered4 i_8_3))
))) (=> (forall ((i_8_2@@0 Int) (i_8_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_2@@0 i_8_3@@0)) (and (<= 0 i_8_2@@0) (< i_8_2@@0 3))) (and (<= 0 i_8_3@@0) (< i_8_3@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_8_2@@0) (|Seq#Index_8077| xs@@6 i_8_3@@0))))
 :qid |stdinbpl.884:17|
 :skolemid |86|
 :pattern ( (neverTriggered4 i_8_2@@0) (neverTriggered4 i_8_3@@0))
)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (forall ((i_8_2@@1 Int) ) (!  (=> (and (<= 0 i_8_2@@1) (< i_8_2@@1 3)) (>= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) (|Seq#Index_8077| xs@@6 i_8_2@@1) f_7) FullPerm))
 :qid |stdinbpl.891:17|
 :skolemid |87|
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@1))
))) (=> (forall ((i_8_2@@2 Int) ) (!  (=> (and (<= 0 i_8_2@@2) (< i_8_2@@2 3)) (>= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) (|Seq#Index_8077| xs@@6 i_8_2@@2) f_7) FullPerm))
 :qid |stdinbpl.891:17|
 :skolemid |87|
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@2))
)) (=> (forall ((i_8_2@@3 Int) ) (!  (=> (and (and (<= 0 i_8_2@@3) (< i_8_2@@3 3)) (< NoPerm FullPerm)) (and (qpRange4 (|Seq#Index_8077| xs@@6 i_8_2@@3)) (= (invRecv4 (|Seq#Index_8077| xs@@6 i_8_2@@3)) i_8_2@@3)))
 :qid |stdinbpl.897:22|
 :skolemid |88|
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@3))
 :pattern ( (|Seq#Index_8077| xs@@6 i_8_2@@3))
)) (=> (and (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv4 o_4@@35)) (< (invRecv4 o_4@@35) 3)) (and (< NoPerm FullPerm) (qpRange4 o_4@@35))) (= (|Seq#Index_8077| xs@@6 (invRecv4 o_4@@35)) o_4@@35))
 :qid |stdinbpl.901:22|
 :skolemid |89|
 :pattern ( (invRecv4 o_4@@35))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv4 o_4@@36)) (< (invRecv4 o_4@@36) 3)) (and (< NoPerm FullPerm) (qpRange4 o_4@@36))) (and (= (|Seq#Index_8077| xs@@6 (invRecv4 o_4@@36)) o_4@@36) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) o_4@@36 f_7) (- (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@36 f_7) FullPerm)))) (=> (not (and (and (<= 0 (invRecv4 o_4@@36)) (< (invRecv4 o_4@@36) 3)) (and (< NoPerm FullPerm) (qpRange4 o_4@@36)))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) o_4@@36 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@36 f_7))))
 :qid |stdinbpl.907:22|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) o_4@@36 f_7))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@29 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@1) o_4@@37 f_5@@29) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@2) o_4@@37 f_5@@29)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@2) o_4@@37 f_5@@29))
)) (forall ((o_4@@38 T@Ref) (f_5@@30 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@1) o_4@@38 f_5@@30) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@2) o_4@@38 f_5@@30)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@2) o_4@@38 f_5@@30))
))) (forall ((o_4@@39 T@Ref) (f_5@@31 T@Field_18092_3154) ) (!  (=> (not (= f_5@@31 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@39 f_5@@31) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) o_4@@39 f_5@@31)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) o_4@@39 f_5@@31))
))) (forall ((o_4@@40 T@Ref) (f_5@@32 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@1) o_4@@40 f_5@@32) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@2) o_4@@40 f_5@@32)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@2) o_4@@40 f_5@@32))
))) (forall ((o_4@@41 T@Ref) (f_5@@33 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@1) o_4@@41 f_5@@33) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@2) o_4@@41 f_5@@33)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@2) o_4@@41 f_5@@33))
))) (forall ((o_4@@42 T@Ref) (f_5@@34 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@1) o_4@@42 f_5@@34) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@2) o_4@@42 f_5@@34)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@2) o_4@@42 f_5@@34))
))) (forall ((o_4@@43 T@Ref) (f_5@@35 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@1) o_4@@43 f_5@@35) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@2) o_4@@43 f_5@@35)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@2) o_4@@43 f_5@@35))
))) (forall ((o_4@@44 T@Ref) (f_5@@36 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@1) o_4@@44 f_5@@36) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@2) o_4@@44 f_5@@36)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@2) o_4@@44 f_5@@36))
))) (forall ((o_4@@45 T@Ref) (f_5@@37 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@1) o_4@@45 f_5@@37) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@2) o_4@@45 f_5@@37)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@2) o_4@@45 f_5@@37))
))) (forall ((o_4@@46 T@Ref) (f_5@@38 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@1) o_4@@46 f_5@@38) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@2) o_4@@46 f_5@@38)))
 :qid |stdinbpl.913:29|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@2) o_4@@46 f_5@@38))
))) (= Mask@0 (PolymorphicMapType_12022 (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@2) (store (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@2) null (P xs@@6) (+ (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@2) null (P xs@@6)) FullPerm)) (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@2) (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@2)))) (and (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (|P#trigger_8042| Heap@@32 (P xs@@6)) (= (select (|PolymorphicMapType_12001_8042_8043#PolymorphicMapType_12001| Heap@@32) null (P xs@@6)) (FrameFragment_3356 (|P#condqp1| Heap@@32 xs@@6)))))) (and (=> (= (ControlFlow 0 59) 57) anon41_Then_correct) (=> (= (ControlFlow 0 59) 58) anon41_Else_correct))))))))))))
(let ((anon15_correct true))
(let ((anon40_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_6_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_2_1) (not (= i_6_1 j_2_1))))) (= (ControlFlow 0 21) 18)) anon15_correct)))
(let ((anon40_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_6_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_2_1) (not (= i_6_1 j_2_1)))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= (|Seq#Index_8077| xs@@6 i_6_1) (|Seq#Index_8077| xs@@6 j_2_1)))) (=> (not (= (|Seq#Index_8077| xs@@6 i_6_1) (|Seq#Index_8077| xs@@6 j_2_1))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 62) (- 0 64)) (forall ((i_5 Int) (i_5_1 Int) ) (!  (=> (and (and (and (and (not (= i_5 i_5_1)) (and (<= 3 i_5) (< i_5 6))) (and (<= 3 i_5_1) (< i_5_1 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_5) (|Seq#Index_8077| xs@@6 i_5_1))))
 :qid |stdinbpl.821:15|
 :skolemid |79|
))) (=> (forall ((i_5@@0 Int) (i_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5@@0 i_5_1@@0)) (and (<= 3 i_5@@0) (< i_5@@0 6))) (and (<= 3 i_5_1@@0) (< i_5_1@@0 6))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_5@@0) (|Seq#Index_8077| xs@@6 i_5_1@@0))))
 :qid |stdinbpl.821:15|
 :skolemid |79|
)) (=> (and (and (forall ((i_5@@1 Int) ) (!  (=> (and (and (<= 3 i_5@@1) (< i_5@@1 6)) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_8077| xs@@6 i_5@@1)) (= (invRecv3 (|Seq#Index_8077| xs@@6 i_5@@1)) i_5@@1)))
 :qid |stdinbpl.827:22|
 :skolemid |80|
 :pattern ( (|Seq#Index_8077| xs@@6 i_5@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_5@@1))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (and (<= 3 (invRecv3 o_4@@47)) (< (invRecv3 o_4@@47) 6)) (< NoPerm FullPerm)) (qpRange3 o_4@@47)) (= (|Seq#Index_8077| xs@@6 (invRecv3 o_4@@47)) o_4@@47))
 :qid |stdinbpl.831:22|
 :skolemid |81|
 :pattern ( (invRecv3 o_4@@47))
))) (and (forall ((i_5@@2 Int) ) (!  (=> (and (<= 3 i_5@@2) (< i_5@@2 6)) (not (= (|Seq#Index_8077| xs@@6 i_5@@2) null)))
 :qid |stdinbpl.837:22|
 :skolemid |82|
 :pattern ( (|Seq#Index_8077| xs@@6 i_5@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_5@@2))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (and (<= 3 (invRecv3 o_4@@48)) (< (invRecv3 o_4@@48) 6)) (< NoPerm FullPerm)) (qpRange3 o_4@@48)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8077| xs@@6 (invRecv3 o_4@@48)) o_4@@48)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@48 f_7) (+ (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@48 f_7) FullPerm)))) (=> (not (and (and (and (<= 3 (invRecv3 o_4@@48)) (< (invRecv3 o_4@@48) 6)) (< NoPerm FullPerm)) (qpRange3 o_4@@48))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@48 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@48 f_7))))
 :qid |stdinbpl.843:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@48 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@39 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@0) o_4@@49 f_5@@39) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@1) o_4@@49 f_5@@39)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@0) o_4@@49 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@1) o_4@@49 f_5@@39))
)) (forall ((o_4@@50 T@Ref) (f_5@@40 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@0) o_4@@50 f_5@@40) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@1) o_4@@50 f_5@@40)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@0) o_4@@50 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@1) o_4@@50 f_5@@40))
))) (forall ((o_4@@51 T@Ref) (f_5@@41 T@Field_18092_3154) ) (!  (=> (not (= f_5@@41 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@51 f_5@@41) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@51 f_5@@41)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@51 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@1) o_4@@51 f_5@@41))
))) (forall ((o_4@@52 T@Ref) (f_5@@42 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@0) o_4@@52 f_5@@42) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@1) o_4@@52 f_5@@42)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@0) o_4@@52 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@1) o_4@@52 f_5@@42))
))) (forall ((o_4@@53 T@Ref) (f_5@@43 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@0) o_4@@53 f_5@@43) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@1) o_4@@53 f_5@@43)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@0) o_4@@53 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@1) o_4@@53 f_5@@43))
))) (forall ((o_4@@54 T@Ref) (f_5@@44 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@0) o_4@@54 f_5@@44) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@1) o_4@@54 f_5@@44)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@0) o_4@@54 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@1) o_4@@54 f_5@@44))
))) (forall ((o_4@@55 T@Ref) (f_5@@45 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@0) o_4@@55 f_5@@45) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@1) o_4@@55 f_5@@45)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@0) o_4@@55 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@1) o_4@@55 f_5@@45))
))) (forall ((o_4@@56 T@Ref) (f_5@@46 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@0) o_4@@56 f_5@@46) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@1) o_4@@56 f_5@@46)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@0) o_4@@56 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@1) o_4@@56 f_5@@46))
))) (forall ((o_4@@57 T@Ref) (f_5@@47 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@0) o_4@@57 f_5@@47) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@1) o_4@@57 f_5@@47)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@0) o_4@@57 f_5@@47))
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@1) o_4@@57 f_5@@47))
))) (forall ((o_4@@58 T@Ref) (f_5@@48 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@0) o_4@@58 f_5@@48) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@1) o_4@@58 f_5@@48)))
 :qid |stdinbpl.847:29|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@0) o_4@@58 f_5@@48))
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@1) o_4@@58 f_5@@48))
))) (and (state Heap@@32 QPMask@1) (state Heap@@32 QPMask@1))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< 3 (|Seq#Length_8081| xs@@6))) (=> (< 3 (|Seq#Length_8081| xs@@6)) (and (and (=> (= (ControlFlow 0 62) 59) anon39_Else_correct) (=> (= (ControlFlow 0 62) 19) anon40_Then_correct)) (=> (= (ControlFlow 0 62) 21) anon40_Else_correct))))))))))
(let ((anon11_correct true))
(let ((anon38_Else_correct  (=> (and (not (and (<= 3 i_7) (< i_7 6))) (= (ControlFlow 0 17) 13)) anon11_correct)))
(let ((anon38_Then_correct  (=> (and (<= 3 i_7) (< i_7 6)) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< i_7 (|Seq#Length_8081| xs@@6))) (=> (< i_7 (|Seq#Length_8081| xs@@6)) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))
(let ((anon35_Else_correct  (and (=> (= (ControlFlow 0 65) (- 0 66)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (and (<= 0 i_3) (< i_3 3))) (and (<= 0 i_3_1) (< i_3_1 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_3) (|Seq#Index_8077| xs@@6 i_3_1))))
 :qid |stdinbpl.775:15|
 :skolemid |73|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (and (<= 0 i_3@@0) (< i_3@@0 3))) (and (<= 0 i_3_1@@0) (< i_3_1@@0 3))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8077| xs@@6 i_3@@0) (|Seq#Index_8077| xs@@6 i_3_1@@0))))
 :qid |stdinbpl.775:15|
 :skolemid |73|
)) (=> (and (and (forall ((i_3@@1 Int) ) (!  (=> (and (and (<= 0 i_3@@1) (< i_3@@1 3)) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_8077| xs@@6 i_3@@1)) (= (invRecv2 (|Seq#Index_8077| xs@@6 i_3@@1)) i_3@@1)))
 :qid |stdinbpl.781:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_8077| xs@@6 i_3@@1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_3@@1))
)) (forall ((o_4@@59 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_4@@59)) (< (invRecv2 o_4@@59) 3)) (< NoPerm FullPerm)) (qpRange2 o_4@@59)) (= (|Seq#Index_8077| xs@@6 (invRecv2 o_4@@59)) o_4@@59))
 :qid |stdinbpl.785:22|
 :skolemid |75|
 :pattern ( (invRecv2 o_4@@59))
))) (and (forall ((i_3@@2 Int) ) (!  (=> (and (<= 0 i_3@@2) (< i_3@@2 3)) (not (= (|Seq#Index_8077| xs@@6 i_3@@2) null)))
 :qid |stdinbpl.791:22|
 :skolemid |76|
 :pattern ( (|Seq#Index_8077| xs@@6 i_3@@2))
 :pattern ( (|Seq#Index_8077| xs@@6 i_3@@2))
)) (forall ((o_4@@60 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_4@@60)) (< (invRecv2 o_4@@60) 3)) (< NoPerm FullPerm)) (qpRange2 o_4@@60)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_8077| xs@@6 (invRecv2 o_4@@60)) o_4@@60)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@60 f_7) (+ (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_4@@60 f_7) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_4@@60)) (< (invRecv2 o_4@@60) 3)) (< NoPerm FullPerm)) (qpRange2 o_4@@60))) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@60 f_7) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_4@@60 f_7))))
 :qid |stdinbpl.797:22|
 :skolemid |77|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@60 f_7))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@61 T@Ref) (f_5@@49 T@Field_12061_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ZeroMask) o_4@@61 f_5@@49) (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@0) o_4@@61 f_5@@49)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| ZeroMask) o_4@@61 f_5@@49))
 :pattern ( (select (|PolymorphicMapType_12022_8038_53#PolymorphicMapType_12022| QPMask@0) o_4@@61 f_5@@49))
)) (forall ((o_4@@62 T@Ref) (f_5@@50 T@Field_12074_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ZeroMask) o_4@@62 f_5@@50) (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@0) o_4@@62 f_5@@50)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| ZeroMask) o_4@@62 f_5@@50))
 :pattern ( (select (|PolymorphicMapType_12022_8038_12075#PolymorphicMapType_12022| QPMask@0) o_4@@62 f_5@@50))
))) (forall ((o_4@@63 T@Ref) (f_5@@51 T@Field_18092_3154) ) (!  (=> (not (= f_5@@51 f_7)) (= (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_4@@63 f_5@@51) (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@63 f_5@@51)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| ZeroMask) o_4@@63 f_5@@51))
 :pattern ( (select (|PolymorphicMapType_12022_8038_3154#PolymorphicMapType_12022| QPMask@0) o_4@@63 f_5@@51))
))) (forall ((o_4@@64 T@Ref) (f_5@@52 T@Field_8038_8043) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ZeroMask) o_4@@64 f_5@@52) (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@0) o_4@@64 f_5@@52)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| ZeroMask) o_4@@64 f_5@@52))
 :pattern ( (select (|PolymorphicMapType_12022_8038_8043#PolymorphicMapType_12022| QPMask@0) o_4@@64 f_5@@52))
))) (forall ((o_4@@65 T@Ref) (f_5@@53 T@Field_8038_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ZeroMask) o_4@@65 f_5@@53) (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@0) o_4@@65 f_5@@53)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| ZeroMask) o_4@@65 f_5@@53))
 :pattern ( (select (|PolymorphicMapType_12022_8038_43690#PolymorphicMapType_12022| QPMask@0) o_4@@65 f_5@@53))
))) (forall ((o_4@@66 T@Ref) (f_5@@54 T@Field_8042_53) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ZeroMask) o_4@@66 f_5@@54) (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@0) o_4@@66 f_5@@54)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| ZeroMask) o_4@@66 f_5@@54))
 :pattern ( (select (|PolymorphicMapType_12022_8042_53#PolymorphicMapType_12022| QPMask@0) o_4@@66 f_5@@54))
))) (forall ((o_4@@67 T@Ref) (f_5@@55 T@Field_8042_12075) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ZeroMask) o_4@@67 f_5@@55) (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@0) o_4@@67 f_5@@55)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| ZeroMask) o_4@@67 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_12022_8042_12075#PolymorphicMapType_12022| QPMask@0) o_4@@67 f_5@@55))
))) (forall ((o_4@@68 T@Ref) (f_5@@56 T@Field_8042_3154) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ZeroMask) o_4@@68 f_5@@56) (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@0) o_4@@68 f_5@@56)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| ZeroMask) o_4@@68 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_12022_8042_3154#PolymorphicMapType_12022| QPMask@0) o_4@@68 f_5@@56))
))) (forall ((o_4@@69 T@Ref) (f_5@@57 T@Field_18143_18144) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ZeroMask) o_4@@69 f_5@@57) (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@0) o_4@@69 f_5@@57)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| ZeroMask) o_4@@69 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_12022_8042_8043#PolymorphicMapType_12022| QPMask@0) o_4@@69 f_5@@57))
))) (forall ((o_4@@70 T@Ref) (f_5@@58 T@Field_18159_18164) ) (!  (=> true (= (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ZeroMask) o_4@@70 f_5@@58) (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@0) o_4@@70 f_5@@58)))
 :qid |stdinbpl.801:29|
 :skolemid |78|
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| ZeroMask) o_4@@70 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_12022_8042_44101#PolymorphicMapType_12022| QPMask@0) o_4@@70 f_5@@58))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (and (=> (= (ControlFlow 0 65) 62) anon37_Else_correct) (=> (= (ControlFlow 0 65) 14) anon38_Then_correct)) (=> (= (ControlFlow 0 65) 17) anon38_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 i_6) (< i_6 3))) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 i_6) (< i_6 3)) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_6 (|Seq#Length_8081| xs@@6))) (=> (< i_6 (|Seq#Length_8081| xs@@6)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon33_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1) (not (= i_1 j_1)))) (not (= (|Seq#Index_8077| xs@@6 i_1) (|Seq#Index_8077| xs@@6 j_1))))
 :qid |stdinbpl.757:20|
 :skolemid |72|
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#Index_8077| xs@@6 j_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_1) (|Seq#Index_8077| xs@@6 j_1))
 :pattern ( (|Seq#ContainsTrigger_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1) (|Seq#Index_8077| xs@@6 i_1))
 :pattern ( (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_1) (|Seq#Index_8077| xs@@6 i_1))
 :pattern ( (|Seq#Index_8077| xs@@6 i_1) (|Seq#Index_8077| xs@@6 j_1))
)) (state Heap@@32 ZeroMask)) (and (and (=> (= (ControlFlow 0 67) 65) anon35_Else_correct) (=> (= (ControlFlow 0 67) 9) anon36_Then_correct)) (=> (= (ControlFlow 0 67) 12) anon36_Else_correct)))))
(let ((anon3_correct true))
(let ((anon34_Else_correct  (=> (and (not (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_4) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6) (not (= i_4 j_6))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon34_Then_correct  (=> (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) i_4) (and (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8081| xs@@6)) j_6) (not (= i_4 j_6)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i_4 (|Seq#Length_8081| xs@@6))) (=> (< i_4 (|Seq#Length_8081| xs@@6)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_6 0)) (=> (>= j_6 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_6 (|Seq#Length_8081| xs@@6))) (=> (< j_6 (|Seq#Length_8081| xs@@6)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (< 6 (|Seq#Length_8081| xs@@6)) (state Heap@@32 ZeroMask))) (and (and (=> (= (ControlFlow 0 68) 67) anon33_Else_correct) (=> (= (ControlFlow 0 68) 2) anon34_Then_correct)) (=> (= (ControlFlow 0 68) 7) anon34_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 69) 68) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 27) (- 26))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
