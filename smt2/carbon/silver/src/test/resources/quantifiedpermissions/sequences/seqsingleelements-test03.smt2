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
(declare-sort T@Field_15532_53 0)
(declare-sort T@Field_15545_15546 0)
(declare-sort T@Field_21575_3298 0)
(declare-sort T@Field_10403_43756 0)
(declare-sort T@Field_10403_43623 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_15493 0)) (((PolymorphicMapType_15493 (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| (Array T@Ref T@Field_21575_3298 Real)) (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| (Array T@Ref T@Field_15532_53 Real)) (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| (Array T@Ref T@Field_15545_15546 Real)) (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| (Array T@Ref T@Field_10403_43623 Real)) (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| (Array T@Ref T@Field_10403_43756 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16021 0)) (((PolymorphicMapType_16021 (|PolymorphicMapType_16021_15532_53#PolymorphicMapType_16021| (Array T@Ref T@Field_15532_53 Bool)) (|PolymorphicMapType_16021_15532_15546#PolymorphicMapType_16021| (Array T@Ref T@Field_15545_15546 Bool)) (|PolymorphicMapType_16021_15532_3298#PolymorphicMapType_16021| (Array T@Ref T@Field_21575_3298 Bool)) (|PolymorphicMapType_16021_15532_43623#PolymorphicMapType_16021| (Array T@Ref T@Field_10403_43623 Bool)) (|PolymorphicMapType_16021_15532_44934#PolymorphicMapType_16021| (Array T@Ref T@Field_10403_43756 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_15472 0)) (((PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| (Array T@Ref T@Field_15532_53 Bool)) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| (Array T@Ref T@Field_15545_15546 T@Ref)) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| (Array T@Ref T@Field_21575_3298 Int)) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| (Array T@Ref T@Field_10403_43756 T@PolymorphicMapType_16021)) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| (Array T@Ref T@Field_10403_43623 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_15532_53)
(declare-fun value () T@Field_21575_3298)
(declare-sort T@Seq_21620 0)
(declare-fun |Seq#Length_10407| (T@Seq_21620) Int)
(declare-fun |Seq#Drop_10407| (T@Seq_21620 Int) T@Seq_21620)
(declare-sort T@Seq_3176 0)
(declare-fun |Seq#Length_3176| (T@Seq_3176) Int)
(declare-fun |Seq#Drop_3176| (T@Seq_3176 Int) T@Seq_3176)
(declare-fun succHeap (T@PolymorphicMapType_15472 T@PolymorphicMapType_15472) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_15472 T@PolymorphicMapType_15472) Bool)
(declare-fun state (T@PolymorphicMapType_15472 T@PolymorphicMapType_15493) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_15493) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_16021)
(declare-fun |Seq#Index_10407| (T@Seq_21620 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3176| (T@Seq_3176 Int) Int)
(declare-fun |Seq#Empty_10407| () T@Seq_21620)
(declare-fun |Seq#Empty_3176| () T@Seq_3176)
(declare-fun |Seq#Update_10407| (T@Seq_21620 Int T@Ref) T@Seq_21620)
(declare-fun |Seq#Update_3176| (T@Seq_3176 Int Int) T@Seq_3176)
(declare-fun |Seq#Take_10407| (T@Seq_21620 Int) T@Seq_21620)
(declare-fun |Seq#Take_3176| (T@Seq_3176 Int) T@Seq_3176)
(declare-fun |Seq#Contains_3176| (T@Seq_3176 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3176)
(declare-fun |Seq#Contains_21620| (T@Seq_21620 T@Ref) Bool)
(declare-fun |Seq#Skolem_21620| (T@Seq_21620 T@Ref) Int)
(declare-fun |Seq#Skolem_3176| (T@Seq_3176 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_15472 T@PolymorphicMapType_15472 T@PolymorphicMapType_15493) Bool)
(declare-fun IsPredicateField_10403_43714 (T@Field_10403_43623) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10403 (T@Field_10403_43623) T@Field_10403_43756)
(declare-fun HasDirectPerm_10403_43687 (T@PolymorphicMapType_15493 T@Ref T@Field_10403_43623) Bool)
(declare-fun IsWandField_10403_45461 (T@Field_10403_43623) Bool)
(declare-fun WandMaskField_10403 (T@Field_10403_43623) T@Field_10403_43756)
(declare-fun |Seq#Singleton_10407| (T@Ref) T@Seq_21620)
(declare-fun |Seq#Singleton_3176| (Int) T@Seq_3176)
(declare-fun |Seq#Append_21620| (T@Seq_21620 T@Seq_21620) T@Seq_21620)
(declare-fun |Seq#Append_3176| (T@Seq_3176 T@Seq_3176) T@Seq_3176)
(declare-fun dummyHeap () T@PolymorphicMapType_15472)
(declare-fun ZeroMask () T@PolymorphicMapType_15493)
(declare-fun InsidePredicate_15532_15532 (T@Field_10403_43623 T@FrameType T@Field_10403_43623 T@FrameType) Bool)
(declare-fun IsPredicateField_10403_3298 (T@Field_21575_3298) Bool)
(declare-fun IsWandField_10403_3298 (T@Field_21575_3298) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10403_49007 (T@Field_10403_43756) Bool)
(declare-fun IsWandField_10403_49023 (T@Field_10403_43756) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10403_15546 (T@Field_15545_15546) Bool)
(declare-fun IsWandField_10403_15546 (T@Field_15545_15546) Bool)
(declare-fun IsPredicateField_10403_53 (T@Field_15532_53) Bool)
(declare-fun IsWandField_10403_53 (T@Field_15532_53) Bool)
(declare-fun HasDirectPerm_10403_49461 (T@PolymorphicMapType_15493 T@Ref T@Field_10403_43756) Bool)
(declare-fun HasDirectPerm_10403_15546 (T@PolymorphicMapType_15493 T@Ref T@Field_15545_15546) Bool)
(declare-fun HasDirectPerm_10403_53 (T@PolymorphicMapType_15493 T@Ref T@Field_15532_53) Bool)
(declare-fun HasDirectPerm_10403_3298 (T@PolymorphicMapType_15493 T@Ref T@Field_21575_3298) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_15493 T@PolymorphicMapType_15493 T@PolymorphicMapType_15493) Bool)
(declare-fun |Seq#Equal_21620| (T@Seq_21620 T@Seq_21620) Bool)
(declare-fun |Seq#Equal_3176| (T@Seq_3176 T@Seq_3176) Bool)
(declare-fun |Seq#ContainsTrigger_10407| (T@Seq_21620 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3176| (T@Seq_3176 Int) Bool)
(declare-fun |Seq#SkolemDiff_21620| (T@Seq_21620 T@Seq_21620) Int)
(declare-fun |Seq#SkolemDiff_3176| (T@Seq_3176 T@Seq_3176) Int)
(assert (forall ((s T@Seq_21620) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_10407| s)) (= (|Seq#Length_10407| (|Seq#Drop_10407| s n)) (- (|Seq#Length_10407| s) n))) (=> (< (|Seq#Length_10407| s) n) (= (|Seq#Length_10407| (|Seq#Drop_10407| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_10407| (|Seq#Drop_10407| s n)) (|Seq#Length_10407| s))))
 :qid |stdinbpl.324:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_10407| (|Seq#Drop_10407| s n)))
 :pattern ( (|Seq#Length_10407| s) (|Seq#Drop_10407| s n))
)))
(assert (forall ((s@@0 T@Seq_3176) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3176| s@@0)) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) (- (|Seq#Length_3176| s@@0) n@@0))) (=> (< (|Seq#Length_3176| s@@0) n@@0) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)) (|Seq#Length_3176| s@@0))))
 :qid |stdinbpl.324:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3176| (|Seq#Drop_3176| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3176| s@@0) (|Seq#Drop_3176| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_15472) (Heap1 T@PolymorphicMapType_15472) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_15472) (Mask T@PolymorphicMapType_15493) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_15472) (Heap1@@0 T@PolymorphicMapType_15472) (Heap2 T@PolymorphicMapType_15472) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10403_43756) ) (!  (not (select (|PolymorphicMapType_16021_15532_44934#PolymorphicMapType_16021| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16021_15532_44934#PolymorphicMapType_16021| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10403_43623) ) (!  (not (select (|PolymorphicMapType_16021_15532_43623#PolymorphicMapType_16021| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16021_15532_43623#PolymorphicMapType_16021| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21575_3298) ) (!  (not (select (|PolymorphicMapType_16021_15532_3298#PolymorphicMapType_16021| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16021_15532_3298#PolymorphicMapType_16021| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_15545_15546) ) (!  (not (select (|PolymorphicMapType_16021_15532_15546#PolymorphicMapType_16021| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16021_15532_15546#PolymorphicMapType_16021| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_15532_53) ) (!  (not (select (|PolymorphicMapType_16021_15532_53#PolymorphicMapType_16021| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_16021_15532_53#PolymorphicMapType_16021| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_21620) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_10407| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_10407| (|Seq#Drop_10407| s@@1 n@@1) j) (|Seq#Index_10407| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.345:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_10407| (|Seq#Drop_10407| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3176) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3176| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3176| (|Seq#Drop_3176| s@@2 n@@2) j@@0) (|Seq#Index_3176| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.345:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3176| (|Seq#Drop_3176| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_10407| |Seq#Empty_10407|) 0))
(assert (= (|Seq#Length_3176| |Seq#Empty_3176|) 0))
(assert (forall ((s@@3 T@Seq_21620) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_10407| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_10407| (|Seq#Update_10407| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_10407| (|Seq#Update_10407| s@@3 i v) n@@3) (|Seq#Index_10407| s@@3 n@@3)))))
 :qid |stdinbpl.300:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_10407| (|Seq#Update_10407| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_10407| s@@3 n@@3) (|Seq#Update_10407| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3176) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3176| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3176| s@@4 n@@4)))))
 :qid |stdinbpl.300:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3176| (|Seq#Update_3176| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3176| s@@4 n@@4) (|Seq#Update_3176| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_21620) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_10407| s@@5)) (= (|Seq#Length_10407| (|Seq#Take_10407| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_10407| s@@5) n@@5) (= (|Seq#Length_10407| (|Seq#Take_10407| s@@5 n@@5)) (|Seq#Length_10407| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_10407| (|Seq#Take_10407| s@@5 n@@5)) 0)))
 :qid |stdinbpl.311:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_10407| (|Seq#Take_10407| s@@5 n@@5)))
 :pattern ( (|Seq#Take_10407| s@@5 n@@5) (|Seq#Length_10407| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3176) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3176| s@@6)) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3176| s@@6) n@@6) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) (|Seq#Length_3176| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)) 0)))
 :qid |stdinbpl.311:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3176| (|Seq#Take_3176| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3176| s@@6 n@@6) (|Seq#Length_3176| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3176| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.585:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_21620) (x T@Ref) ) (!  (=> (|Seq#Contains_21620| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21620| s@@7 x)) (< (|Seq#Skolem_21620| s@@7 x) (|Seq#Length_10407| s@@7))) (= (|Seq#Index_10407| s@@7 (|Seq#Skolem_21620| s@@7 x)) x)))
 :qid |stdinbpl.443:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21620| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3176) (x@@0 Int) ) (!  (=> (|Seq#Contains_3176| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3176| s@@8 x@@0)) (< (|Seq#Skolem_3176| s@@8 x@@0) (|Seq#Length_3176| s@@8))) (= (|Seq#Index_3176| s@@8 (|Seq#Skolem_3176| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.443:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3176| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21620) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_10407| s@@9 n@@7) s@@9))
 :qid |stdinbpl.427:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_10407| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3176) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3176| s@@10 n@@8) s@@10))
 :qid |stdinbpl.427:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3176| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.280:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.278:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_15472) (ExhaleHeap T@PolymorphicMapType_15472) (Mask@@0 T@PolymorphicMapType_15493) (pm_f_11 T@Field_10403_43623) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10403_43687 Mask@@0 null pm_f_11) (IsPredicateField_10403_43714 pm_f_11)) (= (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@0) null (PredicateMaskField_10403 pm_f_11)) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap) null (PredicateMaskField_10403 pm_f_11)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10403_43714 pm_f_11) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap) null (PredicateMaskField_10403 pm_f_11)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_15472) (ExhaleHeap@@0 T@PolymorphicMapType_15472) (Mask@@1 T@PolymorphicMapType_15493) (pm_f_11@@0 T@Field_10403_43623) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10403_43687 Mask@@1 null pm_f_11@@0) (IsWandField_10403_45461 pm_f_11@@0)) (= (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@1) null (WandMaskField_10403 pm_f_11@@0)) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@0) null (WandMaskField_10403 pm_f_11@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10403_45461 pm_f_11@@0) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@0) null (WandMaskField_10403 pm_f_11@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21620| (|Seq#Singleton_10407| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.568:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21620| (|Seq#Singleton_10407| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3176| (|Seq#Singleton_3176| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.568:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3176| (|Seq#Singleton_3176| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21620) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_10407| s@@11))) (= (|Seq#Index_10407| (|Seq#Take_10407| s@@11 n@@9) j@@3) (|Seq#Index_10407| s@@11 j@@3)))
 :qid |stdinbpl.319:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_10407| (|Seq#Take_10407| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_10407| s@@11 j@@3) (|Seq#Take_10407| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3176) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3176| s@@12))) (= (|Seq#Index_3176| (|Seq#Take_3176| s@@12 n@@10) j@@4) (|Seq#Index_3176| s@@12 j@@4)))
 :qid |stdinbpl.319:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3176| (|Seq#Take_3176| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3176| s@@12 j@@4) (|Seq#Take_3176| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21620) (t T@Seq_21620) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_10407| s@@13))) (< n@@11 (|Seq#Length_10407| (|Seq#Append_21620| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_10407| s@@13)) (|Seq#Length_10407| s@@13)) n@@11) (= (|Seq#Take_10407| (|Seq#Append_21620| s@@13 t) n@@11) (|Seq#Append_21620| s@@13 (|Seq#Take_10407| t (|Seq#Sub| n@@11 (|Seq#Length_10407| s@@13)))))))
 :qid |stdinbpl.404:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_10407| (|Seq#Append_21620| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3176) (t@@0 T@Seq_3176) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3176| s@@14))) (< n@@12 (|Seq#Length_3176| (|Seq#Append_3176| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3176| s@@14)) (|Seq#Length_3176| s@@14)) n@@12) (= (|Seq#Take_3176| (|Seq#Append_3176| s@@14 t@@0) n@@12) (|Seq#Append_3176| s@@14 (|Seq#Take_3176| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3176| s@@14)))))))
 :qid |stdinbpl.404:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3176| (|Seq#Append_3176| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_15472) (ExhaleHeap@@1 T@PolymorphicMapType_15472) (Mask@@2 T@PolymorphicMapType_15493) (o_31 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@2) o_31 $allocated) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@1) o_31 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@1) o_31 $allocated))
)))
(assert (forall ((p T@Field_10403_43623) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_15532_15532 p v_1 p w))
 :qid |stdinbpl.222:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_15532_15532 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21620) (s1 T@Seq_21620) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_10407|)) (not (= s1 |Seq#Empty_10407|))) (<= (|Seq#Length_10407| s0) n@@13)) (< n@@13 (|Seq#Length_10407| (|Seq#Append_21620| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_10407| s0)) (|Seq#Length_10407| s0)) n@@13) (= (|Seq#Index_10407| (|Seq#Append_21620| s0 s1) n@@13) (|Seq#Index_10407| s1 (|Seq#Sub| n@@13 (|Seq#Length_10407| s0))))))
 :qid |stdinbpl.291:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_10407| (|Seq#Append_21620| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3176) (s1@@0 T@Seq_3176) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3176|)) (not (= s1@@0 |Seq#Empty_3176|))) (<= (|Seq#Length_3176| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3176| (|Seq#Append_3176| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3176| s0@@0)) (|Seq#Length_3176| s0@@0)) n@@14) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@0 s1@@0) n@@14) (|Seq#Index_3176| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3176| s0@@0))))))
 :qid |stdinbpl.291:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3176| (|Seq#Append_3176| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_10403_3298 value)))
(assert  (not (IsWandField_10403_3298 value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_15472) (ExhaleHeap@@2 T@PolymorphicMapType_15472) (Mask@@3 T@PolymorphicMapType_15493) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_15493) (o_2@@4 T@Ref) (f_4@@4 T@Field_10403_43756) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_10403_49007 f_4@@4))) (not (IsWandField_10403_49023 f_4@@4))) (<= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_15493) (o_2@@5 T@Ref) (f_4@@5 T@Field_10403_43623) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_10403_43714 f_4@@5))) (not (IsWandField_10403_45461 f_4@@5))) (<= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_15493) (o_2@@6 T@Ref) (f_4@@6 T@Field_15545_15546) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_10403_15546 f_4@@6))) (not (IsWandField_10403_15546 f_4@@6))) (<= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_15493) (o_2@@7 T@Ref) (f_4@@7 T@Field_15532_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10403_53 f_4@@7))) (not (IsWandField_10403_53 f_4@@7))) (<= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_15493) (o_2@@8 T@Ref) (f_4@@8 T@Field_21575_3298) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_10403_3298 f_4@@8))) (not (IsWandField_10403_3298 f_4@@8))) (<= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_15493) (o_2@@9 T@Ref) (f_4@@9 T@Field_10403_43756) ) (! (= (HasDirectPerm_10403_49461 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10403_49461 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_15493) (o_2@@10 T@Ref) (f_4@@10 T@Field_10403_43623) ) (! (= (HasDirectPerm_10403_43687 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10403_43687 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_15493) (o_2@@11 T@Ref) (f_4@@11 T@Field_15545_15546) ) (! (= (HasDirectPerm_10403_15546 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10403_15546 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_15493) (o_2@@12 T@Ref) (f_4@@12 T@Field_15532_53) ) (! (= (HasDirectPerm_10403_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10403_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_15493) (o_2@@13 T@Ref) (f_4@@13 T@Field_21575_3298) ) (! (= (HasDirectPerm_10403_3298 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10403_3298 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_15472) (ExhaleHeap@@3 T@PolymorphicMapType_15472) (Mask@@14 T@PolymorphicMapType_15493) (pm_f_11@@1 T@Field_10403_43623) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_10403_43687 Mask@@14 null pm_f_11@@1) (IsPredicateField_10403_43714 pm_f_11@@1)) (and (and (and (and (forall ((o2_11 T@Ref) (f_36 T@Field_15532_53) ) (!  (=> (select (|PolymorphicMapType_16021_15532_53#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) null (PredicateMaskField_10403 pm_f_11@@1))) o2_11 f_36) (= (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@4) o2_11 f_36) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11 f_36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11 f_36))
)) (forall ((o2_11@@0 T@Ref) (f_36@@0 T@Field_15545_15546) ) (!  (=> (select (|PolymorphicMapType_16021_15532_15546#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) null (PredicateMaskField_10403 pm_f_11@@1))) o2_11@@0 f_36@@0) (= (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@4) o2_11@@0 f_36@@0) (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@0 f_36@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@0 f_36@@0))
))) (forall ((o2_11@@1 T@Ref) (f_36@@1 T@Field_21575_3298) ) (!  (=> (select (|PolymorphicMapType_16021_15532_3298#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) null (PredicateMaskField_10403 pm_f_11@@1))) o2_11@@1 f_36@@1) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@4) o2_11@@1 f_36@@1) (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@1 f_36@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@1 f_36@@1))
))) (forall ((o2_11@@2 T@Ref) (f_36@@2 T@Field_10403_43623) ) (!  (=> (select (|PolymorphicMapType_16021_15532_43623#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) null (PredicateMaskField_10403 pm_f_11@@1))) o2_11@@2 f_36@@2) (= (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@4) o2_11@@2 f_36@@2) (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@2 f_36@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@2 f_36@@2))
))) (forall ((o2_11@@3 T@Ref) (f_36@@3 T@Field_10403_43756) ) (!  (=> (select (|PolymorphicMapType_16021_15532_44934#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) null (PredicateMaskField_10403 pm_f_11@@1))) o2_11@@3 f_36@@3) (= (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@4) o2_11@@3 f_36@@3) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@3 f_36@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@3) o2_11@@3 f_36@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_10403_43714 pm_f_11@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_15472) (ExhaleHeap@@4 T@PolymorphicMapType_15472) (Mask@@15 T@PolymorphicMapType_15493) (pm_f_11@@2 T@Field_10403_43623) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_10403_43687 Mask@@15 null pm_f_11@@2) (IsWandField_10403_45461 pm_f_11@@2)) (and (and (and (and (forall ((o2_11@@4 T@Ref) (f_36@@4 T@Field_15532_53) ) (!  (=> (select (|PolymorphicMapType_16021_15532_53#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) null (WandMaskField_10403 pm_f_11@@2))) o2_11@@4 f_36@@4) (= (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@5) o2_11@@4 f_36@@4) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@4 f_36@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@4 f_36@@4))
)) (forall ((o2_11@@5 T@Ref) (f_36@@5 T@Field_15545_15546) ) (!  (=> (select (|PolymorphicMapType_16021_15532_15546#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) null (WandMaskField_10403 pm_f_11@@2))) o2_11@@5 f_36@@5) (= (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@5) o2_11@@5 f_36@@5) (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@5 f_36@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@5 f_36@@5))
))) (forall ((o2_11@@6 T@Ref) (f_36@@6 T@Field_21575_3298) ) (!  (=> (select (|PolymorphicMapType_16021_15532_3298#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) null (WandMaskField_10403 pm_f_11@@2))) o2_11@@6 f_36@@6) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@5) o2_11@@6 f_36@@6) (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@6 f_36@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@6 f_36@@6))
))) (forall ((o2_11@@7 T@Ref) (f_36@@7 T@Field_10403_43623) ) (!  (=> (select (|PolymorphicMapType_16021_15532_43623#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) null (WandMaskField_10403 pm_f_11@@2))) o2_11@@7 f_36@@7) (= (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@5) o2_11@@7 f_36@@7) (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@7 f_36@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@7 f_36@@7))
))) (forall ((o2_11@@8 T@Ref) (f_36@@8 T@Field_10403_43756) ) (!  (=> (select (|PolymorphicMapType_16021_15532_44934#PolymorphicMapType_16021| (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) null (WandMaskField_10403 pm_f_11@@2))) o2_11@@8 f_36@@8) (= (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@5) o2_11@@8 f_36@@8) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@8 f_36@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@4) o2_11@@8 f_36@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_10403_45461 pm_f_11@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.210:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3176| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.583:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3176| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_15472) (ExhaleHeap@@5 T@PolymorphicMapType_15472) (Mask@@16 T@PolymorphicMapType_15493) (o_31@@0 T@Ref) (f_36@@9 T@Field_10403_43756) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_10403_49461 Mask@@16 o_31@@0 f_36@@9) (= (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@6) o_31@@0 f_36@@9) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@5) o_31@@0 f_36@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@@5) o_31@@0 f_36@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_15472) (ExhaleHeap@@6 T@PolymorphicMapType_15472) (Mask@@17 T@PolymorphicMapType_15493) (o_31@@1 T@Ref) (f_36@@10 T@Field_10403_43623) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_10403_43687 Mask@@17 o_31@@1 f_36@@10) (= (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@7) o_31@@1 f_36@@10) (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@6) o_31@@1 f_36@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@@6) o_31@@1 f_36@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_15472) (ExhaleHeap@@7 T@PolymorphicMapType_15472) (Mask@@18 T@PolymorphicMapType_15493) (o_31@@2 T@Ref) (f_36@@11 T@Field_15545_15546) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_10403_15546 Mask@@18 o_31@@2 f_36@@11) (= (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@8) o_31@@2 f_36@@11) (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@7) o_31@@2 f_36@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@@7) o_31@@2 f_36@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_15472) (ExhaleHeap@@8 T@PolymorphicMapType_15472) (Mask@@19 T@PolymorphicMapType_15493) (o_31@@3 T@Ref) (f_36@@12 T@Field_15532_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_10403_53 Mask@@19 o_31@@3 f_36@@12) (= (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@9) o_31@@3 f_36@@12) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@8) o_31@@3 f_36@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@@8) o_31@@3 f_36@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_15472) (ExhaleHeap@@9 T@PolymorphicMapType_15472) (Mask@@20 T@PolymorphicMapType_15493) (o_31@@4 T@Ref) (f_36@@13 T@Field_21575_3298) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_10403_3298 Mask@@20 o_31@@4 f_36@@13) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@10) o_31@@4 f_36@@13) (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@9) o_31@@4 f_36@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@@9) o_31@@4 f_36@@13))
)))
(assert (forall ((s0@@1 T@Seq_21620) (s1@@1 T@Seq_21620) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_10407|)) (not (= s1@@1 |Seq#Empty_10407|))) (= (|Seq#Length_10407| (|Seq#Append_21620| s0@@1 s1@@1)) (+ (|Seq#Length_10407| s0@@1) (|Seq#Length_10407| s1@@1))))
 :qid |stdinbpl.260:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_10407| (|Seq#Append_21620| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3176) (s1@@2 T@Seq_3176) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3176|)) (not (= s1@@2 |Seq#Empty_3176|))) (= (|Seq#Length_3176| (|Seq#Append_3176| s0@@2 s1@@2)) (+ (|Seq#Length_3176| s0@@2) (|Seq#Length_3176| s1@@2))))
 :qid |stdinbpl.260:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3176| (|Seq#Append_3176| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10403_43756) ) (! (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_10403_43623) ) (! (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_15545_15546) ) (! (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_15532_53) ) (! (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21575_3298) ) (! (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_21620) (t@@1 T@Seq_21620) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_10407| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_10407| s@@15)) (|Seq#Length_10407| s@@15)) n@@15) (= (|Seq#Drop_10407| (|Seq#Append_21620| s@@15 t@@1) n@@15) (|Seq#Drop_10407| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_10407| s@@15))))))
 :qid |stdinbpl.417:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_10407| (|Seq#Append_21620| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3176) (t@@2 T@Seq_3176) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3176| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3176| s@@16)) (|Seq#Length_3176| s@@16)) n@@16) (= (|Seq#Drop_3176| (|Seq#Append_3176| s@@16 t@@2) n@@16) (|Seq#Drop_3176| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3176| s@@16))))))
 :qid |stdinbpl.417:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3176| (|Seq#Append_3176| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_15493) (SummandMask1 T@PolymorphicMapType_15493) (SummandMask2 T@PolymorphicMapType_15493) (o_2@@19 T@Ref) (f_4@@19 T@Field_10403_43756) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_15493) (SummandMask1@@0 T@PolymorphicMapType_15493) (SummandMask2@@0 T@PolymorphicMapType_15493) (o_2@@20 T@Ref) (f_4@@20 T@Field_10403_43623) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_15493) (SummandMask1@@1 T@PolymorphicMapType_15493) (SummandMask2@@1 T@PolymorphicMapType_15493) (o_2@@21 T@Ref) (f_4@@21 T@Field_15545_15546) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_15493) (SummandMask1@@2 T@PolymorphicMapType_15493) (SummandMask2@@2 T@PolymorphicMapType_15493) (o_2@@22 T@Ref) (f_4@@22 T@Field_15532_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_15493) (SummandMask1@@3 T@PolymorphicMapType_15493) (SummandMask2@@3 T@PolymorphicMapType_15493) (o_2@@23 T@Ref) (f_4@@23 T@Field_21575_3298) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.582:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3176| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_21620) (b T@Seq_21620) ) (!  (=> (|Seq#Equal_21620| a b) (= a b))
 :qid |stdinbpl.555:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21620| a b))
)))
(assert (forall ((a@@0 T@Seq_3176) (b@@0 T@Seq_3176) ) (!  (=> (|Seq#Equal_3176| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.555:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3176| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_21620) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_10407| s@@17))) (|Seq#ContainsTrigger_10407| s@@17 (|Seq#Index_10407| s@@17 i@@3)))
 :qid |stdinbpl.448:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_10407| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3176) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3176| s@@18))) (|Seq#ContainsTrigger_3176| s@@18 (|Seq#Index_3176| s@@18 i@@4)))
 :qid |stdinbpl.448:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3176| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_21620) (s1@@3 T@Seq_21620) ) (!  (and (=> (= s0@@3 |Seq#Empty_10407|) (= (|Seq#Append_21620| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_10407|) (= (|Seq#Append_21620| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.266:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21620| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3176) (s1@@4 T@Seq_3176) ) (!  (and (=> (= s0@@4 |Seq#Empty_3176|) (= (|Seq#Append_3176| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3176|) (= (|Seq#Append_3176| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.266:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3176| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_10407| (|Seq#Singleton_10407| t@@3) 0) t@@3)
 :qid |stdinbpl.270:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_10407| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3176| (|Seq#Singleton_3176| t@@4) 0) t@@4)
 :qid |stdinbpl.270:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3176| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21620) ) (! (<= 0 (|Seq#Length_10407| s@@19))
 :qid |stdinbpl.249:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_10407| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3176) ) (! (<= 0 (|Seq#Length_3176| s@@20))
 :qid |stdinbpl.249:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3176| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_21620) (s1@@5 T@Seq_21620) ) (!  (=> (|Seq#Equal_21620| s0@@5 s1@@5) (and (= (|Seq#Length_10407| s0@@5) (|Seq#Length_10407| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_10407| s0@@5))) (= (|Seq#Index_10407| s0@@5 j@@6) (|Seq#Index_10407| s1@@5 j@@6)))
 :qid |stdinbpl.545:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_10407| s0@@5 j@@6))
 :pattern ( (|Seq#Index_10407| s1@@5 j@@6))
))))
 :qid |stdinbpl.542:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21620| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3176) (s1@@6 T@Seq_3176) ) (!  (=> (|Seq#Equal_3176| s0@@6 s1@@6) (and (= (|Seq#Length_3176| s0@@6) (|Seq#Length_3176| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3176| s0@@6))) (= (|Seq#Index_3176| s0@@6 j@@7) (|Seq#Index_3176| s1@@6 j@@7)))
 :qid |stdinbpl.545:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3176| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3176| s1@@6 j@@7))
))))
 :qid |stdinbpl.542:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3176| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_10407| (|Seq#Singleton_10407| t@@5)) 1)
 :qid |stdinbpl.257:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_10407| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3176| (|Seq#Singleton_3176| t@@6)) 1)
 :qid |stdinbpl.257:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3176| t@@6))
)))
(assert (forall ((s@@21 T@Seq_21620) (t@@7 T@Seq_21620) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_10407| s@@21))) (= (|Seq#Take_10407| (|Seq#Append_21620| s@@21 t@@7) n@@17) (|Seq#Take_10407| s@@21 n@@17)))
 :qid |stdinbpl.399:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_10407| (|Seq#Append_21620| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3176) (t@@8 T@Seq_3176) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3176| s@@22))) (= (|Seq#Take_3176| (|Seq#Append_3176| s@@22 t@@8) n@@18) (|Seq#Take_3176| s@@22 n@@18)))
 :qid |stdinbpl.399:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3176| (|Seq#Append_3176| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_21620) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_10407| s@@23))) (= (|Seq#Length_10407| (|Seq#Update_10407| s@@23 i@@5 v@@2)) (|Seq#Length_10407| s@@23)))
 :qid |stdinbpl.298:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_10407| (|Seq#Update_10407| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_10407| s@@23) (|Seq#Update_10407| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3176) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3176| s@@24))) (= (|Seq#Length_3176| (|Seq#Update_3176| s@@24 i@@6 v@@3)) (|Seq#Length_3176| s@@24)))
 :qid |stdinbpl.298:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3176| (|Seq#Update_3176| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3176| s@@24) (|Seq#Update_3176| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_15472) (o_30 T@Ref) (f_37 T@Field_10403_43623) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@11) (store (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@11) o_30 f_37 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@11) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@11) (store (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@11) o_30 f_37 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_15472) (o_30@@0 T@Ref) (f_37@@0 T@Field_10403_43756) (v@@5 T@PolymorphicMapType_16021) ) (! (succHeap Heap@@12 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@12) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@12) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@12) (store (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@12) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@12) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@12) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@12) (store (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@12) o_30@@0 f_37@@0 v@@5) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_15472) (o_30@@1 T@Ref) (f_37@@1 T@Field_21575_3298) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@13) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@13) (store (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@13) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@13) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@13) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@13) (store (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@13) o_30@@1 f_37@@1 v@@6) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@13) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_15472) (o_30@@2 T@Ref) (f_37@@2 T@Field_15545_15546) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@14) (store (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@14) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@14) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@14) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@14) (store (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@14) o_30@@2 f_37@@2 v@@7) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@14) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@14) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_15472) (o_30@@3 T@Ref) (f_37@@3 T@Field_15532_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_15472 (store (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@15) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_15472 (store (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@15) o_30@@3 f_37@@3 v@@8) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@@15) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_21620) (t@@9 T@Seq_21620) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_10407| s@@25))) (= (|Seq#Drop_10407| (|Seq#Append_21620| s@@25 t@@9) n@@19) (|Seq#Append_21620| (|Seq#Drop_10407| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.413:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_10407| (|Seq#Append_21620| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3176) (t@@10 T@Seq_3176) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3176| s@@26))) (= (|Seq#Drop_3176| (|Seq#Append_3176| s@@26 t@@10) n@@20) (|Seq#Append_3176| (|Seq#Drop_3176| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.413:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3176| (|Seq#Append_3176| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_21620) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_10407| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_10407| (|Seq#Drop_10407| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_10407| s@@27 i@@7))))
 :qid |stdinbpl.349:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_10407| s@@27 n@@21) (|Seq#Index_10407| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3176) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3176| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3176| (|Seq#Drop_3176| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3176| s@@28 i@@8))))
 :qid |stdinbpl.349:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3176| s@@28 n@@22) (|Seq#Index_3176| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_21620) (s1@@7 T@Seq_21620) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_10407|)) (not (= s1@@7 |Seq#Empty_10407|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_10407| s0@@7))) (= (|Seq#Index_10407| (|Seq#Append_21620| s0@@7 s1@@7) n@@23) (|Seq#Index_10407| s0@@7 n@@23)))
 :qid |stdinbpl.289:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_10407| (|Seq#Append_21620| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_10407| s0@@7 n@@23) (|Seq#Append_21620| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3176) (s1@@8 T@Seq_3176) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3176|)) (not (= s1@@8 |Seq#Empty_3176|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3176| s0@@8))) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@8 s1@@8) n@@24) (|Seq#Index_3176| s0@@8 n@@24)))
 :qid |stdinbpl.289:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3176| (|Seq#Append_3176| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3176| s0@@8 n@@24) (|Seq#Append_3176| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21620) (s1@@9 T@Seq_21620) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_10407|)) (not (= s1@@9 |Seq#Empty_10407|))) (<= 0 m)) (< m (|Seq#Length_10407| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_10407| s0@@9)) (|Seq#Length_10407| s0@@9)) m) (= (|Seq#Index_10407| (|Seq#Append_21620| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_10407| s0@@9))) (|Seq#Index_10407| s1@@9 m))))
 :qid |stdinbpl.294:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_10407| s1@@9 m) (|Seq#Append_21620| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3176) (s1@@10 T@Seq_3176) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3176|)) (not (= s1@@10 |Seq#Empty_3176|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3176| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3176| s0@@10)) (|Seq#Length_3176| s0@@10)) m@@0) (= (|Seq#Index_3176| (|Seq#Append_3176| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3176| s0@@10))) (|Seq#Index_3176| s1@@10 m@@0))))
 :qid |stdinbpl.294:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3176| s1@@10 m@@0) (|Seq#Append_3176| s0@@10 s1@@10))
)))
(assert (forall ((o_30@@4 T@Ref) (f_35 T@Field_15545_15546) (Heap@@16 T@PolymorphicMapType_15472) ) (!  (=> (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@16) o_30@@4 $allocated) (select (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@@16) (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@16) o_30@@4 f_35) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@@16) o_30@@4 f_35))
)))
(assert (forall ((s@@29 T@Seq_21620) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_10407| s@@29))) (= (|Seq#Index_10407| s@@29 i@@9) x@@3)) (|Seq#Contains_21620| s@@29 x@@3))
 :qid |stdinbpl.446:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21620| s@@29 x@@3) (|Seq#Index_10407| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3176) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3176| s@@30))) (= (|Seq#Index_3176| s@@30 i@@10) x@@4)) (|Seq#Contains_3176| s@@30 x@@4))
 :qid |stdinbpl.446:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3176| s@@30 x@@4) (|Seq#Index_3176| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21620) (s1@@11 T@Seq_21620) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21620| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21620| s0@@11 s1@@11))) (not (= (|Seq#Length_10407| s0@@11) (|Seq#Length_10407| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21620| s0@@11 s1@@11))) (= (|Seq#Length_10407| s0@@11) (|Seq#Length_10407| s1@@11))) (= (|Seq#SkolemDiff_21620| s0@@11 s1@@11) (|Seq#SkolemDiff_21620| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21620| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21620| s0@@11 s1@@11) (|Seq#Length_10407| s0@@11))) (not (= (|Seq#Index_10407| s0@@11 (|Seq#SkolemDiff_21620| s0@@11 s1@@11)) (|Seq#Index_10407| s1@@11 (|Seq#SkolemDiff_21620| s0@@11 s1@@11))))))
 :qid |stdinbpl.550:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21620| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3176) (s1@@12 T@Seq_3176) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3176| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3176| s0@@12 s1@@12))) (not (= (|Seq#Length_3176| s0@@12) (|Seq#Length_3176| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3176| s0@@12 s1@@12))) (= (|Seq#Length_3176| s0@@12) (|Seq#Length_3176| s1@@12))) (= (|Seq#SkolemDiff_3176| s0@@12 s1@@12) (|Seq#SkolemDiff_3176| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3176| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3176| s0@@12 s1@@12) (|Seq#Length_3176| s0@@12))) (not (= (|Seq#Index_3176| s0@@12 (|Seq#SkolemDiff_3176| s0@@12 s1@@12)) (|Seq#Index_3176| s1@@12 (|Seq#SkolemDiff_3176| s0@@12 s1@@12))))))
 :qid |stdinbpl.550:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3176| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_10403_43623) (v_1@@0 T@FrameType) (q T@Field_10403_43623) (w@@0 T@FrameType) (r T@Field_10403_43623) (u T@FrameType) ) (!  (=> (and (InsidePredicate_15532_15532 p@@1 v_1@@0 q w@@0) (InsidePredicate_15532_15532 q w@@0 r u)) (InsidePredicate_15532_15532 p@@1 v_1@@0 r u))
 :qid |stdinbpl.217:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_15532_15532 p@@1 v_1@@0 q w@@0) (InsidePredicate_15532_15532 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_21620) ) (!  (=> (= (|Seq#Length_10407| s@@31) 0) (= s@@31 |Seq#Empty_10407|))
 :qid |stdinbpl.253:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_10407| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3176) ) (!  (=> (= (|Seq#Length_3176| s@@32) 0) (= s@@32 |Seq#Empty_3176|))
 :qid |stdinbpl.253:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3176| s@@32))
)))
(assert (forall ((s@@33 T@Seq_21620) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_10407| s@@33 n@@25) |Seq#Empty_10407|))
 :qid |stdinbpl.429:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_10407| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3176) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3176| s@@34 n@@26) |Seq#Empty_3176|))
 :qid |stdinbpl.429:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3176| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S () T@Seq_21620)
(declare-fun j_11 () Int)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_15493)
(declare-fun PostHeap@0 () T@PolymorphicMapType_15472)
(declare-fun a_2 () Int)
(declare-fun b_24 () Int)
(declare-fun k () Int)
(declare-fun q_16 () Int)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_15493)
(declare-fun QPMask@3 () T@PolymorphicMapType_15493)
(declare-fun ExhaleHeap@1 () T@PolymorphicMapType_15472)
(declare-fun Heap@0 () T@PolymorphicMapType_15472)
(declare-fun Heap@1 () T@PolymorphicMapType_15472)
(declare-fun Heap@2 () T@PolymorphicMapType_15472)
(declare-fun neverTriggered9 (Int) Bool)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_15493)
(declare-fun dummyFunction_3298 (Int) Bool)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_15472)
(declare-fun neverTriggered12 (Int) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_15493)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) Int)
(declare-fun p_12 () Int)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_15493)
(declare-fun o_54 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_15472)
(declare-fun neverTriggered10 (Int) Bool)
(declare-fun QPMask@0 () T@PolymorphicMapType_15493)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) Int)
(declare-fun l_6 () Int)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun j_4 () Int)
(declare-fun j1_26 () Int)
(declare-fun j2_9 () Int)
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
 (=> (= (ControlFlow 0 0) 82) (let ((anon12_correct true))
(let ((anon37_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_11)) (= (ControlFlow 0 76) 72)) anon12_correct)))
(let ((anon37_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_11) (and (=> (= (ControlFlow 0 73) (- 0 75)) (>= j_11 0)) (=> (>= j_11 0) (and (=> (= (ControlFlow 0 73) (- 0 74)) (< j_11 (|Seq#Length_10407| S))) (=> (< j_11 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 73) 72) anon12_correct))))))))
(let ((anon36_Else_correct  (and (=> (= (ControlFlow 0 62) (- 0 71)) (forall ((j_3_1 Int) (j_3_2 Int) ) (!  (=> (and (and (and (and (not (= j_3_1 j_3_2)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_3_1) (|Seq#Index_10407| S j_3_2))))
 :qid |stdinbpl.1235:15|
 :skolemid |103|
))) (=> (forall ((j_3_1@@0 Int) (j_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_3_1@@0 j_3_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_3_1@@0) (|Seq#Index_10407| S j_3_2@@0))))
 :qid |stdinbpl.1235:15|
 :skolemid |103|
)) (=> (and (and (forall ((j_3_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@1) (< NoPerm FullPerm)) (and (qpRange8 (|Seq#Index_10407| S j_3_1@@1)) (= (invRecv8 (|Seq#Index_10407| S j_3_1@@1)) j_3_1@@1)))
 :qid |stdinbpl.1241:22|
 :skolemid |104|
 :pattern ( (|Seq#Index_10407| S j_3_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@1))
 :pattern ( (|Seq#Index_10407| S j_3_1@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv8 o_4)) (< NoPerm FullPerm)) (qpRange8 o_4)) (= (|Seq#Index_10407| S (invRecv8 o_4)) o_4))
 :qid |stdinbpl.1245:22|
 :skolemid |105|
 :pattern ( (invRecv8 o_4))
))) (and (forall ((j_3_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@2) (not (= (|Seq#Index_10407| S j_3_1@@2) null)))
 :qid |stdinbpl.1251:22|
 :skolemid |106|
 :pattern ( (|Seq#Index_10407| S j_3_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_3_1@@2))
 :pattern ( (|Seq#Index_10407| S j_3_1@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv8 o_4@@0)) (< NoPerm FullPerm)) (qpRange8 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10407| S (invRecv8 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@6) o_4@@0 value) (+ (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@0 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv8 o_4@@0)) (< NoPerm FullPerm)) (qpRange8 o_4@@0))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@6) o_4@@0 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@0 value))))
 :qid |stdinbpl.1257:22|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@6) o_4@@0 value))
)))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@6) o_4@@1 f_5)))
 :qid |stdinbpl.1261:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@6) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@6) o_4@@2 f_5@@0)))
 :qid |stdinbpl.1261:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@6) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_21575_3298) ) (!  (=> (not (= f_5@@1 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@6) o_4@@3 f_5@@1)))
 :qid |stdinbpl.1261:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@6) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@6) o_4@@4 f_5@@2)))
 :qid |stdinbpl.1261:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@6) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@6) o_4@@5 f_5@@3)))
 :qid |stdinbpl.1261:29|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@6) o_4@@5 f_5@@3))
))) (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 62) (- 0 70)) (>= a_2 0)) (=> (>= a_2 0) (and (=> (= (ControlFlow 0 62) (- 0 69)) (< a_2 (|Seq#Length_10407| S))) (=> (< a_2 (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 62) (- 0 68)) (HasDirectPerm_10403_3298 QPMask@6 (|Seq#Index_10407| S a_2) value)) (=> (HasDirectPerm_10403_3298 QPMask@6 (|Seq#Index_10407| S a_2) value) (=> (and (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| PostHeap@0) (|Seq#Index_10407| S a_2) value) 5) (state PostHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 62) (- 0 67)) (>= b_24 0)) (=> (>= b_24 0) (and (=> (= (ControlFlow 0 62) (- 0 66)) (< b_24 (|Seq#Length_10407| S))) (=> (< b_24 (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (HasDirectPerm_10403_3298 QPMask@6 (|Seq#Index_10407| S b_24) value)) (=> (HasDirectPerm_10403_3298 QPMask@6 (|Seq#Index_10407| S b_24) value) (=> (and (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| PostHeap@0) (|Seq#Index_10407| S b_24) value) 6) (state PostHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< k (|Seq#Length_10407| S))) (=> (< k (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 62) (- 0 61)) (HasDirectPerm_10403_3298 QPMask@6 (|Seq#Index_10407| S k) value))))))))))))))))))))))))))
(let ((anon35_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (=> (= (ControlFlow 0 77) 62) anon36_Else_correct) (=> (= (ControlFlow 0 77) 73) anon37_Then_correct)) (=> (= (ControlFlow 0 77) 76) anon37_Else_correct)))))
(let ((anon29_correct true))
(let ((anon45_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_16)) (= (ControlFlow 0 49) 45)) anon29_correct)))
(let ((anon45_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_16) (and (=> (= (ControlFlow 0 46) (- 0 48)) (>= q_16 0)) (=> (>= q_16 0) (and (=> (= (ControlFlow 0 46) (- 0 47)) (< q_16 (|Seq#Length_10407| S))) (=> (< q_16 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 46) 45) anon29_correct))))))))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 29) (- 0 44)) (forall ((q_1_1 Int) (q_1_2 Int) ) (!  (=> (and (and (and (and (not (= q_1_1 q_1_2)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S q_1_1) (|Seq#Index_10407| S q_1_2))))
 :qid |stdinbpl.1513:15|
 :skolemid |130|
))) (=> (forall ((q_1_1@@0 Int) (q_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= q_1_1@@0 q_1_2@@0)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@0)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S q_1_1@@0) (|Seq#Index_10407| S q_1_2@@0))))
 :qid |stdinbpl.1513:15|
 :skolemid |130|
)) (=> (and (forall ((q_1_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange13 (|Seq#Index_10407| S q_1_1@@1)) (= (invRecv13 (|Seq#Index_10407| S q_1_1@@1)) q_1_1@@1)))
 :qid |stdinbpl.1519:22|
 :skolemid |131|
 :pattern ( (|Seq#Index_10407| S q_1_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@1))
 :pattern ( (|Seq#Index_10407| S q_1_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv13 o_4@@6)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@6)) (= (|Seq#Index_10407| S (invRecv13 o_4@@6)) o_4@@6))
 :qid |stdinbpl.1523:22|
 :skolemid |132|
 :pattern ( (invRecv13 o_4@@6))
))) (and (=> (= (ControlFlow 0 29) (- 0 43)) (forall ((q_1_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1529:15|
 :skolemid |133|
 :pattern ( (|Seq#Index_10407| S q_1_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@2))
 :pattern ( (|Seq#Index_10407| S q_1_1@@2))
))) (=> (forall ((q_1_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1529:15|
 :skolemid |133|
 :pattern ( (|Seq#Index_10407| S q_1_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@3))
 :pattern ( (|Seq#Index_10407| S q_1_1@@3))
)) (=> (and (forall ((q_1_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_10407| S q_1_1@@4) null)))
 :qid |stdinbpl.1535:22|
 :skolemid |134|
 :pattern ( (|Seq#Index_10407| S q_1_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) q_1_1@@4))
 :pattern ( (|Seq#Index_10407| S q_1_1@@4))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv13 o_4@@7)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@7)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_10407| S (invRecv13 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@7 value) (+ (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@7 value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv13 o_4@@7)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange13 o_4@@7))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@7 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@7 value))))
 :qid |stdinbpl.1541:22|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@7 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@3) o_4@@8 f_5@@4) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@4) o_4@@8 f_5@@4)))
 :qid |stdinbpl.1545:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@3) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@4) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@3) o_4@@9 f_5@@5) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@4) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1545:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@3) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@4) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_21575_3298) ) (!  (=> (not (= f_5@@6 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@10 f_5@@6) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1545:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@3) o_4@@11 f_5@@7) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@4) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1545:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@3) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@4) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@3) o_4@@12 f_5@@8) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@4) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1545:29|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@3) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@4) o_4@@12 f_5@@8))
))) (state ExhaleHeap@1 QPMask@4)) (and (state ExhaleHeap@1 QPMask@4) (state ExhaleHeap@1 QPMask@4))) (and (=> (= (ControlFlow 0 29) (- 0 42)) (>= k 0)) (=> (>= k 0) (and (=> (= (ControlFlow 0 29) (- 0 41)) (< k (|Seq#Length_10407| S))) (=> (< k (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 29) (- 0 40)) (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S k) value))) (=> (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S k) value)) (=> (and (= Heap@0 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| ExhaleHeap@1) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| ExhaleHeap@1) (store (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@1) (|Seq#Index_10407| S k) value 0) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| ExhaleHeap@1) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| ExhaleHeap@1))) (state Heap@0 QPMask@4)) (and (=> (= (ControlFlow 0 29) (- 0 39)) (>= a_2 0)) (=> (>= a_2 0) (and (=> (= (ControlFlow 0 29) (- 0 38)) (< a_2 (|Seq#Length_10407| S))) (=> (< a_2 (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 29) (- 0 37)) (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S a_2) value))) (=> (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S a_2) value)) (=> (and (= Heap@1 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@0) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@0) (store (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@0) (|Seq#Index_10407| S a_2) value 5) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@0) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@0))) (state Heap@1 QPMask@4)) (and (=> (= (ControlFlow 0 29) (- 0 36)) (>= b_24 0)) (=> (>= b_24 0) (and (=> (= (ControlFlow 0 29) (- 0 35)) (< b_24 (|Seq#Length_10407| S))) (=> (< b_24 (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 29) (- 0 34)) (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S b_24) value))) (=> (= FullPerm (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S b_24) value)) (=> (and (= Heap@2 (PolymorphicMapType_15472 (|PolymorphicMapType_15472_10189_53#PolymorphicMapType_15472| Heap@1) (|PolymorphicMapType_15472_10192_10193#PolymorphicMapType_15472| Heap@1) (store (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@1) (|Seq#Index_10407| S b_24) value 6) (|PolymorphicMapType_15472_10403_43800#PolymorphicMapType_15472| Heap@1) (|PolymorphicMapType_15472_15532_43623#PolymorphicMapType_15472| Heap@1))) (state Heap@2 QPMask@4)) (and (=> (= (ControlFlow 0 29) (- 0 33)) (forall ((j_4_1 Int) (j_4_2 Int) ) (!  (=> (and (and (and (and (not (= j_4_1 j_4_2)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_4_1) (|Seq#Index_10407| S j_4_2))))
 :qid |stdinbpl.1600:17|
 :skolemid |137|
 :pattern ( (neverTriggered9 j_4_1) (neverTriggered9 j_4_2))
))) (=> (forall ((j_4_1@@0 Int) (j_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= j_4_1@@0 j_4_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_4_1@@0) (|Seq#Index_10407| S j_4_2@@0))))
 :qid |stdinbpl.1600:17|
 :skolemid |137|
 :pattern ( (neverTriggered9 j_4_1@@0) (neverTriggered9 j_4_2@@0))
)) (and (=> (= (ControlFlow 0 29) (- 0 32)) (forall ((j_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@1) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S j_4_1@@1) value) FullPerm))
 :qid |stdinbpl.1607:17|
 :skolemid |138|
 :pattern ( (|Seq#Index_10407| S j_4_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@1))
 :pattern ( (|Seq#Index_10407| S j_4_1@@1))
))) (=> (forall ((j_4_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@2) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) (|Seq#Index_10407| S j_4_1@@2) value) FullPerm))
 :qid |stdinbpl.1607:17|
 :skolemid |138|
 :pattern ( (|Seq#Index_10407| S j_4_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@2))
 :pattern ( (|Seq#Index_10407| S j_4_1@@2))
)) (=> (forall ((j_4_1@@3 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@3) (< NoPerm FullPerm)) (and (qpRange9 (|Seq#Index_10407| S j_4_1@@3)) (= (invRecv9 (|Seq#Index_10407| S j_4_1@@3)) j_4_1@@3)))
 :qid |stdinbpl.1613:22|
 :skolemid |139|
 :pattern ( (|Seq#Index_10407| S j_4_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4_1@@3))
 :pattern ( (|Seq#Index_10407| S j_4_1@@3))
)) (=> (and (forall ((o_4@@13 T@Ref) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv9 o_4@@13)) (and (< NoPerm FullPerm) (qpRange9 o_4@@13))) (= (|Seq#Index_10407| S (invRecv9 o_4@@13)) o_4@@13))
 :qid |stdinbpl.1617:22|
 :skolemid |140|
 :pattern ( (invRecv9 o_4@@13))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv9 o_4@@14)) (and (< NoPerm FullPerm) (qpRange9 o_4@@14))) (and (= (|Seq#Index_10407| S (invRecv9 o_4@@14)) o_4@@14) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@5) o_4@@14 value) (- (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@14 value) FullPerm)))) (=> (not (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv9 o_4@@14)) (and (< NoPerm FullPerm) (qpRange9 o_4@@14)))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@5) o_4@@14 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@14 value))))
 :qid |stdinbpl.1623:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@5) o_4@@14 value))
))) (=> (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@4) o_4@@15 f_5@@9) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@5) o_4@@15 f_5@@9)))
 :qid |stdinbpl.1629:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@5) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@4) o_4@@16 f_5@@10) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@5) o_4@@16 f_5@@10)))
 :qid |stdinbpl.1629:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@5) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_21575_3298) ) (!  (=> (not (= f_5@@11 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@4) o_4@@17 f_5@@11) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@5) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1629:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@5) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@4) o_4@@18 f_5@@12) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@5) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1629:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@5) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@4) o_4@@19 f_5@@13) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@5) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1629:29|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@5) o_4@@19 f_5@@13))
))) (and (=> (= (ControlFlow 0 29) (- 0 31)) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@2) (|Seq#Index_10407| S a_2) value) 5)) (=> (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@2) (|Seq#Index_10407| S a_2) value) 5) (and (=> (= (ControlFlow 0 29) (- 0 30)) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@2) (|Seq#Index_10407| S b_24) value) 6)) (=> (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@2) (|Seq#Index_10407| S b_24) value) 6) (=> (= (ControlFlow 0 29) (- 0 28)) (= (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@2) (|Seq#Index_10407| S k) value) 0)))))))))))))))))))))))))))))))))))))))))))
(let ((anon42_Else_correct  (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((p_1_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1) (dummyFunction_3298 (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@0) (|Seq#Index_10407| S p_1_1) value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1449:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_10407| S p_1_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1))
 :pattern ( (|Seq#Index_10407| S p_1_1))
))) (=> (forall ((p_1_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@0) (dummyFunction_3298 (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| ExhaleHeap@0) (|Seq#Index_10407| S p_1_1@@0) value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1449:17|
 :skolemid |123|
 :pattern ( (|Seq#Index_10407| S p_1_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@0))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@0))
 :pattern ( (|Seq#Index_10407| S p_1_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((p_1_1@@1 Int) (p_1_2 Int) ) (!  (=> (and (and (and (and (not (= p_1_1@@1 p_1_2)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@1)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S p_1_1@@1) (|Seq#Index_10407| S p_1_2))))
 :qid |stdinbpl.1456:17|
 :skolemid |124|
 :pattern ( (neverTriggered12 p_1_1@@1) (neverTriggered12 p_1_2))
))) (=> (forall ((p_1_1@@2 Int) (p_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= p_1_1@@2 p_1_2@@0)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@2)) (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S p_1_1@@2) (|Seq#Index_10407| S p_1_2@@0))))
 :qid |stdinbpl.1456:17|
 :skolemid |124|
 :pattern ( (neverTriggered12 p_1_1@@2) (neverTriggered12 p_1_2@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((p_1_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@3) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) (|Seq#Index_10407| S p_1_1@@3) value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.1463:17|
 :skolemid |125|
 :pattern ( (|Seq#Index_10407| S p_1_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@3))
 :pattern ( (|Seq#Index_10407| S p_1_1@@3))
))) (=> (forall ((p_1_1@@4 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@4) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) (|Seq#Index_10407| S p_1_1@@4) value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.1463:17|
 :skolemid |125|
 :pattern ( (|Seq#Index_10407| S p_1_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@4))
 :pattern ( (|Seq#Index_10407| S p_1_1@@4))
)) (=> (forall ((p_1_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange12 (|Seq#Index_10407| S p_1_1@@5)) (= (invRecv12 (|Seq#Index_10407| S p_1_1@@5)) p_1_1@@5)))
 :qid |stdinbpl.1469:22|
 :skolemid |126|
 :pattern ( (|Seq#Index_10407| S p_1_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@5))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_1_1@@5))
 :pattern ( (|Seq#Index_10407| S p_1_1@@5))
)) (=> (and (forall ((o_4@@20 T@Ref) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv12 o_4@@20)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange12 o_4@@20))) (= (|Seq#Index_10407| S (invRecv12 o_4@@20)) o_4@@20))
 :qid |stdinbpl.1473:22|
 :skolemid |127|
 :pattern ( (invRecv12 o_4@@20))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv12 o_4@@21)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange12 o_4@@21))) (and (= (|Seq#Index_10407| S (invRecv12 o_4@@21)) o_4@@21) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@21 value) (- (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@21 value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) (invRecv12 o_4@@21)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange12 o_4@@21)))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@21 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@21 value))))
 :qid |stdinbpl.1479:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@21 value))
))) (=> (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@2) o_4@@22 f_5@@14) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@3) o_4@@22 f_5@@14)))
 :qid |stdinbpl.1485:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@3) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@2) o_4@@23 f_5@@15) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@3) o_4@@23 f_5@@15)))
 :qid |stdinbpl.1485:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@3) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_21575_3298) ) (!  (=> (not (= f_5@@16 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@24 f_5@@16) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@24 f_5@@16)))
 :qid |stdinbpl.1485:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@3) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@2) o_4@@25 f_5@@17) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@3) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1485:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@3) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@2) o_4@@26 f_5@@18) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@3) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1485:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@3) o_4@@26 f_5@@18))
))) (and (IdenticalOnKnownLocations ExhaleHeap@0 ExhaleHeap@1 QPMask@3) (state ExhaleHeap@1 QPMask@3))) (and (and (=> (= (ControlFlow 0 50) 29) anon44_Else_correct) (=> (= (ControlFlow 0 50) 46) anon45_Then_correct)) (=> (= (ControlFlow 0 50) 49) anon45_Else_correct)))))))))))))
(let ((anon25_correct true))
(let ((anon43_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_12)) (= (ControlFlow 0 27) 23)) anon25_correct)))
(let ((anon43_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| k (|Seq#Length_10407| S)) p_12) (and (=> (= (ControlFlow 0 24) (- 0 26)) (>= p_12 0)) (=> (>= p_12 0) (and (=> (= (ControlFlow 0 24) (- 0 25)) (< p_12 (|Seq#Length_10407| S))) (=> (< p_12 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 24) 23) anon25_correct))))))))
(let ((anon40_Else_correct  (and (=> (= (ControlFlow 0 54) (- 0 56)) (forall ((o_1_1 Int) (o_1_2 Int) ) (!  (=> (and (and (and (and (not (= o_1_1 o_1_2)) (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1)) (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S o_1_1) (|Seq#Index_10407| S o_1_2))))
 :qid |stdinbpl.1387:15|
 :skolemid |116|
))) (=> (forall ((o_1_1@@0 Int) (o_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= o_1_1@@0 o_1_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S o_1_1@@0) (|Seq#Index_10407| S o_1_2@@0))))
 :qid |stdinbpl.1387:15|
 :skolemid |116|
)) (=> (and (forall ((o_1_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@1) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange11 (|Seq#Index_10407| S o_1_1@@1)) (= (invRecv11 (|Seq#Index_10407| S o_1_1@@1)) o_1_1@@1)))
 :qid |stdinbpl.1393:22|
 :skolemid |117|
 :pattern ( (|Seq#Index_10407| S o_1_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) o_1_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@1))
 :pattern ( (|Seq#Index_10407| S o_1_1@@1))
)) (forall ((o_4@@27 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv11 o_4@@27)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@27)) (= (|Seq#Index_10407| S (invRecv11 o_4@@27)) o_4@@27))
 :qid |stdinbpl.1397:22|
 :skolemid |118|
 :pattern ( (invRecv11 o_4@@27))
))) (and (=> (= (ControlFlow 0 54) (- 0 55)) (forall ((o_1_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@2) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1403:15|
 :skolemid |119|
 :pattern ( (|Seq#Index_10407| S o_1_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) o_1_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@2))
 :pattern ( (|Seq#Index_10407| S o_1_1@@2))
))) (=> (forall ((o_1_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@3) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1403:15|
 :skolemid |119|
 :pattern ( (|Seq#Index_10407| S o_1_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) o_1_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@3))
 :pattern ( (|Seq#Index_10407| S o_1_1@@3))
)) (=> (and (forall ((o_1_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@4) (> (/ (to_real 1) (to_real 2)) NoPerm)) (not (= (|Seq#Index_10407| S o_1_1@@4) null)))
 :qid |stdinbpl.1409:22|
 :skolemid |120|
 :pattern ( (|Seq#Index_10407| S o_1_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) o_1_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) o_1_1@@4))
 :pattern ( (|Seq#Index_10407| S o_1_1@@4))
)) (forall ((o_4@@28 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv11 o_4@@28)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@28)) (and (=> (< NoPerm (/ (to_real 1) (to_real 2))) (= (|Seq#Index_10407| S (invRecv11 o_4@@28)) o_4@@28)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@28 value) (+ (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@28 value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv11 o_4@@28)) (< NoPerm (/ (to_real 1) (to_real 2)))) (qpRange11 o_4@@28))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@28 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@28 value))))
 :qid |stdinbpl.1415:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@28 value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@29 T@Ref) (f_5@@19 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@1) o_4@@29 f_5@@19) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@2) o_4@@29 f_5@@19)))
 :qid |stdinbpl.1419:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@1) o_4@@29 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@2) o_4@@29 f_5@@19))
)) (forall ((o_4@@30 T@Ref) (f_5@@20 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@1) o_4@@30 f_5@@20) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@2) o_4@@30 f_5@@20)))
 :qid |stdinbpl.1419:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@1) o_4@@30 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@2) o_4@@30 f_5@@20))
))) (forall ((o_4@@31 T@Ref) (f_5@@21 T@Field_21575_3298) ) (!  (=> (not (= f_5@@21 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@31 f_5@@21) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@31 f_5@@21)))
 :qid |stdinbpl.1419:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@31 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@2) o_4@@31 f_5@@21))
))) (forall ((o_4@@32 T@Ref) (f_5@@22 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@1) o_4@@32 f_5@@22) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@2) o_4@@32 f_5@@22)))
 :qid |stdinbpl.1419:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@1) o_4@@32 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@2) o_4@@32 f_5@@22))
))) (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@1) o_4@@33 f_5@@23) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@2) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1419:29|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@1) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@2) o_4@@33 f_5@@23))
))) (state ExhaleHeap@0 QPMask@2)) (and (state ExhaleHeap@0 QPMask@2) (state ExhaleHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 54) 50) anon42_Else_correct) (=> (= (ControlFlow 0 54) 24) anon43_Then_correct)) (=> (= (ControlFlow 0 54) 27) anon43_Else_correct)))))))))))
(let ((anon21_correct true))
(let ((anon41_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 k) o_54)) (= (ControlFlow 0 22) 18)) anon21_correct)))
(let ((anon41_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) o_54) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= o_54 0)) (=> (>= o_54 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< o_54 (|Seq#Length_10407| S))) (=> (< o_54 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 19) 18) anon21_correct))))))))
(let ((anon38_Else_correct  (and (=> (= (ControlFlow 0 57) (- 0 60)) (forall ((l_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1) (dummyFunction_3298 (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@17) (|Seq#Index_10407| S l_1) value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1323:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_10407| S l_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) l_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1))
 :pattern ( (|Seq#Index_10407| S l_1))
))) (=> (forall ((l_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@0) (dummyFunction_3298 (select (|PolymorphicMapType_15472_10403_3298#PolymorphicMapType_15472| Heap@@17) (|Seq#Index_10407| S l_1@@0) value))) (>= (/ (to_real 1) (to_real 2)) NoPerm))
 :qid |stdinbpl.1323:17|
 :skolemid |109|
 :pattern ( (|Seq#Index_10407| S l_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) l_1@@0))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@0))
 :pattern ( (|Seq#Index_10407| S l_1@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 59)) (forall ((l_1@@1 Int) (l_1_2 Int) ) (!  (=> (and (and (and (and (not (= l_1@@1 l_1_2)) (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@1)) (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1_2)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S l_1@@1) (|Seq#Index_10407| S l_1_2))))
 :qid |stdinbpl.1330:17|
 :skolemid |110|
 :pattern ( (neverTriggered10 l_1@@1) (neverTriggered10 l_1_2))
))) (=> (forall ((l_1@@2 Int) (l_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= l_1@@2 l_1_2@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@2)) (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1_2@@0)) (< NoPerm (/ (to_real 1) (to_real 2)))) (< NoPerm (/ (to_real 1) (to_real 2)))) (not (= (|Seq#Index_10407| S l_1@@2) (|Seq#Index_10407| S l_1_2@@0))))
 :qid |stdinbpl.1330:17|
 :skolemid |110|
 :pattern ( (neverTriggered10 l_1@@2) (neverTriggered10 l_1_2@@0))
)) (and (=> (= (ControlFlow 0 57) (- 0 58)) (forall ((l_1@@3 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@3) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) (|Seq#Index_10407| S l_1@@3) value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.1337:17|
 :skolemid |111|
 :pattern ( (|Seq#Index_10407| S l_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) l_1@@3))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@3))
 :pattern ( (|Seq#Index_10407| S l_1@@3))
))) (=> (forall ((l_1@@4 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@4) (>= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) (|Seq#Index_10407| S l_1@@4) value) (/ (to_real 1) (to_real 2))))
 :qid |stdinbpl.1337:17|
 :skolemid |111|
 :pattern ( (|Seq#Index_10407| S l_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) l_1@@4))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@4))
 :pattern ( (|Seq#Index_10407| S l_1@@4))
)) (=> (forall ((l_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@5) (< NoPerm (/ (to_real 1) (to_real 2)))) (and (qpRange10 (|Seq#Index_10407| S l_1@@5)) (= (invRecv10 (|Seq#Index_10407| S l_1@@5)) l_1@@5)))
 :qid |stdinbpl.1343:22|
 :skolemid |112|
 :pattern ( (|Seq#Index_10407| S l_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 k) l_1@@5))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 k) l_1@@5))
 :pattern ( (|Seq#Index_10407| S l_1@@5))
)) (=> (and (forall ((o_4@@34 T@Ref) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv10 o_4@@34)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@34))) (= (|Seq#Index_10407| S (invRecv10 o_4@@34)) o_4@@34))
 :qid |stdinbpl.1347:22|
 :skolemid |113|
 :pattern ( (invRecv10 o_4@@34))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv10 o_4@@35)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@35))) (and (= (|Seq#Index_10407| S (invRecv10 o_4@@35)) o_4@@35) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@35 value) (- (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@35 value) (/ (to_real 1) (to_real 2)))))) (=> (not (and (|Seq#Contains_3176| (|Seq#Range| 0 k) (invRecv10 o_4@@35)) (and (< NoPerm (/ (to_real 1) (to_real 2))) (qpRange10 o_4@@35)))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@35 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@35 value))))
 :qid |stdinbpl.1353:22|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@35 value))
))) (=> (and (and (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@24 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@0) o_4@@36 f_5@@24) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@1) o_4@@36 f_5@@24)))
 :qid |stdinbpl.1359:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@1) o_4@@36 f_5@@24))
)) (forall ((o_4@@37 T@Ref) (f_5@@25 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@0) o_4@@37 f_5@@25) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@1) o_4@@37 f_5@@25)))
 :qid |stdinbpl.1359:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@1) o_4@@37 f_5@@25))
))) (forall ((o_4@@38 T@Ref) (f_5@@26 T@Field_21575_3298) ) (!  (=> (not (= f_5@@26 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@38 f_5@@26) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@38 f_5@@26)))
 :qid |stdinbpl.1359:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@1) o_4@@38 f_5@@26))
))) (forall ((o_4@@39 T@Ref) (f_5@@27 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@0) o_4@@39 f_5@@27) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@1) o_4@@39 f_5@@27)))
 :qid |stdinbpl.1359:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@1) o_4@@39 f_5@@27))
))) (forall ((o_4@@40 T@Ref) (f_5@@28 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@0) o_4@@40 f_5@@28) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@1) o_4@@40 f_5@@28)))
 :qid |stdinbpl.1359:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@1) o_4@@40 f_5@@28))
))) (and (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@0 QPMask@1) (state ExhaleHeap@0 QPMask@1))) (and (and (=> (= (ControlFlow 0 57) 54) anon40_Else_correct) (=> (= (ControlFlow 0 57) 19) anon41_Then_correct)) (=> (= (ControlFlow 0 57) 22) anon41_Else_correct)))))))))))))
(let ((anon17_correct true))
(let ((anon39_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 k) l_6)) (= (ControlFlow 0 17) 13)) anon17_correct)))
(let ((anon39_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 k) l_6) (and (=> (= (ControlFlow 0 14) (- 0 16)) (>= l_6 0)) (=> (>= l_6 0) (and (=> (= (ControlFlow 0 14) (- 0 15)) (< l_6 (|Seq#Length_10407| S))) (=> (< l_6 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 14) 13) anon17_correct))))))))
(let ((anon33_Else_correct  (and (=> (= (ControlFlow 0 78) (- 0 79)) (forall ((j_1 Int) (j_1_1 Int) ) (!  (=> (and (and (and (and (not (= j_1 j_1_1)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_1) (|Seq#Index_10407| S j_1_1))))
 :qid |stdinbpl.1178:15|
 :skolemid |97|
))) (=> (forall ((j_1@@0 Int) (j_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= j_1@@0 j_1_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@0)) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_10407| S j_1@@0) (|Seq#Index_10407| S j_1_1@@0))))
 :qid |stdinbpl.1178:15|
 :skolemid |97|
)) (=> (and (and (forall ((j_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@1) (< NoPerm FullPerm)) (and (qpRange7 (|Seq#Index_10407| S j_1@@1)) (= (invRecv7 (|Seq#Index_10407| S j_1@@1)) j_1@@1)))
 :qid |stdinbpl.1184:22|
 :skolemid |98|
 :pattern ( (|Seq#Index_10407| S j_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@1))
 :pattern ( (|Seq#Index_10407| S j_1@@1))
)) (forall ((o_4@@41 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv7 o_4@@41)) (< NoPerm FullPerm)) (qpRange7 o_4@@41)) (= (|Seq#Index_10407| S (invRecv7 o_4@@41)) o_4@@41))
 :qid |stdinbpl.1188:22|
 :skolemid |99|
 :pattern ( (invRecv7 o_4@@41))
))) (and (forall ((j_1@@2 Int) ) (!  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@2) (not (= (|Seq#Index_10407| S j_1@@2) null)))
 :qid |stdinbpl.1194:22|
 :skolemid |100|
 :pattern ( (|Seq#Index_10407| S j_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@2))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_1@@2))
 :pattern ( (|Seq#Index_10407| S j_1@@2))
)) (forall ((o_4@@42 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv7 o_4@@42)) (< NoPerm FullPerm)) (qpRange7 o_4@@42)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_10407| S (invRecv7 o_4@@42)) o_4@@42)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@42 value) (+ (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@42 value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) (invRecv7 o_4@@42)) (< NoPerm FullPerm)) (qpRange7 o_4@@42))) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@42 value) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@42 value))))
 :qid |stdinbpl.1200:22|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@42 value))
)))) (=> (and (and (and (and (and (forall ((o_4@@43 T@Ref) (f_5@@29 T@Field_15532_53) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_4@@43 f_5@@29) (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@0) o_4@@43 f_5@@29)))
 :qid |stdinbpl.1204:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| ZeroMask) o_4@@43 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_15493_10403_53#PolymorphicMapType_15493| QPMask@0) o_4@@43 f_5@@29))
)) (forall ((o_4@@44 T@Ref) (f_5@@30 T@Field_15545_15546) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_4@@44 f_5@@30) (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@0) o_4@@44 f_5@@30)))
 :qid |stdinbpl.1204:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| ZeroMask) o_4@@44 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_15493_10403_15546#PolymorphicMapType_15493| QPMask@0) o_4@@44 f_5@@30))
))) (forall ((o_4@@45 T@Ref) (f_5@@31 T@Field_21575_3298) ) (!  (=> (not (= f_5@@31 value)) (= (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@45 f_5@@31) (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@45 f_5@@31)))
 :qid |stdinbpl.1204:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| ZeroMask) o_4@@45 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_15493_10403_3298#PolymorphicMapType_15493| QPMask@0) o_4@@45 f_5@@31))
))) (forall ((o_4@@46 T@Ref) (f_5@@32 T@Field_10403_43623) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_4@@46 f_5@@32) (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@0) o_4@@46 f_5@@32)))
 :qid |stdinbpl.1204:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| ZeroMask) o_4@@46 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_15493_10403_43623#PolymorphicMapType_15493| QPMask@0) o_4@@46 f_5@@32))
))) (forall ((o_4@@47 T@Ref) (f_5@@33 T@Field_10403_43756) ) (!  (=> true (= (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_4@@47 f_5@@33) (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@0) o_4@@47 f_5@@33)))
 :qid |stdinbpl.1204:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| ZeroMask) o_4@@47 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_15493_10403_47878#PolymorphicMapType_15493| QPMask@0) o_4@@47 f_5@@33))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (and (=> (= (ControlFlow 0 78) 77) anon35_Then_correct) (=> (= (ControlFlow 0 78) 57) anon38_Else_correct)) (=> (= (ControlFlow 0 78) 14) anon39_Then_correct)) (=> (= (ControlFlow 0 78) 17) anon39_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon34_Else_correct  (=> (and (not (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon34_Then_correct  (=> (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j_4) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= j_4 0)) (=> (>= j_4 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< j_4 (|Seq#Length_10407| S))) (=> (< j_4 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon31_Else_correct  (=> (and (forall ((j1_1 Int) (j2_1 Int) ) (!  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1) (not (= j1_1 j2_1)))) (not (= (|Seq#Index_10407| S j1_1) (|Seq#Index_10407| S j2_1))))
 :qid |stdinbpl.1160:20|
 :skolemid |96|
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#Index_10407| S j2_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_1) (|Seq#Index_10407| S j2_1))
 :pattern ( (|Seq#ContainsTrigger_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1) (|Seq#Index_10407| S j1_1))
 :pattern ( (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_1) (|Seq#Index_10407| S j1_1))
 :pattern ( (|Seq#Index_10407| S j1_1) (|Seq#Index_10407| S j2_1))
)) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 80) 78) anon33_Else_correct) (=> (= (ControlFlow 0 80) 9) anon34_Then_correct)) (=> (= (ControlFlow 0 80) 12) anon34_Else_correct)))))
(let ((anon3_correct true))
(let ((anon32_Else_correct  (=> (and (not (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_26) (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_9) (not (= j1_26 j2_9))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon32_Then_correct  (=> (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j1_26) (and (|Seq#Contains_3176| (|Seq#Range| 0 (|Seq#Length_10407| S)) j2_9) (not (= j1_26 j2_9)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= j1_26 0)) (=> (>= j1_26 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< j1_26 (|Seq#Length_10407| S))) (=> (< j1_26 (|Seq#Length_10407| S)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j2_9 0)) (=> (>= j2_9 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j2_9 (|Seq#Length_10407| S))) (=> (< j2_9 (|Seq#Length_10407| S)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (<= 0 k) (< k (|Seq#Length_10407| S)))) (and (and (<= 0 a_2) (< a_2 b_24)) (and (< b_24 (|Seq#Length_10407| S)) (state Heap@@17 ZeroMask)))) (and (and (=> (= (ControlFlow 0 81) 80) anon31_Else_correct) (=> (= (ControlFlow 0 81) 2) anon32_Then_correct)) (=> (= (ControlFlow 0 81) 7) anon32_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 82) 81) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 29) (- 28))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
