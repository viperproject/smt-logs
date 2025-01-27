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
(declare-sort T@Field_11044_53 0)
(declare-sort T@Field_11057_11058 0)
(declare-sort T@Field_17061_2986 0)
(declare-sort T@Field_17161_17162 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_17177_17182 0)
(declare-sort T@Field_6377_6386 0)
(declare-sort T@Field_6377_17182 0)
(declare-sort T@Field_6385_2986 0)
(declare-sort T@Field_6385_6380 0)
(declare-sort T@Field_6385_53 0)
(declare-datatypes ((T@PolymorphicMapType_11005 0)) (((PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| (Array T@Ref T@Field_17061_2986 Real)) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| (Array T@Ref T@Field_11057_11058 Real)) (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| (Array T@Ref T@Field_17161_17162 Real)) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| (Array T@Ref T@Field_6377_6386 Real)) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| (Array T@Ref T@Field_11044_53 Real)) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| (Array T@Ref T@Field_6377_17182 Real)) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| (Array T@Ref T@Field_6385_2986 Real)) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| (Array T@Ref T@Field_6385_6380 Real)) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| (Array T@Ref T@Field_6385_53 Real)) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| (Array T@Ref T@Field_17177_17182 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11533 0)) (((PolymorphicMapType_11533 (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (Array T@Ref T@Field_17061_2986 Bool)) (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (Array T@Ref T@Field_11057_11058 Bool)) (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (Array T@Ref T@Field_11044_53 Bool)) (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (Array T@Ref T@Field_6377_6386 Bool)) (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (Array T@Ref T@Field_6377_17182 Bool)) (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (Array T@Ref T@Field_6385_2986 Bool)) (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (Array T@Ref T@Field_6385_6380 Bool)) (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (Array T@Ref T@Field_6385_53 Bool)) (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (Array T@Ref T@Field_17161_17162 Bool)) (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (Array T@Ref T@Field_17177_17182 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10984 0)) (((PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| (Array T@Ref T@Field_11044_53 Bool)) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| (Array T@Ref T@Field_11057_11058 T@Ref)) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| (Array T@Ref T@Field_17061_2986 Int)) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| (Array T@Ref T@Field_17161_17162 T@FrameType)) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| (Array T@Ref T@Field_17177_17182 T@PolymorphicMapType_11533)) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| (Array T@Ref T@Field_6377_6386 T@FrameType)) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| (Array T@Ref T@Field_6377_17182 T@PolymorphicMapType_11533)) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| (Array T@Ref T@Field_6385_2986 Int)) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| (Array T@Ref T@Field_6385_6380 T@Ref)) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| (Array T@Ref T@Field_6385_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_11044_53)
(declare-fun elem () T@Field_17061_2986)
(declare-fun next () T@Field_11057_11058)
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_3314| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_10984 T@PolymorphicMapType_10984) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10984 T@PolymorphicMapType_10984) Bool)
(declare-fun state (T@PolymorphicMapType_10984 T@PolymorphicMapType_11005) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11005) Bool)
(declare-fun lseg (T@Ref T@Ref T@Seq_2864) T@Field_17161_17162)
(declare-fun IsPredicateField_6385_6386 (T@Field_17161_17162) Bool)
(declare-fun |lseg#trigger_6385| (T@PolymorphicMapType_10984 T@Field_17161_17162) Bool)
(declare-fun |lseg#everUsed_6385| (T@Field_17161_17162) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11533)
(declare-fun getPredWandId_6385_6386 (T@Field_17161_17162) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun PredicateMaskField_6385 (T@Field_17161_17162) T@Field_17177_17182)
(declare-fun |lseg#sm| (T@Ref T@Ref T@Seq_2864) T@Field_17177_17182)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10984 T@PolymorphicMapType_10984 T@PolymorphicMapType_11005) Bool)
(declare-fun null () T@Ref)
(declare-fun HasDirectPerm_6385_6386 (T@PolymorphicMapType_11005 T@Ref T@Field_17161_17162) Bool)
(declare-fun IsPredicateField_6377_34959 (T@Field_6377_6386) Bool)
(declare-fun PredicateMaskField_6377 (T@Field_6377_6386) T@Field_6377_17182)
(declare-fun HasDirectPerm_6377_6386 (T@PolymorphicMapType_11005 T@Ref T@Field_6377_6386) Bool)
(declare-fun IsWandField_6385_38629 (T@Field_17161_17162) Bool)
(declare-fun WandMaskField_6385 (T@Field_17161_17162) T@Field_17177_17182)
(declare-fun IsWandField_6377_38272 (T@Field_6377_6386) Bool)
(declare-fun WandMaskField_6377 (T@Field_6377_6386) T@Field_6377_17182)
(declare-fun |Seq#Singleton_4157| (Int) T@Seq_2864)
(declare-fun |Seq#Append_4157| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_10984)
(declare-fun ZeroMask () T@PolymorphicMapType_11005)
(declare-fun InsidePredicate_11044_11044 (T@Field_6377_6386 T@FrameType T@Field_6377_6386 T@FrameType) Bool)
(declare-fun InsidePredicate_6385_6385 (T@Field_17161_17162 T@FrameType T@Field_17161_17162 T@FrameType) Bool)
(declare-fun IsPredicateField_6377_2986 (T@Field_17061_2986) Bool)
(declare-fun IsWandField_6377_2986 (T@Field_17061_2986) Bool)
(declare-fun IsPredicateField_6379_6380 (T@Field_11057_11058) Bool)
(declare-fun IsWandField_6379_6380 (T@Field_11057_11058) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6385_45532 (T@Field_17177_17182) Bool)
(declare-fun IsWandField_6385_45548 (T@Field_17177_17182) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6385_53 (T@Field_6385_53) Bool)
(declare-fun IsWandField_6385_53 (T@Field_6385_53) Bool)
(declare-fun IsPredicateField_6385_6380 (T@Field_6385_6380) Bool)
(declare-fun IsWandField_6385_6380 (T@Field_6385_6380) Bool)
(declare-fun IsPredicateField_6385_2986 (T@Field_6385_2986) Bool)
(declare-fun IsWandField_6385_2986 (T@Field_6385_2986) Bool)
(declare-fun IsPredicateField_6377_44701 (T@Field_6377_17182) Bool)
(declare-fun IsWandField_6377_44717 (T@Field_6377_17182) Bool)
(declare-fun IsPredicateField_6377_53 (T@Field_11044_53) Bool)
(declare-fun IsWandField_6377_53 (T@Field_11044_53) Bool)
(declare-fun HasDirectPerm_6385_34714 (T@PolymorphicMapType_11005 T@Ref T@Field_17177_17182) Bool)
(declare-fun HasDirectPerm_6385_53 (T@PolymorphicMapType_11005 T@Ref T@Field_6385_53) Bool)
(declare-fun HasDirectPerm_6385_6380 (T@PolymorphicMapType_11005 T@Ref T@Field_6385_6380) Bool)
(declare-fun HasDirectPerm_6385_2986 (T@PolymorphicMapType_11005 T@Ref T@Field_6385_2986) Bool)
(declare-fun HasDirectPerm_6377_33573 (T@PolymorphicMapType_11005 T@Ref T@Field_6377_17182) Bool)
(declare-fun HasDirectPerm_6377_53 (T@PolymorphicMapType_11005 T@Ref T@Field_11044_53) Bool)
(declare-fun HasDirectPerm_6379_6380 (T@PolymorphicMapType_11005 T@Ref T@Field_11057_11058) Bool)
(declare-fun HasDirectPerm_6377_2986 (T@PolymorphicMapType_11005 T@Ref T@Field_17061_2986) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11005 T@PolymorphicMapType_11005 T@PolymorphicMapType_11005) Bool)
(declare-fun |Seq#Equal_5157| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(declare-fun InsidePredicate_11044_6385 (T@Field_6377_6386 T@FrameType T@Field_17161_17162 T@FrameType) Bool)
(declare-fun InsidePredicate_6385_11044 (T@Field_17161_17162 T@FrameType T@Field_6377_6386 T@FrameType) Bool)
(assert (forall ((s T@Seq_2864) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2864| s)) (= (|Seq#Length_2864| (|Seq#Drop_3314| s n)) (- (|Seq#Length_2864| s) n))) (=> (< (|Seq#Length_2864| s) n) (= (|Seq#Length_2864| (|Seq#Drop_3314| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2864| (|Seq#Drop_3314| s n)) (|Seq#Length_2864| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_3314| s n)))
 :pattern ( (|Seq#Length_2864| s) (|Seq#Drop_3314| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_10984) (Heap1 T@PolymorphicMapType_10984) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10984) (Mask T@PolymorphicMapType_11005) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10984) (Heap1@@0 T@PolymorphicMapType_10984) (Heap2 T@PolymorphicMapType_10984) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((first T@Ref) (last T@Ref) (values T@Seq_2864) ) (! (IsPredicateField_6385_6386 (lseg first last values))
 :qid |stdinbpl.562:15|
 :skolemid |59|
 :pattern ( (lseg first last values))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10984) (first@@0 T@Ref) (last@@0 T@Ref) (values@@0 T@Seq_2864) ) (! (|lseg#everUsed_6385| (lseg first@@0 last@@0 values@@0))
 :qid |stdinbpl.581:15|
 :skolemid |63|
 :pattern ( (|lseg#trigger_6385| Heap@@0 (lseg first@@0 last@@0 values@@0)))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_17177_17182) ) (!  (not (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_17161_17162) ) (!  (not (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_6385_53) ) (!  (not (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6385_6380) ) (!  (not (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6385_2986) ) (!  (not (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_6377_17182) ) (!  (not (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_6377_6386) ) (!  (not (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_11044_53) ) (!  (not (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_11057_11058) ) (!  (not (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_17061_2986) ) (!  (not (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((first@@1 T@Ref) (last@@1 T@Ref) (values@@1 T@Seq_2864) ) (! (= (getPredWandId_6385_6386 (lseg first@@1 last@@1 values@@1)) 0)
 :qid |stdinbpl.566:15|
 :skolemid |60|
 :pattern ( (lseg first@@1 last@@1 values@@1))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2864| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2864| (|Seq#Drop_3314| s@@0 n@@0) j) (|Seq#Index_2864| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_3314| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@1 T@Seq_2864) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2864| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1) (|Seq#Index_2864| s@@1 n@@1)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2864| s@@1 n@@1) (|Seq#Update_2864| s@@1 i v))
)))
(assert (forall ((first@@2 T@Ref) (last@@2 T@Ref) (values@@2 T@Seq_2864) ) (! (= (PredicateMaskField_6385 (lseg first@@2 last@@2 values@@2)) (|lseg#sm| first@@2 last@@2 values@@2))
 :qid |stdinbpl.558:15|
 :skolemid |58|
 :pattern ( (PredicateMaskField_6385 (lseg first@@2 last@@2 values@@2)))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2864| s@@2)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2864| s@@2) n@@2) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) (|Seq#Length_2864| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2864| s@@2 n@@2) (|Seq#Length_2864| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2864) (x Int) ) (!  (=> (|Seq#Contains_2864| s@@3 x) (and (and (<= 0 (|Seq#Skolem_2864| s@@3 x)) (< (|Seq#Skolem_2864| s@@3 x) (|Seq#Length_2864| s@@3))) (= (|Seq#Index_2864| s@@3 (|Seq#Skolem_2864| s@@3 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@3 x))
)))
(assert (forall ((s@@4 T@Seq_2864) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3314| s@@4 n@@3) s@@4))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3314| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((first@@3 T@Ref) (last@@3 T@Ref) (values@@3 T@Seq_2864) (first2 T@Ref) (last2 T@Ref) (values2 T@Seq_2864) ) (!  (=> (= (lseg first@@3 last@@3 values@@3) (lseg first2 last2 values2)) (and (= first@@3 first2) (and (= last@@3 last2) (= values@@3 values2))))
 :qid |stdinbpl.572:15|
 :skolemid |61|
 :pattern ( (lseg first@@3 last@@3 values@@3) (lseg first2 last2 values2))
)))
(assert (forall ((first@@4 T@Ref) (last@@4 T@Ref) (values@@4 T@Seq_2864) (first2@@0 T@Ref) (last2@@0 T@Ref) (values2@@0 T@Seq_2864) ) (!  (=> (= (|lseg#sm| first@@4 last@@4 values@@4) (|lseg#sm| first2@@0 last2@@0 values2@@0)) (and (= first@@4 first2@@0) (and (= last@@4 last2@@0) (= values@@4 values2@@0))))
 :qid |stdinbpl.576:15|
 :skolemid |62|
 :pattern ( (|lseg#sm| first@@4 last@@4 values@@4) (|lseg#sm| first2@@0 last2@@0 values2@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10984) (ExhaleHeap T@PolymorphicMapType_10984) (Mask@@0 T@PolymorphicMapType_11005) (pm_f_1 T@Field_17161_17162) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6385_6386 Mask@@0 null pm_f_1) (IsPredicateField_6385_6386 pm_f_1)) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@1) null (PredicateMaskField_6385 pm_f_1)) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap) null (PredicateMaskField_6385 pm_f_1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_6385_6386 pm_f_1) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap) null (PredicateMaskField_6385 pm_f_1)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10984) (ExhaleHeap@@0 T@PolymorphicMapType_10984) (Mask@@1 T@PolymorphicMapType_11005) (pm_f_1@@0 T@Field_6377_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6377_6386 Mask@@1 null pm_f_1@@0) (IsPredicateField_6377_34959 pm_f_1@@0)) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@2) null (PredicateMaskField_6377 pm_f_1@@0)) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@0) null (PredicateMaskField_6377 pm_f_1@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_6377_34959 pm_f_1@@0) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@0) null (PredicateMaskField_6377 pm_f_1@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10984) (ExhaleHeap@@1 T@PolymorphicMapType_10984) (Mask@@2 T@PolymorphicMapType_11005) (pm_f_1@@1 T@Field_17161_17162) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_6385_6386 Mask@@2 null pm_f_1@@1) (IsWandField_6385_38629 pm_f_1@@1)) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@3) null (WandMaskField_6385 pm_f_1@@1)) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@1) null (WandMaskField_6385 pm_f_1@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_6385_38629 pm_f_1@@1) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@1) null (WandMaskField_6385 pm_f_1@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10984) (ExhaleHeap@@2 T@PolymorphicMapType_10984) (Mask@@3 T@PolymorphicMapType_11005) (pm_f_1@@2 T@Field_6377_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_6377_6386 Mask@@3 null pm_f_1@@2) (IsWandField_6377_38272 pm_f_1@@2)) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@4) null (WandMaskField_6377 pm_f_1@@2)) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@2) null (WandMaskField_6377 pm_f_1@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_6377_38272 pm_f_1@@2) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@2) null (WandMaskField_6377 pm_f_1@@2)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_4157| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_4157| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_2864) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2864| s@@5))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2) (|Seq#Index_2864| s@@5 j@@2)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2864| s@@5 j@@2) (|Seq#Take_2864| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_2864) (t T@Seq_2864) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2864| s@@6))) (< n@@5 (|Seq#Length_2864| (|Seq#Append_4157| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)) (|Seq#Length_2864| s@@6)) n@@5) (= (|Seq#Take_2864| (|Seq#Append_4157| s@@6 t) n@@5) (|Seq#Append_4157| s@@6 (|Seq#Take_2864| t (|Seq#Sub| n@@5 (|Seq#Length_2864| s@@6)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_4157| s@@6 t) n@@5))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10984) (ExhaleHeap@@3 T@PolymorphicMapType_10984) (Mask@@4 T@PolymorphicMapType_11005) (pm_f_1@@3 T@Field_17161_17162) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_6385_6386 Mask@@4 null pm_f_1@@3) (IsPredicateField_6385_6386 pm_f_1@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_1 T@Ref) (f_9 T@Field_17061_2986) ) (!  (=> (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1 f_9) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@5) o2_1 f_9) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1 f_9))
)) (forall ((o2_1@@0 T@Ref) (f_9@@0 T@Field_11057_11058) ) (!  (=> (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@0 f_9@@0) (= (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@5) o2_1@@0 f_9@@0) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@0 f_9@@0))
))) (forall ((o2_1@@1 T@Ref) (f_9@@1 T@Field_11044_53) ) (!  (=> (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@1 f_9@@1) (= (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@5) o2_1@@1 f_9@@1) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@1 f_9@@1))
))) (forall ((o2_1@@2 T@Ref) (f_9@@2 T@Field_6377_6386) ) (!  (=> (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@2 f_9@@2) (= (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@5) o2_1@@2 f_9@@2) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@2 f_9@@2))
))) (forall ((o2_1@@3 T@Ref) (f_9@@3 T@Field_6377_17182) ) (!  (=> (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@3 f_9@@3) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@5) o2_1@@3 f_9@@3) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@3 f_9@@3))
))) (forall ((o2_1@@4 T@Ref) (f_9@@4 T@Field_6385_2986) ) (!  (=> (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@4 f_9@@4) (= (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@5) o2_1@@4 f_9@@4) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@4 f_9@@4)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@4 f_9@@4))
))) (forall ((o2_1@@5 T@Ref) (f_9@@5 T@Field_6385_6380) ) (!  (=> (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@5 f_9@@5) (= (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@5) o2_1@@5 f_9@@5) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@5 f_9@@5)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@5 f_9@@5))
))) (forall ((o2_1@@6 T@Ref) (f_9@@6 T@Field_6385_53) ) (!  (=> (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@6 f_9@@6) (= (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@5) o2_1@@6 f_9@@6) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@6 f_9@@6)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@6 f_9@@6))
))) (forall ((o2_1@@7 T@Ref) (f_9@@7 T@Field_17161_17162) ) (!  (=> (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@7 f_9@@7) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@5) o2_1@@7 f_9@@7) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@7 f_9@@7)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@7 f_9@@7))
))) (forall ((o2_1@@8 T@Ref) (f_9@@8 T@Field_17177_17182) ) (!  (=> (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) null (PredicateMaskField_6385 pm_f_1@@3))) o2_1@@8 f_9@@8) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@5) o2_1@@8 f_9@@8) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@8 f_9@@8)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@3) o2_1@@8 f_9@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_6385_6386 pm_f_1@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10984) (ExhaleHeap@@4 T@PolymorphicMapType_10984) (Mask@@5 T@PolymorphicMapType_11005) (pm_f_1@@4 T@Field_6377_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_6377_6386 Mask@@5 null pm_f_1@@4) (IsPredicateField_6377_34959 pm_f_1@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@9 T@Ref) (f_9@@9 T@Field_17061_2986) ) (!  (=> (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@9 f_9@@9) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@6) o2_1@@9 f_9@@9) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@9 f_9@@9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@9 f_9@@9))
)) (forall ((o2_1@@10 T@Ref) (f_9@@10 T@Field_11057_11058) ) (!  (=> (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@10 f_9@@10) (= (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@6) o2_1@@10 f_9@@10) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@10 f_9@@10)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@10 f_9@@10))
))) (forall ((o2_1@@11 T@Ref) (f_9@@11 T@Field_11044_53) ) (!  (=> (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@11 f_9@@11) (= (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@6) o2_1@@11 f_9@@11) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@11 f_9@@11)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@11 f_9@@11))
))) (forall ((o2_1@@12 T@Ref) (f_9@@12 T@Field_6377_6386) ) (!  (=> (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@12 f_9@@12) (= (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@6) o2_1@@12 f_9@@12) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@12 f_9@@12)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@12 f_9@@12))
))) (forall ((o2_1@@13 T@Ref) (f_9@@13 T@Field_6377_17182) ) (!  (=> (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@13 f_9@@13) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) o2_1@@13 f_9@@13) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@13 f_9@@13)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@13 f_9@@13))
))) (forall ((o2_1@@14 T@Ref) (f_9@@14 T@Field_6385_2986) ) (!  (=> (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@14 f_9@@14) (= (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@6) o2_1@@14 f_9@@14) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@14 f_9@@14)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@14 f_9@@14))
))) (forall ((o2_1@@15 T@Ref) (f_9@@15 T@Field_6385_6380) ) (!  (=> (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@15 f_9@@15) (= (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@6) o2_1@@15 f_9@@15) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@15 f_9@@15)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@15 f_9@@15))
))) (forall ((o2_1@@16 T@Ref) (f_9@@16 T@Field_6385_53) ) (!  (=> (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@16 f_9@@16) (= (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@6) o2_1@@16 f_9@@16) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@16 f_9@@16)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@16 f_9@@16))
))) (forall ((o2_1@@17 T@Ref) (f_9@@17 T@Field_17161_17162) ) (!  (=> (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@17 f_9@@17) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@6) o2_1@@17 f_9@@17) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@17 f_9@@17)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@17 f_9@@17))
))) (forall ((o2_1@@18 T@Ref) (f_9@@18 T@Field_17177_17182) ) (!  (=> (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@6) null (PredicateMaskField_6377 pm_f_1@@4))) o2_1@@18 f_9@@18) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@6) o2_1@@18 f_9@@18) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@18 f_9@@18)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@4) o2_1@@18 f_9@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_6377_34959 pm_f_1@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10984) (ExhaleHeap@@5 T@PolymorphicMapType_10984) (Mask@@6 T@PolymorphicMapType_11005) (pm_f_1@@5 T@Field_17161_17162) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_6385_6386 Mask@@6 null pm_f_1@@5) (IsWandField_6385_38629 pm_f_1@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@19 T@Ref) (f_9@@19 T@Field_17061_2986) ) (!  (=> (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@19 f_9@@19) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@7) o2_1@@19 f_9@@19) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@19 f_9@@19)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@19 f_9@@19))
)) (forall ((o2_1@@20 T@Ref) (f_9@@20 T@Field_11057_11058) ) (!  (=> (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@20 f_9@@20) (= (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@7) o2_1@@20 f_9@@20) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@20 f_9@@20)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@20 f_9@@20))
))) (forall ((o2_1@@21 T@Ref) (f_9@@21 T@Field_11044_53) ) (!  (=> (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@21 f_9@@21) (= (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@7) o2_1@@21 f_9@@21) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@21 f_9@@21)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@21 f_9@@21))
))) (forall ((o2_1@@22 T@Ref) (f_9@@22 T@Field_6377_6386) ) (!  (=> (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@22 f_9@@22) (= (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@7) o2_1@@22 f_9@@22) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@22 f_9@@22)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@22 f_9@@22))
))) (forall ((o2_1@@23 T@Ref) (f_9@@23 T@Field_6377_17182) ) (!  (=> (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@23 f_9@@23) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@7) o2_1@@23 f_9@@23) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@23 f_9@@23)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@23 f_9@@23))
))) (forall ((o2_1@@24 T@Ref) (f_9@@24 T@Field_6385_2986) ) (!  (=> (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@24 f_9@@24) (= (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@7) o2_1@@24 f_9@@24) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@24 f_9@@24)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@24 f_9@@24))
))) (forall ((o2_1@@25 T@Ref) (f_9@@25 T@Field_6385_6380) ) (!  (=> (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@25 f_9@@25) (= (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@7) o2_1@@25 f_9@@25) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@25 f_9@@25)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@25 f_9@@25))
))) (forall ((o2_1@@26 T@Ref) (f_9@@26 T@Field_6385_53) ) (!  (=> (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@26 f_9@@26) (= (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@7) o2_1@@26 f_9@@26) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@26 f_9@@26)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@26 f_9@@26))
))) (forall ((o2_1@@27 T@Ref) (f_9@@27 T@Field_17161_17162) ) (!  (=> (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@27 f_9@@27) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@7) o2_1@@27 f_9@@27) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@27 f_9@@27)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@27 f_9@@27))
))) (forall ((o2_1@@28 T@Ref) (f_9@@28 T@Field_17177_17182) ) (!  (=> (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) null (WandMaskField_6385 pm_f_1@@5))) o2_1@@28 f_9@@28) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@7) o2_1@@28 f_9@@28) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@28 f_9@@28)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@5) o2_1@@28 f_9@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_6385_38629 pm_f_1@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10984) (ExhaleHeap@@6 T@PolymorphicMapType_10984) (Mask@@7 T@PolymorphicMapType_11005) (pm_f_1@@6 T@Field_6377_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_6377_6386 Mask@@7 null pm_f_1@@6) (IsWandField_6377_38272 pm_f_1@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_1@@29 T@Ref) (f_9@@29 T@Field_17061_2986) ) (!  (=> (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@29 f_9@@29) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@8) o2_1@@29 f_9@@29) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@29 f_9@@29)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@29 f_9@@29))
)) (forall ((o2_1@@30 T@Ref) (f_9@@30 T@Field_11057_11058) ) (!  (=> (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@30 f_9@@30) (= (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@8) o2_1@@30 f_9@@30) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@30 f_9@@30)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@30 f_9@@30))
))) (forall ((o2_1@@31 T@Ref) (f_9@@31 T@Field_11044_53) ) (!  (=> (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@31 f_9@@31) (= (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@8) o2_1@@31 f_9@@31) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@31 f_9@@31)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@31 f_9@@31))
))) (forall ((o2_1@@32 T@Ref) (f_9@@32 T@Field_6377_6386) ) (!  (=> (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@32 f_9@@32) (= (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@8) o2_1@@32 f_9@@32) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@32 f_9@@32)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@32 f_9@@32))
))) (forall ((o2_1@@33 T@Ref) (f_9@@33 T@Field_6377_17182) ) (!  (=> (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@33 f_9@@33) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) o2_1@@33 f_9@@33) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@33 f_9@@33)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@33 f_9@@33))
))) (forall ((o2_1@@34 T@Ref) (f_9@@34 T@Field_6385_2986) ) (!  (=> (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@34 f_9@@34) (= (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@8) o2_1@@34 f_9@@34) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@34 f_9@@34)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@34 f_9@@34))
))) (forall ((o2_1@@35 T@Ref) (f_9@@35 T@Field_6385_6380) ) (!  (=> (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@35 f_9@@35) (= (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@8) o2_1@@35 f_9@@35) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@35 f_9@@35)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@35 f_9@@35))
))) (forall ((o2_1@@36 T@Ref) (f_9@@36 T@Field_6385_53) ) (!  (=> (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@36 f_9@@36) (= (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@8) o2_1@@36 f_9@@36) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@36 f_9@@36)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@36 f_9@@36))
))) (forall ((o2_1@@37 T@Ref) (f_9@@37 T@Field_17161_17162) ) (!  (=> (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@37 f_9@@37) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@8) o2_1@@37 f_9@@37) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@37 f_9@@37)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@37 f_9@@37))
))) (forall ((o2_1@@38 T@Ref) (f_9@@38 T@Field_17177_17182) ) (!  (=> (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@8) null (WandMaskField_6377 pm_f_1@@6))) o2_1@@38 f_9@@38) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@8) o2_1@@38 f_9@@38) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@38 f_9@@38)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@6) o2_1@@38 f_9@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_6377_38272 pm_f_1@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10984) (ExhaleHeap@@7 T@PolymorphicMapType_10984) (Mask@@8 T@PolymorphicMapType_11005) (o_4 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@9) o_4 $allocated) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@7) o_4 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@7) o_4 $allocated))
)))
(assert (forall ((p T@Field_6377_6386) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11044_11044 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11044_11044 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_17161_17162) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_6385_6385 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6385_6385 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((s0 T@Seq_2864) (s1 T@Seq_2864) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_2864|)) (not (= s1 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0) n@@6)) (< n@@6 (|Seq#Length_2864| (|Seq#Append_4157| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2864| s0)) (|Seq#Length_2864| s0)) n@@6) (= (|Seq#Index_2864| (|Seq#Append_4157| s0 s1) n@@6) (|Seq#Index_2864| s1 (|Seq#Sub| n@@6 (|Seq#Length_2864| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_4157| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_6377_2986 elem)))
(assert  (not (IsWandField_6377_2986 elem)))
(assert  (not (IsPredicateField_6379_6380 next)))
(assert  (not (IsWandField_6379_6380 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10984) (ExhaleHeap@@8 T@PolymorphicMapType_10984) (Mask@@9 T@PolymorphicMapType_11005) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11005) (o_2@@9 T@Ref) (f_4@@9 T@Field_17177_17182) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_6385_45532 f_4@@9))) (not (IsWandField_6385_45548 f_4@@9))) (<= (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11005) (o_2@@10 T@Ref) (f_4@@10 T@Field_6385_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6385_53 f_4@@10))) (not (IsWandField_6385_53 f_4@@10))) (<= (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11005) (o_2@@11 T@Ref) (f_4@@11 T@Field_17161_17162) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6385_6386 f_4@@11))) (not (IsWandField_6385_38629 f_4@@11))) (<= (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11005) (o_2@@12 T@Ref) (f_4@@12 T@Field_6385_6380) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_6385_6380 f_4@@12))) (not (IsWandField_6385_6380 f_4@@12))) (<= (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11005) (o_2@@13 T@Ref) (f_4@@13 T@Field_6385_2986) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6385_2986 f_4@@13))) (not (IsWandField_6385_2986 f_4@@13))) (<= (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11005) (o_2@@14 T@Ref) (f_4@@14 T@Field_6377_17182) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6377_44701 f_4@@14))) (not (IsWandField_6377_44717 f_4@@14))) (<= (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11005) (o_2@@15 T@Ref) (f_4@@15 T@Field_11044_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_6377_53 f_4@@15))) (not (IsWandField_6377_53 f_4@@15))) (<= (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11005) (o_2@@16 T@Ref) (f_4@@16 T@Field_6377_6386) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_6377_34959 f_4@@16))) (not (IsWandField_6377_38272 f_4@@16))) (<= (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11005) (o_2@@17 T@Ref) (f_4@@17 T@Field_11057_11058) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_6379_6380 f_4@@17))) (not (IsWandField_6379_6380 f_4@@17))) (<= (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11005) (o_2@@18 T@Ref) (f_4@@18 T@Field_17061_2986) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_6377_2986 f_4@@18))) (not (IsWandField_6377_2986 f_4@@18))) (<= (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_11005) (o_2@@19 T@Ref) (f_4@@19 T@Field_17177_17182) ) (! (= (HasDirectPerm_6385_34714 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6385_34714 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11005) (o_2@@20 T@Ref) (f_4@@20 T@Field_6385_53) ) (! (= (HasDirectPerm_6385_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6385_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11005) (o_2@@21 T@Ref) (f_4@@21 T@Field_17161_17162) ) (! (= (HasDirectPerm_6385_6386 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6385_6386 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11005) (o_2@@22 T@Ref) (f_4@@22 T@Field_6385_6380) ) (! (= (HasDirectPerm_6385_6380 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6385_6380 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11005) (o_2@@23 T@Ref) (f_4@@23 T@Field_6385_2986) ) (! (= (HasDirectPerm_6385_2986 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6385_2986 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11005) (o_2@@24 T@Ref) (f_4@@24 T@Field_6377_17182) ) (! (= (HasDirectPerm_6377_33573 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6377_33573 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11005) (o_2@@25 T@Ref) (f_4@@25 T@Field_11044_53) ) (! (= (HasDirectPerm_6377_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6377_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11005) (o_2@@26 T@Ref) (f_4@@26 T@Field_6377_6386) ) (! (= (HasDirectPerm_6377_6386 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6377_6386 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11005) (o_2@@27 T@Ref) (f_4@@27 T@Field_11057_11058) ) (! (= (HasDirectPerm_6379_6380 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6379_6380 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_11005) (o_2@@28 T@Ref) (f_4@@28 T@Field_17061_2986) ) (! (= (HasDirectPerm_6377_2986 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6377_2986 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10984) (ExhaleHeap@@9 T@PolymorphicMapType_10984) (Mask@@30 T@PolymorphicMapType_11005) (o_4@@0 T@Ref) (f_9@@39 T@Field_17177_17182) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_6385_34714 Mask@@30 o_4@@0 f_9@@39) (= (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@11) o_4@@0 f_9@@39) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@9) o_4@@0 f_9@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| ExhaleHeap@@9) o_4@@0 f_9@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10984) (ExhaleHeap@@10 T@PolymorphicMapType_10984) (Mask@@31 T@PolymorphicMapType_11005) (o_4@@1 T@Ref) (f_9@@40 T@Field_6385_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_6385_53 Mask@@31 o_4@@1 f_9@@40) (= (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@12) o_4@@1 f_9@@40) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@10) o_4@@1 f_9@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| ExhaleHeap@@10) o_4@@1 f_9@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10984) (ExhaleHeap@@11 T@PolymorphicMapType_10984) (Mask@@32 T@PolymorphicMapType_11005) (o_4@@2 T@Ref) (f_9@@41 T@Field_17161_17162) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_6385_6386 Mask@@32 o_4@@2 f_9@@41) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@13) o_4@@2 f_9@@41) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@11) o_4@@2 f_9@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| ExhaleHeap@@11) o_4@@2 f_9@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_10984) (ExhaleHeap@@12 T@PolymorphicMapType_10984) (Mask@@33 T@PolymorphicMapType_11005) (o_4@@3 T@Ref) (f_9@@42 T@Field_6385_6380) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_6385_6380 Mask@@33 o_4@@3 f_9@@42) (= (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@14) o_4@@3 f_9@@42) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@12) o_4@@3 f_9@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| ExhaleHeap@@12) o_4@@3 f_9@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_10984) (ExhaleHeap@@13 T@PolymorphicMapType_10984) (Mask@@34 T@PolymorphicMapType_11005) (o_4@@4 T@Ref) (f_9@@43 T@Field_6385_2986) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_6385_2986 Mask@@34 o_4@@4 f_9@@43) (= (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@15) o_4@@4 f_9@@43) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@13) o_4@@4 f_9@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| ExhaleHeap@@13) o_4@@4 f_9@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_10984) (ExhaleHeap@@14 T@PolymorphicMapType_10984) (Mask@@35 T@PolymorphicMapType_11005) (o_4@@5 T@Ref) (f_9@@44 T@Field_6377_17182) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_6377_33573 Mask@@35 o_4@@5 f_9@@44) (= (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@16) o_4@@5 f_9@@44) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@14) o_4@@5 f_9@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| ExhaleHeap@@14) o_4@@5 f_9@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_10984) (ExhaleHeap@@15 T@PolymorphicMapType_10984) (Mask@@36 T@PolymorphicMapType_11005) (o_4@@6 T@Ref) (f_9@@45 T@Field_11044_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_6377_53 Mask@@36 o_4@@6 f_9@@45) (= (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@17) o_4@@6 f_9@@45) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@15) o_4@@6 f_9@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| ExhaleHeap@@15) o_4@@6 f_9@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_10984) (ExhaleHeap@@16 T@PolymorphicMapType_10984) (Mask@@37 T@PolymorphicMapType_11005) (o_4@@7 T@Ref) (f_9@@46 T@Field_6377_6386) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_6377_6386 Mask@@37 o_4@@7 f_9@@46) (= (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@18) o_4@@7 f_9@@46) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@16) o_4@@7 f_9@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| ExhaleHeap@@16) o_4@@7 f_9@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_10984) (ExhaleHeap@@17 T@PolymorphicMapType_10984) (Mask@@38 T@PolymorphicMapType_11005) (o_4@@8 T@Ref) (f_9@@47 T@Field_11057_11058) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_6379_6380 Mask@@38 o_4@@8 f_9@@47) (= (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@19) o_4@@8 f_9@@47) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@17) o_4@@8 f_9@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| ExhaleHeap@@17) o_4@@8 f_9@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_10984) (ExhaleHeap@@18 T@PolymorphicMapType_10984) (Mask@@39 T@PolymorphicMapType_11005) (o_4@@9 T@Ref) (f_9@@48 T@Field_17061_2986) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_6377_2986 Mask@@39 o_4@@9 f_9@@48) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@20) o_4@@9 f_9@@48) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@18) o_4@@9 f_9@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| ExhaleHeap@@18) o_4@@9 f_9@@48))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_4157| s0@@0 s1@@0)) (+ (|Seq#Length_2864| s0@@0) (|Seq#Length_2864| s1@@0))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_4157| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_17177_17182) ) (! (= (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_6385_53) ) (! (= (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_17161_17162) ) (! (= (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_6385_6380) ) (! (= (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_6385_2986) ) (! (= (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_6377_17182) ) (! (= (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_11044_53) ) (! (= (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_6377_6386) ) (! (= (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_11057_11058) ) (! (= (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_17061_2986) ) (! (= (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((s@@7 T@Seq_2864) (t@@0 T@Seq_2864) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2864| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7)) (|Seq#Length_2864| s@@7)) n@@7) (= (|Seq#Drop_3314| (|Seq#Append_4157| s@@7 t@@0) n@@7) (|Seq#Drop_3314| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2864| s@@7))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3314| (|Seq#Append_4157| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11005) (SummandMask1 T@PolymorphicMapType_11005) (SummandMask2 T@PolymorphicMapType_11005) (o_2@@39 T@Ref) (f_4@@39 T@Field_17177_17182) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11005) (SummandMask1@@0 T@PolymorphicMapType_11005) (SummandMask2@@0 T@PolymorphicMapType_11005) (o_2@@40 T@Ref) (f_4@@40 T@Field_6385_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11005) (SummandMask1@@1 T@PolymorphicMapType_11005) (SummandMask2@@1 T@PolymorphicMapType_11005) (o_2@@41 T@Ref) (f_4@@41 T@Field_17161_17162) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11005) (SummandMask1@@2 T@PolymorphicMapType_11005) (SummandMask2@@2 T@PolymorphicMapType_11005) (o_2@@42 T@Ref) (f_4@@42 T@Field_6385_6380) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11005) (SummandMask1@@3 T@PolymorphicMapType_11005) (SummandMask2@@3 T@PolymorphicMapType_11005) (o_2@@43 T@Ref) (f_4@@43 T@Field_6385_2986) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_11005) (SummandMask1@@4 T@PolymorphicMapType_11005) (SummandMask2@@4 T@PolymorphicMapType_11005) (o_2@@44 T@Ref) (f_4@@44 T@Field_6377_17182) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_11005) (SummandMask1@@5 T@PolymorphicMapType_11005) (SummandMask2@@5 T@PolymorphicMapType_11005) (o_2@@45 T@Ref) (f_4@@45 T@Field_11044_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_11005) (SummandMask1@@6 T@PolymorphicMapType_11005) (SummandMask2@@6 T@PolymorphicMapType_11005) (o_2@@46 T@Ref) (f_4@@46 T@Field_6377_6386) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_11005) (SummandMask1@@7 T@PolymorphicMapType_11005) (SummandMask2@@7 T@PolymorphicMapType_11005) (o_2@@47 T@Ref) (f_4@@47 T@Field_11057_11058) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_11005) (SummandMask1@@8 T@PolymorphicMapType_11005) (SummandMask2@@8 T@PolymorphicMapType_11005) (o_2@@48 T@Ref) (f_4@@48 T@Field_17061_2986) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2864) (b T@Seq_2864) ) (!  (=> (|Seq#Equal_5157| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_5157| a b))
)))
(assert (forall ((s@@8 T@Seq_2864) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2864| s@@8))) (|Seq#ContainsTrigger_2864| s@@8 (|Seq#Index_2864| s@@8 i@@2)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2864) (s1@@1 T@Seq_2864) ) (!  (and (=> (= s0@@1 |Seq#Empty_2864|) (= (|Seq#Append_4157| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_2864|) (= (|Seq#Append_4157| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4157| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_4157| t@@1) 0) t@@1)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_4157| t@@1))
)))
(assert (forall ((s@@9 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@9))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (|Seq#Equal_5157| s0@@2 s1@@2) (and (= (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2864| s0@@2))) (= (|Seq#Index_2864| s0@@2 j@@4) (|Seq#Index_2864| s1@@2 j@@4)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2864| s1@@2 j@@4))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_5157| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_4157| t@@2)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_4157| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2864) (t@@3 T@Seq_2864) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2864| s@@10))) (= (|Seq#Take_2864| (|Seq#Append_4157| s@@10 t@@3) n@@8) (|Seq#Take_2864| s@@10 n@@8)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_4157| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2864) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2864| s@@11))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)) (|Seq#Length_2864| s@@11)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2864| s@@11) (|Seq#Update_2864| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_10984) (o_3 T@Ref) (f_10 T@Field_17177_17182) (v@@2 T@PolymorphicMapType_11533) ) (! (succHeap Heap@@21 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@21) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@21) o_3 f_10 v@@2) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@21) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@21) o_3 f_10 v@@2) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@21) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_10984) (o_3@@0 T@Ref) (f_10@@0 T@Field_17161_17162) (v@@3 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@22) (store (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@22) o_3@@0 f_10@@0 v@@3) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@22) (store (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@22) o_3@@0 f_10@@0 v@@3) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@22) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_10984) (o_3@@1 T@Ref) (f_10@@1 T@Field_6385_2986) (v@@4 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@23) (store (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@23) o_3@@1 f_10@@1 v@@4) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@23) (store (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@23) o_3@@1 f_10@@1 v@@4) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@23) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_10984) (o_3@@2 T@Ref) (f_10@@2 T@Field_6385_6380) (v@@5 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@24) (store (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@24) o_3@@2 f_10@@2 v@@5) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@24) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@24) (store (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@24) o_3@@2 f_10@@2 v@@5) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_10984) (o_3@@3 T@Ref) (f_10@@3 T@Field_6385_53) (v@@6 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@25) (store (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@25) o_3@@3 f_10@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@25) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@25) (store (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@25) o_3@@3 f_10@@3 v@@6)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_10984) (o_3@@4 T@Ref) (f_10@@4 T@Field_6377_17182) (v@@7 T@PolymorphicMapType_11533) ) (! (succHeap Heap@@26 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@26) (store (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@26) o_3@@4 f_10@@4 v@@7) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@26) (store (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@26) o_3@@4 f_10@@4 v@@7) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@26) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_10984) (o_3@@5 T@Ref) (f_10@@5 T@Field_6377_6386) (v@@8 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@27) (store (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@27) o_3@@5 f_10@@5 v@@8) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@27) (store (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@27) o_3@@5 f_10@@5 v@@8) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@27) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_10984) (o_3@@6 T@Ref) (f_10@@6 T@Field_17061_2986) (v@@9 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@28) (store (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@28) o_3@@6 f_10@@6 v@@9) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@28) (store (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@28) o_3@@6 f_10@@6 v@@9) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@28) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_10984) (o_3@@7 T@Ref) (f_10@@7 T@Field_11057_11058) (v@@10 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@29) (store (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@29) o_3@@7 f_10@@7 v@@10) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@29) (store (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@29) o_3@@7 f_10@@7 v@@10) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@29) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_10984) (o_3@@8 T@Ref) (f_10@@8 T@Field_11044_53) (v@@11 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_10984 (store (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@30) o_3@@8 f_10@@8 v@@11) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10984 (store (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@30) o_3@@8 f_10@@8 v@@11) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@30) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@30)))
)))
(assert (forall ((s@@12 T@Seq_2864) (t@@4 T@Seq_2864) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2864| s@@12))) (= (|Seq#Drop_3314| (|Seq#Append_4157| s@@12 t@@4) n@@9) (|Seq#Append_4157| (|Seq#Drop_3314| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3314| (|Seq#Append_4157| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2864) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2864| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2864| (|Seq#Drop_3314| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2864| s@@13 i@@4))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3314| s@@13 n@@10) (|Seq#Index_2864| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2864) (s1@@3 T@Seq_2864) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_2864|)) (not (= s1@@3 |Seq#Empty_2864|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2864| s0@@3))) (= (|Seq#Index_2864| (|Seq#Append_4157| s0@@3 s1@@3) n@@11) (|Seq#Index_2864| s0@@3 n@@11)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_4157| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2864| s0@@3 n@@11) (|Seq#Append_4157| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_2864|)) (not (= s1@@4 |Seq#Empty_2864|))) (<= 0 m)) (< m (|Seq#Length_2864| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2864| s0@@4)) (|Seq#Length_2864| s0@@4)) m) (= (|Seq#Index_2864| (|Seq#Append_4157| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2864| s0@@4))) (|Seq#Index_2864| s1@@4 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@4 m) (|Seq#Append_4157| s0@@4 s1@@4))
)))
(assert (forall ((o_3@@9 T@Ref) (f_8 T@Field_11057_11058) (Heap@@31 T@PolymorphicMapType_10984) ) (!  (=> (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@31) o_3@@9 $allocated) (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@31) (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@31) o_3@@9 f_8) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@31) o_3@@9 f_8))
)))
(assert (forall ((s@@14 T@Seq_2864) (x@@1 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2864| s@@14))) (= (|Seq#Index_2864| s@@14 i@@5) x@@1)) (|Seq#Contains_2864| s@@14 x@@1))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@14 x@@1) (|Seq#Index_2864| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_5157| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_5157| s0@@5 s1@@5))) (not (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_5157| s0@@5 s1@@5))) (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5))) (= (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#SkolemDiff_2864| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2864| s0@@5 s1@@5) (|Seq#Length_2864| s0@@5))) (not (= (|Seq#Index_2864| s0@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5)) (|Seq#Index_2864| s1@@5 (|Seq#SkolemDiff_2864| s0@@5 s1@@5))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_5157| s0@@5 s1@@5))
)))
(assert (forall ((p@@2 T@Field_6377_6386) (v_1@@1 T@FrameType) (q T@Field_6377_6386) (w@@1 T@FrameType) (r T@Field_6377_6386) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11044_11044 p@@2 v_1@@1 q w@@1) (InsidePredicate_11044_11044 q w@@1 r u)) (InsidePredicate_11044_11044 p@@2 v_1@@1 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11044_11044 p@@2 v_1@@1 q w@@1) (InsidePredicate_11044_11044 q w@@1 r u))
)))
(assert (forall ((p@@3 T@Field_6377_6386) (v_1@@2 T@FrameType) (q@@0 T@Field_6377_6386) (w@@2 T@FrameType) (r@@0 T@Field_17161_17162) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_11044_11044 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11044_6385 q@@0 w@@2 r@@0 u@@0)) (InsidePredicate_11044_6385 p@@3 v_1@@2 r@@0 u@@0))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11044_11044 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_11044_6385 q@@0 w@@2 r@@0 u@@0))
)))
(assert (forall ((p@@4 T@Field_6377_6386) (v_1@@3 T@FrameType) (q@@1 T@Field_17161_17162) (w@@3 T@FrameType) (r@@1 T@Field_6377_6386) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_11044_6385 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6385_11044 q@@1 w@@3 r@@1 u@@1)) (InsidePredicate_11044_11044 p@@4 v_1@@3 r@@1 u@@1))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11044_6385 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_6385_11044 q@@1 w@@3 r@@1 u@@1))
)))
(assert (forall ((p@@5 T@Field_6377_6386) (v_1@@4 T@FrameType) (q@@2 T@Field_17161_17162) (w@@4 T@FrameType) (r@@2 T@Field_17161_17162) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_11044_6385 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6385_6385 q@@2 w@@4 r@@2 u@@2)) (InsidePredicate_11044_6385 p@@5 v_1@@4 r@@2 u@@2))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11044_6385 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_6385_6385 q@@2 w@@4 r@@2 u@@2))
)))
(assert (forall ((p@@6 T@Field_17161_17162) (v_1@@5 T@FrameType) (q@@3 T@Field_6377_6386) (w@@5 T@FrameType) (r@@3 T@Field_6377_6386) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_6385_11044 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11044_11044 q@@3 w@@5 r@@3 u@@3)) (InsidePredicate_6385_11044 p@@6 v_1@@5 r@@3 u@@3))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6385_11044 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_11044_11044 q@@3 w@@5 r@@3 u@@3))
)))
(assert (forall ((p@@7 T@Field_17161_17162) (v_1@@6 T@FrameType) (q@@4 T@Field_6377_6386) (w@@6 T@FrameType) (r@@4 T@Field_17161_17162) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_6385_11044 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11044_6385 q@@4 w@@6 r@@4 u@@4)) (InsidePredicate_6385_6385 p@@7 v_1@@6 r@@4 u@@4))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6385_11044 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_11044_6385 q@@4 w@@6 r@@4 u@@4))
)))
(assert (forall ((p@@8 T@Field_17161_17162) (v_1@@7 T@FrameType) (q@@5 T@Field_17161_17162) (w@@7 T@FrameType) (r@@5 T@Field_6377_6386) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_6385_6385 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6385_11044 q@@5 w@@7 r@@5 u@@5)) (InsidePredicate_6385_11044 p@@8 v_1@@7 r@@5 u@@5))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6385_6385 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_6385_11044 q@@5 w@@7 r@@5 u@@5))
)))
(assert (forall ((p@@9 T@Field_17161_17162) (v_1@@8 T@FrameType) (q@@6 T@Field_17161_17162) (w@@8 T@FrameType) (r@@6 T@Field_17161_17162) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_6385_6385 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6385_6385 q@@6 w@@8 r@@6 u@@6)) (InsidePredicate_6385_6385 p@@9 v_1@@8 r@@6 u@@6))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6385_6385 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_6385_6385 q@@6 w@@8 r@@6 u@@6))
)))
(assert (forall ((s@@15 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@15) 0) (= s@@15 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2864| s@@16 n@@12) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@7 () T@PolymorphicMapType_11005)
(declare-fun freshObj@0 () T@Ref)
(declare-fun last@@5 () T@Ref)
(declare-fun toAdd () Int)
(declare-fun values@@5 () T@Seq_2864)
(declare-fun Heap@9 () T@PolymorphicMapType_10984)
(declare-fun Heap@5 () T@PolymorphicMapType_10984)
(declare-fun Heap@6 () T@PolymorphicMapType_10984)
(declare-fun Heap@7 () T@PolymorphicMapType_10984)
(declare-fun newPMask@0 () T@PolymorphicMapType_11533)
(declare-fun Heap@8 () T@PolymorphicMapType_10984)
(declare-fun Heap@2 () T@PolymorphicMapType_10984)
(declare-fun Heap@3 () T@PolymorphicMapType_10984)
(declare-fun Heap@4 () T@PolymorphicMapType_10984)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@6 () T@PolymorphicMapType_11005)
(declare-fun FrameFragment_6295 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_2986 (Int) T@FrameType)
(declare-fun FrameFragment_6380 (T@Ref) T@FrameType)
(declare-fun Mask@5 () T@PolymorphicMapType_11005)
(declare-fun Mask@4 () T@PolymorphicMapType_11005)
(declare-fun Mask@3 () T@PolymorphicMapType_11005)
(declare-fun Mask@2 () T@PolymorphicMapType_11005)
(declare-fun Heap@@32 () T@PolymorphicMapType_10984)
(declare-fun Heap@0 () T@PolymorphicMapType_10984)
(declare-fun Mask@1 () T@PolymorphicMapType_11005)
(declare-fun Mask@0 () T@PolymorphicMapType_11005)
(declare-fun Heap@1 () T@PolymorphicMapType_10984)
(declare-fun first@@5 () T@Ref)
(set-info :boogie-vc-id prependFails)
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
 (=> (= (ControlFlow 0 0) 32) (let ((anon16_correct true))
(let ((anon24_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 5) 2)) anon16_correct)))
(let ((anon24_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= FullPerm (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@7) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))))) (=> (<= FullPerm (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@7) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (=> (= (ControlFlow 0 3) 2) anon16_correct))))))
(let ((anon14_correct  (=> (and (state Heap@9 Mask@7) (state Heap@9 Mask@7)) (and (=> (= (ControlFlow 0 6) 3) anon24_Then_correct) (=> (= (ControlFlow 0 6) 5) anon24_Else_correct)))))
(let ((anon23_Else_correct  (=> (= freshObj@0 last@@5) (=> (and (= Heap@9 Heap@5) (= (ControlFlow 0 8) 6)) anon14_correct))))
(let ((anon23_Then_correct  (=> (not (= freshObj@0 last@@5)) (=> (and (= Heap@6 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@5) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) (PolymorphicMapType_11533 (store (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) freshObj@0 elem true) (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@5) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))))) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@5) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@5))) (= Heap@7 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@6) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) (PolymorphicMapType_11533 (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (store (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) freshObj@0 next true) (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@6) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))))) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@6) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@6)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_5 T@Ref) (f_11 T@Field_17061_2986) ) (!  (=> (or (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5 f_11) (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5 f_11)) (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| newPMask@0) o_5 f_11))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_6377_2986#PolymorphicMapType_11533| newPMask@0) o_5 f_11))
)) (forall ((o_5@@0 T@Ref) (f_11@@0 T@Field_11057_11058) ) (!  (=> (or (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@0 f_11@@0) (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@0 f_11@@0)) (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| newPMask@0) o_5@@0 f_11@@0))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_6379_6380#PolymorphicMapType_11533| newPMask@0) o_5@@0 f_11@@0))
))) (forall ((o_5@@1 T@Ref) (f_11@@1 T@Field_11044_53) ) (!  (=> (or (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@1 f_11@@1) (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@1 f_11@@1)) (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| newPMask@0) o_5@@1 f_11@@1))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_6377_53#PolymorphicMapType_11533| newPMask@0) o_5@@1 f_11@@1))
))) (forall ((o_5@@2 T@Ref) (f_11@@2 T@Field_6377_6386) ) (!  (=> (or (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@2 f_11@@2) (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@2 f_11@@2)) (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| newPMask@0) o_5@@2 f_11@@2))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_6377_17162#PolymorphicMapType_11533| newPMask@0) o_5@@2 f_11@@2))
))) (forall ((o_5@@3 T@Ref) (f_11@@3 T@Field_6377_17182) ) (!  (=> (or (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@3 f_11@@3) (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@3 f_11@@3)) (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| newPMask@0) o_5@@3 f_11@@3))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_6377_36416#PolymorphicMapType_11533| newPMask@0) o_5@@3 f_11@@3))
))) (forall ((o_5@@4 T@Ref) (f_11@@4 T@Field_6385_2986) ) (!  (=> (or (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@4 f_11@@4) (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@4 f_11@@4)) (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| newPMask@0) o_5@@4 f_11@@4))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_17161_2986#PolymorphicMapType_11533| newPMask@0) o_5@@4 f_11@@4))
))) (forall ((o_5@@5 T@Ref) (f_11@@5 T@Field_6385_6380) ) (!  (=> (or (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@5 f_11@@5) (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@5 f_11@@5)) (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| newPMask@0) o_5@@5 f_11@@5))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_17161_6380#PolymorphicMapType_11533| newPMask@0) o_5@@5 f_11@@5))
))) (forall ((o_5@@6 T@Ref) (f_11@@6 T@Field_6385_53) ) (!  (=> (or (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@6 f_11@@6) (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@6 f_11@@6)) (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| newPMask@0) o_5@@6 f_11@@6))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_17161_53#PolymorphicMapType_11533| newPMask@0) o_5@@6 f_11@@6))
))) (forall ((o_5@@7 T@Ref) (f_11@@7 T@Field_17161_17162) ) (!  (=> (or (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@7 f_11@@7) (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@7 f_11@@7)) (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| newPMask@0) o_5@@7 f_11@@7))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_17161_17162#PolymorphicMapType_11533| newPMask@0) o_5@@7 f_11@@7))
))) (forall ((o_5@@8 T@Ref) (f_11@@8 T@Field_17177_17182) ) (!  (=> (or (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) o_5@@8 f_11@@8) (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| (select (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) o_5@@8 f_11@@8)) (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| newPMask@0) o_5@@8 f_11@@8))
 :qid |stdinbpl.866:29|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_11533_17161_37464#PolymorphicMapType_11533| newPMask@0) o_5@@8 f_11@@8))
))) (= Heap@8 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@7) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@7) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) newPMask@0) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@7) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@7)))) (and (= Heap@9 Heap@8) (= (ControlFlow 0 7) 6))) anon14_correct)))))
(let ((anon22_Else_correct  (=> (and (HasDirectPerm_6385_6386 Mask@7 null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) (= Heap@5 Heap@2)) (and (=> (= (ControlFlow 0 10) 7) anon23_Then_correct) (=> (= (ControlFlow 0 10) 8) anon23_Else_correct)))))
(let ((anon22_Then_correct  (=> (and (and (not (HasDirectPerm_6385_6386 Mask@7 null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (= Heap@3 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@2) (store (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@2) null (|lseg#sm| freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) ZeroPMask) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@2) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@2)))) (and (= Heap@4 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@3) (store (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@3) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) freshVersion@0) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@3) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@3))) (= Heap@5 Heap@4))) (and (=> (= (ControlFlow 0 9) 7) anon23_Then_correct) (=> (= (ControlFlow 0 9) 8) anon23_Else_correct)))))
(let ((anon10_correct  (=> (= Mask@7 (PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@6) (store (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@6) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) (+ (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@6) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) FullPerm)) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@6) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@6))) (=> (and (and (state Heap@2 Mask@7) (state Heap@2 Mask@7)) (and (|lseg#trigger_6385| Heap@2 (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) (= (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@2) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) (FrameFragment_6295 (ite (not (= freshObj@0 last@@5)) (CombineFrames (FrameFragment_2986 (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@2) freshObj@0 elem)) (CombineFrames (FrameFragment_6380 (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next)) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@2) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1))))) EmptyFrame))))) (and (=> (= (ControlFlow 0 11) 9) anon22_Then_correct) (=> (= (ControlFlow 0 11) 10) anon22_Else_correct))))))
(let ((anon9_correct  (=> (and (and (= Mask@5 (PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@4) (store (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@4) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)) (- (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@4) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1))) FullPerm)) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@4) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@4))) (InsidePredicate_6385_6385 (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@2) null (lseg freshObj@0 last@@5 (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)) (select (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@2) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1))))) (and (= Mask@6 Mask@5) (= (ControlFlow 0 13) 11))) anon10_correct)))
(let ((anon21_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon9_correct)))
(let ((anon21_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@4) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1))))) (=> (<= FullPerm (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@4) null (lseg (select (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@2) freshObj@0 next) last@@5 (|Seq#Drop_3314| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 1)))) (=> (= (ControlFlow 0 14) 13) anon9_correct))))))
(let ((anon7_correct  (=> (= Mask@4 (PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@3) (store (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@3) freshObj@0 next (- (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@3) freshObj@0 next) FullPerm)) (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@3) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@3))) (and (=> (= (ControlFlow 0 17) (- 0 19)) (< 0 (|Seq#Length_2864| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5)))) (=> (< 0 (|Seq#Length_2864| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5))) (and (=> (= (ControlFlow 0 17) (- 0 18)) (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@2) freshObj@0 elem) (|Seq#Index_2864| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 0))) (=> (= (select (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@2) freshObj@0 elem) (|Seq#Index_2864| (|Seq#Append_4157| (|Seq#Singleton_4157| toAdd) values@@5) 0)) (and (=> (= (ControlFlow 0 17) 14) anon21_Then_correct) (=> (= (ControlFlow 0 17) 16) anon21_Else_correct)))))))))
(let ((anon20_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 22) 17)) anon7_correct)))
(let ((anon20_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 20) (- 0 21)) (<= FullPerm (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@3) freshObj@0 next))) (=> (<= FullPerm (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@3) freshObj@0 next)) (=> (= (ControlFlow 0 20) 17) anon7_correct))))))
(let ((anon5_correct  (=> (= Mask@3 (PolymorphicMapType_11005 (store (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem (- (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem) FullPerm)) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@2) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@2))) (and (=> (= (ControlFlow 0 23) 20) anon20_Then_correct) (=> (= (ControlFlow 0 23) 22) anon20_Else_correct)))))
(let ((anon19_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 26) 23)) anon5_correct)))
(let ((anon19_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 24) (- 0 25)) (<= FullPerm (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem))) (=> (<= FullPerm (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem)) (=> (= (ControlFlow 0 24) 23) anon5_correct))))))
(let ((anon18_Then_correct  (=> (not (= freshObj@0 last@@5)) (and (=> (= (ControlFlow 0 27) 24) anon19_Then_correct) (=> (= (ControlFlow 0 27) 26) anon19_Else_correct)))))
(let ((anon18_Else_correct  (=> (= freshObj@0 last@@5) (=> (and (= Mask@6 Mask@2) (= (ControlFlow 0 12) 11)) anon10_correct))))
(let ((anon17_Else_correct  (=> (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@32) freshObj@0 $allocated))) (=> (and (and (= Heap@0 (PolymorphicMapType_10984 (store (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@32) freshObj@0 $allocated true) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@@32) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@@32))) (= Mask@1 (PolymorphicMapType_11005 (store (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@0) freshObj@0 elem (+ (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@0) freshObj@0 elem) FullPerm)) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@0) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@0)))) (and (= Mask@2 (PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@1) (store (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@1) freshObj@0 next (+ (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@1) freshObj@0 next) FullPerm)) (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| Mask@1) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| Mask@1))) (state Heap@0 Mask@2))) (and (=> (= (ControlFlow 0 28) (- 0 30)) (= FullPerm (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem))) (=> (= FullPerm (select (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| Mask@2) freshObj@0 elem)) (=> (and (= Heap@1 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@0) (store (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@0) freshObj@0 elem toAdd) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@0) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@0))) (state Heap@1 Mask@2)) (and (=> (= (ControlFlow 0 28) (- 0 29)) (= FullPerm (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@2) freshObj@0 next))) (=> (= FullPerm (select (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| Mask@2) freshObj@0 next)) (=> (and (= Heap@2 (PolymorphicMapType_10984 (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@1) (store (|PolymorphicMapType_10984_6192_6193#PolymorphicMapType_10984| Heap@1) freshObj@0 next first@@5) (|PolymorphicMapType_10984_6377_2986#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6385_6386#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6391_25718#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6377_6386#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6377_33615#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6385_2986#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6385_6380#PolymorphicMapType_10984| Heap@1) (|PolymorphicMapType_10984_6385_53#PolymorphicMapType_10984| Heap@1))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 28) 27) anon18_Then_correct) (=> (= (ControlFlow 0 28) 12) anon18_Else_correct))))))))))))
(let ((anon17_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@32) first@@5 $allocated)) (=> (and (and (select (|PolymorphicMapType_10984_6189_53#PolymorphicMapType_10984| Heap@@32) last@@5 $allocated) (= Mask@0 (PolymorphicMapType_11005 (|PolymorphicMapType_11005_6377_2986#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6379_6380#PolymorphicMapType_11005| ZeroMask) (store (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ZeroMask) null (lseg first@@5 last@@5 values@@5) (+ (select (|PolymorphicMapType_11005_6385_6386#PolymorphicMapType_11005| ZeroMask) null (lseg first@@5 last@@5 values@@5)) FullPerm)) (|PolymorphicMapType_11005_6377_6386#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6377_53#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6377_42843#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6385_2986#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6385_6380#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6385_53#PolymorphicMapType_11005| ZeroMask) (|PolymorphicMapType_11005_6385_43254#PolymorphicMapType_11005| ZeroMask)))) (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0))) (and (=> (= (ControlFlow 0 31) 1) anon17_Then_correct) (=> (= (ControlFlow 0 31) 28) anon17_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 32) 31) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
