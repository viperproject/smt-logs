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
(declare-sort T@Field_8662_53 0)
(declare-sort T@Field_8675_8676 0)
(declare-sort T@Field_14683_3034 0)
(declare-sort T@Field_5650_22907 0)
(declare-sort T@Field_5650_22774 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8623 0)) (((PolymorphicMapType_8623 (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| (Array T@Ref T@Field_14683_3034 Real)) (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| (Array T@Ref T@Field_8662_53 Real)) (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| (Array T@Ref T@Field_8675_8676 Real)) (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| (Array T@Ref T@Field_5650_22774 Real)) (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| (Array T@Ref T@Field_5650_22907 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_9151 0)) (((PolymorphicMapType_9151 (|PolymorphicMapType_9151_8662_53#PolymorphicMapType_9151| (Array T@Ref T@Field_8662_53 Bool)) (|PolymorphicMapType_9151_8662_8676#PolymorphicMapType_9151| (Array T@Ref T@Field_8675_8676 Bool)) (|PolymorphicMapType_9151_8662_3034#PolymorphicMapType_9151| (Array T@Ref T@Field_14683_3034 Bool)) (|PolymorphicMapType_9151_8662_22774#PolymorphicMapType_9151| (Array T@Ref T@Field_5650_22774 Bool)) (|PolymorphicMapType_9151_8662_24085#PolymorphicMapType_9151| (Array T@Ref T@Field_5650_22907 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8602 0)) (((PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| (Array T@Ref T@Field_8662_53 Bool)) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| (Array T@Ref T@Field_8675_8676 T@Ref)) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| (Array T@Ref T@Field_14683_3034 Int)) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| (Array T@Ref T@Field_5650_22907 T@PolymorphicMapType_9151)) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| (Array T@Ref T@Field_5650_22774 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8662_53)
(declare-fun f_7 () T@Field_14683_3034)
(declare-sort T@Seq_15756 0)
(declare-fun |Seq#Length_5661| (T@Seq_15756) Int)
(declare-fun |Seq#Drop_5661| (T@Seq_15756 Int) T@Seq_15756)
(declare-sort T@Seq_2912 0)
(declare-fun |Seq#Length_2912| (T@Seq_2912) Int)
(declare-fun |Seq#Drop_3048| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun succHeap (T@PolymorphicMapType_8602 T@PolymorphicMapType_8602) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8602 T@PolymorphicMapType_8602) Bool)
(declare-fun state (T@PolymorphicMapType_8602 T@PolymorphicMapType_8623) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8623) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_9151)
(declare-fun |Seq#Index_5661| (T@Seq_15756 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2912| (T@Seq_2912 Int) Int)
(declare-fun |Seq#Empty_5661| () T@Seq_15756)
(declare-fun |Seq#Empty_2912| () T@Seq_2912)
(declare-fun |Seq#Update_5661| (T@Seq_15756 Int T@Ref) T@Seq_15756)
(declare-fun |Seq#Update_2912| (T@Seq_2912 Int Int) T@Seq_2912)
(declare-fun |Seq#Take_5661| (T@Seq_15756 Int) T@Seq_15756)
(declare-fun |Seq#Take_3048| (T@Seq_2912 Int) T@Seq_2912)
(declare-fun |Seq#Contains_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2912)
(declare-fun |Seq#Contains_15756| (T@Seq_15756 T@Ref) Bool)
(declare-fun |Seq#Skolem_15756| (T@Seq_15756 T@Ref) Int)
(declare-fun |Seq#Skolem_2912| (T@Seq_2912 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8602 T@PolymorphicMapType_8602 T@PolymorphicMapType_8623) Bool)
(declare-fun IsPredicateField_5650_22865 (T@Field_5650_22774) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5650 (T@Field_5650_22774) T@Field_5650_22907)
(declare-fun HasDirectPerm_5650_22838 (T@PolymorphicMapType_8623 T@Ref T@Field_5650_22774) Bool)
(declare-fun IsWandField_5650_24612 (T@Field_5650_22774) Bool)
(declare-fun WandMaskField_5650 (T@Field_5650_22774) T@Field_5650_22907)
(declare-fun |Seq#Singleton_5661| (T@Ref) T@Seq_15756)
(declare-fun |Seq#Singleton_2912| (Int) T@Seq_2912)
(declare-fun |Seq#Append_15756| (T@Seq_15756 T@Seq_15756) T@Seq_15756)
(declare-fun |Seq#Append_2912| (T@Seq_2912 T@Seq_2912) T@Seq_2912)
(declare-fun dummyHeap () T@PolymorphicMapType_8602)
(declare-fun ZeroMask () T@PolymorphicMapType_8623)
(declare-fun InsidePredicate_8662_8662 (T@Field_5650_22774 T@FrameType T@Field_5650_22774 T@FrameType) Bool)
(declare-fun IsPredicateField_5650_3034 (T@Field_14683_3034) Bool)
(declare-fun IsWandField_5650_3034 (T@Field_14683_3034) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5650_28158 (T@Field_5650_22907) Bool)
(declare-fun IsWandField_5650_28174 (T@Field_5650_22907) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5650_8676 (T@Field_8675_8676) Bool)
(declare-fun IsWandField_5650_8676 (T@Field_8675_8676) Bool)
(declare-fun IsPredicateField_5650_53 (T@Field_8662_53) Bool)
(declare-fun IsWandField_5650_53 (T@Field_8662_53) Bool)
(declare-fun HasDirectPerm_5650_28612 (T@PolymorphicMapType_8623 T@Ref T@Field_5650_22907) Bool)
(declare-fun HasDirectPerm_5650_8676 (T@PolymorphicMapType_8623 T@Ref T@Field_8675_8676) Bool)
(declare-fun HasDirectPerm_5650_53 (T@PolymorphicMapType_8623 T@Ref T@Field_8662_53) Bool)
(declare-fun HasDirectPerm_5650_3034 (T@PolymorphicMapType_8623 T@Ref T@Field_14683_3034) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8623 T@PolymorphicMapType_8623 T@PolymorphicMapType_8623) Bool)
(declare-fun |Seq#Equal_15756| (T@Seq_15756 T@Seq_15756) Bool)
(declare-fun |Seq#Equal_2912| (T@Seq_2912 T@Seq_2912) Bool)
(declare-fun |Seq#ContainsTrigger_5661| (T@Seq_15756 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2912| (T@Seq_2912 Int) Bool)
(declare-fun |Seq#SkolemDiff_15756| (T@Seq_15756 T@Seq_15756) Int)
(declare-fun |Seq#SkolemDiff_2912| (T@Seq_2912 T@Seq_2912) Int)
(assert (forall ((s T@Seq_15756) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_5661| s)) (= (|Seq#Length_5661| (|Seq#Drop_5661| s n)) (- (|Seq#Length_5661| s) n))) (=> (< (|Seq#Length_5661| s) n) (= (|Seq#Length_5661| (|Seq#Drop_5661| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_5661| (|Seq#Drop_5661| s n)) (|Seq#Length_5661| s))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_5661| (|Seq#Drop_5661| s n)))
 :pattern ( (|Seq#Length_5661| s) (|Seq#Drop_5661| s n))
)))
(assert (forall ((s@@0 T@Seq_2912) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2912| s@@0)) (= (|Seq#Length_2912| (|Seq#Drop_3048| s@@0 n@@0)) (- (|Seq#Length_2912| s@@0) n@@0))) (=> (< (|Seq#Length_2912| s@@0) n@@0) (= (|Seq#Length_2912| (|Seq#Drop_3048| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2912| (|Seq#Drop_3048| s@@0 n@@0)) (|Seq#Length_2912| s@@0))))
 :qid |stdinbpl.291:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2912| (|Seq#Drop_3048| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2912| s@@0) (|Seq#Drop_3048| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_8602) (Heap1 T@PolymorphicMapType_8602) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8602) (Mask T@PolymorphicMapType_8623) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8602) (Heap1@@0 T@PolymorphicMapType_8602) (Heap2 T@PolymorphicMapType_8602) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5650_22907) ) (!  (not (select (|PolymorphicMapType_9151_8662_24085#PolymorphicMapType_9151| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9151_8662_24085#PolymorphicMapType_9151| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5650_22774) ) (!  (not (select (|PolymorphicMapType_9151_8662_22774#PolymorphicMapType_9151| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9151_8662_22774#PolymorphicMapType_9151| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14683_3034) ) (!  (not (select (|PolymorphicMapType_9151_8662_3034#PolymorphicMapType_9151| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9151_8662_3034#PolymorphicMapType_9151| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8675_8676) ) (!  (not (select (|PolymorphicMapType_9151_8662_8676#PolymorphicMapType_9151| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9151_8662_8676#PolymorphicMapType_9151| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8662_53) ) (!  (not (select (|PolymorphicMapType_9151_8662_53#PolymorphicMapType_9151| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_9151_8662_53#PolymorphicMapType_9151| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_15756) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_5661| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_5661| (|Seq#Drop_5661| s@@1 n@@1) j) (|Seq#Index_5661| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_5661| (|Seq#Drop_5661| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2912) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2912| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2912| (|Seq#Drop_3048| s@@2 n@@2) j@@0) (|Seq#Index_2912| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.312:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2912| (|Seq#Drop_3048| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_5661| |Seq#Empty_5661|) 0))
(assert (= (|Seq#Length_2912| |Seq#Empty_2912|) 0))
(assert (forall ((s@@3 T@Seq_15756) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_5661| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_5661| (|Seq#Update_5661| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_5661| (|Seq#Update_5661| s@@3 i v) n@@3) (|Seq#Index_5661| s@@3 n@@3)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_5661| (|Seq#Update_5661| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_5661| s@@3 n@@3) (|Seq#Update_5661| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2912) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2912| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2912| s@@4 n@@4)))))
 :qid |stdinbpl.267:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2912| (|Seq#Update_2912| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2912| s@@4 n@@4) (|Seq#Update_2912| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_15756) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_5661| s@@5)) (= (|Seq#Length_5661| (|Seq#Take_5661| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_5661| s@@5) n@@5) (= (|Seq#Length_5661| (|Seq#Take_5661| s@@5 n@@5)) (|Seq#Length_5661| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_5661| (|Seq#Take_5661| s@@5 n@@5)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_5661| (|Seq#Take_5661| s@@5 n@@5)))
 :pattern ( (|Seq#Take_5661| s@@5 n@@5) (|Seq#Length_5661| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2912) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2912| s@@6)) (= (|Seq#Length_2912| (|Seq#Take_3048| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2912| s@@6) n@@6) (= (|Seq#Length_2912| (|Seq#Take_3048| s@@6 n@@6)) (|Seq#Length_2912| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2912| (|Seq#Take_3048| s@@6 n@@6)) 0)))
 :qid |stdinbpl.278:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2912| (|Seq#Take_3048| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3048| s@@6 n@@6) (|Seq#Length_2912| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.552:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_15756) (x T@Ref) ) (!  (=> (|Seq#Contains_15756| s@@7 x) (and (and (<= 0 (|Seq#Skolem_15756| s@@7 x)) (< (|Seq#Skolem_15756| s@@7 x) (|Seq#Length_5661| s@@7))) (= (|Seq#Index_5661| s@@7 (|Seq#Skolem_15756| s@@7 x)) x)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_15756| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2912) (x@@0 Int) ) (!  (=> (|Seq#Contains_2912| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2912| s@@8 x@@0)) (< (|Seq#Skolem_2912| s@@8 x@@0) (|Seq#Length_2912| s@@8))) (= (|Seq#Index_2912| s@@8 (|Seq#Skolem_2912| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.410:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2912| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_15756) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_5661| s@@9 n@@7) s@@9))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_5661| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2912) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3048| s@@10 n@@8) s@@10))
 :qid |stdinbpl.394:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3048| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.247:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.245:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8602) (ExhaleHeap T@PolymorphicMapType_8602) (Mask@@0 T@PolymorphicMapType_8623) (pm_f_10 T@Field_5650_22774) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5650_22838 Mask@@0 null pm_f_10) (IsPredicateField_5650_22865 pm_f_10)) (= (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@0) null (PredicateMaskField_5650 pm_f_10)) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap) null (PredicateMaskField_5650 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5650_22865 pm_f_10) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap) null (PredicateMaskField_5650 pm_f_10)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8602) (ExhaleHeap@@0 T@PolymorphicMapType_8602) (Mask@@1 T@PolymorphicMapType_8623) (pm_f_10@@0 T@Field_5650_22774) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5650_22838 Mask@@1 null pm_f_10@@0) (IsWandField_5650_24612 pm_f_10@@0)) (= (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@1) null (WandMaskField_5650 pm_f_10@@0)) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@0) null (WandMaskField_5650 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5650_24612 pm_f_10@@0) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@0) null (WandMaskField_5650 pm_f_10@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_15756| (|Seq#Singleton_5661| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_15756| (|Seq#Singleton_5661| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.535:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2912| (|Seq#Singleton_2912| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_15756) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_5661| s@@11))) (= (|Seq#Index_5661| (|Seq#Take_5661| s@@11 n@@9) j@@3) (|Seq#Index_5661| s@@11 j@@3)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_5661| (|Seq#Take_5661| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_5661| s@@11 j@@3) (|Seq#Take_5661| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2912) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2912| s@@12))) (= (|Seq#Index_2912| (|Seq#Take_3048| s@@12 n@@10) j@@4) (|Seq#Index_2912| s@@12 j@@4)))
 :qid |stdinbpl.286:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2912| (|Seq#Take_3048| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2912| s@@12 j@@4) (|Seq#Take_3048| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_15756) (t T@Seq_15756) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_5661| s@@13))) (< n@@11 (|Seq#Length_5661| (|Seq#Append_15756| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_5661| s@@13)) (|Seq#Length_5661| s@@13)) n@@11) (= (|Seq#Take_5661| (|Seq#Append_15756| s@@13 t) n@@11) (|Seq#Append_15756| s@@13 (|Seq#Take_5661| t (|Seq#Sub| n@@11 (|Seq#Length_5661| s@@13)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_5661| (|Seq#Append_15756| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2912) (t@@0 T@Seq_2912) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2912| s@@14))) (< n@@12 (|Seq#Length_2912| (|Seq#Append_2912| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)) (|Seq#Length_2912| s@@14)) n@@12) (= (|Seq#Take_3048| (|Seq#Append_2912| s@@14 t@@0) n@@12) (|Seq#Append_2912| s@@14 (|Seq#Take_3048| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2912| s@@14)))))))
 :qid |stdinbpl.371:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3048| (|Seq#Append_2912| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8602) (ExhaleHeap@@1 T@PolymorphicMapType_8602) (Mask@@2 T@PolymorphicMapType_8623) (o_23 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@2) o_23 $allocated) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@1) o_23 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@1) o_23 $allocated))
)))
(assert (forall ((p T@Field_5650_22774) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8662_8662 p v_1 p w))
 :qid |stdinbpl.189:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8662_8662 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_15756) (s1 T@Seq_15756) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_5661|)) (not (= s1 |Seq#Empty_5661|))) (<= (|Seq#Length_5661| s0) n@@13)) (< n@@13 (|Seq#Length_5661| (|Seq#Append_15756| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_5661| s0)) (|Seq#Length_5661| s0)) n@@13) (= (|Seq#Index_5661| (|Seq#Append_15756| s0 s1) n@@13) (|Seq#Index_5661| s1 (|Seq#Sub| n@@13 (|Seq#Length_5661| s0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_5661| (|Seq#Append_15756| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2912) (s1@@0 T@Seq_2912) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2912|)) (not (= s1@@0 |Seq#Empty_2912|))) (<= (|Seq#Length_2912| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2912| (|Seq#Append_2912| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0)) (|Seq#Length_2912| s0@@0)) n@@14) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14) (|Seq#Index_2912| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2912| s0@@0))))))
 :qid |stdinbpl.258:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_5650_3034 f_7)))
(assert  (not (IsWandField_5650_3034 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8602) (ExhaleHeap@@2 T@PolymorphicMapType_8602) (Mask@@3 T@PolymorphicMapType_8623) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8623) (o_2@@4 T@Ref) (f_4@@4 T@Field_5650_22907) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_5650_28158 f_4@@4))) (not (IsWandField_5650_28174 f_4@@4))) (<= (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8623) (o_2@@5 T@Ref) (f_4@@5 T@Field_5650_22774) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_5650_22865 f_4@@5))) (not (IsWandField_5650_24612 f_4@@5))) (<= (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8623) (o_2@@6 T@Ref) (f_4@@6 T@Field_8675_8676) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5650_8676 f_4@@6))) (not (IsWandField_5650_8676 f_4@@6))) (<= (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8623) (o_2@@7 T@Ref) (f_4@@7 T@Field_8662_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5650_53 f_4@@7))) (not (IsWandField_5650_53 f_4@@7))) (<= (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8623) (o_2@@8 T@Ref) (f_4@@8 T@Field_14683_3034) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5650_3034 f_4@@8))) (not (IsWandField_5650_3034 f_4@@8))) (<= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8623) (o_2@@9 T@Ref) (f_4@@9 T@Field_5650_22907) ) (! (= (HasDirectPerm_5650_28612 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5650_28612 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8623) (o_2@@10 T@Ref) (f_4@@10 T@Field_5650_22774) ) (! (= (HasDirectPerm_5650_22838 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5650_22838 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8623) (o_2@@11 T@Ref) (f_4@@11 T@Field_8675_8676) ) (! (= (HasDirectPerm_5650_8676 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5650_8676 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8623) (o_2@@12 T@Ref) (f_4@@12 T@Field_8662_53) ) (! (= (HasDirectPerm_5650_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5650_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8623) (o_2@@13 T@Ref) (f_4@@13 T@Field_14683_3034) ) (! (= (HasDirectPerm_5650_3034 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5650_3034 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8602) (ExhaleHeap@@3 T@PolymorphicMapType_8602) (Mask@@14 T@PolymorphicMapType_8623) (pm_f_10@@1 T@Field_5650_22774) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_5650_22838 Mask@@14 null pm_f_10@@1) (IsPredicateField_5650_22865 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_15 T@Field_8662_53) ) (!  (=> (select (|PolymorphicMapType_9151_8662_53#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) null (PredicateMaskField_5650 pm_f_10@@1))) o2_10 f_15) (= (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@4) o2_10 f_15) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10 f_15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10 f_15))
)) (forall ((o2_10@@0 T@Ref) (f_15@@0 T@Field_8675_8676) ) (!  (=> (select (|PolymorphicMapType_9151_8662_8676#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) null (PredicateMaskField_5650 pm_f_10@@1))) o2_10@@0 f_15@@0) (= (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@4) o2_10@@0 f_15@@0) (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@0 f_15@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@0 f_15@@0))
))) (forall ((o2_10@@1 T@Ref) (f_15@@1 T@Field_14683_3034) ) (!  (=> (select (|PolymorphicMapType_9151_8662_3034#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) null (PredicateMaskField_5650 pm_f_10@@1))) o2_10@@1 f_15@@1) (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@4) o2_10@@1 f_15@@1) (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@1 f_15@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@1 f_15@@1))
))) (forall ((o2_10@@2 T@Ref) (f_15@@2 T@Field_5650_22774) ) (!  (=> (select (|PolymorphicMapType_9151_8662_22774#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) null (PredicateMaskField_5650 pm_f_10@@1))) o2_10@@2 f_15@@2) (= (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@4) o2_10@@2 f_15@@2) (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@2 f_15@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@2 f_15@@2))
))) (forall ((o2_10@@3 T@Ref) (f_15@@3 T@Field_5650_22907) ) (!  (=> (select (|PolymorphicMapType_9151_8662_24085#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) null (PredicateMaskField_5650 pm_f_10@@1))) o2_10@@3 f_15@@3) (= (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@4) o2_10@@3 f_15@@3) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@3 f_15@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@3) o2_10@@3 f_15@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_5650_22865 pm_f_10@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8602) (ExhaleHeap@@4 T@PolymorphicMapType_8602) (Mask@@15 T@PolymorphicMapType_8623) (pm_f_10@@2 T@Field_5650_22774) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_5650_22838 Mask@@15 null pm_f_10@@2) (IsWandField_5650_24612 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_15@@4 T@Field_8662_53) ) (!  (=> (select (|PolymorphicMapType_9151_8662_53#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) null (WandMaskField_5650 pm_f_10@@2))) o2_10@@4 f_15@@4) (= (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@5) o2_10@@4 f_15@@4) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@4 f_15@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@4 f_15@@4))
)) (forall ((o2_10@@5 T@Ref) (f_15@@5 T@Field_8675_8676) ) (!  (=> (select (|PolymorphicMapType_9151_8662_8676#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) null (WandMaskField_5650 pm_f_10@@2))) o2_10@@5 f_15@@5) (= (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@5) o2_10@@5 f_15@@5) (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@5 f_15@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@5 f_15@@5))
))) (forall ((o2_10@@6 T@Ref) (f_15@@6 T@Field_14683_3034) ) (!  (=> (select (|PolymorphicMapType_9151_8662_3034#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) null (WandMaskField_5650 pm_f_10@@2))) o2_10@@6 f_15@@6) (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@5) o2_10@@6 f_15@@6) (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@6 f_15@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@6 f_15@@6))
))) (forall ((o2_10@@7 T@Ref) (f_15@@7 T@Field_5650_22774) ) (!  (=> (select (|PolymorphicMapType_9151_8662_22774#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) null (WandMaskField_5650 pm_f_10@@2))) o2_10@@7 f_15@@7) (= (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@5) o2_10@@7 f_15@@7) (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@7 f_15@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@7 f_15@@7))
))) (forall ((o2_10@@8 T@Ref) (f_15@@8 T@Field_5650_22907) ) (!  (=> (select (|PolymorphicMapType_9151_8662_24085#PolymorphicMapType_9151| (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) null (WandMaskField_5650 pm_f_10@@2))) o2_10@@8 f_15@@8) (= (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@5) o2_10@@8 f_15@@8) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@8 f_15@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@4) o2_10@@8 f_15@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_5650_24612 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.177:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.550:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2912| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8602) (ExhaleHeap@@5 T@PolymorphicMapType_8602) (Mask@@16 T@PolymorphicMapType_8623) (o_23@@0 T@Ref) (f_15@@9 T@Field_5650_22907) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_5650_28612 Mask@@16 o_23@@0 f_15@@9) (= (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@6) o_23@@0 f_15@@9) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@5) o_23@@0 f_15@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| ExhaleHeap@@5) o_23@@0 f_15@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8602) (ExhaleHeap@@6 T@PolymorphicMapType_8602) (Mask@@17 T@PolymorphicMapType_8623) (o_23@@1 T@Ref) (f_15@@10 T@Field_5650_22774) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_5650_22838 Mask@@17 o_23@@1 f_15@@10) (= (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@7) o_23@@1 f_15@@10) (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@6) o_23@@1 f_15@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| ExhaleHeap@@6) o_23@@1 f_15@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8602) (ExhaleHeap@@7 T@PolymorphicMapType_8602) (Mask@@18 T@PolymorphicMapType_8623) (o_23@@2 T@Ref) (f_15@@11 T@Field_8675_8676) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_5650_8676 Mask@@18 o_23@@2 f_15@@11) (= (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@8) o_23@@2 f_15@@11) (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@7) o_23@@2 f_15@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| ExhaleHeap@@7) o_23@@2 f_15@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8602) (ExhaleHeap@@8 T@PolymorphicMapType_8602) (Mask@@19 T@PolymorphicMapType_8623) (o_23@@3 T@Ref) (f_15@@12 T@Field_8662_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_5650_53 Mask@@19 o_23@@3 f_15@@12) (= (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@9) o_23@@3 f_15@@12) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@8) o_23@@3 f_15@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| ExhaleHeap@@8) o_23@@3 f_15@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8602) (ExhaleHeap@@9 T@PolymorphicMapType_8602) (Mask@@20 T@PolymorphicMapType_8623) (o_23@@4 T@Ref) (f_15@@13 T@Field_14683_3034) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_5650_3034 Mask@@20 o_23@@4 f_15@@13) (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@10) o_23@@4 f_15@@13) (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@9) o_23@@4 f_15@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| ExhaleHeap@@9) o_23@@4 f_15@@13))
)))
(assert (forall ((s0@@1 T@Seq_15756) (s1@@1 T@Seq_15756) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_5661|)) (not (= s1@@1 |Seq#Empty_5661|))) (= (|Seq#Length_5661| (|Seq#Append_15756| s0@@1 s1@@1)) (+ (|Seq#Length_5661| s0@@1) (|Seq#Length_5661| s1@@1))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_5661| (|Seq#Append_15756| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2912) (s1@@2 T@Seq_2912) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2912|)) (not (= s1@@2 |Seq#Empty_2912|))) (= (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)) (+ (|Seq#Length_2912| s0@@2) (|Seq#Length_2912| s1@@2))))
 :qid |stdinbpl.227:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2912| (|Seq#Append_2912| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5650_22907) ) (! (= (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_5650_22774) ) (! (= (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8675_8676) ) (! (= (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8662_53) ) (! (= (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14683_3034) ) (! (= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_15756) (t@@1 T@Seq_15756) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_5661| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_5661| s@@15)) (|Seq#Length_5661| s@@15)) n@@15) (= (|Seq#Drop_5661| (|Seq#Append_15756| s@@15 t@@1) n@@15) (|Seq#Drop_5661| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_5661| s@@15))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_5661| (|Seq#Append_15756| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2912) (t@@2 T@Seq_2912) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2912| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16)) (|Seq#Length_2912| s@@16)) n@@16) (= (|Seq#Drop_3048| (|Seq#Append_2912| s@@16 t@@2) n@@16) (|Seq#Drop_3048| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2912| s@@16))))))
 :qid |stdinbpl.384:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3048| (|Seq#Append_2912| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8623) (SummandMask1 T@PolymorphicMapType_8623) (SummandMask2 T@PolymorphicMapType_8623) (o_2@@19 T@Ref) (f_4@@19 T@Field_5650_22907) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8623) (SummandMask1@@0 T@PolymorphicMapType_8623) (SummandMask2@@0 T@PolymorphicMapType_8623) (o_2@@20 T@Ref) (f_4@@20 T@Field_5650_22774) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8623) (SummandMask1@@1 T@PolymorphicMapType_8623) (SummandMask2@@1 T@PolymorphicMapType_8623) (o_2@@21 T@Ref) (f_4@@21 T@Field_8675_8676) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8623) (SummandMask1@@2 T@PolymorphicMapType_8623) (SummandMask2@@2 T@PolymorphicMapType_8623) (o_2@@22 T@Ref) (f_4@@22 T@Field_8662_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8623) (SummandMask1@@3 T@PolymorphicMapType_8623) (SummandMask2@@3 T@PolymorphicMapType_8623) (o_2@@23 T@Ref) (f_4@@23 T@Field_14683_3034) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.549:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2912| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_15756) (b T@Seq_15756) ) (!  (=> (|Seq#Equal_15756| a b) (= a b))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_15756| a b))
)))
(assert (forall ((a@@0 T@Seq_2912) (b@@0 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.522:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2912| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_15756) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_5661| s@@17))) (|Seq#ContainsTrigger_5661| s@@17 (|Seq#Index_5661| s@@17 i@@3)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_5661| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2912) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2912| s@@18))) (|Seq#ContainsTrigger_2912| s@@18 (|Seq#Index_2912| s@@18 i@@4)))
 :qid |stdinbpl.415:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2912| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_15756) (s1@@3 T@Seq_15756) ) (!  (and (=> (= s0@@3 |Seq#Empty_5661|) (= (|Seq#Append_15756| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_5661|) (= (|Seq#Append_15756| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_15756| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2912) (s1@@4 T@Seq_2912) ) (!  (and (=> (= s0@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2912|) (= (|Seq#Append_2912| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2912| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_5661| (|Seq#Singleton_5661| t@@3) 0) t@@3)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_5661| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2912| (|Seq#Singleton_2912| t@@4) 0) t@@4)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2912| t@@4))
)))
(assert (forall ((s@@19 T@Seq_15756) ) (! (<= 0 (|Seq#Length_5661| s@@19))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_5661| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2912) ) (! (<= 0 (|Seq#Length_2912| s@@20))
 :qid |stdinbpl.216:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2912| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_15756) (s1@@5 T@Seq_15756) ) (!  (=> (|Seq#Equal_15756| s0@@5 s1@@5) (and (= (|Seq#Length_5661| s0@@5) (|Seq#Length_5661| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_5661| s0@@5))) (= (|Seq#Index_5661| s0@@5 j@@6) (|Seq#Index_5661| s1@@5 j@@6)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_5661| s0@@5 j@@6))
 :pattern ( (|Seq#Index_5661| s1@@5 j@@6))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_15756| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2912) (s1@@6 T@Seq_2912) ) (!  (=> (|Seq#Equal_2912| s0@@6 s1@@6) (and (= (|Seq#Length_2912| s0@@6) (|Seq#Length_2912| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2912| s0@@6))) (= (|Seq#Index_2912| s0@@6 j@@7) (|Seq#Index_2912| s1@@6 j@@7)))
 :qid |stdinbpl.512:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2912| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2912| s1@@6 j@@7))
))))
 :qid |stdinbpl.509:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2912| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_5661| (|Seq#Singleton_5661| t@@5)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_5661| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2912| (|Seq#Singleton_2912| t@@6)) 1)
 :qid |stdinbpl.224:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2912| t@@6))
)))
(assert (forall ((s@@21 T@Seq_15756) (t@@7 T@Seq_15756) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_5661| s@@21))) (= (|Seq#Take_5661| (|Seq#Append_15756| s@@21 t@@7) n@@17) (|Seq#Take_5661| s@@21 n@@17)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_5661| (|Seq#Append_15756| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2912) (t@@8 T@Seq_2912) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2912| s@@22))) (= (|Seq#Take_3048| (|Seq#Append_2912| s@@22 t@@8) n@@18) (|Seq#Take_3048| s@@22 n@@18)))
 :qid |stdinbpl.366:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3048| (|Seq#Append_2912| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_15756) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_5661| s@@23))) (= (|Seq#Length_5661| (|Seq#Update_5661| s@@23 i@@5 v@@2)) (|Seq#Length_5661| s@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_5661| (|Seq#Update_5661| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_5661| s@@23) (|Seq#Update_5661| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2912) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2912| s@@24))) (= (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)) (|Seq#Length_2912| s@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2912| (|Seq#Update_2912| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2912| s@@24) (|Seq#Update_2912| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8602) (o_4 T@Ref) (f_25 T@Field_5650_22774) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@11) (store (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@11) o_4 f_25 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@11) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@11) (store (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@11) o_4 f_25 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8602) (o_4@@0 T@Ref) (f_25@@0 T@Field_5650_22907) (v@@5 T@PolymorphicMapType_9151) ) (! (succHeap Heap@@12 (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@12) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@12) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@12) (store (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@12) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@12) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@12) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@12) (store (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@12) o_4@@0 f_25@@0 v@@5) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8602) (o_4@@1 T@Ref) (f_25@@1 T@Field_14683_3034) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@13) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@13) (store (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@13) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@13) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@13) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@13) (store (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@13) o_4@@1 f_25@@1 v@@6) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@13) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8602) (o_4@@2 T@Ref) (f_25@@2 T@Field_8675_8676) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@14) (store (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@14) o_4@@2 f_25@@2 v@@7) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@14) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@14) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8602 (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@14) (store (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@14) o_4@@2 f_25@@2 v@@7) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@14) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@14) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8602) (o_4@@3 T@Ref) (f_25@@3 T@Field_8662_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8602 (store (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@15) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8602 (store (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@15) o_4@@3 f_25@@3 v@@8) (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_5650_22951#PolymorphicMapType_8602| Heap@@15) (|PolymorphicMapType_8602_8662_22774#PolymorphicMapType_8602| Heap@@15)))
)))
(assert (forall ((s@@25 T@Seq_15756) (t@@9 T@Seq_15756) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_5661| s@@25))) (= (|Seq#Drop_5661| (|Seq#Append_15756| s@@25 t@@9) n@@19) (|Seq#Append_15756| (|Seq#Drop_5661| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_5661| (|Seq#Append_15756| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2912) (t@@10 T@Seq_2912) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2912| s@@26))) (= (|Seq#Drop_3048| (|Seq#Append_2912| s@@26 t@@10) n@@20) (|Seq#Append_2912| (|Seq#Drop_3048| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.380:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3048| (|Seq#Append_2912| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_15756) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_5661| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_5661| (|Seq#Drop_5661| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_5661| s@@27 i@@7))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_5661| s@@27 n@@21) (|Seq#Index_5661| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2912) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2912| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2912| (|Seq#Drop_3048| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2912| s@@28 i@@8))))
 :qid |stdinbpl.316:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3048| s@@28 n@@22) (|Seq#Index_2912| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_15756) (s1@@7 T@Seq_15756) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_5661|)) (not (= s1@@7 |Seq#Empty_5661|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_5661| s0@@7))) (= (|Seq#Index_5661| (|Seq#Append_15756| s0@@7 s1@@7) n@@23) (|Seq#Index_5661| s0@@7 n@@23)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_5661| (|Seq#Append_15756| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_5661| s0@@7 n@@23) (|Seq#Append_15756| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2912) (s1@@8 T@Seq_2912) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2912|)) (not (= s1@@8 |Seq#Empty_2912|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2912| s0@@8))) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24) (|Seq#Index_2912| s0@@8 n@@24)))
 :qid |stdinbpl.256:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2912| (|Seq#Append_2912| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2912| s0@@8 n@@24) (|Seq#Append_2912| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_15756) (s1@@9 T@Seq_15756) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_5661|)) (not (= s1@@9 |Seq#Empty_5661|))) (<= 0 m)) (< m (|Seq#Length_5661| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_5661| s0@@9)) (|Seq#Length_5661| s0@@9)) m) (= (|Seq#Index_5661| (|Seq#Append_15756| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_5661| s0@@9))) (|Seq#Index_5661| s1@@9 m))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_5661| s1@@9 m) (|Seq#Append_15756| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2912) (s1@@10 T@Seq_2912) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2912|)) (not (= s1@@10 |Seq#Empty_2912|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2912| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10)) (|Seq#Length_2912| s0@@10)) m@@0) (= (|Seq#Index_2912| (|Seq#Append_2912| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2912| s0@@10))) (|Seq#Index_2912| s1@@10 m@@0))))
 :qid |stdinbpl.261:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2912| s1@@10 m@@0) (|Seq#Append_2912| s0@@10 s1@@10))
)))
(assert (forall ((o_4@@4 T@Ref) (f_9 T@Field_8675_8676) (Heap@@16 T@PolymorphicMapType_8602) ) (!  (=> (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@16) o_4@@4 $allocated) (select (|PolymorphicMapType_8602_5458_53#PolymorphicMapType_8602| Heap@@16) (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@16) o_4@@4 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8602_5461_5462#PolymorphicMapType_8602| Heap@@16) o_4@@4 f_9))
)))
(assert (forall ((s@@29 T@Seq_15756) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_5661| s@@29))) (= (|Seq#Index_5661| s@@29 i@@9) x@@3)) (|Seq#Contains_15756| s@@29 x@@3))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_15756| s@@29 x@@3) (|Seq#Index_5661| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2912) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2912| s@@30))) (= (|Seq#Index_2912| s@@30 i@@10) x@@4)) (|Seq#Contains_2912| s@@30 x@@4))
 :qid |stdinbpl.413:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2912| s@@30 x@@4) (|Seq#Index_2912| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_15756) (s1@@11 T@Seq_15756) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_15756| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15756| s0@@11 s1@@11))) (not (= (|Seq#Length_5661| s0@@11) (|Seq#Length_5661| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_15756| s0@@11 s1@@11))) (= (|Seq#Length_5661| s0@@11) (|Seq#Length_5661| s1@@11))) (= (|Seq#SkolemDiff_15756| s0@@11 s1@@11) (|Seq#SkolemDiff_15756| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_15756| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_15756| s0@@11 s1@@11) (|Seq#Length_5661| s0@@11))) (not (= (|Seq#Index_5661| s0@@11 (|Seq#SkolemDiff_15756| s0@@11 s1@@11)) (|Seq#Index_5661| s1@@11 (|Seq#SkolemDiff_15756| s0@@11 s1@@11))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_15756| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2912) (s1@@12 T@Seq_2912) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2912| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (not (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2912| s0@@12 s1@@12))) (= (|Seq#Length_2912| s0@@12) (|Seq#Length_2912| s1@@12))) (= (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#SkolemDiff_2912| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2912| s0@@12 s1@@12) (|Seq#Length_2912| s0@@12))) (not (= (|Seq#Index_2912| s0@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12)) (|Seq#Index_2912| s1@@12 (|Seq#SkolemDiff_2912| s0@@12 s1@@12))))))
 :qid |stdinbpl.517:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2912| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_5650_22774) (v_1@@0 T@FrameType) (q T@Field_5650_22774) (w@@0 T@FrameType) (r T@Field_5650_22774) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8662_8662 p@@1 v_1@@0 q w@@0) (InsidePredicate_8662_8662 q w@@0 r u)) (InsidePredicate_8662_8662 p@@1 v_1@@0 r u))
 :qid |stdinbpl.184:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8662_8662 p@@1 v_1@@0 q w@@0) (InsidePredicate_8662_8662 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_15756) ) (!  (=> (= (|Seq#Length_5661| s@@31) 0) (= s@@31 |Seq#Empty_5661|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_5661| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2912) ) (!  (=> (= (|Seq#Length_2912| s@@32) 0) (= s@@32 |Seq#Empty_2912|))
 :qid |stdinbpl.220:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2912| s@@32))
)))
(assert (forall ((s@@33 T@Seq_15756) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_5661| s@@33 n@@25) |Seq#Empty_5661|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_5661| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2912) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3048| s@@34 n@@26) |Seq#Empty_2912|))
 :qid |stdinbpl.396:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3048| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ys@0 () T@Seq_15756)
(declare-fun i_5_1 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_8602)
(declare-fun i_15 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_8623)
(declare-fun xs () T@Seq_15756)
(declare-fun k () Int)
(declare-fun i_5 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun i_14 () Int)
(declare-fun i1_8 () Int)
(declare-fun i2_8 () Int)
(set-info :boogie-vc-id test02)
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
 (=> (= (ControlFlow 0 0) 35) (let ((anon19_correct true))
(let ((anon30_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| ys@0) 1)) i_5_1)) (= (ControlFlow 0 29) 26)) anon19_correct)))
(let ((anon30_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| ys@0) 1)) i_5_1) (and (=> (= (ControlFlow 0 27) (- 0 28)) (not (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@17) (|Seq#Index_5661| ys@0 i_5_1) f_7) 0))) (=> (not (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@17) (|Seq#Index_5661| ys@0 i_5_1) f_7) 0)) (=> (= (ControlFlow 0 27) 26) anon19_correct))))))
(let ((anon15_correct true))
(let ((anon28_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| ys@0) 1)) i_15)) (= (ControlFlow 0 25) 20)) anon15_correct)))
(let ((anon28_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| ys@0) 1)) i_15) (and (=> (= (ControlFlow 0 21) (- 0 24)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 21) (- 0 23)) (< i_15 (|Seq#Length_5661| ys@0))) (=> (< i_15 (|Seq#Length_5661| ys@0)) (and (=> (= (ControlFlow 0 21) (- 0 22)) (HasDirectPerm_5650_3034 QPMask@0 (|Seq#Index_5661| ys@0 i_15) f_7)) (=> (HasDirectPerm_5650_3034 QPMask@0 (|Seq#Index_5661| ys@0 i_15) f_7) (=> (= (ControlFlow 0 21) 20) anon15_correct))))))))))
(let ((anon29_Else_correct true))
(let ((anon25_Else_correct  (=> (forall ((i_3_2 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| xs) 1)) i_3_2) (not (= (select (|PolymorphicMapType_8602_5650_3034#PolymorphicMapType_8602| Heap@@17) (|Seq#Index_5661| xs i_3_2) f_7) 0)))
 :qid |stdinbpl.794:20|
 :skolemid |67|
 :pattern ( (|Seq#Index_5661| xs i_3_2))
)) (=> (and (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (= ys@0 (|Seq#Drop_5661| (|Seq#Take_5661| xs (|Seq#Length_5661| xs)) k)) (state Heap@@17 QPMask@0))) (and (and (and (and (=> (= (ControlFlow 0 30) 19) anon29_Else_correct) (=> (= (ControlFlow 0 30) 27) anon30_Then_correct)) (=> (= (ControlFlow 0 30) 29) anon30_Else_correct)) (=> (= (ControlFlow 0 30) 21) anon28_Then_correct)) (=> (= (ControlFlow 0 30) 25) anon28_Else_correct))))))
(let ((anon11_correct true))
(let ((anon26_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| xs) 1)) i_5)) (= (ControlFlow 0 18) 13)) anon11_correct)))
(let ((anon26_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (- (|Seq#Length_5661| xs) 1)) i_5) (and (=> (= (ControlFlow 0 14) (- 0 17)) (>= i_5 0)) (=> (>= i_5 0) (and (=> (= (ControlFlow 0 14) (- 0 16)) (< i_5 (|Seq#Length_5661| xs))) (=> (< i_5 (|Seq#Length_5661| xs)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_5650_3034 QPMask@0 (|Seq#Index_5661| xs i_5) f_7)) (=> (HasDirectPerm_5650_3034 QPMask@0 (|Seq#Index_5661| xs i_5) f_7) (=> (= (ControlFlow 0 14) 13) anon11_correct))))))))))
(let ((anon23_Else_correct  (and (=> (= (ControlFlow 0 31) (- 0 32)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5661| xs i_1) (|Seq#Index_5661| xs i_1_1))))
 :qid |stdinbpl.745:15|
 :skolemid |61|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@0)) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_5661| xs i_1@@0) (|Seq#Index_5661| xs i_1_1@@0))))
 :qid |stdinbpl.745:15|
 :skolemid |61|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_5661| xs i_1@@1)) (= (invRecv1 (|Seq#Index_5661| xs i_1@@1)) i_1@@1)))
 :qid |stdinbpl.751:22|
 :skolemid |62|
 :pattern ( (|Seq#Index_5661| xs i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@1))
 :pattern ( (|Seq#Index_5661| xs i_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (|Seq#Index_5661| xs (invRecv1 o_9)) o_9))
 :qid |stdinbpl.755:22|
 :skolemid |63|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@2) (not (= (|Seq#Index_5661| xs i_1@@2) null)))
 :qid |stdinbpl.761:22|
 :skolemid |64|
 :pattern ( (|Seq#Index_5661| xs i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@2))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_1@@2))
 :pattern ( (|Seq#Index_5661| xs i_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_5661| xs (invRecv1 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.767:22|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_8662_53) ) (!  (=> true (= (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.771:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_8623_5650_53#PolymorphicMapType_8623| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_8675_8676) ) (!  (=> true (= (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.771:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_8623_5650_8676#PolymorphicMapType_8623| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_14683_3034) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.771:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_8623_5650_3034#PolymorphicMapType_8623| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_5650_22774) ) (!  (=> true (= (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.771:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_8623_5650_22774#PolymorphicMapType_8623| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_5650_22907) ) (!  (=> true (= (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.771:29|
 :skolemid |66|
 :pattern ( (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_8623_5650_27029#PolymorphicMapType_8623| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 31) 30) anon25_Else_correct) (=> (= (ControlFlow 0 31) 14) anon26_Then_correct)) (=> (= (ControlFlow 0 31) 18) anon26_Else_correct))))))))
(let ((anon7_correct true))
(let ((anon24_Else_correct  (=> (and (not (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_14)) (= (ControlFlow 0 12) 8)) anon7_correct)))
(let ((anon24_Then_correct  (=> (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i_14) (and (=> (= (ControlFlow 0 9) (- 0 11)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 9) (- 0 10)) (< i_14 (|Seq#Length_5661| xs))) (=> (< i_14 (|Seq#Length_5661| xs)) (=> (= (ControlFlow 0 9) 8) anon7_correct))))))))
(let ((anon21_Else_correct  (=> (forall ((i1_1 Int) (i2_1 Int) ) (!  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1) (not (= i1_1 i2_1)))) (not (= (|Seq#Index_5661| xs i1_1) (|Seq#Index_5661| xs i2_1))))
 :qid |stdinbpl.721:20|
 :skolemid |60|
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#Index_5661| xs i2_1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_1) (|Seq#Index_5661| xs i2_1))
 :pattern ( (|Seq#ContainsTrigger_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1) (|Seq#Index_5661| xs i1_1))
 :pattern ( (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_1) (|Seq#Index_5661| xs i1_1))
 :pattern ( (|Seq#Index_5661| xs i1_1) (|Seq#Index_5661| xs i2_1))
)) (=> (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask)) (and (and (=> (= (ControlFlow 0 33) 31) anon23_Else_correct) (=> (= (ControlFlow 0 33) 9) anon24_Then_correct)) (=> (= (ControlFlow 0 33) 12) anon24_Else_correct))))))
(let ((anon3_correct true))
(let ((anon22_Else_correct  (=> (and (not (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_8) (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_8) (not (= i1_8 i2_8))))) (= (ControlFlow 0 7) 1)) anon3_correct)))
(let ((anon22_Then_correct  (=> (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i1_8) (and (|Seq#Contains_2912| (|Seq#Range| 0 (|Seq#Length_5661| xs)) i2_8) (not (= i1_8 i2_8)))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (>= i1_8 0)) (=> (>= i1_8 0) (and (=> (= (ControlFlow 0 2) (- 0 5)) (< i1_8 (|Seq#Length_5661| xs))) (=> (< i1_8 (|Seq#Length_5661| xs)) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= i2_8 0)) (=> (>= i2_8 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< i2_8 (|Seq#Length_5661| xs))) (=> (< i2_8 (|Seq#Length_5661| xs)) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (=> (and (and (<= 0 k) (< k (|Seq#Length_5661| xs))) (and (state Heap@@17 ZeroMask) (state Heap@@17 ZeroMask))) (and (and (=> (= (ControlFlow 0 34) 33) anon21_Else_correct) (=> (= (ControlFlow 0 34) 2) anon22_Then_correct)) (=> (= (ControlFlow 0 34) 7) anon22_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 35) 34) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
