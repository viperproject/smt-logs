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
(declare-sort T@Field_13219_53 0)
(declare-sort T@Field_13232_13233 0)
(declare-sort T@Field_19238_19243 0)
(declare-sort T@Seq_19241 0)
(declare-sort T@Field_19402_3034 0)
(declare-sort T@Field_6991_41047 0)
(declare-sort T@Field_6991_40914 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_13180 0)) (((PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| (Array T@Ref T@Field_19238_19243 Real)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| (Array T@Ref T@Field_19402_3034 Real)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| (Array T@Ref T@Field_13219_53 Real)) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| (Array T@Ref T@Field_13232_13233 Real)) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| (Array T@Ref T@Field_6991_40914 Real)) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| (Array T@Ref T@Field_6991_41047 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13708 0)) (((PolymorphicMapType_13708 (|PolymorphicMapType_13708_13219_53#PolymorphicMapType_13708| (Array T@Ref T@Field_13219_53 Bool)) (|PolymorphicMapType_13708_13219_13233#PolymorphicMapType_13708| (Array T@Ref T@Field_13232_13233 Bool)) (|PolymorphicMapType_13708_13219_19243#PolymorphicMapType_13708| (Array T@Ref T@Field_19238_19243 Bool)) (|PolymorphicMapType_13708_13219_3034#PolymorphicMapType_13708| (Array T@Ref T@Field_19402_3034 Bool)) (|PolymorphicMapType_13708_13219_40914#PolymorphicMapType_13708| (Array T@Ref T@Field_6991_40914 Bool)) (|PolymorphicMapType_13708_13219_42429#PolymorphicMapType_13708| (Array T@Ref T@Field_6991_41047 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13159 0)) (((PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| (Array T@Ref T@Field_13219_53 Bool)) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| (Array T@Ref T@Field_13232_13233 T@Ref)) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| (Array T@Ref T@Field_19238_19243 T@Seq_19241)) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| (Array T@Ref T@Field_19402_3034 Int)) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| (Array T@Ref T@Field_6991_41047 T@PolymorphicMapType_13708)) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| (Array T@Ref T@Field_6991_40914 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_13219_53)
(declare-fun Ref__a () T@Field_19238_19243)
(declare-fun Ref__b () T@Field_19238_19243)
(declare-fun Ref__c () T@Field_19238_19243)
(declare-fun Ref__Integer_value () T@Field_19402_3034)
(declare-fun |Seq#Length_6992| (T@Seq_19241) Int)
(declare-fun |Seq#Drop_6992| (T@Seq_19241 Int) T@Seq_19241)
(declare-sort T@Seq_2864 0)
(declare-fun |Seq#Length_2864| (T@Seq_2864) Int)
(declare-fun |Seq#Drop_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun succHeap (T@PolymorphicMapType_13159 T@PolymorphicMapType_13159) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_13159 T@PolymorphicMapType_13159) Bool)
(declare-fun state (T@PolymorphicMapType_13159 T@PolymorphicMapType_13180) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_13180) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13708)
(declare-fun |Seq#Index_6992| (T@Seq_19241 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2864| (T@Seq_2864 Int) Int)
(declare-fun |Seq#Empty_6992| () T@Seq_19241)
(declare-fun |Seq#Empty_2864| () T@Seq_2864)
(declare-fun |Seq#Update_6992| (T@Seq_19241 Int T@Ref) T@Seq_19241)
(declare-fun |Seq#Update_2864| (T@Seq_2864 Int Int) T@Seq_2864)
(declare-fun |Seq#Take_6992| (T@Seq_19241 Int) T@Seq_19241)
(declare-fun |Seq#Take_2864| (T@Seq_2864 Int) T@Seq_2864)
(declare-fun |Seq#Contains_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2864)
(declare-fun |Seq#Contains_19241| (T@Seq_19241 T@Ref) Bool)
(declare-fun |Seq#Skolem_19241| (T@Seq_19241 T@Ref) Int)
(declare-fun |Seq#Skolem_2864| (T@Seq_2864 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_13159 T@PolymorphicMapType_13159 T@PolymorphicMapType_13180) Bool)
(declare-fun IsPredicateField_6991_41005 (T@Field_6991_40914) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6991 (T@Field_6991_40914) T@Field_6991_41047)
(declare-fun HasDirectPerm_6991_40978 (T@PolymorphicMapType_13180 T@Ref T@Field_6991_40914) Bool)
(declare-fun IsWandField_6991_42956 (T@Field_6991_40914) Bool)
(declare-fun WandMaskField_6991 (T@Field_6991_40914) T@Field_6991_41047)
(declare-fun |Seq#Singleton_6992| (T@Ref) T@Seq_19241)
(declare-fun |Seq#Singleton_2864| (Int) T@Seq_2864)
(declare-fun |Seq#Append_19241| (T@Seq_19241 T@Seq_19241) T@Seq_19241)
(declare-fun |Seq#Append_2864| (T@Seq_2864 T@Seq_2864) T@Seq_2864)
(declare-fun dummyHeap () T@PolymorphicMapType_13159)
(declare-fun ZeroMask () T@PolymorphicMapType_13180)
(declare-fun InsidePredicate_13219_13219 (T@Field_6991_40914 T@FrameType T@Field_6991_40914 T@FrameType) Bool)
(declare-fun IsPredicateField_6991_19265 (T@Field_19238_19243) Bool)
(declare-fun IsWandField_6991_19291 (T@Field_19238_19243) Bool)
(declare-fun IsPredicateField_7003_3034 (T@Field_19402_3034) Bool)
(declare-fun IsWandField_7003_3034 (T@Field_19402_3034) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6991_47090 (T@Field_6991_41047) Bool)
(declare-fun IsWandField_6991_47106 (T@Field_6991_41047) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6991_13233 (T@Field_13232_13233) Bool)
(declare-fun IsWandField_6991_13233 (T@Field_13232_13233) Bool)
(declare-fun IsPredicateField_6991_53 (T@Field_13219_53) Bool)
(declare-fun IsWandField_6991_53 (T@Field_13219_53) Bool)
(declare-fun HasDirectPerm_6991_47627 (T@PolymorphicMapType_13180 T@Ref T@Field_6991_41047) Bool)
(declare-fun HasDirectPerm_6991_13233 (T@PolymorphicMapType_13180 T@Ref T@Field_13232_13233) Bool)
(declare-fun HasDirectPerm_6991_53 (T@PolymorphicMapType_13180 T@Ref T@Field_13219_53) Bool)
(declare-fun HasDirectPerm_7003_3034 (T@PolymorphicMapType_13180 T@Ref T@Field_19402_3034) Bool)
(declare-fun HasDirectPerm_6991_20248 (T@PolymorphicMapType_13180 T@Ref T@Field_19238_19243) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_13180 T@PolymorphicMapType_13180 T@PolymorphicMapType_13180) Bool)
(declare-fun |Seq#Equal_2864| (T@Seq_2864 T@Seq_2864) Bool)
(declare-fun |Seq#Equal_6992| (T@Seq_19241 T@Seq_19241) Bool)
(declare-fun |Seq#ContainsTrigger_6992| (T@Seq_19241 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2864| (T@Seq_2864 Int) Bool)
(declare-fun |Seq#SkolemDiff_19241| (T@Seq_19241 T@Seq_19241) Int)
(declare-fun |Seq#SkolemDiff_2864| (T@Seq_2864 T@Seq_2864) Int)
(assert (distinct Ref__a Ref__b Ref__c)
)
(assert (forall ((s T@Seq_19241) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_6992| s)) (= (|Seq#Length_6992| (|Seq#Drop_6992| s n)) (- (|Seq#Length_6992| s) n))) (=> (< (|Seq#Length_6992| s) n) (= (|Seq#Length_6992| (|Seq#Drop_6992| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_6992| (|Seq#Drop_6992| s n)) (|Seq#Length_6992| s))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_6992| (|Seq#Drop_6992| s n)))
 :pattern ( (|Seq#Length_6992| s) (|Seq#Drop_6992| s n))
)))
(assert (forall ((s@@0 T@Seq_2864) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2864| s@@0)) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) (- (|Seq#Length_2864| s@@0) n@@0))) (=> (< (|Seq#Length_2864| s@@0) n@@0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)) (|Seq#Length_2864| s@@0))))
 :qid |stdinbpl.273:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2864| (|Seq#Drop_2864| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2864| s@@0) (|Seq#Drop_2864| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_13159) (Heap1 T@PolymorphicMapType_13159) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_13159) (Mask T@PolymorphicMapType_13180) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_13159) (Heap1@@0 T@PolymorphicMapType_13159) (Heap2 T@PolymorphicMapType_13159) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6991_41047) ) (!  (not (select (|PolymorphicMapType_13708_13219_42429#PolymorphicMapType_13708| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_42429#PolymorphicMapType_13708| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6991_40914) ) (!  (not (select (|PolymorphicMapType_13708_13219_40914#PolymorphicMapType_13708| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_40914#PolymorphicMapType_13708| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_19402_3034) ) (!  (not (select (|PolymorphicMapType_13708_13219_3034#PolymorphicMapType_13708| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_3034#PolymorphicMapType_13708| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19238_19243) ) (!  (not (select (|PolymorphicMapType_13708_13219_19243#PolymorphicMapType_13708| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_19243#PolymorphicMapType_13708| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_13232_13233) ) (!  (not (select (|PolymorphicMapType_13708_13219_13233#PolymorphicMapType_13708| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_13233#PolymorphicMapType_13708| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_13219_53) ) (!  (not (select (|PolymorphicMapType_13708_13219_53#PolymorphicMapType_13708| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13708_13219_53#PolymorphicMapType_13708| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_19241) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_6992| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_6992| (|Seq#Drop_6992| s@@1 n@@1) j) (|Seq#Index_6992| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_6992| (|Seq#Drop_6992| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2864) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2864| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@2 n@@2) j@@0) (|Seq#Index_2864| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.294:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2864| (|Seq#Drop_2864| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_6992| |Seq#Empty_6992|) 0))
(assert (= (|Seq#Length_2864| |Seq#Empty_2864|) 0))
(assert (forall ((s@@3 T@Seq_19241) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_6992| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_6992| (|Seq#Update_6992| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_6992| (|Seq#Update_6992| s@@3 i v) n@@3) (|Seq#Index_6992| s@@3 n@@3)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_6992| (|Seq#Update_6992| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_6992| s@@3 n@@3) (|Seq#Update_6992| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2864) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2864| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2864| s@@4 n@@4)))))
 :qid |stdinbpl.249:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2864| (|Seq#Update_2864| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2864| s@@4 n@@4) (|Seq#Update_2864| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_19241) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_6992| s@@5)) (= (|Seq#Length_6992| (|Seq#Take_6992| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_6992| s@@5) n@@5) (= (|Seq#Length_6992| (|Seq#Take_6992| s@@5 n@@5)) (|Seq#Length_6992| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_6992| (|Seq#Take_6992| s@@5 n@@5)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_6992| (|Seq#Take_6992| s@@5 n@@5)))
 :pattern ( (|Seq#Take_6992| s@@5 n@@5) (|Seq#Length_6992| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2864) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2864| s@@6)) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2864| s@@6) n@@6) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) (|Seq#Length_2864| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)) 0)))
 :qid |stdinbpl.260:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2864| (|Seq#Take_2864| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2864| s@@6 n@@6) (|Seq#Length_2864| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.534:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2864| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_19241) (x T@Ref) ) (!  (=> (|Seq#Contains_19241| s@@7 x) (and (and (<= 0 (|Seq#Skolem_19241| s@@7 x)) (< (|Seq#Skolem_19241| s@@7 x) (|Seq#Length_6992| s@@7))) (= (|Seq#Index_6992| s@@7 (|Seq#Skolem_19241| s@@7 x)) x)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_19241| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2864) (x@@0 Int) ) (!  (=> (|Seq#Contains_2864| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2864| s@@8 x@@0)) (< (|Seq#Skolem_2864| s@@8 x@@0) (|Seq#Length_2864| s@@8))) (= (|Seq#Index_2864| s@@8 (|Seq#Skolem_2864| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.392:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2864| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_19241) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_6992| s@@9 n@@7) s@@9))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_6992| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2864) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2864| s@@10 n@@8) s@@10))
 :qid |stdinbpl.376:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2864| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.229:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.227:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_13159) (ExhaleHeap T@PolymorphicMapType_13159) (Mask@@0 T@PolymorphicMapType_13180) (pm_f T@Field_6991_40914) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_6991_40978 Mask@@0 null pm_f) (IsPredicateField_6991_41005 pm_f)) (= (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@0) null (PredicateMaskField_6991 pm_f)) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap) null (PredicateMaskField_6991 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_6991_41005 pm_f) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap) null (PredicateMaskField_6991 pm_f)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_13159) (ExhaleHeap@@0 T@PolymorphicMapType_13159) (Mask@@1 T@PolymorphicMapType_13180) (pm_f@@0 T@Field_6991_40914) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_6991_40978 Mask@@1 null pm_f@@0) (IsWandField_6991_42956 pm_f@@0)) (= (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@1) null (WandMaskField_6991 pm_f@@0)) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@0) null (WandMaskField_6991 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_6991_42956 pm_f@@0) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@0) null (WandMaskField_6991 pm_f@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_19241| (|Seq#Singleton_6992| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_19241| (|Seq#Singleton_6992| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.517:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2864| (|Seq#Singleton_2864| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_19241) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_6992| s@@11))) (= (|Seq#Index_6992| (|Seq#Take_6992| s@@11 n@@9) j@@3) (|Seq#Index_6992| s@@11 j@@3)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_6992| (|Seq#Take_6992| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_6992| s@@11 j@@3) (|Seq#Take_6992| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2864) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2864| s@@12))) (= (|Seq#Index_2864| (|Seq#Take_2864| s@@12 n@@10) j@@4) (|Seq#Index_2864| s@@12 j@@4)))
 :qid |stdinbpl.268:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2864| (|Seq#Take_2864| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2864| s@@12 j@@4) (|Seq#Take_2864| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_19241) (t T@Seq_19241) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_6992| s@@13))) (< n@@11 (|Seq#Length_6992| (|Seq#Append_19241| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_6992| s@@13)) (|Seq#Length_6992| s@@13)) n@@11) (= (|Seq#Take_6992| (|Seq#Append_19241| s@@13 t) n@@11) (|Seq#Append_19241| s@@13 (|Seq#Take_6992| t (|Seq#Sub| n@@11 (|Seq#Length_6992| s@@13)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_6992| (|Seq#Append_19241| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2864) (t@@0 T@Seq_2864) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2864| s@@14))) (< n@@12 (|Seq#Length_2864| (|Seq#Append_2864| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2864| s@@14)) (|Seq#Length_2864| s@@14)) n@@12) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@14 t@@0) n@@12) (|Seq#Append_2864| s@@14 (|Seq#Take_2864| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2864| s@@14)))))))
 :qid |stdinbpl.353:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_13159) (ExhaleHeap@@1 T@PolymorphicMapType_13159) (Mask@@2 T@PolymorphicMapType_13180) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@2) o_1 $allocated) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_6991_40914) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_13219_13219 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_13219_13219 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_19241) (s1 T@Seq_19241) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_6992|)) (not (= s1 |Seq#Empty_6992|))) (<= (|Seq#Length_6992| s0) n@@13)) (< n@@13 (|Seq#Length_6992| (|Seq#Append_19241| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_6992| s0)) (|Seq#Length_6992| s0)) n@@13) (= (|Seq#Index_6992| (|Seq#Append_19241| s0 s1) n@@13) (|Seq#Index_6992| s1 (|Seq#Sub| n@@13 (|Seq#Length_6992| s0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_6992| (|Seq#Append_19241| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2864) (s1@@0 T@Seq_2864) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2864|)) (not (= s1@@0 |Seq#Empty_2864|))) (<= (|Seq#Length_2864| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2864| (|Seq#Append_2864| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2864| s0@@0)) (|Seq#Length_2864| s0@@0)) n@@14) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@0 s1@@0) n@@14) (|Seq#Index_2864| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2864| s0@@0))))))
 :qid |stdinbpl.240:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_6991_19265 Ref__a)))
(assert  (not (IsWandField_6991_19291 Ref__a)))
(assert  (not (IsPredicateField_6991_19265 Ref__b)))
(assert  (not (IsWandField_6991_19291 Ref__b)))
(assert  (not (IsPredicateField_6991_19265 Ref__c)))
(assert  (not (IsWandField_6991_19291 Ref__c)))
(assert  (not (IsPredicateField_7003_3034 Ref__Integer_value)))
(assert  (not (IsWandField_7003_3034 Ref__Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_13159) (ExhaleHeap@@2 T@PolymorphicMapType_13159) (Mask@@3 T@PolymorphicMapType_13180) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_13180) (o_2@@5 T@Ref) (f_4@@5 T@Field_6991_41047) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_6991_47090 f_4@@5))) (not (IsWandField_6991_47106 f_4@@5))) (<= (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_13180) (o_2@@6 T@Ref) (f_4@@6 T@Field_6991_40914) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_6991_41005 f_4@@6))) (not (IsWandField_6991_42956 f_4@@6))) (<= (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_13180) (o_2@@7 T@Ref) (f_4@@7 T@Field_13232_13233) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6991_13233 f_4@@7))) (not (IsWandField_6991_13233 f_4@@7))) (<= (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_13180) (o_2@@8 T@Ref) (f_4@@8 T@Field_13219_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_6991_53 f_4@@8))) (not (IsWandField_6991_53 f_4@@8))) (<= (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_13180) (o_2@@9 T@Ref) (f_4@@9 T@Field_19402_3034) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7003_3034 f_4@@9))) (not (IsWandField_7003_3034 f_4@@9))) (<= (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_13180) (o_2@@10 T@Ref) (f_4@@10 T@Field_19238_19243) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6991_19265 f_4@@10))) (not (IsWandField_6991_19291 f_4@@10))) (<= (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_13180) (o_2@@11 T@Ref) (f_4@@11 T@Field_6991_41047) ) (! (= (HasDirectPerm_6991_47627 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6991_47627 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_13180) (o_2@@12 T@Ref) (f_4@@12 T@Field_6991_40914) ) (! (= (HasDirectPerm_6991_40978 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6991_40978 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_13180) (o_2@@13 T@Ref) (f_4@@13 T@Field_13232_13233) ) (! (= (HasDirectPerm_6991_13233 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6991_13233 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_13180) (o_2@@14 T@Ref) (f_4@@14 T@Field_13219_53) ) (! (= (HasDirectPerm_6991_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6991_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_13180) (o_2@@15 T@Ref) (f_4@@15 T@Field_19402_3034) ) (! (= (HasDirectPerm_7003_3034 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7003_3034 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_13180) (o_2@@16 T@Ref) (f_4@@16 T@Field_19238_19243) ) (! (= (HasDirectPerm_6991_20248 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6991_20248 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.532:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2864| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_13159) (ExhaleHeap@@3 T@PolymorphicMapType_13159) (Mask@@16 T@PolymorphicMapType_13180) (o_1@@0 T@Ref) (f_2 T@Field_6991_41047) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_6991_47627 Mask@@16 o_1@@0 f_2) (= (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@4) o_1@@0 f_2) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@3) o_1@@0 f_2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@3) o_1@@0 f_2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_13159) (ExhaleHeap@@4 T@PolymorphicMapType_13159) (Mask@@17 T@PolymorphicMapType_13180) (o_1@@1 T@Ref) (f_2@@0 T@Field_6991_40914) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_6991_40978 Mask@@17 o_1@@1 f_2@@0) (= (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@5) o_1@@1 f_2@@0) (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@4) o_1@@1 f_2@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@4) o_1@@1 f_2@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_13159) (ExhaleHeap@@5 T@PolymorphicMapType_13159) (Mask@@18 T@PolymorphicMapType_13180) (o_1@@2 T@Ref) (f_2@@1 T@Field_13232_13233) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_6991_13233 Mask@@18 o_1@@2 f_2@@1) (= (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@6) o_1@@2 f_2@@1) (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@5) o_1@@2 f_2@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@5) o_1@@2 f_2@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_13159) (ExhaleHeap@@6 T@PolymorphicMapType_13159) (Mask@@19 T@PolymorphicMapType_13180) (o_1@@3 T@Ref) (f_2@@2 T@Field_13219_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_6991_53 Mask@@19 o_1@@3 f_2@@2) (= (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@7) o_1@@3 f_2@@2) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@6) o_1@@3 f_2@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@6) o_1@@3 f_2@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_13159) (ExhaleHeap@@7 T@PolymorphicMapType_13159) (Mask@@20 T@PolymorphicMapType_13180) (o_1@@4 T@Ref) (f_2@@3 T@Field_19402_3034) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_7003_3034 Mask@@20 o_1@@4 f_2@@3) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@8) o_1@@4 f_2@@3) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@7) o_1@@4 f_2@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@7) o_1@@4 f_2@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_13159) (ExhaleHeap@@8 T@PolymorphicMapType_13159) (Mask@@21 T@PolymorphicMapType_13180) (o_1@@5 T@Ref) (f_2@@4 T@Field_19238_19243) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_6991_20248 Mask@@21 o_1@@5 f_2@@4) (= (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@9) o_1@@5 f_2@@4) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@8) o_1@@5 f_2@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@8) o_1@@5 f_2@@4))
)))
(assert (forall ((s0@@1 T@Seq_19241) (s1@@1 T@Seq_19241) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_6992|)) (not (= s1@@1 |Seq#Empty_6992|))) (= (|Seq#Length_6992| (|Seq#Append_19241| s0@@1 s1@@1)) (+ (|Seq#Length_6992| s0@@1) (|Seq#Length_6992| s1@@1))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_6992| (|Seq#Append_19241| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2864) (s1@@2 T@Seq_2864) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2864|)) (not (= s1@@2 |Seq#Empty_2864|))) (= (|Seq#Length_2864| (|Seq#Append_2864| s0@@2 s1@@2)) (+ (|Seq#Length_2864| s0@@2) (|Seq#Length_2864| s1@@2))))
 :qid |stdinbpl.209:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2864| (|Seq#Append_2864| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6991_41047) ) (! (= (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6991_40914) ) (! (= (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_13232_13233) ) (! (= (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_13219_53) ) (! (= (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_19402_3034) ) (! (= (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_19238_19243) ) (! (= (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_19241) (t@@1 T@Seq_19241) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_6992| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_6992| s@@15)) (|Seq#Length_6992| s@@15)) n@@15) (= (|Seq#Drop_6992| (|Seq#Append_19241| s@@15 t@@1) n@@15) (|Seq#Drop_6992| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_6992| s@@15))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_6992| (|Seq#Append_19241| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2864) (t@@2 T@Seq_2864) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2864| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2864| s@@16)) (|Seq#Length_2864| s@@16)) n@@16) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@16 t@@2) n@@16) (|Seq#Drop_2864| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2864| s@@16))))))
 :qid |stdinbpl.366:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_13180) (SummandMask1 T@PolymorphicMapType_13180) (SummandMask2 T@PolymorphicMapType_13180) (o_2@@23 T@Ref) (f_4@@23 T@Field_6991_41047) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_13180) (SummandMask1@@0 T@PolymorphicMapType_13180) (SummandMask2@@0 T@PolymorphicMapType_13180) (o_2@@24 T@Ref) (f_4@@24 T@Field_6991_40914) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_13180) (SummandMask1@@1 T@PolymorphicMapType_13180) (SummandMask2@@1 T@PolymorphicMapType_13180) (o_2@@25 T@Ref) (f_4@@25 T@Field_13232_13233) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_13180) (SummandMask1@@2 T@PolymorphicMapType_13180) (SummandMask2@@2 T@PolymorphicMapType_13180) (o_2@@26 T@Ref) (f_4@@26 T@Field_13219_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_13180) (SummandMask1@@3 T@PolymorphicMapType_13180) (SummandMask2@@3 T@PolymorphicMapType_13180) (o_2@@27 T@Ref) (f_4@@27 T@Field_19402_3034) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_13180) (SummandMask1@@4 T@PolymorphicMapType_13180) (SummandMask2@@4 T@PolymorphicMapType_13180) (o_2@@28 T@Ref) (f_4@@28 T@Field_19238_19243) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.531:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2864| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2864) (b T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| a b) (= a b))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2864| a b))
)))
(assert (forall ((a@@0 T@Seq_19241) (b@@0 T@Seq_19241) ) (!  (=> (|Seq#Equal_6992| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.504:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_6992| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_19241) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_6992| s@@17))) (|Seq#ContainsTrigger_6992| s@@17 (|Seq#Index_6992| s@@17 i@@3)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_6992| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2864) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2864| s@@18))) (|Seq#ContainsTrigger_2864| s@@18 (|Seq#Index_2864| s@@18 i@@4)))
 :qid |stdinbpl.397:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2864| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_19241) (s1@@3 T@Seq_19241) ) (!  (and (=> (= s0@@3 |Seq#Empty_6992|) (= (|Seq#Append_19241| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_6992|) (= (|Seq#Append_19241| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_19241| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2864) (s1@@4 T@Seq_2864) ) (!  (and (=> (= s0@@4 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2864|) (= (|Seq#Append_2864| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2864| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_6992| (|Seq#Singleton_6992| t@@3) 0) t@@3)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_6992| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2864| (|Seq#Singleton_2864| t@@4) 0) t@@4)
 :qid |stdinbpl.219:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2864| t@@4))
)))
(assert (forall ((s@@19 T@Seq_19241) ) (! (<= 0 (|Seq#Length_6992| s@@19))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_6992| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2864) ) (! (<= 0 (|Seq#Length_2864| s@@20))
 :qid |stdinbpl.198:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2864| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_13159) (ExhaleHeap@@9 T@PolymorphicMapType_13159) (Mask@@22 T@PolymorphicMapType_13180) (pm_f@@1 T@Field_6991_40914) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_6991_40978 Mask@@22 null pm_f@@1) (IsPredicateField_6991_41005 pm_f@@1)) (and (and (and (and (and (forall ((o2 T@Ref) (f_2@@5 T@Field_13219_53) ) (!  (=> (select (|PolymorphicMapType_13708_13219_53#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2 f_2@@5) (= (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@10) o2 f_2@@5) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@9) o2 f_2@@5)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@9) o2 f_2@@5))
)) (forall ((o2@@0 T@Ref) (f_2@@6 T@Field_13232_13233) ) (!  (=> (select (|PolymorphicMapType_13708_13219_13233#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2@@0 f_2@@6) (= (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@10) o2@@0 f_2@@6) (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@0 f_2@@6)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@0 f_2@@6))
))) (forall ((o2@@1 T@Ref) (f_2@@7 T@Field_19238_19243) ) (!  (=> (select (|PolymorphicMapType_13708_13219_19243#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2@@1 f_2@@7) (= (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@10) o2@@1 f_2@@7) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@1 f_2@@7)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@1 f_2@@7))
))) (forall ((o2@@2 T@Ref) (f_2@@8 T@Field_19402_3034) ) (!  (=> (select (|PolymorphicMapType_13708_13219_3034#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2@@2 f_2@@8) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@10) o2@@2 f_2@@8) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@2 f_2@@8)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@2 f_2@@8))
))) (forall ((o2@@3 T@Ref) (f_2@@9 T@Field_6991_40914) ) (!  (=> (select (|PolymorphicMapType_13708_13219_40914#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2@@3 f_2@@9) (= (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@10) o2@@3 f_2@@9) (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@3 f_2@@9)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@3 f_2@@9))
))) (forall ((o2@@4 T@Ref) (f_2@@10 T@Field_6991_41047) ) (!  (=> (select (|PolymorphicMapType_13708_13219_42429#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) null (PredicateMaskField_6991 pm_f@@1))) o2@@4 f_2@@10) (= (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@10) o2@@4 f_2@@10) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@4 f_2@@10)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@9) o2@@4 f_2@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_6991_41005 pm_f@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_13159) (ExhaleHeap@@10 T@PolymorphicMapType_13159) (Mask@@23 T@PolymorphicMapType_13180) (pm_f@@2 T@Field_6991_40914) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_6991_40978 Mask@@23 null pm_f@@2) (IsWandField_6991_42956 pm_f@@2)) (and (and (and (and (and (forall ((o2@@5 T@Ref) (f_2@@11 T@Field_13219_53) ) (!  (=> (select (|PolymorphicMapType_13708_13219_53#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@5 f_2@@11) (= (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@11) o2@@5 f_2@@11) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@5 f_2@@11)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@5 f_2@@11))
)) (forall ((o2@@6 T@Ref) (f_2@@12 T@Field_13232_13233) ) (!  (=> (select (|PolymorphicMapType_13708_13219_13233#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@6 f_2@@12) (= (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@11) o2@@6 f_2@@12) (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@6 f_2@@12)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@6 f_2@@12))
))) (forall ((o2@@7 T@Ref) (f_2@@13 T@Field_19238_19243) ) (!  (=> (select (|PolymorphicMapType_13708_13219_19243#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@7 f_2@@13) (= (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@11) o2@@7 f_2@@13) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@7 f_2@@13)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@7 f_2@@13))
))) (forall ((o2@@8 T@Ref) (f_2@@14 T@Field_19402_3034) ) (!  (=> (select (|PolymorphicMapType_13708_13219_3034#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@8 f_2@@14) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@11) o2@@8 f_2@@14) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@8 f_2@@14)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@8 f_2@@14))
))) (forall ((o2@@9 T@Ref) (f_2@@15 T@Field_6991_40914) ) (!  (=> (select (|PolymorphicMapType_13708_13219_40914#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@9 f_2@@15) (= (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@11) o2@@9 f_2@@15) (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@9 f_2@@15)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@9 f_2@@15))
))) (forall ((o2@@10 T@Ref) (f_2@@16 T@Field_6991_41047) ) (!  (=> (select (|PolymorphicMapType_13708_13219_42429#PolymorphicMapType_13708| (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) null (WandMaskField_6991 pm_f@@2))) o2@@10 f_2@@16) (= (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@11) o2@@10 f_2@@16) (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@10 f_2@@16)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| ExhaleHeap@@10) o2@@10 f_2@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_6991_42956 pm_f@@2))
)))
(assert (forall ((s0@@5 T@Seq_2864) (s1@@5 T@Seq_2864) ) (!  (=> (|Seq#Equal_2864| s0@@5 s1@@5) (and (= (|Seq#Length_2864| s0@@5) (|Seq#Length_2864| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_2864| s0@@5))) (= (|Seq#Index_2864| s0@@5 j@@6) (|Seq#Index_2864| s1@@5 j@@6)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2864| s0@@5 j@@6))
 :pattern ( (|Seq#Index_2864| s1@@5 j@@6))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2864| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_19241) (s1@@6 T@Seq_19241) ) (!  (=> (|Seq#Equal_6992| s0@@6 s1@@6) (and (= (|Seq#Length_6992| s0@@6) (|Seq#Length_6992| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_6992| s0@@6))) (= (|Seq#Index_6992| s0@@6 j@@7) (|Seq#Index_6992| s1@@6 j@@7)))
 :qid |stdinbpl.494:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_6992| s0@@6 j@@7))
 :pattern ( (|Seq#Index_6992| s1@@6 j@@7))
))))
 :qid |stdinbpl.491:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_6992| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_6992| (|Seq#Singleton_6992| t@@5)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_6992| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2864| (|Seq#Singleton_2864| t@@6)) 1)
 :qid |stdinbpl.206:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2864| t@@6))
)))
(assert (forall ((s@@21 T@Seq_19241) (t@@7 T@Seq_19241) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_6992| s@@21))) (= (|Seq#Take_6992| (|Seq#Append_19241| s@@21 t@@7) n@@17) (|Seq#Take_6992| s@@21 n@@17)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_6992| (|Seq#Append_19241| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2864) (t@@8 T@Seq_2864) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2864| s@@22))) (= (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@8) n@@18) (|Seq#Take_2864| s@@22 n@@18)))
 :qid |stdinbpl.348:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2864| (|Seq#Append_2864| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_19241) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_6992| s@@23))) (= (|Seq#Length_6992| (|Seq#Update_6992| s@@23 i@@5 v@@2)) (|Seq#Length_6992| s@@23)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_6992| (|Seq#Update_6992| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_6992| s@@23) (|Seq#Update_6992| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2864) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2864| s@@24))) (= (|Seq#Length_2864| (|Seq#Update_2864| s@@24 i@@6 v@@3)) (|Seq#Length_2864| s@@24)))
 :qid |stdinbpl.247:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2864| (|Seq#Update_2864| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2864| s@@24) (|Seq#Update_2864| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_13159) (o T@Ref) (f_3 T@Field_6991_40914) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@12) (store (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@12) o f_3 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@12) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@12) (store (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@12) o f_3 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_13159) (o@@0 T@Ref) (f_3@@0 T@Field_6991_41047) (v@@5 T@PolymorphicMapType_13708) ) (! (succHeap Heap@@13 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@13) (store (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@13) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@13) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@13) (store (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@13) o@@0 f_3@@0 v@@5) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_13159) (o@@1 T@Ref) (f_3@@1 T@Field_19402_3034) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@14) (store (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@14) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@14) (store (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@14) o@@1 f_3@@1 v@@6) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@14) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_13159) (o@@2 T@Ref) (f_3@@2 T@Field_19238_19243) (v@@7 T@Seq_19241) ) (! (succHeap Heap@@15 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@15) (store (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@15) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@15) (store (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@15) o@@2 f_3@@2 v@@7) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@15) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_13159) (o@@3 T@Ref) (f_3@@3 T@Field_13232_13233) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@16) (store (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@16) o@@3 f_3@@3 v@@8) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@16) (store (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@16) o@@3 f_3@@3 v@@8) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@16) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_13159) (o@@4 T@Ref) (f_3@@4 T@Field_13219_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_13159 (store (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@17) o@@4 f_3@@4 v@@9) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_13159 (store (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@17) o@@4 f_3@@4 v@@9) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@17) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_19241) (t@@9 T@Seq_19241) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_6992| s@@25))) (= (|Seq#Drop_6992| (|Seq#Append_19241| s@@25 t@@9) n@@19) (|Seq#Append_19241| (|Seq#Drop_6992| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_6992| (|Seq#Append_19241| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2864) (t@@10 T@Seq_2864) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2864| s@@26))) (= (|Seq#Drop_2864| (|Seq#Append_2864| s@@26 t@@10) n@@20) (|Seq#Append_2864| (|Seq#Drop_2864| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.362:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2864| (|Seq#Append_2864| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_19241) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_6992| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_6992| (|Seq#Drop_6992| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_6992| s@@27 i@@7))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_6992| s@@27 n@@21) (|Seq#Index_6992| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2864) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2864| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2864| (|Seq#Drop_2864| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2864| s@@28 i@@8))))
 :qid |stdinbpl.298:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2864| s@@28 n@@22) (|Seq#Index_2864| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_19241) (s1@@7 T@Seq_19241) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_6992|)) (not (= s1@@7 |Seq#Empty_6992|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_6992| s0@@7))) (= (|Seq#Index_6992| (|Seq#Append_19241| s0@@7 s1@@7) n@@23) (|Seq#Index_6992| s0@@7 n@@23)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_6992| (|Seq#Append_19241| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_6992| s0@@7 n@@23) (|Seq#Append_19241| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2864) (s1@@8 T@Seq_2864) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2864|)) (not (= s1@@8 |Seq#Empty_2864|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2864| s0@@8))) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@8 s1@@8) n@@24) (|Seq#Index_2864| s0@@8 n@@24)))
 :qid |stdinbpl.238:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2864| (|Seq#Append_2864| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2864| s0@@8 n@@24) (|Seq#Append_2864| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_19241) (s1@@9 T@Seq_19241) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_6992|)) (not (= s1@@9 |Seq#Empty_6992|))) (<= 0 m)) (< m (|Seq#Length_6992| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_6992| s0@@9)) (|Seq#Length_6992| s0@@9)) m) (= (|Seq#Index_6992| (|Seq#Append_19241| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_6992| s0@@9))) (|Seq#Index_6992| s1@@9 m))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_6992| s1@@9 m) (|Seq#Append_19241| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2864) (s1@@10 T@Seq_2864) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2864|)) (not (= s1@@10 |Seq#Empty_2864|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2864| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2864| s0@@10)) (|Seq#Length_2864| s0@@10)) m@@0) (= (|Seq#Index_2864| (|Seq#Append_2864| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2864| s0@@10))) (|Seq#Index_2864| s1@@10 m@@0))))
 :qid |stdinbpl.243:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2864| s1@@10 m@@0) (|Seq#Append_2864| s0@@10 s1@@10))
)))
(assert (forall ((o@@5 T@Ref) (f T@Field_13232_13233) (Heap@@18 T@PolymorphicMapType_13159) ) (!  (=> (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@18) o@@5 $allocated) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@18) (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@18) o@@5 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@18) o@@5 f))
)))
(assert (forall ((s@@29 T@Seq_19241) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_6992| s@@29))) (= (|Seq#Index_6992| s@@29 i@@9) x@@3)) (|Seq#Contains_19241| s@@29 x@@3))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_19241| s@@29 x@@3) (|Seq#Index_6992| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2864) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2864| s@@30))) (= (|Seq#Index_2864| s@@30 i@@10) x@@4)) (|Seq#Contains_2864| s@@30 x@@4))
 :qid |stdinbpl.395:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2864| s@@30 x@@4) (|Seq#Index_2864| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_19241) (s1@@11 T@Seq_19241) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_6992| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_6992| s0@@11 s1@@11))) (not (= (|Seq#Length_6992| s0@@11) (|Seq#Length_6992| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_6992| s0@@11 s1@@11))) (= (|Seq#Length_6992| s0@@11) (|Seq#Length_6992| s1@@11))) (= (|Seq#SkolemDiff_19241| s0@@11 s1@@11) (|Seq#SkolemDiff_19241| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_19241| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_19241| s0@@11 s1@@11) (|Seq#Length_6992| s0@@11))) (not (= (|Seq#Index_6992| s0@@11 (|Seq#SkolemDiff_19241| s0@@11 s1@@11)) (|Seq#Index_6992| s1@@11 (|Seq#SkolemDiff_19241| s0@@11 s1@@11))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_6992| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2864) (s1@@12 T@Seq_2864) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2864| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2864| s0@@12 s1@@12))) (not (= (|Seq#Length_2864| s0@@12) (|Seq#Length_2864| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2864| s0@@12 s1@@12))) (= (|Seq#Length_2864| s0@@12) (|Seq#Length_2864| s1@@12))) (= (|Seq#SkolemDiff_2864| s0@@12 s1@@12) (|Seq#SkolemDiff_2864| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2864| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2864| s0@@12 s1@@12) (|Seq#Length_2864| s0@@12))) (not (= (|Seq#Index_2864| s0@@12 (|Seq#SkolemDiff_2864| s0@@12 s1@@12)) (|Seq#Index_2864| s1@@12 (|Seq#SkolemDiff_2864| s0@@12 s1@@12))))))
 :qid |stdinbpl.499:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2864| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_6991_40914) (v_1@@0 T@FrameType) (q T@Field_6991_40914) (w@@0 T@FrameType) (r T@Field_6991_40914) (u T@FrameType) ) (!  (=> (and (InsidePredicate_13219_13219 p@@1 v_1@@0 q w@@0) (InsidePredicate_13219_13219 q w@@0 r u)) (InsidePredicate_13219_13219 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_13219_13219 p@@1 v_1@@0 q w@@0) (InsidePredicate_13219_13219 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_19241) ) (!  (=> (= (|Seq#Length_6992| s@@31) 0) (= s@@31 |Seq#Empty_6992|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_6992| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2864) ) (!  (=> (= (|Seq#Length_2864| s@@32) 0) (= s@@32 |Seq#Empty_2864|))
 :qid |stdinbpl.202:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2864| s@@32))
)))
(assert (forall ((s@@33 T@Seq_19241) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_6992| s@@33 n@@25) |Seq#Empty_6992|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_6992| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2864) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2864| s@@34 n@@26) |Seq#Empty_2864|))
 :qid |stdinbpl.378:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2864| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Mask@11 () T@PolymorphicMapType_13180)
(declare-fun Mask@10 () T@PolymorphicMapType_13180)
(declare-fun Heap@0 () T@PolymorphicMapType_13159)
(declare-fun diz () T@Ref)
(declare-fun tid () Int)
(declare-fun perm@5 () Real)
(declare-fun Heap@@19 () T@PolymorphicMapType_13159)
(declare-fun Mask@9 () T@PolymorphicMapType_13180)
(declare-fun perm@4 () Real)
(declare-fun Mask@8 () T@PolymorphicMapType_13180)
(declare-fun __flatten_1 () T@Ref)
(declare-fun __flatten_3 () T@Ref)
(declare-fun __flatten_4 () T@Ref)
(declare-fun Mask@5 () T@PolymorphicMapType_13180)
(declare-fun __flatten_1@0 () T@Ref)
(declare-fun __flatten_3@0 () T@Ref)
(declare-fun __flatten_4@0 () T@Ref)
(declare-fun __flatten_2@0 () Int)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gsize () Int)
(declare-fun gid () Int)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@6 () T@PolymorphicMapType_13180)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@7 () T@PolymorphicMapType_13180)
(declare-fun wildcard@8 () Real)
(declare-fun PostHeap@0 () T@PolymorphicMapType_13159)
(declare-fun wildcard@3 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_13180)
(declare-fun wildcard@4 () Real)
(declare-fun PostMask@1 () T@PolymorphicMapType_13180)
(declare-fun wildcard@5 () Real)
(declare-fun PostMask@2 () T@PolymorphicMapType_13180)
(declare-fun PostMask@3 () T@PolymorphicMapType_13180)
(declare-fun perm@2 () Real)
(declare-fun PostMask@4 () T@PolymorphicMapType_13180)
(declare-fun perm@3 () Real)
(declare-fun PostMask@5 () T@PolymorphicMapType_13180)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_13180)
(declare-fun wildcard@1 () Real)
(declare-fun Mask@1 () T@PolymorphicMapType_13180)
(declare-fun wildcard@2 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_13180)
(declare-fun Mask@3 () T@PolymorphicMapType_13180)
(declare-fun perm@0 () Real)
(declare-fun Mask@4 () T@PolymorphicMapType_13180)
(declare-fun perm@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id Ref__main_main)
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
 (=> (= (ControlFlow 0 0) 110) (let ((anon8_correct  (=> (= Mask@11 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@10) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@10) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value (- (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@10) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value) perm@5)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@10) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@10) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@10) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@10))) (and (=> (= (ControlFlow 0 51) (- 0 53)) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value))) (=> (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 51) (- 0 50)) (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) tid) Ref__Integer_value) (+ (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value)))))))))))
(let ((anon12_Else_correct  (=> (and (= perm@5 NoPerm) (= (ControlFlow 0 56) 51)) anon8_correct)))
(let ((anon12_Then_correct  (=> (not (= perm@5 NoPerm)) (and (=> (= (ControlFlow 0 54) (- 0 55)) (<= perm@5 (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@10) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value))) (=> (<= perm@5 (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@10) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 54) 51) anon8_correct))))))
(let ((anon6_correct  (=> (and (= Mask@10 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@9) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@9) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value (- (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@9) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value) perm@4)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@9) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@9) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@9) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@9))) (= perm@5 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 57) (- 0 58)) (>= perm@5 NoPerm)) (=> (>= perm@5 NoPerm) (and (=> (= (ControlFlow 0 57) 54) anon12_Then_correct) (=> (= (ControlFlow 0 57) 56) anon12_Else_correct)))))))
(let ((anon11_Else_correct  (=> (and (= perm@4 NoPerm) (= (ControlFlow 0 61) 57)) anon6_correct)))
(let ((anon11_Then_correct  (=> (not (= perm@4 NoPerm)) (and (=> (= (ControlFlow 0 59) (- 0 60)) (<= perm@4 (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@9) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value))) (=> (<= perm@4 (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@9) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 59) 57) anon6_correct))))))
(let ((anon4_correct  (=> (and (= Mask@9 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@8) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@8) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) tid) Ref__Integer_value (- (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@8) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@8) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@8) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@8) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@8))) (= perm@4 (/ (to_real 1) (to_real 2)))) (and (=> (= (ControlFlow 0 62) (- 0 63)) (>= perm@4 NoPerm)) (=> (>= perm@4 NoPerm) (and (=> (= (ControlFlow 0 62) 59) anon11_Then_correct) (=> (= (ControlFlow 0 62) 61) anon11_Else_correct)))))))
(let ((anon10_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 66) 62)) anon4_correct)))
(let ((anon10_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 64) (- 0 65)) (<= FullPerm (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@8) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) tid) Ref__Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@8) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) tid) Ref__Integer_value)) (=> (= (ControlFlow 0 64) 62) anon4_correct))))))
(let ((anon9_Else_correct  (=> (and (and (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@19) __flatten_1 $allocated) (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@19) __flatten_3 $allocated)) (and (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@19) __flatten_4 $allocated) (state Heap@@19 Mask@5))) (and (=> (= (ControlFlow 0 67) (- 0 94)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__a)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__a) (and (=> (= (ControlFlow 0 67) (- 0 93)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 67) (- 0 92)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a))) (=> (and (= __flatten_1@0 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a) tid)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 67) (- 0 91)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__b)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 67) (- 0 90)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 67) (- 0 89)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b))) (=> (and (= __flatten_3@0 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 67) (- 0 88)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__c)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__c) (and (=> (= (ControlFlow 0 67) (- 0 87)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 67) (- 0 86)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c))) (=> (and (= __flatten_4@0 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid)) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 67) (- 0 85)) (HasDirectPerm_7003_3034 Mask@5 __flatten_3@0 Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 Mask@5 __flatten_3@0 Ref__Integer_value) (and (=> (= (ControlFlow 0 67) (- 0 84)) (HasDirectPerm_7003_3034 Mask@5 __flatten_4@0 Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 Mask@5 __flatten_4@0 Ref__Integer_value) (=> (and (= __flatten_2@0 (+ (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) __flatten_3@0 Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) __flatten_4@0 Ref__Integer_value))) (state Heap@@19 Mask@5)) (and (=> (= (ControlFlow 0 67) (- 0 83)) (= FullPerm (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@5) __flatten_1@0 Ref__Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@5) __flatten_1@0 Ref__Integer_value)) (=> (and (= Heap@0 (PolymorphicMapType_13159 (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@19) (|PolymorphicMapType_13159_6806_6807#PolymorphicMapType_13159| Heap@@19) (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) (store (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) __flatten_1@0 Ref__Integer_value __flatten_2@0) (|PolymorphicMapType_13159_6991_41091#PolymorphicMapType_13159| Heap@@19) (|PolymorphicMapType_13159_13219_40914#PolymorphicMapType_13159| Heap@@19))) (state Heap@0 Mask@5)) (and (=> (= (ControlFlow 0 67) (- 0 82)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 67) (- 0 81)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 67) (- 0 80)) (<= 0 lid)) (=> (<= 0 lid) (and (=> (= (ControlFlow 0 67) (- 0 79)) (< lid gsize)) (=> (< lid gsize) (and (=> (= (ControlFlow 0 67) (- 0 78)) (<= 0 gid)) (=> (<= 0 gid) (and (=> (= (ControlFlow 0 67) (- 0 77)) (= tid (+ lid (* gid gsize)))) (=> (= tid (+ lid (* gid gsize))) (and (=> (= (ControlFlow 0 67) (- 0 76)) (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@5) diz Ref__a) NoPerm)) (=> (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@5) diz Ref__a) NoPerm) (=> (> wildcard@6 NoPerm) (=> (and (< wildcard@6 (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@5) diz Ref__a)) (= Mask@6 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@5) diz Ref__a (- (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@5) diz Ref__a) wildcard@6)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@5) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@5) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@5) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@5) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@5)))) (and (=> (= (ControlFlow 0 67) (- 0 75)) (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a)) tcount)) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a)) tcount) (and (=> (= (ControlFlow 0 67) (- 0 74)) (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@6) diz Ref__b) NoPerm)) (=> (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@6) diz Ref__b) NoPerm) (=> (> wildcard@7 NoPerm) (=> (and (< wildcard@7 (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@6) diz Ref__b)) (= Mask@7 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@6) diz Ref__b (- (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@6) diz Ref__b) wildcard@7)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@6) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@6) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@6) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@6) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@6)))) (and (=> (= (ControlFlow 0 67) (- 0 73)) (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b)) tcount)) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b)) tcount) (and (=> (= (ControlFlow 0 67) (- 0 72)) (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@7) diz Ref__c) NoPerm)) (=> (> (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@7) diz Ref__c) NoPerm) (=> (> wildcard@8 NoPerm) (=> (and (< wildcard@8 (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@7) diz Ref__c)) (= Mask@8 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@7) diz Ref__c (- (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@7) diz Ref__c) wildcard@8)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@7) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@7) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@7) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@7) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@7)))) (and (=> (= (ControlFlow 0 67) (- 0 71)) (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c)) tcount)) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c)) tcount) (and (=> (= (ControlFlow 0 67) (- 0 70)) (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a))) (=> (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__a) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a)) (and (=> (= (ControlFlow 0 67) (- 0 69)) (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b))) (=> (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__b) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c))) (=> (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@0) diz Ref__c) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)) (and (=> (= (ControlFlow 0 67) 64) anon10_Then_correct) (=> (= (ControlFlow 0 67) 66) anon10_Else_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon9_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (=> (and (and (and (and (state PostHeap@0 ZeroMask) (< tid tcount)) (and (state PostHeap@0 ZeroMask) (<= 0 lid))) (and (and (state PostHeap@0 ZeroMask) (< lid gsize)) (and (state PostHeap@0 ZeroMask) (<= 0 gid)))) (and (and (and (state PostHeap@0 ZeroMask) (= tid (+ lid (* gid gsize)))) (and (state PostHeap@0 ZeroMask) (> wildcard@3 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) diz Ref__a) wildcard@3)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 2) (- 0 49)) (HasDirectPerm_6991_20248 PostMask@0 diz Ref__a)) (=> (HasDirectPerm_6991_20248 PostMask@0 diz Ref__a) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a)) tcount) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@4 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@0) diz Ref__b (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@0) diz Ref__b) wildcard@4)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@0) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| PostMask@0) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| PostMask@0) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| PostMask@0) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 2) (- 0 48)) (HasDirectPerm_6991_20248 PostMask@1 diz Ref__b)) (=> (HasDirectPerm_6991_20248 PostMask@1 diz Ref__b) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b)) tcount) (=> (and (state PostHeap@0 PostMask@1) (> wildcard@5 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@2 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@1) diz Ref__c (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@1) diz Ref__c) wildcard@5)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@1) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| PostMask@1) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| PostMask@1) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| PostMask@1) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| PostMask@1)))) (and (state PostHeap@0 PostMask@2) (state PostHeap@0 PostMask@2))) (and (=> (= (ControlFlow 0 2) (- 0 47)) (HasDirectPerm_6991_20248 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_6991_20248 PostMask@2 diz Ref__c) (=> (and (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c)) tcount) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 46)) (HasDirectPerm_6991_20248 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_6991_20248 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 45)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__a)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__a) (=> (and (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 44)) (HasDirectPerm_6991_20248 PostMask@2 diz Ref__b)) (=> (HasDirectPerm_6991_20248 PostMask@2 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 43)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__b)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__b) (=> (and (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 42)) (HasDirectPerm_6991_20248 PostMask@2 diz Ref__c)) (=> (HasDirectPerm_6991_20248 PostMask@2 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 41)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__c)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__c) (=> (and (|Seq#Equal_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)) (state PostHeap@0 PostMask@2)) (and (=> (= (ControlFlow 0 2) (- 0 40)) (HasDirectPerm_6991_20248 PostMask@2 diz Ref__a)) (=> (HasDirectPerm_6991_20248 PostMask@2 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 39)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 38)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a))) (=> (and (and (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) tid) null)) (= PostMask@3 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@2) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@2) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@2) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| PostMask@2) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| PostMask@2) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| PostMask@2) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| PostMask@2)))) (and (state PostHeap@0 PostMask@3) (state PostHeap@0 PostMask@3))) (and (=> (= (ControlFlow 0 2) (- 0 37)) (HasDirectPerm_6991_20248 PostMask@3 diz Ref__b)) (=> (HasDirectPerm_6991_20248 PostMask@3 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 36)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 35)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b))) (=> (= perm@2 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 34)) (>= perm@2 NoPerm)) (=> (>= perm@2 NoPerm) (=> (and (and (=> (> perm@2 NoPerm) (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) null))) (= PostMask@4 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@3) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@3) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@3) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) perm@2)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| PostMask@3) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| PostMask@3) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| PostMask@3) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| PostMask@3)))) (and (state PostHeap@0 PostMask@4) (state PostHeap@0 PostMask@4))) (and (=> (= (ControlFlow 0 2) (- 0 33)) (HasDirectPerm_6991_20248 PostMask@4 diz Ref__c)) (=> (HasDirectPerm_6991_20248 PostMask@4 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 32)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 31)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c))) (=> (= perm@3 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 2) (- 0 30)) (>= perm@3 NoPerm)) (=> (>= perm@3 NoPerm) (=> (and (and (=> (> perm@3 NoPerm) (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) null))) (= PostMask@5 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| PostMask@4) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@4) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| PostMask@4) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) perm@3)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| PostMask@4) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| PostMask@4) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| PostMask@4) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| PostMask@4)))) (and (state PostHeap@0 PostMask@5) (state PostHeap@0 PostMask@5))) (and (=> (= (ControlFlow 0 2) (- 0 29)) (HasDirectPerm_6991_20248 PostMask@5 diz Ref__b)) (=> (HasDirectPerm_6991_20248 PostMask@5 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 28)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 27)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 2) (- 0 26)) (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 2) (- 0 25)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__b)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 24)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 23)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b))) (and (=> (= (ControlFlow 0 2) (- 0 22)) (HasDirectPerm_7003_3034 Mask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 Mask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| PostHeap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value)) (state PostHeap@0 PostMask@5)) (and (=> (= (ControlFlow 0 2) (- 0 21)) (HasDirectPerm_6991_20248 PostMask@5 diz Ref__c)) (=> (HasDirectPerm_6991_20248 PostMask@5 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 20)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 19)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c))) (and (=> (= (ControlFlow 0 2) (- 0 18)) (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 2) (- 0 17)) (HasDirectPerm_6991_20248 Mask@5 diz Ref__c)) (=> (HasDirectPerm_6991_20248 Mask@5 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 16)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 15)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c))) (and (=> (= (ControlFlow 0 2) (- 0 14)) (HasDirectPerm_7003_3034 Mask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 Mask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value) (=> (and (= (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| PostHeap@0) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value) (select (|PolymorphicMapType_13159_7003_3034#PolymorphicMapType_13159| Heap@@19) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value)) (state PostHeap@0 PostMask@5)) (and (=> (= (ControlFlow 0 2) (- 0 13)) (HasDirectPerm_6991_20248 PostMask@5 diz Ref__a)) (=> (HasDirectPerm_6991_20248 PostMask@5 diz Ref__a) (and (=> (= (ControlFlow 0 2) (- 0 12)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 11)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a))) (and (=> (= (ControlFlow 0 2) (- 0 10)) (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__a) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 2) (- 0 9)) (HasDirectPerm_6991_20248 PostMask@5 diz Ref__b)) (=> (HasDirectPerm_6991_20248 PostMask@5 diz Ref__b) (and (=> (= (ControlFlow 0 2) (- 0 8)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 7)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b))) (and (=> (= (ControlFlow 0 2) (- 0 6)) (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value)) (=> (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__b) tid) Ref__Integer_value) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_6991_20248 PostMask@5 diz Ref__c)) (=> (HasDirectPerm_6991_20248 PostMask@5 diz Ref__c) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c))) (=> (= (ControlFlow 0 2) (- 0 1)) (HasDirectPerm_7003_3034 PostMask@5 (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| PostHeap@0) diz Ref__c) tid) Ref__Integer_value)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon0_correct  (=> (and (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_13159_6803_53#PolymorphicMapType_13159| Heap@@19) diz $allocated) (not (= diz null)))) (and (and (state Heap@@19 ZeroMask) (>= current_thread_id 0)) (and (state Heap@@19 ZeroMask) (<= 0 tid)))) (=> (and (and (and (and (state Heap@@19 ZeroMask) (< tid tcount)) (and (state Heap@@19 ZeroMask) (<= 0 lid))) (and (and (state Heap@@19 ZeroMask) (< lid gsize)) (and (state Heap@@19 ZeroMask) (<= 0 gid)))) (and (and (and (state Heap@@19 ZeroMask) (= tid (+ lid (* gid gsize)))) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) diz Ref__a (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| ZeroMask) diz Ref__a) wildcard@0)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| ZeroMask) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 95) (- 0 109)) (HasDirectPerm_6991_20248 Mask@0 diz Ref__a)) (=> (HasDirectPerm_6991_20248 Mask@0 diz Ref__a) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a)) tcount) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@0) diz Ref__b (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@0) diz Ref__b) wildcard@1)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@0) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@0) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@0) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@0) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 95) (- 0 108)) (HasDirectPerm_6991_20248 Mask@1 diz Ref__b)) (=> (HasDirectPerm_6991_20248 Mask@1 diz Ref__b) (=> (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)) tcount) (=> (and (state Heap@@19 Mask@1) (> wildcard@2 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@2 (PolymorphicMapType_13180 (store (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@1) diz Ref__c (+ (select (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@1) diz Ref__c) wildcard@2)) (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@1) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@1) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@1) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@1) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@1)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 95) (- 0 107)) (HasDirectPerm_6991_20248 Mask@2 diz Ref__c)) (=> (HasDirectPerm_6991_20248 Mask@2 diz Ref__c) (=> (and (= (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)) tcount) (state Heap@@19 Mask@2)) (and (=> (= (ControlFlow 0 95) (- 0 106)) (HasDirectPerm_6991_20248 Mask@2 diz Ref__a)) (=> (HasDirectPerm_6991_20248 Mask@2 diz Ref__a) (and (=> (= (ControlFlow 0 95) (- 0 105)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 95) (- 0 104)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a))) (=> (and (and (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a) tid) null)) (= Mask@3 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@2) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@2) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@2) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__a) tid) Ref__Integer_value) FullPerm)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@2) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@2) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@2) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@2)))) (and (state Heap@@19 Mask@3) (state Heap@@19 Mask@3))) (and (=> (= (ControlFlow 0 95) (- 0 103)) (HasDirectPerm_6991_20248 Mask@3 diz Ref__b)) (=> (HasDirectPerm_6991_20248 Mask@3 diz Ref__b) (and (=> (= (ControlFlow 0 95) (- 0 102)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 95) (- 0 101)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b))) (=> (= perm@0 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 95) (- 0 100)) (>= perm@0 NoPerm)) (=> (>= perm@0 NoPerm) (=> (and (and (=> (> perm@0 NoPerm) (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) null))) (= Mask@4 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@3) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@3) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@3) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__b) tid) Ref__Integer_value) perm@0)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@3) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@3) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@3) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@3)))) (and (state Heap@@19 Mask@4) (state Heap@@19 Mask@4))) (and (=> (= (ControlFlow 0 95) (- 0 99)) (HasDirectPerm_6991_20248 Mask@4 diz Ref__c)) (=> (HasDirectPerm_6991_20248 Mask@4 diz Ref__c) (and (=> (= (ControlFlow 0 95) (- 0 98)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 95) (- 0 97)) (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c)))) (=> (< tid (|Seq#Length_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c))) (=> (= perm@1 (/ (to_real 1) (to_real 2))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (>= perm@1 NoPerm)) (=> (>= perm@1 NoPerm) (=> (and (and (=> (> perm@1 NoPerm) (not (= (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) null))) (= Mask@5 (PolymorphicMapType_13180 (|PolymorphicMapType_13180_6991_20096#PolymorphicMapType_13180| Mask@4) (store (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@4) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value (+ (select (|PolymorphicMapType_13180_7003_3034#PolymorphicMapType_13180| Mask@4) (|Seq#Index_6992| (select (|PolymorphicMapType_13159_6991_20315#PolymorphicMapType_13159| Heap@@19) diz Ref__c) tid) Ref__Integer_value) perm@1)) (|PolymorphicMapType_13180_6991_53#PolymorphicMapType_13180| Mask@4) (|PolymorphicMapType_13180_6991_13233#PolymorphicMapType_13180| Mask@4) (|PolymorphicMapType_13180_6991_40914#PolymorphicMapType_13180| Mask@4) (|PolymorphicMapType_13180_6991_45741#PolymorphicMapType_13180| Mask@4)))) (and (state Heap@@19 Mask@5) (state Heap@@19 Mask@5))) (and (=> (= (ControlFlow 0 95) 2) anon9_Then_correct) (=> (= (ControlFlow 0 95) 67) anon9_Else_correct))))))))))))))))))))))))))))))))))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 110) 95)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid