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
(declare-sort T@Field_47222_53 0)
(declare-sort T@Field_47235_47236 0)
(declare-sort T@Field_53283_53288 0)
(declare-sort T@Seq_53286 0)
(declare-sort T@Field_53397_3522 0)
(declare-sort T@Field_27839_159672 0)
(declare-sort T@Field_27839_159539 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_47183 0)) (((PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| (Array T@Ref T@Field_53283_53288 Real)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| (Array T@Ref T@Field_53397_3522 Real)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| (Array T@Ref T@Field_47222_53 Real)) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| (Array T@Ref T@Field_47235_47236 Real)) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| (Array T@Ref T@Field_27839_159539 Real)) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| (Array T@Ref T@Field_27839_159672 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47711 0)) (((PolymorphicMapType_47711 (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| (Array T@Ref T@Field_47222_53 Bool)) (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| (Array T@Ref T@Field_47235_47236 Bool)) (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| (Array T@Ref T@Field_53283_53288 Bool)) (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| (Array T@Ref T@Field_53397_3522 Bool)) (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| (Array T@Ref T@Field_27839_159539 Bool)) (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| (Array T@Ref T@Field_27839_159672 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47162 0)) (((PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| (Array T@Ref T@Field_47222_53 Bool)) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| (Array T@Ref T@Field_47235_47236 T@Ref)) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| (Array T@Ref T@Field_53283_53288 T@Seq_53286)) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| (Array T@Ref T@Field_53397_3522 Int)) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| (Array T@Ref T@Field_27839_159672 T@PolymorphicMapType_47711)) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| (Array T@Ref T@Field_27839_159539 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_47222_53)
(declare-fun src () T@Field_53283_53288)
(declare-fun dst () T@Field_53283_53288)
(declare-fun Integer_value () T@Field_53397_3522)
(declare-fun |Seq#Length_27840| (T@Seq_53286) Int)
(declare-fun |Seq#Drop_27840| (T@Seq_53286 Int) T@Seq_53286)
(declare-sort T@Seq_3368 0)
(declare-fun |Seq#Length_3368| (T@Seq_3368) Int)
(declare-fun |Seq#Drop_3368| (T@Seq_3368 Int) T@Seq_3368)
(declare-fun succHeap (T@PolymorphicMapType_47162 T@PolymorphicMapType_47162) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_47162 T@PolymorphicMapType_47162) Bool)
(declare-fun state (T@PolymorphicMapType_47162 T@PolymorphicMapType_47183) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_47183) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_47711)
(declare-fun |Seq#Index_27840| (T@Seq_53286 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3368| (T@Seq_3368 Int) Int)
(declare-fun |Seq#Empty_27840| () T@Seq_53286)
(declare-fun |Seq#Empty_3368| () T@Seq_3368)
(declare-fun |Seq#Update_27840| (T@Seq_53286 Int T@Ref) T@Seq_53286)
(declare-fun |Seq#Update_3368| (T@Seq_3368 Int Int) T@Seq_3368)
(declare-fun |Seq#Take_27840| (T@Seq_53286 Int) T@Seq_53286)
(declare-fun |Seq#Take_3368| (T@Seq_3368 Int) T@Seq_3368)
(declare-fun |Seq#Contains_3368| (T@Seq_3368 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3368)
(declare-fun |Seq#Contains_53286| (T@Seq_53286 T@Ref) Bool)
(declare-fun |Seq#Skolem_53286| (T@Seq_53286 T@Ref) Int)
(declare-fun |Seq#Skolem_3368| (T@Seq_3368 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_47162 T@PolymorphicMapType_47162 T@PolymorphicMapType_47183) Bool)
(declare-fun IsPredicateField_27839_159630 (T@Field_27839_159539) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_27839 (T@Field_27839_159539) T@Field_27839_159672)
(declare-fun HasDirectPerm_27839_159603 (T@PolymorphicMapType_47183 T@Ref T@Field_27839_159539) Bool)
(declare-fun IsWandField_27839_161581 (T@Field_27839_159539) Bool)
(declare-fun WandMaskField_27839 (T@Field_27839_159539) T@Field_27839_159672)
(declare-fun |Seq#Singleton_27840| (T@Ref) T@Seq_53286)
(declare-fun |Seq#Singleton_3368| (Int) T@Seq_3368)
(declare-fun |Seq#Append_53286| (T@Seq_53286 T@Seq_53286) T@Seq_53286)
(declare-fun |Seq#Append_3368| (T@Seq_3368 T@Seq_3368) T@Seq_3368)
(declare-fun dummyHeap () T@PolymorphicMapType_47162)
(declare-fun ZeroMask () T@PolymorphicMapType_47183)
(declare-fun InsidePredicate_47222_47222 (T@Field_27839_159539 T@FrameType T@Field_27839_159539 T@FrameType) Bool)
(declare-fun IsPredicateField_27839_53310 (T@Field_53283_53288) Bool)
(declare-fun IsWandField_27839_53336 (T@Field_53283_53288) Bool)
(declare-fun IsPredicateField_27847_3522 (T@Field_53397_3522) Bool)
(declare-fun IsWandField_27847_3522 (T@Field_53397_3522) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_27839_165715 (T@Field_27839_159672) Bool)
(declare-fun IsWandField_27839_165731 (T@Field_27839_159672) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_27839_47236 (T@Field_47235_47236) Bool)
(declare-fun IsWandField_27839_47236 (T@Field_47235_47236) Bool)
(declare-fun IsPredicateField_27839_53 (T@Field_47222_53) Bool)
(declare-fun IsWandField_27839_53 (T@Field_47222_53) Bool)
(declare-fun HasDirectPerm_27839_166252 (T@PolymorphicMapType_47183 T@Ref T@Field_27839_159672) Bool)
(declare-fun HasDirectPerm_27839_47236 (T@PolymorphicMapType_47183 T@Ref T@Field_47235_47236) Bool)
(declare-fun HasDirectPerm_27839_53 (T@PolymorphicMapType_47183 T@Ref T@Field_47222_53) Bool)
(declare-fun HasDirectPerm_27847_3522 (T@PolymorphicMapType_47183 T@Ref T@Field_53397_3522) Bool)
(declare-fun HasDirectPerm_27839_54103 (T@PolymorphicMapType_47183 T@Ref T@Field_53283_53288) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_47183 T@PolymorphicMapType_47183 T@PolymorphicMapType_47183) Bool)
(declare-fun |Seq#Equal_3368| (T@Seq_3368 T@Seq_3368) Bool)
(declare-fun |Seq#Equal_27840| (T@Seq_53286 T@Seq_53286) Bool)
(declare-fun |Seq#ContainsTrigger_27840| (T@Seq_53286 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3368| (T@Seq_3368 Int) Bool)
(declare-fun |Seq#SkolemDiff_53286| (T@Seq_53286 T@Seq_53286) Int)
(declare-fun |Seq#SkolemDiff_3368| (T@Seq_3368 T@Seq_3368) Int)
(assert (distinct src dst)
)
(assert (forall ((s T@Seq_53286) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_27840| s)) (= (|Seq#Length_27840| (|Seq#Drop_27840| s n)) (- (|Seq#Length_27840| s) n))) (=> (< (|Seq#Length_27840| s) n) (= (|Seq#Length_27840| (|Seq#Drop_27840| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_27840| (|Seq#Drop_27840| s n)) (|Seq#Length_27840| s))))
 :qid |stdinbpl.348:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_27840| (|Seq#Drop_27840| s n)))
 :pattern ( (|Seq#Length_27840| s) (|Seq#Drop_27840| s n))
)))
(assert (forall ((s@@0 T@Seq_3368) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3368| s@@0)) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) (- (|Seq#Length_3368| s@@0) n@@0))) (=> (< (|Seq#Length_3368| s@@0) n@@0) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) (|Seq#Length_3368| s@@0))))
 :qid |stdinbpl.348:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3368| s@@0) (|Seq#Drop_3368| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_47162) (Heap1 T@PolymorphicMapType_47162) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_47162) (Mask T@PolymorphicMapType_47183) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_47162) (Heap1@@0 T@PolymorphicMapType_47162) (Heap2 T@PolymorphicMapType_47162) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_27839_159672) ) (!  (not (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_27839_159539) ) (!  (not (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_53397_3522) ) (!  (not (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_53283_53288) ) (!  (not (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_47235_47236) ) (!  (not (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_47222_53) ) (!  (not (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_53286) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_27840| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_27840| (|Seq#Drop_27840| s@@1 n@@1) j) (|Seq#Index_27840| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.369:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_27840| (|Seq#Drop_27840| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3368) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3368| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3368| (|Seq#Drop_3368| s@@2 n@@2) j@@0) (|Seq#Index_3368| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.369:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3368| (|Seq#Drop_3368| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_27840| |Seq#Empty_27840|) 0))
(assert (= (|Seq#Length_3368| |Seq#Empty_3368|) 0))
(assert (forall ((s@@3 T@Seq_53286) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_27840| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_27840| (|Seq#Update_27840| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_27840| (|Seq#Update_27840| s@@3 i v) n@@3) (|Seq#Index_27840| s@@3 n@@3)))))
 :qid |stdinbpl.324:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_27840| (|Seq#Update_27840| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_27840| s@@3 n@@3) (|Seq#Update_27840| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3368) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3368| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3368| s@@4 n@@4)))))
 :qid |stdinbpl.324:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3368| s@@4 n@@4) (|Seq#Update_3368| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_53286) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_27840| s@@5)) (= (|Seq#Length_27840| (|Seq#Take_27840| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_27840| s@@5) n@@5) (= (|Seq#Length_27840| (|Seq#Take_27840| s@@5 n@@5)) (|Seq#Length_27840| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_27840| (|Seq#Take_27840| s@@5 n@@5)) 0)))
 :qid |stdinbpl.335:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_27840| (|Seq#Take_27840| s@@5 n@@5)))
 :pattern ( (|Seq#Take_27840| s@@5 n@@5) (|Seq#Length_27840| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3368) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3368| s@@6)) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3368| s@@6) n@@6) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) (|Seq#Length_3368| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) 0)))
 :qid |stdinbpl.335:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3368| s@@6 n@@6) (|Seq#Length_3368| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3368| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.609:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_53286) (x T@Ref) ) (!  (=> (|Seq#Contains_53286| s@@7 x) (and (and (<= 0 (|Seq#Skolem_53286| s@@7 x)) (< (|Seq#Skolem_53286| s@@7 x) (|Seq#Length_27840| s@@7))) (= (|Seq#Index_27840| s@@7 (|Seq#Skolem_53286| s@@7 x)) x)))
 :qid |stdinbpl.467:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_53286| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3368) (x@@0 Int) ) (!  (=> (|Seq#Contains_3368| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3368| s@@8 x@@0)) (< (|Seq#Skolem_3368| s@@8 x@@0) (|Seq#Length_3368| s@@8))) (= (|Seq#Index_3368| s@@8 (|Seq#Skolem_3368| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.467:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3368| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_53286) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_27840| s@@9 n@@7) s@@9))
 :qid |stdinbpl.451:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_27840| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3368) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3368| s@@10 n@@8) s@@10))
 :qid |stdinbpl.451:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3368| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.304:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.302:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_47162) (ExhaleHeap T@PolymorphicMapType_47162) (Mask@@0 T@PolymorphicMapType_47183) (pm_f_10 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_27839_159603 Mask@@0 null pm_f_10) (IsPredicateField_27839_159630 pm_f_10)) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@0) null (PredicateMaskField_27839 pm_f_10)) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap) null (PredicateMaskField_27839 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_27839_159630 pm_f_10) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap) null (PredicateMaskField_27839 pm_f_10)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47162) (ExhaleHeap@@0 T@PolymorphicMapType_47162) (Mask@@1 T@PolymorphicMapType_47183) (pm_f_10@@0 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_27839_159603 Mask@@1 null pm_f_10@@0) (IsWandField_27839_161581 pm_f_10@@0)) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@1) null (WandMaskField_27839 pm_f_10@@0)) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@0) null (WandMaskField_27839 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_27839_161581 pm_f_10@@0) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@0) null (WandMaskField_27839 pm_f_10@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_53286| (|Seq#Singleton_27840| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.592:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_53286| (|Seq#Singleton_27840| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3368| (|Seq#Singleton_3368| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.592:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3368| (|Seq#Singleton_3368| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_53286) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_27840| s@@11))) (= (|Seq#Index_27840| (|Seq#Take_27840| s@@11 n@@9) j@@3) (|Seq#Index_27840| s@@11 j@@3)))
 :qid |stdinbpl.343:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_27840| (|Seq#Take_27840| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_27840| s@@11 j@@3) (|Seq#Take_27840| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3368) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3368| s@@12))) (= (|Seq#Index_3368| (|Seq#Take_3368| s@@12 n@@10) j@@4) (|Seq#Index_3368| s@@12 j@@4)))
 :qid |stdinbpl.343:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3368| (|Seq#Take_3368| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3368| s@@12 j@@4) (|Seq#Take_3368| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_53286) (t T@Seq_53286) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_27840| s@@13))) (< n@@11 (|Seq#Length_27840| (|Seq#Append_53286| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_27840| s@@13)) (|Seq#Length_27840| s@@13)) n@@11) (= (|Seq#Take_27840| (|Seq#Append_53286| s@@13 t) n@@11) (|Seq#Append_53286| s@@13 (|Seq#Take_27840| t (|Seq#Sub| n@@11 (|Seq#Length_27840| s@@13)))))))
 :qid |stdinbpl.428:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_27840| (|Seq#Append_53286| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3368) (t@@0 T@Seq_3368) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3368| s@@14))) (< n@@12 (|Seq#Length_3368| (|Seq#Append_3368| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3368| s@@14)) (|Seq#Length_3368| s@@14)) n@@12) (= (|Seq#Take_3368| (|Seq#Append_3368| s@@14 t@@0) n@@12) (|Seq#Append_3368| s@@14 (|Seq#Take_3368| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3368| s@@14)))))))
 :qid |stdinbpl.428:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3368| (|Seq#Append_3368| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_47162) (ExhaleHeap@@1 T@PolymorphicMapType_47162) (Mask@@2 T@PolymorphicMapType_47183) (o_29 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@2) o_29 $allocated) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@1) o_29 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@1) o_29 $allocated))
)))
(assert (forall ((p T@Field_27839_159539) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_47222_47222 p v_1 p w))
 :qid |stdinbpl.246:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_47222_47222 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_53286) (s1 T@Seq_53286) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_27840|)) (not (= s1 |Seq#Empty_27840|))) (<= (|Seq#Length_27840| s0) n@@13)) (< n@@13 (|Seq#Length_27840| (|Seq#Append_53286| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_27840| s0)) (|Seq#Length_27840| s0)) n@@13) (= (|Seq#Index_27840| (|Seq#Append_53286| s0 s1) n@@13) (|Seq#Index_27840| s1 (|Seq#Sub| n@@13 (|Seq#Length_27840| s0))))))
 :qid |stdinbpl.315:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_27840| (|Seq#Append_53286| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3368) (s1@@0 T@Seq_3368) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3368|)) (not (= s1@@0 |Seq#Empty_3368|))) (<= (|Seq#Length_3368| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3368| (|Seq#Append_3368| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3368| s0@@0)) (|Seq#Length_3368| s0@@0)) n@@14) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@0 s1@@0) n@@14) (|Seq#Index_3368| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3368| s0@@0))))))
 :qid |stdinbpl.315:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3368| (|Seq#Append_3368| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_27839_53310 src)))
(assert  (not (IsWandField_27839_53336 src)))
(assert  (not (IsPredicateField_27839_53310 dst)))
(assert  (not (IsWandField_27839_53336 dst)))
(assert  (not (IsPredicateField_27847_3522 Integer_value)))
(assert  (not (IsWandField_27847_3522 Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_47162) (ExhaleHeap@@2 T@PolymorphicMapType_47162) (Mask@@3 T@PolymorphicMapType_47183) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_47183) (o_2@@5 T@Ref) (f_4@@5 T@Field_27839_159672) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_27839_165715 f_4@@5))) (not (IsWandField_27839_165731 f_4@@5))) (<= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_47183) (o_2@@6 T@Ref) (f_4@@6 T@Field_27839_159539) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_27839_159630 f_4@@6))) (not (IsWandField_27839_161581 f_4@@6))) (<= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_47183) (o_2@@7 T@Ref) (f_4@@7 T@Field_47235_47236) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_27839_47236 f_4@@7))) (not (IsWandField_27839_47236 f_4@@7))) (<= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_47183) (o_2@@8 T@Ref) (f_4@@8 T@Field_47222_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_27839_53 f_4@@8))) (not (IsWandField_27839_53 f_4@@8))) (<= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_47183) (o_2@@9 T@Ref) (f_4@@9 T@Field_53397_3522) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_27847_3522 f_4@@9))) (not (IsWandField_27847_3522 f_4@@9))) (<= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_47183) (o_2@@10 T@Ref) (f_4@@10 T@Field_53283_53288) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_27839_53310 f_4@@10))) (not (IsWandField_27839_53336 f_4@@10))) (<= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_47183) (o_2@@11 T@Ref) (f_4@@11 T@Field_27839_159672) ) (! (= (HasDirectPerm_27839_166252 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27839_166252 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_47183) (o_2@@12 T@Ref) (f_4@@12 T@Field_27839_159539) ) (! (= (HasDirectPerm_27839_159603 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27839_159603 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_47183) (o_2@@13 T@Ref) (f_4@@13 T@Field_47235_47236) ) (! (= (HasDirectPerm_27839_47236 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27839_47236 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_47183) (o_2@@14 T@Ref) (f_4@@14 T@Field_47222_53) ) (! (= (HasDirectPerm_27839_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27839_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_47183) (o_2@@15 T@Ref) (f_4@@15 T@Field_53397_3522) ) (! (= (HasDirectPerm_27847_3522 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27847_3522 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_47183) (o_2@@16 T@Ref) (f_4@@16 T@Field_53283_53288) ) (! (= (HasDirectPerm_27839_54103 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_27839_54103 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.234:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3368| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.607:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3368| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_47162) (ExhaleHeap@@3 T@PolymorphicMapType_47162) (Mask@@16 T@PolymorphicMapType_47183) (o_29@@0 T@Ref) (f_33 T@Field_27839_159672) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_27839_166252 Mask@@16 o_29@@0 f_33) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@4) o_29@@0 f_33) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@3) o_29@@0 f_33))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@3) o_29@@0 f_33))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47162) (ExhaleHeap@@4 T@PolymorphicMapType_47162) (Mask@@17 T@PolymorphicMapType_47183) (o_29@@1 T@Ref) (f_33@@0 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_27839_159603 Mask@@17 o_29@@1 f_33@@0) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@5) o_29@@1 f_33@@0) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@4) o_29@@1 f_33@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@4) o_29@@1 f_33@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47162) (ExhaleHeap@@5 T@PolymorphicMapType_47162) (Mask@@18 T@PolymorphicMapType_47183) (o_29@@2 T@Ref) (f_33@@1 T@Field_47235_47236) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_27839_47236 Mask@@18 o_29@@2 f_33@@1) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@6) o_29@@2 f_33@@1) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@5) o_29@@2 f_33@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@5) o_29@@2 f_33@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47162) (ExhaleHeap@@6 T@PolymorphicMapType_47162) (Mask@@19 T@PolymorphicMapType_47183) (o_29@@3 T@Ref) (f_33@@2 T@Field_47222_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_27839_53 Mask@@19 o_29@@3 f_33@@2) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@7) o_29@@3 f_33@@2) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@6) o_29@@3 f_33@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@6) o_29@@3 f_33@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47162) (ExhaleHeap@@7 T@PolymorphicMapType_47162) (Mask@@20 T@PolymorphicMapType_47183) (o_29@@4 T@Ref) (f_33@@3 T@Field_53397_3522) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_27847_3522 Mask@@20 o_29@@4 f_33@@3) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@8) o_29@@4 f_33@@3) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@7) o_29@@4 f_33@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@7) o_29@@4 f_33@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47162) (ExhaleHeap@@8 T@PolymorphicMapType_47162) (Mask@@21 T@PolymorphicMapType_47183) (o_29@@5 T@Ref) (f_33@@4 T@Field_53283_53288) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_27839_54103 Mask@@21 o_29@@5 f_33@@4) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@9) o_29@@5 f_33@@4) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@8) o_29@@5 f_33@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@8) o_29@@5 f_33@@4))
)))
(assert (forall ((s0@@1 T@Seq_53286) (s1@@1 T@Seq_53286) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_27840|)) (not (= s1@@1 |Seq#Empty_27840|))) (= (|Seq#Length_27840| (|Seq#Append_53286| s0@@1 s1@@1)) (+ (|Seq#Length_27840| s0@@1) (|Seq#Length_27840| s1@@1))))
 :qid |stdinbpl.284:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_27840| (|Seq#Append_53286| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3368) (s1@@2 T@Seq_3368) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3368|)) (not (= s1@@2 |Seq#Empty_3368|))) (= (|Seq#Length_3368| (|Seq#Append_3368| s0@@2 s1@@2)) (+ (|Seq#Length_3368| s0@@2) (|Seq#Length_3368| s1@@2))))
 :qid |stdinbpl.284:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3368| (|Seq#Append_3368| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_27839_159672) ) (! (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_27839_159539) ) (! (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_47235_47236) ) (! (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_47222_53) ) (! (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_53397_3522) ) (! (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_53283_53288) ) (! (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_53286) (t@@1 T@Seq_53286) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_27840| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_27840| s@@15)) (|Seq#Length_27840| s@@15)) n@@15) (= (|Seq#Drop_27840| (|Seq#Append_53286| s@@15 t@@1) n@@15) (|Seq#Drop_27840| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_27840| s@@15))))))
 :qid |stdinbpl.441:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_27840| (|Seq#Append_53286| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3368) (t@@2 T@Seq_3368) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3368| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3368| s@@16)) (|Seq#Length_3368| s@@16)) n@@16) (= (|Seq#Drop_3368| (|Seq#Append_3368| s@@16 t@@2) n@@16) (|Seq#Drop_3368| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3368| s@@16))))))
 :qid |stdinbpl.441:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3368| (|Seq#Append_3368| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_47183) (SummandMask1 T@PolymorphicMapType_47183) (SummandMask2 T@PolymorphicMapType_47183) (o_2@@23 T@Ref) (f_4@@23 T@Field_27839_159672) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_47183) (SummandMask1@@0 T@PolymorphicMapType_47183) (SummandMask2@@0 T@PolymorphicMapType_47183) (o_2@@24 T@Ref) (f_4@@24 T@Field_27839_159539) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_47183) (SummandMask1@@1 T@PolymorphicMapType_47183) (SummandMask2@@1 T@PolymorphicMapType_47183) (o_2@@25 T@Ref) (f_4@@25 T@Field_47235_47236) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_47183) (SummandMask1@@2 T@PolymorphicMapType_47183) (SummandMask2@@2 T@PolymorphicMapType_47183) (o_2@@26 T@Ref) (f_4@@26 T@Field_47222_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_47183) (SummandMask1@@3 T@PolymorphicMapType_47183) (SummandMask2@@3 T@PolymorphicMapType_47183) (o_2@@27 T@Ref) (f_4@@27 T@Field_53397_3522) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_47183) (SummandMask1@@4 T@PolymorphicMapType_47183) (SummandMask2@@4 T@PolymorphicMapType_47183) (o_2@@28 T@Ref) (f_4@@28 T@Field_53283_53288) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.606:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3368) (b T@Seq_3368) ) (!  (=> (|Seq#Equal_3368| a b) (= a b))
 :qid |stdinbpl.579:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3368| a b))
)))
(assert (forall ((a@@0 T@Seq_53286) (b@@0 T@Seq_53286) ) (!  (=> (|Seq#Equal_27840| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.579:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_27840| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_53286) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_27840| s@@17))) (|Seq#ContainsTrigger_27840| s@@17 (|Seq#Index_27840| s@@17 i@@3)))
 :qid |stdinbpl.472:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_27840| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3368) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3368| s@@18))) (|Seq#ContainsTrigger_3368| s@@18 (|Seq#Index_3368| s@@18 i@@4)))
 :qid |stdinbpl.472:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3368| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_53286) (s1@@3 T@Seq_53286) ) (!  (and (=> (= s0@@3 |Seq#Empty_27840|) (= (|Seq#Append_53286| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_27840|) (= (|Seq#Append_53286| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.290:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_53286| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3368) (s1@@4 T@Seq_3368) ) (!  (and (=> (= s0@@4 |Seq#Empty_3368|) (= (|Seq#Append_3368| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3368|) (= (|Seq#Append_3368| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.290:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3368| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_27840| (|Seq#Singleton_27840| t@@3) 0) t@@3)
 :qid |stdinbpl.294:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_27840| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3368| (|Seq#Singleton_3368| t@@4) 0) t@@4)
 :qid |stdinbpl.294:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3368| t@@4))
)))
(assert (forall ((s@@19 T@Seq_53286) ) (! (<= 0 (|Seq#Length_27840| s@@19))
 :qid |stdinbpl.273:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_27840| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3368) ) (! (<= 0 (|Seq#Length_3368| s@@20))
 :qid |stdinbpl.273:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3368| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_47162) (ExhaleHeap@@9 T@PolymorphicMapType_47162) (Mask@@22 T@PolymorphicMapType_47183) (pm_f_10@@1 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_27839_159603 Mask@@22 null pm_f_10@@1) (IsPredicateField_27839_159630 pm_f_10@@1)) (and (and (and (and (and (forall ((o2_10 T@Ref) (f_33@@5 T@Field_47222_53) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10 f_33@@5) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@10) o2_10 f_33@@5) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10 f_33@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10 f_33@@5))
)) (forall ((o2_10@@0 T@Ref) (f_33@@6 T@Field_47235_47236) ) (!  (=> (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10@@0 f_33@@6) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@10) o2_10@@0 f_33@@6) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@0 f_33@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@0 f_33@@6))
))) (forall ((o2_10@@1 T@Ref) (f_33@@7 T@Field_53283_53288) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10@@1 f_33@@7) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@10) o2_10@@1 f_33@@7) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@1 f_33@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@1 f_33@@7))
))) (forall ((o2_10@@2 T@Ref) (f_33@@8 T@Field_53397_3522) ) (!  (=> (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10@@2 f_33@@8) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@10) o2_10@@2 f_33@@8) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@2 f_33@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@2 f_33@@8))
))) (forall ((o2_10@@3 T@Ref) (f_33@@9 T@Field_27839_159539) ) (!  (=> (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10@@3 f_33@@9) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@10) o2_10@@3 f_33@@9) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@3 f_33@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@3 f_33@@9))
))) (forall ((o2_10@@4 T@Ref) (f_33@@10 T@Field_27839_159672) ) (!  (=> (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_10@@1))) o2_10@@4 f_33@@10) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) o2_10@@4 f_33@@10) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@4 f_33@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@9) o2_10@@4 f_33@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_27839_159630 pm_f_10@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47162) (ExhaleHeap@@10 T@PolymorphicMapType_47162) (Mask@@23 T@PolymorphicMapType_47183) (pm_f_10@@2 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_27839_159603 Mask@@23 null pm_f_10@@2) (IsWandField_27839_161581 pm_f_10@@2)) (and (and (and (and (and (forall ((o2_10@@5 T@Ref) (f_33@@11 T@Field_47222_53) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@5 f_33@@11) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@11) o2_10@@5 f_33@@11) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@5 f_33@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@5 f_33@@11))
)) (forall ((o2_10@@6 T@Ref) (f_33@@12 T@Field_47235_47236) ) (!  (=> (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@6 f_33@@12) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@11) o2_10@@6 f_33@@12) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@6 f_33@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@6 f_33@@12))
))) (forall ((o2_10@@7 T@Ref) (f_33@@13 T@Field_53283_53288) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@7 f_33@@13) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@11) o2_10@@7 f_33@@13) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@7 f_33@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@7 f_33@@13))
))) (forall ((o2_10@@8 T@Ref) (f_33@@14 T@Field_53397_3522) ) (!  (=> (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@8 f_33@@14) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@11) o2_10@@8 f_33@@14) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@8 f_33@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@8 f_33@@14))
))) (forall ((o2_10@@9 T@Ref) (f_33@@15 T@Field_27839_159539) ) (!  (=> (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@9 f_33@@15) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@11) o2_10@@9 f_33@@15) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@9 f_33@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@9 f_33@@15))
))) (forall ((o2_10@@10 T@Ref) (f_33@@16 T@Field_27839_159672) ) (!  (=> (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_10@@2))) o2_10@@10 f_33@@16) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) o2_10@@10 f_33@@16) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@10 f_33@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@10) o2_10@@10 f_33@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_27839_161581 pm_f_10@@2))
)))
(assert (forall ((s0@@5 T@Seq_3368) (s1@@5 T@Seq_3368) ) (!  (=> (|Seq#Equal_3368| s0@@5 s1@@5) (and (= (|Seq#Length_3368| s0@@5) (|Seq#Length_3368| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3368| s0@@5))) (= (|Seq#Index_3368| s0@@5 j@@6) (|Seq#Index_3368| s1@@5 j@@6)))
 :qid |stdinbpl.569:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3368| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3368| s1@@5 j@@6))
))))
 :qid |stdinbpl.566:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3368| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_53286) (s1@@6 T@Seq_53286) ) (!  (=> (|Seq#Equal_27840| s0@@6 s1@@6) (and (= (|Seq#Length_27840| s0@@6) (|Seq#Length_27840| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_27840| s0@@6))) (= (|Seq#Index_27840| s0@@6 j@@7) (|Seq#Index_27840| s1@@6 j@@7)))
 :qid |stdinbpl.569:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_27840| s0@@6 j@@7))
 :pattern ( (|Seq#Index_27840| s1@@6 j@@7))
))))
 :qid |stdinbpl.566:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_27840| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_27840| (|Seq#Singleton_27840| t@@5)) 1)
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_27840| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3368| (|Seq#Singleton_3368| t@@6)) 1)
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3368| t@@6))
)))
(assert (forall ((s@@21 T@Seq_53286) (t@@7 T@Seq_53286) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_27840| s@@21))) (= (|Seq#Take_27840| (|Seq#Append_53286| s@@21 t@@7) n@@17) (|Seq#Take_27840| s@@21 n@@17)))
 :qid |stdinbpl.423:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_27840| (|Seq#Append_53286| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3368) (t@@8 T@Seq_3368) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3368| s@@22))) (= (|Seq#Take_3368| (|Seq#Append_3368| s@@22 t@@8) n@@18) (|Seq#Take_3368| s@@22 n@@18)))
 :qid |stdinbpl.423:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3368| (|Seq#Append_3368| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_53286) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_27840| s@@23))) (= (|Seq#Length_27840| (|Seq#Update_27840| s@@23 i@@5 v@@2)) (|Seq#Length_27840| s@@23)))
 :qid |stdinbpl.322:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_27840| (|Seq#Update_27840| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_27840| s@@23) (|Seq#Update_27840| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3368) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3368| s@@24))) (= (|Seq#Length_3368| (|Seq#Update_3368| s@@24 i@@6 v@@3)) (|Seq#Length_3368| s@@24)))
 :qid |stdinbpl.322:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3368| (|Seq#Update_3368| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3368| s@@24) (|Seq#Update_3368| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_47162) (o_28 T@Ref) (f_34 T@Field_27839_159539) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@12) (store (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@12) o_28 f_34 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@12) (store (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@12) o_28 f_34 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47162) (o_28@@0 T@Ref) (f_34@@0 T@Field_27839_159672) (v@@5 T@PolymorphicMapType_47711) ) (! (succHeap Heap@@13 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@13) (store (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@13) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@13) (store (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@13) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47162) (o_28@@1 T@Ref) (f_34@@1 T@Field_53397_3522) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@14) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@14) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@14) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@14) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47162) (o_28@@2 T@Ref) (f_34@@2 T@Field_53283_53288) (v@@7 T@Seq_53286) ) (! (succHeap Heap@@15 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@15) (store (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@15) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@15) (store (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@15) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47162) (o_28@@3 T@Ref) (f_34@@3 T@Field_47235_47236) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@16) (store (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@16) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@16) (store (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@16) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47162) (o_28@@4 T@Ref) (f_34@@4 T@Field_47222_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_47162 (store (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@17) o_28@@4 f_34@@4 v@@9) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (store (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@17) o_28@@4 f_34@@4 v@@9) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_53286) (t@@9 T@Seq_53286) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_27840| s@@25))) (= (|Seq#Drop_27840| (|Seq#Append_53286| s@@25 t@@9) n@@19) (|Seq#Append_53286| (|Seq#Drop_27840| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.437:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_27840| (|Seq#Append_53286| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3368) (t@@10 T@Seq_3368) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3368| s@@26))) (= (|Seq#Drop_3368| (|Seq#Append_3368| s@@26 t@@10) n@@20) (|Seq#Append_3368| (|Seq#Drop_3368| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.437:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3368| (|Seq#Append_3368| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_53286) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_27840| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_27840| (|Seq#Drop_27840| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_27840| s@@27 i@@7))))
 :qid |stdinbpl.373:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_27840| s@@27 n@@21) (|Seq#Index_27840| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3368) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3368| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3368| (|Seq#Drop_3368| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3368| s@@28 i@@8))))
 :qid |stdinbpl.373:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3368| s@@28 n@@22) (|Seq#Index_3368| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_53286) (s1@@7 T@Seq_53286) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_27840|)) (not (= s1@@7 |Seq#Empty_27840|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_27840| s0@@7))) (= (|Seq#Index_27840| (|Seq#Append_53286| s0@@7 s1@@7) n@@23) (|Seq#Index_27840| s0@@7 n@@23)))
 :qid |stdinbpl.313:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_27840| (|Seq#Append_53286| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_27840| s0@@7 n@@23) (|Seq#Append_53286| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3368) (s1@@8 T@Seq_3368) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3368|)) (not (= s1@@8 |Seq#Empty_3368|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3368| s0@@8))) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@8 s1@@8) n@@24) (|Seq#Index_3368| s0@@8 n@@24)))
 :qid |stdinbpl.313:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3368| (|Seq#Append_3368| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3368| s0@@8 n@@24) (|Seq#Append_3368| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_53286) (s1@@9 T@Seq_53286) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_27840|)) (not (= s1@@9 |Seq#Empty_27840|))) (<= 0 m)) (< m (|Seq#Length_27840| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_27840| s0@@9)) (|Seq#Length_27840| s0@@9)) m) (= (|Seq#Index_27840| (|Seq#Append_53286| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_27840| s0@@9))) (|Seq#Index_27840| s1@@9 m))))
 :qid |stdinbpl.318:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_27840| s1@@9 m) (|Seq#Append_53286| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3368) (s1@@10 T@Seq_3368) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3368|)) (not (= s1@@10 |Seq#Empty_3368|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3368| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3368| s0@@10)) (|Seq#Length_3368| s0@@10)) m@@0) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3368| s0@@10))) (|Seq#Index_3368| s1@@10 m@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3368| s1@@10 m@@0) (|Seq#Append_3368| s0@@10 s1@@10))
)))
(assert (forall ((o_28@@5 T@Ref) (f_32 T@Field_47235_47236) (Heap@@18 T@PolymorphicMapType_47162) ) (!  (=> (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@18) o_28@@5 $allocated) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@18) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@18) o_28@@5 f_32) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@18) o_28@@5 f_32))
)))
(assert (forall ((s@@29 T@Seq_53286) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_27840| s@@29))) (= (|Seq#Index_27840| s@@29 i@@9) x@@3)) (|Seq#Contains_53286| s@@29 x@@3))
 :qid |stdinbpl.470:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_53286| s@@29 x@@3) (|Seq#Index_27840| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3368) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3368| s@@30))) (= (|Seq#Index_3368| s@@30 i@@10) x@@4)) (|Seq#Contains_3368| s@@30 x@@4))
 :qid |stdinbpl.470:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3368| s@@30 x@@4) (|Seq#Index_3368| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_53286) (s1@@11 T@Seq_53286) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_27840| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_27840| s0@@11 s1@@11))) (not (= (|Seq#Length_27840| s0@@11) (|Seq#Length_27840| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_27840| s0@@11 s1@@11))) (= (|Seq#Length_27840| s0@@11) (|Seq#Length_27840| s1@@11))) (= (|Seq#SkolemDiff_53286| s0@@11 s1@@11) (|Seq#SkolemDiff_53286| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_53286| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_53286| s0@@11 s1@@11) (|Seq#Length_27840| s0@@11))) (not (= (|Seq#Index_27840| s0@@11 (|Seq#SkolemDiff_53286| s0@@11 s1@@11)) (|Seq#Index_27840| s1@@11 (|Seq#SkolemDiff_53286| s0@@11 s1@@11))))))
 :qid |stdinbpl.574:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_27840| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3368) (s1@@12 T@Seq_3368) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3368| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3368| s0@@12 s1@@12))) (not (= (|Seq#Length_3368| s0@@12) (|Seq#Length_3368| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3368| s0@@12 s1@@12))) (= (|Seq#Length_3368| s0@@12) (|Seq#Length_3368| s1@@12))) (= (|Seq#SkolemDiff_3368| s0@@12 s1@@12) (|Seq#SkolemDiff_3368| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3368| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3368| s0@@12 s1@@12) (|Seq#Length_3368| s0@@12))) (not (= (|Seq#Index_3368| s0@@12 (|Seq#SkolemDiff_3368| s0@@12 s1@@12)) (|Seq#Index_3368| s1@@12 (|Seq#SkolemDiff_3368| s0@@12 s1@@12))))))
 :qid |stdinbpl.574:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3368| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_27839_159539) (v_1@@0 T@FrameType) (q T@Field_27839_159539) (w@@0 T@FrameType) (r T@Field_27839_159539) (u T@FrameType) ) (!  (=> (and (InsidePredicate_47222_47222 p@@1 v_1@@0 q w@@0) (InsidePredicate_47222_47222 q w@@0 r u)) (InsidePredicate_47222_47222 p@@1 v_1@@0 r u))
 :qid |stdinbpl.241:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47222_47222 p@@1 v_1@@0 q w@@0) (InsidePredicate_47222_47222 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_53286) ) (!  (=> (= (|Seq#Length_27840| s@@31) 0) (= s@@31 |Seq#Empty_27840|))
 :qid |stdinbpl.277:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_27840| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3368) ) (!  (=> (= (|Seq#Length_3368| s@@32) 0) (= s@@32 |Seq#Empty_3368|))
 :qid |stdinbpl.277:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3368| s@@32))
)))
(assert (forall ((s@@33 T@Seq_53286) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_27840| s@@33 n@@25) |Seq#Empty_27840|))
 :qid |stdinbpl.453:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_27840| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3368) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3368| s@@34 n@@26) |Seq#Empty_3368|))
 :qid |stdinbpl.453:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3368| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_7 () Int)
(declare-fun tcount () Int)
(declare-fun PostMask@3 () T@PolymorphicMapType_47183)
(declare-fun this () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_47162)
(declare-fun tid () Int)
(declare-fun QPMask@6 () T@PolymorphicMapType_47183)
(declare-fun PostMask@2 () T@PolymorphicMapType_47183)
(declare-fun gsize () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_47183)
(declare-fun Mask@2 () T@PolymorphicMapType_47183)
(declare-fun Heap@@19 () T@PolymorphicMapType_47162)
(declare-fun i_6 () Int)
(declare-fun ix_2 () Int)
(declare-fun jx_2 () Int)
(declare-fun lid () Int)
(declare-fun gid () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_47183)
(declare-fun wildcard@3 () Real)
(declare-fun i_10 () Int)
(declare-fun k@0 () Int)
(declare-fun Mask@50 () T@PolymorphicMapType_47183)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_47162)
(declare-fun half@0 () Int)
(declare-fun Mask@49 () T@PolymorphicMapType_47183)
(declare-fun Mask@47 () T@PolymorphicMapType_47183)
(declare-fun Mask@48 () T@PolymorphicMapType_47183)
(declare-fun Mask@45 () T@PolymorphicMapType_47183)
(declare-fun Mask@46 () T@PolymorphicMapType_47183)
(declare-fun QPMask@5 () T@PolymorphicMapType_47183)
(declare-fun Mask@44 () T@PolymorphicMapType_47183)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun Mask@13 () T@PolymorphicMapType_47183)
(declare-fun i_9 () Int)
(declare-fun ix_4 () Int)
(declare-fun jx_4 () Int)
(declare-fun Mask@11 () T@PolymorphicMapType_47183)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@12 () T@PolymorphicMapType_47183)
(declare-fun wildcard@7 () Real)
(declare-fun i_19 () Int)
(declare-fun k@1 () Int)
(declare-fun Heap@3 () T@PolymorphicMapType_47162)
(declare-fun Mask@43 () T@PolymorphicMapType_47183)
(declare-fun Mask@42 () T@PolymorphicMapType_47183)
(declare-fun Mask@41 () T@PolymorphicMapType_47183)
(declare-fun Mask@40 () T@PolymorphicMapType_47183)
(declare-fun Mask@39 () T@PolymorphicMapType_47183)
(declare-fun Mask@38 () T@PolymorphicMapType_47183)
(declare-fun Mask@37 () T@PolymorphicMapType_47183)
(declare-fun QPMask@4 () T@PolymorphicMapType_47183)
(declare-fun dummyFunction_3522 (Int) Bool)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun Mask@36 () T@PolymorphicMapType_47183)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) Int)
(declare-fun ix_11 () Int)
(declare-fun jx_11 () Int)
(declare-fun Mask@34 () T@PolymorphicMapType_47183)
(declare-fun wildcard@14 () Real)
(declare-fun Mask@35 () T@PolymorphicMapType_47183)
(declare-fun wildcard@15 () Real)
(declare-fun offset@0 () Int)
(declare-fun Heap@2 () T@PolymorphicMapType_47162)
(declare-fun Mask@33 () T@PolymorphicMapType_47183)
(declare-fun Mask@31 () T@PolymorphicMapType_47183)
(declare-fun Mask@32 () T@PolymorphicMapType_47183)
(declare-fun Mask@29 () T@PolymorphicMapType_47183)
(declare-fun Mask@30 () T@PolymorphicMapType_47183)
(declare-fun QPMask@2 () T@PolymorphicMapType_47183)
(declare-fun Mask@28 () T@PolymorphicMapType_47183)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@14 () T@PolymorphicMapType_47183)
(declare-fun wildcard@9 () Real)
(declare-fun Mask@15 () T@PolymorphicMapType_47183)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_10_1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_47162)
(declare-fun ix_6 () Int)
(declare-fun jx_6 () Int)
(declare-fun Mask@24 () T@PolymorphicMapType_47183)
(declare-fun Mask@23 () T@PolymorphicMapType_47183)
(declare-fun Mask@25 () T@PolymorphicMapType_47183)
(declare-fun Heap@1 () T@PolymorphicMapType_47162)
(declare-fun Mask@21 () T@PolymorphicMapType_47183)
(declare-fun Mask@22 () T@PolymorphicMapType_47183)
(declare-fun Mask@19 () T@PolymorphicMapType_47183)
(declare-fun Mask@20 () T@PolymorphicMapType_47183)
(declare-fun QPMask@3 () T@PolymorphicMapType_47183)
(declare-fun Mask@18 () T@PolymorphicMapType_47183)
(declare-fun wildcard@10 () Real)
(declare-fun Mask@16 () T@PolymorphicMapType_47183)
(declare-fun wildcard@11 () Real)
(declare-fun Mask@17 () T@PolymorphicMapType_47183)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun Mask@10 () T@PolymorphicMapType_47183)
(declare-fun Mask@9 () T@PolymorphicMapType_47183)
(declare-fun Mask@8 () T@PolymorphicMapType_47183)
(declare-fun Mask@7 () T@PolymorphicMapType_47183)
(declare-fun Mask@6 () T@PolymorphicMapType_47183)
(declare-fun Mask@5 () T@PolymorphicMapType_47183)
(declare-fun QPMask@1 () T@PolymorphicMapType_47183)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_47183)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_47183)
(declare-fun wildcard@5 () Real)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_47183)
(declare-fun Mask@1 () T@PolymorphicMapType_47183)
(declare-fun i_2 () Int)
(declare-fun ix () Int)
(declare-fun jx () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_47183)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id main_main)
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
 (=> (= (ControlFlow 0 0) 325) (let ((anon31_correct true))
(let ((anon222_Else_correct  (=> (and (not (and (<= 0 i_7) (< i_7 tcount))) (= (ControlFlow 0 297) 288)) anon31_correct)))
(let ((anon222_Then_correct  (=> (and (<= 0 i_7) (< i_7 tcount)) (and (=> (= (ControlFlow 0 289) (- 0 296)) (HasDirectPerm_27839_54103 PostMask@3 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@3 this dst) (and (=> (= (ControlFlow 0 289) (- 0 295)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (and (=> (= (ControlFlow 0 289) (- 0 294)) (HasDirectPerm_27847_3522 PostMask@3 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@3 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) (and (=> (= (ControlFlow 0 289) (- 0 293)) (HasDirectPerm_27839_54103 PostMask@3 this src)) (=> (HasDirectPerm_27839_54103 PostMask@3 this src) (and (=> (= (ControlFlow 0 289) (- 0 292)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 289) (- 0 291)) (< i_7 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< i_7 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 289) (- 0 290)) (HasDirectPerm_27847_3522 PostMask@3 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@3 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7) Integer_value) (=> (= (ControlFlow 0 289) 288) anon31_correct))))))))))))))))))
(let ((anon33_correct true))
(let ((anon221_Else_correct  (=> (and (forall ((i_5 Int) ) (!  (=> (and (<= 0 i_5) (< i_5 tcount)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_5) Integer_value)))
 :qid |stdinbpl.1024:22|
 :skolemid |74|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_5))
)) (= (ControlFlow 0 287) 285)) anon33_correct)))
(let ((anon220_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 298) 287) anon221_Else_correct) (=> (= (ControlFlow 0 298) 289) anon222_Then_correct)) (=> (= (ControlFlow 0 298) 297) anon222_Else_correct)))))
(let ((anon220_Else_correct  (=> (and (not (= tid 0)) (= (ControlFlow 0 286) 285)) anon33_correct)))
(let ((anon27_correct  (=> (state PostHeap@0 PostMask@3) (and (=> (= (ControlFlow 0 299) 298) anon220_Then_correct) (=> (= (ControlFlow 0 299) 286) anon220_Else_correct)))))
(let ((anon219_Else_correct  (=> (not (= tid 0)) (=> (and (= PostMask@3 QPMask@6) (= (ControlFlow 0 303) 299)) anon27_correct))))
(let ((anon219_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 300) (- 0 302)) (HasDirectPerm_27839_54103 QPMask@6 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@6 this dst) (and (=> (= (ControlFlow 0 300) (- 0 301)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) null)) (=> (and (and (= PostMask@2 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@6) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@6) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@6) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@6) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@6))) (state PostHeap@0 PostMask@2)) (and (= PostMask@3 PostMask@2) (= (ControlFlow 0 300) 299))) anon27_correct)))))))))
(let ((anon217_Else_correct  (and (=> (= (ControlFlow 0 304) (- 0 310)) (forall ((i_3 Int) (i_3_1 Int) ) (!  (=> (and (and (and (and (not (= i_3 i_3_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_1)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3_1))))
 :qid |stdinbpl.934:15|
 :skolemid |67|
))) (=> (forall ((i_3@@0 Int) (i_3_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3@@0 i_3_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_1@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3_1@@0))))
 :qid |stdinbpl.934:15|
 :skolemid |67|
)) (=> (and (forall ((i_3@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange2 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@1)) (= (invRecv2 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@1)) i_3@@1)))
 :qid |stdinbpl.940:22|
 :skolemid |68|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_4)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_4)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (invRecv2 o_4)) o_4))
 :qid |stdinbpl.944:22|
 :skolemid |69|
 :pattern ( (invRecv2 o_4))
))) (and (=> (= (ControlFlow 0 304) (- 0 309)) (forall ((i_3@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.950:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@2))
))) (=> (forall ((i_3@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.950:15|
 :skolemid |70|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@3))
)) (=> (and (forall ((i_3@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@4) null)))
 :qid |stdinbpl.956:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_3@@4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_4@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (invRecv2 o_4@@0)) o_4@@0)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) o_4@@0 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_4@@0 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_4@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) o_4@@0 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_4@@0 Integer_value))))
 :qid |stdinbpl.962:22|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) o_4@@0 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@1) o_4@@1 f_5) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@6) o_4@@1 f_5)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@1) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@6) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@1) o_4@@2 f_5@@0) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@6) o_4@@2 f_5@@0)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@1) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@6) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@1) o_4@@3 f_5@@1) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@6) o_4@@3 f_5@@1)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@1) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@6) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_53397_3522) ) (!  (=> (not (= f_5@@2 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_4@@4 f_5@@2) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) o_4@@4 f_5@@2)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@6) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@1) o_4@@5 f_5@@3) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@6) o_4@@5 f_5@@3)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@1) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@6) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@1) o_4@@6 f_5@@4) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@6) o_4@@6 f_5@@4)))
 :qid |stdinbpl.966:29|
 :skolemid |73|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@1) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@6) o_4@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@6) (state PostHeap@0 QPMask@6))) (and (=> (= (ControlFlow 0 304) (- 0 308)) (HasDirectPerm_27839_54103 QPMask@6 this src)) (=> (HasDirectPerm_27839_54103 QPMask@6 this src) (and (=> (= (ControlFlow 0 304) (- 0 307)) (HasDirectPerm_27839_54103 Mask@2 this src)) (=> (HasDirectPerm_27839_54103 Mask@2 this src) (=> (and (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) (state PostHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 304) (- 0 306)) (HasDirectPerm_27839_54103 QPMask@6 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@6 this dst) (and (=> (= (ControlFlow 0 304) (- 0 305)) (HasDirectPerm_27839_54103 Mask@2 this dst)) (=> (HasDirectPerm_27839_54103 Mask@2 this dst) (=> (and (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) (state PostHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 304) 300) anon219_Then_correct) (=> (= (ControlFlow 0 304) 303) anon219_Else_correct)))))))))))))))))))))
(let ((anon24_correct true))
(let ((anon218_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_6)) (= (ControlFlow 0 284) 278)) anon24_correct)))
(let ((anon218_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_6) (and (=> (= (ControlFlow 0 279) (- 0 283)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 279) (- 0 282)) (>= i_6 0)) (=> (>= i_6 0) (and (=> (= (ControlFlow 0 279) (- 0 281)) (< i_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< i_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 279) (- 0 280)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 279) 278) anon24_correct))))))))))))
(let ((anon212_Else_correct  (=> (and (forall ((ix_3 Int) (jx_3 Int) ) (!  (=> (and (>= ix_3 0) (and (< ix_3 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_3 0) (and (< jx_3 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_3 jx_3)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) ix_3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) jx_3))))
 :qid |stdinbpl.912:20|
 :skolemid |66|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) ix_3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) jx_3))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 311) 304) anon217_Else_correct) (=> (= (ControlFlow 0 311) 279) anon218_Then_correct)) (=> (= (ControlFlow 0 311) 284) anon218_Else_correct)))))
(let ((anon20_correct true))
(let ((anon216_Else_correct  (=> (and (not (and (>= ix_2 0) (and (< ix_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_2 0) (and (< jx_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_2 jx_2))))))) (= (ControlFlow 0 269) 261)) anon20_correct)))
(let ((anon216_Then_correct  (=> (and (>= ix_2 0) (and (< ix_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_2 0) (and (< jx_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_2 jx_2)))))) (and (=> (= (ControlFlow 0 262) (- 0 268)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 262) (- 0 267)) (>= ix_2 0)) (=> (>= ix_2 0) (and (=> (= (ControlFlow 0 262) (- 0 266)) (< ix_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< ix_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 262) (- 0 265)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 262) (- 0 264)) (>= jx_2 0)) (=> (>= jx_2 0) (and (=> (= (ControlFlow 0 262) (- 0 263)) (< jx_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< jx_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (=> (= (ControlFlow 0 262) 261) anon20_correct))))))))))))))))
(let ((anon215_Else_correct  (=> (> 0 jx_2) (and (=> (= (ControlFlow 0 274) 262) anon216_Then_correct) (=> (= (ControlFlow 0 274) 269) anon216_Else_correct)))))
(let ((anon215_Then_correct  (=> (>= jx_2 0) (and (=> (= (ControlFlow 0 272) (- 0 273)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 272) 262) anon216_Then_correct) (=> (= (ControlFlow 0 272) 269) anon216_Else_correct)))))))
(let ((anon214_Then_correct  (=> (< ix_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 275) 272) anon215_Then_correct) (=> (= (ControlFlow 0 275) 274) anon215_Else_correct)))))
(let ((anon214_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)) ix_2) (and (=> (= (ControlFlow 0 271) 262) anon216_Then_correct) (=> (= (ControlFlow 0 271) 269) anon216_Else_correct)))))
(let ((anon213_Then_correct  (=> (>= ix_2 0) (and (=> (= (ControlFlow 0 276) (- 0 277)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 276) 275) anon214_Then_correct) (=> (= (ControlFlow 0 276) 271) anon214_Else_correct)))))))
(let ((anon213_Else_correct  (=> (> 0 ix_2) (and (=> (= (ControlFlow 0 270) 262) anon216_Then_correct) (=> (= (ControlFlow 0 270) 269) anon216_Else_correct)))))
(let ((anon211_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= this null)) (= PostMask@0 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src) wildcard@2)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 312) (- 0 314)) (HasDirectPerm_27839_54103 PostMask@0 this src)) (=> (HasDirectPerm_27839_54103 PostMask@0 this src) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= this null)) (= PostMask@1 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@0) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@0) this dst) wildcard@3)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 312) (- 0 313)) (HasDirectPerm_27839_54103 PostMask@1 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@1 this dst) (=> (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)) gsize) (state PostHeap@0 PostMask@1)) (=> (and (and (<= 4 gsize) (state PostHeap@0 PostMask@1)) (and (= (mod gsize 4) 0) (state PostHeap@0 PostMask@1))) (and (and (=> (= (ControlFlow 0 312) 311) anon212_Else_correct) (=> (= (ControlFlow 0 312) 276) anon213_Then_correct)) (=> (= (ControlFlow 0 312) 270) anon213_Else_correct))))))))))))))
(let ((anon81_correct true))
(let ((anon249_Else_correct  (=> (and (not (and (<= 0 i_10) (< i_10 k@0))) (= (ControlFlow 0 179) 169)) anon81_correct)))
(let ((anon249_Then_correct  (=> (and (<= 0 i_10) (< i_10 k@0)) (and (=> (= (ControlFlow 0 170) (- 0 178)) (HasDirectPerm_27839_54103 Mask@50 this dst)) (=> (HasDirectPerm_27839_54103 Mask@50 this dst) (and (=> (= (ControlFlow 0 170) (- 0 177)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 170) (- 0 176)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (and (=> (= (ControlFlow 0 170) (- 0 175)) (HasDirectPerm_27847_3522 Mask@50 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@50 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 170) (- 0 174)) (HasDirectPerm_27839_54103 Mask@50 this src)) (=> (HasDirectPerm_27839_54103 Mask@50 this src) (and (=> (= (ControlFlow 0 170) (- 0 173)) (>= (+ (* tid half@0) i_10) 0)) (=> (>= (+ (* tid half@0) i_10) 0) (and (=> (= (ControlFlow 0 170) (- 0 172)) (< (+ (* tid half@0) i_10) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< (+ (* tid half@0) i_10) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 170) (- 0 171)) (HasDirectPerm_27847_3522 Mask@50 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ (* tid half@0) i_10)) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@50 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ (* tid half@0) i_10)) Integer_value) (=> (= (ControlFlow 0 170) 169) anon81_correct))))))))))))))))))))
(let ((anon248_Else_correct true))
(let ((anon78_correct  (=> (and (and (state ExhaleHeap@0 Mask@49) (< 0 k@0)) (and (<= k@0 half@0) (state ExhaleHeap@0 Mask@49))) (and (=> (= (ControlFlow 0 180) (- 0 183)) (HasDirectPerm_27839_54103 Mask@49 this dst)) (=> (HasDirectPerm_27839_54103 Mask@49 this dst) (and (=> (= (ControlFlow 0 180) (- 0 182)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 180) (- 0 181)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null)) (= Mask@50 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@49) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@49) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@49) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@49) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@49) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@49) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@49)))) (and (state ExhaleHeap@0 Mask@50) (state ExhaleHeap@0 Mask@50))) (and (and (=> (= (ControlFlow 0 180) 168) anon248_Else_correct) (=> (= (ControlFlow 0 180) 170) anon249_Then_correct)) (=> (= (ControlFlow 0 180) 179) anon249_Else_correct))))))))))))
(let ((anon247_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@49 Mask@47) (= (ControlFlow 0 188) 180)) anon78_correct))))
(let ((anon247_Then_correct  (=> (= 0 0) (and (=> (= (ControlFlow 0 184) (- 0 187)) (HasDirectPerm_27839_54103 Mask@47 this dst)) (=> (HasDirectPerm_27839_54103 Mask@47 this dst) (and (=> (= (ControlFlow 0 184) (- 0 186)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 184) (- 0 185)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null)) (=> (and (and (= Mask@48 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@47) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@47) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@47) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@47) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@47) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@47) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@47))) (state ExhaleHeap@0 Mask@48)) (and (= Mask@49 Mask@48) (= (ControlFlow 0 184) 180))) anon78_correct)))))))))))
(let ((anon76_correct  (=> (state ExhaleHeap@0 Mask@47) (and (=> (= (ControlFlow 0 189) 184) anon247_Then_correct) (=> (= (ControlFlow 0 189) 188) anon247_Else_correct)))))
(let ((anon246_Else_correct  (=> (not (= tid 0)) (=> (and (= Mask@47 Mask@45) (= (ControlFlow 0 194) 189)) anon76_correct))))
(let ((anon246_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 191) (- 0 193)) (HasDirectPerm_27839_54103 Mask@45 this dst)) (=> (HasDirectPerm_27839_54103 Mask@45 this dst) (and (=> (= (ControlFlow 0 191) (- 0 192)) (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) null)) (=> (and (and (= Mask@46 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@45) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@45) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@45) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@45) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@45) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@45) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@45))) (state ExhaleHeap@0 Mask@46)) (and (= Mask@47 Mask@46) (= (ControlFlow 0 191) 189))) anon76_correct)))))))))
(let ((anon245_Else_correct  (=> (and (not (= tid 0)) (= Mask@45 QPMask@5)) (and (=> (= (ControlFlow 0 198) 191) anon246_Then_correct) (=> (= (ControlFlow 0 198) 194) anon246_Else_correct)))))
(let ((anon245_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 195) (- 0 197)) (HasDirectPerm_27839_54103 QPMask@5 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@5 this dst) (and (=> (= (ControlFlow 0 195) (- 0 196)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) null)) (= Mask@44 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@5) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@5) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@5) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@5) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@5)))) (and (state ExhaleHeap@0 Mask@44) (= Mask@45 Mask@44))) (and (=> (= (ControlFlow 0 195) 191) anon246_Then_correct) (=> (= (ControlFlow 0 195) 194) anon246_Else_correct))))))))))
(let ((anon244_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 199) 195) anon245_Then_correct) (=> (= (ControlFlow 0 199) 198) anon245_Else_correct)))))
(let ((anon244_Else_correct  (=> (not (= 0 1)) (=> (and (= Mask@47 QPMask@5) (= (ControlFlow 0 190) 189)) anon76_correct))))
(let ((anon242_Else_correct  (and (=> (= (ControlFlow 0 200) (- 0 202)) (forall ((i_13_1 Int) (i_13_2 Int) ) (!  (=> (and (and (and (and (not (= i_13_1 i_13_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_2))))
 :qid |stdinbpl.1316:23|
 :skolemid |85|
))) (=> (forall ((i_13_1@@0 Int) (i_13_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_13_1@@0 i_13_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_2@@0))))
 :qid |stdinbpl.1316:23|
 :skolemid |85|
)) (=> (and (forall ((i_13_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@1)) (= (invRecv5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@1)) i_13_1@@1)))
 :qid |stdinbpl.1322:30|
 :skolemid |86|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_13_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@1))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_4@@7)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_4@@7)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv5 o_4@@7)) o_4@@7))
 :qid |stdinbpl.1326:30|
 :skolemid |87|
 :pattern ( (invRecv5 o_4@@7))
))) (and (=> (= (ControlFlow 0 200) (- 0 201)) (forall ((i_13_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1332:23|
 :skolemid |88|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_13_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@2))
))) (=> (forall ((i_13_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1332:23|
 :skolemid |88|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_13_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@3))
)) (=> (and (forall ((i_13_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@4) null)))
 :qid |stdinbpl.1338:30|
 :skolemid |89|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_13_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_13_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_13_1@@4))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_4@@8)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_4@@8)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv5 o_4@@8)) o_4@@8)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) o_4@@8 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@13) o_4@@8 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_4@@8)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_4@@8))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) o_4@@8 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@13) o_4@@8 Integer_value))))
 :qid |stdinbpl.1344:30|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) o_4@@8 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@13) o_4@@9 f_5@@5) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@5) o_4@@9 f_5@@5)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@13) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@5) o_4@@9 f_5@@5))
)) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@13) o_4@@10 f_5@@6) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@5) o_4@@10 f_5@@6)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@13) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@5) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@13) o_4@@11 f_5@@7) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@5) o_4@@11 f_5@@7)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@13) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@5) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_53397_3522) ) (!  (=> (not (= f_5@@8 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@13) o_4@@12 f_5@@8) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) o_4@@12 f_5@@8)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@13) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@5) o_4@@12 f_5@@8))
))) (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@13) o_4@@13 f_5@@9) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@5) o_4@@13 f_5@@9)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@13) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@5) o_4@@13 f_5@@9))
))) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@13) o_4@@14 f_5@@10) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@5) o_4@@14 f_5@@10)))
 :qid |stdinbpl.1348:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@13) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@5) o_4@@14 f_5@@10))
))) (and (and (state ExhaleHeap@0 QPMask@5) (state ExhaleHeap@0 QPMask@5)) (and (= 0 0) (state ExhaleHeap@0 QPMask@5)))) (and (=> (= (ControlFlow 0 200) 199) anon244_Then_correct) (=> (= (ControlFlow 0 200) 190) anon244_Else_correct)))))))))))
(let ((anon70_correct true))
(let ((anon243_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9)) (= (ControlFlow 0 167) 161)) anon70_correct)))
(let ((anon243_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9) (and (=> (= (ControlFlow 0 162) (- 0 166)) (HasDirectPerm_27839_54103 Mask@13 this src)) (=> (HasDirectPerm_27839_54103 Mask@13 this src) (and (=> (= (ControlFlow 0 162) (- 0 165)) (>= i_9 0)) (=> (>= i_9 0) (and (=> (= (ControlFlow 0 162) (- 0 164)) (< i_9 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< i_9 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 162) (- 0 163)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 162) 161) anon70_correct))))))))))))
(let ((anon237_Else_correct  (=> (and (forall ((ix_9 Int) (jx_9 Int) ) (!  (=> (and (>= ix_9 0) (and (< ix_9 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (>= jx_9 0) (and (< jx_9 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (not (= ix_9 jx_9)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_9) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_9))))
 :qid |stdinbpl.1294:28|
 :skolemid |84|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_9) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_9))
)) (state ExhaleHeap@0 Mask@13)) (and (and (=> (= (ControlFlow 0 203) 200) anon242_Else_correct) (=> (= (ControlFlow 0 203) 162) anon243_Then_correct)) (=> (= (ControlFlow 0 203) 167) anon243_Else_correct)))))
(let ((anon66_correct true))
(let ((anon241_Else_correct  (=> (and (not (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (not (= ix_4 jx_4))))))) (= (ControlFlow 0 152) 144)) anon66_correct)))
(let ((anon241_Then_correct  (=> (and (>= ix_4 0) (and (< ix_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (>= jx_4 0) (and (< jx_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (not (= ix_4 jx_4)))))) (and (=> (= (ControlFlow 0 145) (- 0 151)) (HasDirectPerm_27839_54103 Mask@13 this src)) (=> (HasDirectPerm_27839_54103 Mask@13 this src) (and (=> (= (ControlFlow 0 145) (- 0 150)) (>= ix_4 0)) (=> (>= ix_4 0) (and (=> (= (ControlFlow 0 145) (- 0 149)) (< ix_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< ix_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 145) (- 0 148)) (HasDirectPerm_27839_54103 Mask@13 this src)) (=> (HasDirectPerm_27839_54103 Mask@13 this src) (and (=> (= (ControlFlow 0 145) (- 0 147)) (>= jx_4 0)) (=> (>= jx_4 0) (and (=> (= (ControlFlow 0 145) (- 0 146)) (< jx_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< jx_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (=> (= (ControlFlow 0 145) 144) anon66_correct))))))))))))))))
(let ((anon240_Else_correct  (=> (> 0 jx_4) (and (=> (= (ControlFlow 0 157) 145) anon241_Then_correct) (=> (= (ControlFlow 0 157) 152) anon241_Else_correct)))))
(let ((anon240_Then_correct  (=> (>= jx_4 0) (and (=> (= (ControlFlow 0 155) (- 0 156)) (HasDirectPerm_27839_54103 Mask@13 this src)) (=> (HasDirectPerm_27839_54103 Mask@13 this src) (and (=> (= (ControlFlow 0 155) 145) anon241_Then_correct) (=> (= (ControlFlow 0 155) 152) anon241_Else_correct)))))))
(let ((anon239_Then_correct  (=> (< ix_4 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 158) 155) anon240_Then_correct) (=> (= (ControlFlow 0 158) 157) anon240_Else_correct)))))
(let ((anon239_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)) ix_4) (and (=> (= (ControlFlow 0 154) 145) anon241_Then_correct) (=> (= (ControlFlow 0 154) 152) anon241_Else_correct)))))
(let ((anon238_Then_correct  (=> (>= ix_4 0) (and (=> (= (ControlFlow 0 159) (- 0 160)) (HasDirectPerm_27839_54103 Mask@13 this src)) (=> (HasDirectPerm_27839_54103 Mask@13 this src) (and (=> (= (ControlFlow 0 159) 158) anon239_Then_correct) (=> (= (ControlFlow 0 159) 154) anon239_Else_correct)))))))
(let ((anon238_Else_correct  (=> (> 0 ix_4) (and (=> (= (ControlFlow 0 153) 145) anon241_Then_correct) (=> (= (ControlFlow 0 153) 152) anon241_Else_correct)))))
(let ((anon236_Then_correct  (=> (<= 0 tid) (=> (and (state ExhaleHeap@0 Mask@11) (< tid tcount)) (=> (and (and (state ExhaleHeap@0 Mask@11) (= tid lid)) (and (state ExhaleHeap@0 Mask@11) (= tcount gsize))) (=> (and (and (and (state ExhaleHeap@0 Mask@11) (= gid 0)) (and (state ExhaleHeap@0 Mask@11) (> wildcard@6 NoPerm))) (and (and (not (= this null)) (= Mask@12 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@11) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@11) this src) wildcard@6)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@11)))) (and (state ExhaleHeap@0 Mask@12) (state ExhaleHeap@0 Mask@12)))) (and (=> (= (ControlFlow 0 204) (- 0 206)) (HasDirectPerm_27839_54103 Mask@12 this src)) (=> (HasDirectPerm_27839_54103 Mask@12 this src) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)) gsize) (=> (and (state ExhaleHeap@0 Mask@12) (> wildcard@7 NoPerm)) (=> (and (and (not (= this null)) (= Mask@13 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@12) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@12) this dst) wildcard@7)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@12) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@12) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@12) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@12) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@12)))) (and (state ExhaleHeap@0 Mask@13) (state ExhaleHeap@0 Mask@13))) (and (=> (= (ControlFlow 0 204) (- 0 205)) (HasDirectPerm_27839_54103 Mask@13 this dst)) (=> (HasDirectPerm_27839_54103 Mask@13 this dst) (=> (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)) gsize) (state ExhaleHeap@0 Mask@13)) (=> (and (and (<= 4 gsize) (state ExhaleHeap@0 Mask@13)) (and (= (mod gsize 4) 0) (state ExhaleHeap@0 Mask@13))) (and (and (=> (= (ControlFlow 0 204) 203) anon237_Else_correct) (=> (= (ControlFlow 0 204) 159) anon238_Then_correct)) (=> (= (ControlFlow 0 204) 153) anon238_Else_correct)))))))))))))))))
(let ((anon115_correct true))
(let ((anon267_Else_correct  (=> (and (not (and (<= 0 i_19) (< i_19 k@1))) (= (ControlFlow 0 67) 64)) anon115_correct)))
(let ((anon267_Then_correct  (=> (and (<= 0 i_19) (< i_19 k@1)) (and (=> (= (ControlFlow 0 65) (- 0 66)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) (+ (* tid half@0) i_19)) Integer_value))) (=> (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) (+ (* tid half@0) i_19)) Integer_value)) (=> (= (ControlFlow 0 65) 64) anon115_correct))))))
(let ((anon266_Else_correct true))
(let ((anon112_correct  (=> (= Mask@43 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@42) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@42) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@42) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@42) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@42) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@42) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@42))) (and (and (=> (= (ControlFlow 0 68) 63) anon266_Else_correct) (=> (= (ControlFlow 0 68) 65) anon267_Then_correct)) (=> (= (ControlFlow 0 68) 67) anon267_Else_correct)))))
(let ((anon265_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 71) 68)) anon112_correct)))
(let ((anon265_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@42) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@42) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value)) (=> (= (ControlFlow 0 69) 68) anon112_correct))))))
(let ((anon110_correct  (and (=> (= (ControlFlow 0 72) (- 0 74)) (< 0 k@1)) (=> (< 0 k@1) (and (=> (= (ControlFlow 0 72) (- 0 73)) (<= k@1 half@0)) (=> (<= k@1 half@0) (and (=> (= (ControlFlow 0 72) 69) anon265_Then_correct) (=> (= (ControlFlow 0 72) 71) anon265_Else_correct))))))))
(let ((anon109_correct  (=> (= Mask@41 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@40) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@40) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@40) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@40) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@40) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@40) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@40))) (=> (and (= Mask@42 Mask@41) (= (ControlFlow 0 76) 72)) anon110_correct))))
(let ((anon264_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 79) 76)) anon109_correct)))
(let ((anon264_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 77) (- 0 78)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@40) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@40) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) tid) Integer_value)) (=> (= (ControlFlow 0 77) 76) anon109_correct))))))
(let ((anon263_Then_correct  (=> (= 0 0) (and (=> (= (ControlFlow 0 80) 77) anon264_Then_correct) (=> (= (ControlFlow 0 80) 79) anon264_Else_correct)))))
(let ((anon263_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@42 Mask@40) (= (ControlFlow 0 75) 72)) anon110_correct))))
(let ((anon105_correct  (=> (and (= Mask@39 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@38) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@38) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 1) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@38) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@38) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@38) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@38) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@38))) (= Mask@40 Mask@39)) (and (=> (= (ControlFlow 0 83) 80) anon263_Then_correct) (=> (= (ControlFlow 0 83) 75) anon263_Else_correct)))))
(let ((anon262_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 86) 83)) anon105_correct)))
(let ((anon262_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 84) (- 0 85)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@38) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 1) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@38) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 1) Integer_value)) (=> (= (ControlFlow 0 84) 83) anon105_correct))))))
(let ((anon261_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 87) 84) anon262_Then_correct) (=> (= (ControlFlow 0 87) 86) anon262_Else_correct)))))
(let ((anon261_Else_correct  (=> (and (not (= tid 0)) (= Mask@40 Mask@38)) (and (=> (= (ControlFlow 0 82) 80) anon263_Then_correct) (=> (= (ControlFlow 0 82) 75) anon263_Else_correct)))))
(let ((anon101_correct  (=> (and (= Mask@37 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@4) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 0) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@4) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@4) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@4) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@4))) (= Mask@38 Mask@37)) (and (=> (= (ControlFlow 0 89) 87) anon261_Then_correct) (=> (= (ControlFlow 0 89) 82) anon261_Else_correct)))))
(let ((anon260_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 92) 89)) anon101_correct)))
(let ((anon260_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 90) (- 0 91)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 0) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst) 0) Integer_value)) (=> (= (ControlFlow 0 90) 89) anon101_correct))))))
(let ((anon259_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 93) 90) anon260_Then_correct) (=> (= (ControlFlow 0 93) 92) anon260_Else_correct)))))
(let ((anon259_Else_correct  (=> (and (not (= tid 0)) (= Mask@38 QPMask@4)) (and (=> (= (ControlFlow 0 88) 87) anon261_Then_correct) (=> (= (ControlFlow 0 88) 82) anon261_Else_correct)))))
(let ((anon258_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 94) 93) anon259_Then_correct) (=> (= (ControlFlow 0 94) 88) anon259_Else_correct)))))
(let ((anon258_Else_correct  (=> (and (not (= 0 1)) (= Mask@40 QPMask@4)) (and (=> (= (ControlFlow 0 81) 80) anon263_Then_correct) (=> (= (ControlFlow 0 81) 75) anon263_Else_correct)))))
(let ((anon256_Else_correct  (=> (forall ((ix_12_1 Int) (jx_12_1 Int) ) (!  (=> (and (>= ix_12_1 0) (and (< ix_12_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (and (>= jx_12_1 0) (and (< jx_12_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (not (= ix_12_1 jx_12_1)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) ix_12_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) jx_12_1))))
 :qid |stdinbpl.1652:28|
 :skolemid |102|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) ix_12_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) jx_12_1))
)) (and (=> (= (ControlFlow 0 95) (- 0 99)) (forall ((i_18_1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1660:25|
 :skolemid |103|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_18_1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1))
))) (=> (forall ((i_18_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@0) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1660:25|
 :skolemid |103|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_18_1@@0))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@0))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@0))
)) (and (=> (= (ControlFlow 0 95) (- 0 98)) (forall ((i_18_1@@1 Int) (i_18_2 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@1 i_18_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_2))))
 :qid |stdinbpl.1667:25|
 :skolemid |104|
 :pattern ( (neverTriggered7 i_18_1@@1) (neverTriggered7 i_18_2))
))) (=> (forall ((i_18_1@@2 Int) (i_18_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_18_1@@2 i_18_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_2@@0))))
 :qid |stdinbpl.1667:25|
 :skolemid |104|
 :pattern ( (neverTriggered7 i_18_1@@2) (neverTriggered7 i_18_2@@0))
)) (and (=> (= (ControlFlow 0 95) (- 0 97)) (forall ((i_18_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@3) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@36) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@3) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1674:25|
 :skolemid |105|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_18_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@3))
))) (=> (forall ((i_18_1@@4 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@4) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@36) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@4) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1674:25|
 :skolemid |105|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_18_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@4))
)) (=> (forall ((i_18_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@5) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange7 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@5)) (= (invRecv7 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@5)) i_18_1@@5)))
 :qid |stdinbpl.1680:30|
 :skolemid |106|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_18_1@@5))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_18_1@@5))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) i_18_1@@5))
)) (=> (and (forall ((o_4@@15 T@Ref) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv7 o_4@@15)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange7 o_4@@15))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) (invRecv7 o_4@@15)) o_4@@15))
 :qid |stdinbpl.1684:30|
 :skolemid |107|
 :pattern ( (invRecv7 o_4@@15))
)) (forall ((o_4@@16 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv7 o_4@@16)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange7 o_4@@16))) (and (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) (invRecv7 o_4@@16)) o_4@@16) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) o_4@@16 Integer_value) (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@36) o_4@@16 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv7 o_4@@16)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange7 o_4@@16)))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) o_4@@16 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@36) o_4@@16 Integer_value))))
 :qid |stdinbpl.1690:30|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) o_4@@16 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@36) o_4@@17 f_5@@11) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@4) o_4@@17 f_5@@11)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@4) o_4@@17 f_5@@11))
)) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@36) o_4@@18 f_5@@12) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@4) o_4@@18 f_5@@12)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@4) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@36) o_4@@19 f_5@@13) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@4) o_4@@19 f_5@@13)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@4) o_4@@19 f_5@@13))
))) (forall ((o_4@@20 T@Ref) (f_5@@14 T@Field_53397_3522) ) (!  (=> (not (= f_5@@14 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@36) o_4@@20 f_5@@14) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) o_4@@20 f_5@@14)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@4) o_4@@20 f_5@@14))
))) (forall ((o_4@@21 T@Ref) (f_5@@15 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@36) o_4@@21 f_5@@15) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@4) o_4@@21 f_5@@15)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@4) o_4@@21 f_5@@15))
))) (forall ((o_4@@22 T@Ref) (f_5@@16 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@36) o_4@@22 f_5@@16) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@4) o_4@@22 f_5@@16)))
 :qid |stdinbpl.1696:37|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@4) o_4@@22 f_5@@16))
))) (and (=> (= (ControlFlow 0 95) (- 0 96)) (= 0 0)) (=> (= 0 0) (and (=> (= (ControlFlow 0 95) 94) anon258_Then_correct) (=> (= (ControlFlow 0 95) 81) anon258_Else_correct))))))))))))))))
(let ((anon96_correct true))
(let ((anon257_Else_correct  (=> (and (not (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (not (= ix_11 jx_11))))))) (= (ControlFlow 0 62) 59)) anon96_correct)))
(let ((anon257_Then_correct  (=> (and (>= ix_11 0) (and (< ix_11 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (and (>= jx_11 0) (and (< jx_11 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src))) (not (= ix_11 jx_11)))))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) ix_11) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) jx_11)))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) ix_11) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src) jx_11))) (=> (= (ControlFlow 0 60) 59) anon96_correct))))))
(let ((anon93_correct  (=> (state Heap@3 Mask@34) (=> (and (= k@1 (+ k@0 1)) (state Heap@3 Mask@34)) (and (=> (= (ControlFlow 0 100) (- 0 111)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 100) (- 0 110)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 100) (- 0 109)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 100) (- 0 108)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 100) (- 0 107)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 100) (- 0 106)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@34) this src) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@34) this src) NoPerm) (=> (> wildcard@14 NoPerm) (=> (and (< wildcard@14 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@34) this src)) (= Mask@35 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@34) this src (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@34) this src) wildcard@14)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@34) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@34) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@34) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@34) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@34)))) (and (=> (= (ControlFlow 0 100) (- 0 105)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this src)) gsize) (and (=> (= (ControlFlow 0 100) (- 0 104)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@35) this dst) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@35) this dst) NoPerm) (=> (> wildcard@15 NoPerm) (=> (and (< wildcard@15 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@35) this dst)) (= Mask@36 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@35) this dst (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@35) this dst) wildcard@15)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@35) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@35) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@35) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@35) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@35)))) (and (=> (= (ControlFlow 0 100) (- 0 103)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@3) this dst)) gsize) (and (=> (= (ControlFlow 0 100) (- 0 102)) (<= 4 gsize)) (=> (<= 4 gsize) (and (=> (= (ControlFlow 0 100) (- 0 101)) (= (mod gsize 4) 0)) (=> (= (mod gsize 4) 0) (and (and (=> (= (ControlFlow 0 100) 95) anon256_Else_correct) (=> (= (ControlFlow 0 100) 60) anon257_Then_correct)) (=> (= (ControlFlow 0 100) 62) anon257_Else_correct))))))))))))))))))))))))))))))))
(let ((anon255_Else_correct  (=> (<= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value)) (=> (and (= Heap@3 ExhaleHeap@0) (= (ControlFlow 0 121) 100)) anon93_correct))))
(let ((anon255_Then_correct  (=> (< (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value)) (and (=> (= (ControlFlow 0 112) (- 0 120)) (HasDirectPerm_27839_54103 Mask@34 this dst)) (=> (HasDirectPerm_27839_54103 Mask@34 this dst) (and (=> (= (ControlFlow 0 112) (- 0 119)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 112) (- 0 118)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (and (=> (= (ControlFlow 0 112) (- 0 117)) (HasDirectPerm_27839_54103 Mask@34 this src)) (=> (HasDirectPerm_27839_54103 Mask@34 this src) (and (=> (= (ControlFlow 0 112) (- 0 116)) (>= (+ offset@0 k@0) 0)) (=> (>= (+ offset@0 k@0) 0) (and (=> (= (ControlFlow 0 112) (- 0 115)) (< (+ offset@0 k@0) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< (+ offset@0 k@0) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 112) (- 0 114)) (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value) (and (=> (= (ControlFlow 0 112) (- 0 113)) (= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@34) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@34) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value)) (=> (and (and (= Heap@2 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@0) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@0) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value)) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@0) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@0))) (state Heap@2 Mask@34)) (and (= Heap@3 Heap@2) (= (ControlFlow 0 112) 100))) anon93_correct))))))))))))))))))))
(let ((anon91_correct  (=> (< 0 k@0) (=> (and (and (and (<= k@0 half@0) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null))) (and (= Mask@34 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@33) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@33) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@33) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@33) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@33) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@33) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@33))) (state ExhaleHeap@0 Mask@34))) (and (and (forall ((i_17 Int) ) (!  (=> (and (<= 0 i_17) (< i_17 k@0)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ (* tid half@0) i_17)) Integer_value)))
 :qid |stdinbpl.1544:28|
 :skolemid |101|
)) (state ExhaleHeap@0 Mask@34)) (and (< k@0 half@0) (state ExhaleHeap@0 Mask@34)))) (and (=> (= (ControlFlow 0 122) (- 0 132)) (<= 0 (+ offset@0 k@0))) (=> (<= 0 (+ offset@0 k@0)) (and (=> (= (ControlFlow 0 122) (- 0 131)) (< (+ offset@0 k@0) gsize)) (=> (< (+ offset@0 k@0) gsize) (=> (state ExhaleHeap@0 Mask@34) (and (=> (= (ControlFlow 0 122) (- 0 130)) (HasDirectPerm_27839_54103 Mask@34 this dst)) (=> (HasDirectPerm_27839_54103 Mask@34 this dst) (and (=> (= (ControlFlow 0 122) (- 0 129)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 122) (- 0 128)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst))) (and (=> (= (ControlFlow 0 122) (- 0 127)) (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 122) (- 0 126)) (HasDirectPerm_27839_54103 Mask@34 this src)) (=> (HasDirectPerm_27839_54103 Mask@34 this src) (and (=> (= (ControlFlow 0 122) (- 0 125)) (>= (+ offset@0 k@0) 0)) (=> (>= (+ offset@0 k@0) 0) (and (=> (= (ControlFlow 0 122) (- 0 124)) (< (+ offset@0 k@0) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)))) (=> (< (+ offset@0 k@0) (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 122) (- 0 123)) (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@34 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ offset@0 k@0)) Integer_value) (and (=> (= (ControlFlow 0 122) 112) anon255_Then_correct) (=> (= (ControlFlow 0 122) 121) anon255_Else_correct)))))))))))))))))))))))))))
(let ((anon254_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@33 Mask@31) (= (ControlFlow 0 134) 122)) anon91_correct))))
(let ((anon254_Then_correct  (=> (and (= 0 0) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null))) (=> (and (and (= Mask@32 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@31) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@31) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@31) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@31) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@31) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@31) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@31))) (state ExhaleHeap@0 Mask@32)) (and (= Mask@33 Mask@32) (= (ControlFlow 0 133) 122))) anon91_correct))))
(let ((anon253_Else_correct  (=> (and (not (= tid 0)) (= Mask@31 Mask@29)) (and (=> (= (ControlFlow 0 137) 133) anon254_Then_correct) (=> (= (ControlFlow 0 137) 134) anon254_Else_correct)))))
(let ((anon253_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) null)) (= Mask@30 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@29) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@29) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@29) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@29) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@29) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@29) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@29)))) (and (state ExhaleHeap@0 Mask@30) (= Mask@31 Mask@30))) (and (=> (= (ControlFlow 0 136) 133) anon254_Then_correct) (=> (= (ControlFlow 0 136) 134) anon254_Else_correct))))))
(let ((anon252_Else_correct  (=> (and (not (= tid 0)) (= Mask@29 QPMask@2)) (and (=> (= (ControlFlow 0 139) 136) anon253_Then_correct) (=> (= (ControlFlow 0 139) 137) anon253_Else_correct)))))
(let ((anon252_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) null)) (= Mask@28 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2)))) (and (state ExhaleHeap@0 Mask@28) (= Mask@29 Mask@28))) (and (=> (= (ControlFlow 0 138) 136) anon253_Then_correct) (=> (= (ControlFlow 0 138) 137) anon253_Else_correct))))))
(let ((anon251_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 140) 138) anon252_Then_correct) (=> (= (ControlFlow 0 140) 139) anon252_Else_correct)))))
(let ((anon251_Else_correct  (=> (and (not (= 0 1)) (= Mask@31 QPMask@2)) (and (=> (= (ControlFlow 0 135) 133) anon254_Then_correct) (=> (= (ControlFlow 0 135) 134) anon254_Else_correct)))))
(let ((anon250_Then_correct  (=> (state ExhaleHeap@0 ZeroMask) (=> (and (<= 0 tid) (< tid tcount)) (=> (and (and (and (and (= tid lid) (= tcount gsize)) (and (= gid 0) (> wildcard@8 NoPerm))) (and (and (not (= this null)) (= Mask@14 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src) wildcard@8)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask)))) (and (state ExhaleHeap@0 Mask@14) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)) gsize)))) (and (and (and (> wildcard@9 NoPerm) (not (= this null))) (and (= Mask@15 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@14) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@14) this dst) wildcard@9)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@14) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@14) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@14) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@14) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@14))) (state ExhaleHeap@0 Mask@15))) (and (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)) gsize) (<= 4 gsize)) (and (= (mod gsize 4) 0) (forall ((ix_10 Int) (jx_10 Int) ) (!  (=> (and (>= ix_10 0) (and (< ix_10 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (>= jx_10 0) (and (< jx_10 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (not (= ix_10 jx_10)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_10))))
 :qid |stdinbpl.1473:28|
 :skolemid |93|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_10))
)))))) (and (=> (= (ControlFlow 0 141) (- 0 143)) (forall ((i_16_1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1 i_16_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_2))))
 :qid |stdinbpl.1479:23|
 :skolemid |94|
))) (=> (forall ((i_16_1@@0 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@0 i_16_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_2@@0))))
 :qid |stdinbpl.1479:23|
 :skolemid |94|
)) (=> (and (forall ((i_16_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange6 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@1)) (= (invRecv6 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@1)) i_16_1@@1)))
 :qid |stdinbpl.1485:30|
 :skolemid |95|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_4@@23)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_4@@23)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv6 o_4@@23)) o_4@@23))
 :qid |stdinbpl.1489:30|
 :skolemid |96|
 :pattern ( (invRecv6 o_4@@23))
))) (and (=> (= (ControlFlow 0 141) (- 0 142)) (forall ((i_16_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1495:23|
 :skolemid |97|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@2))
))) (=> (forall ((i_16_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1495:23|
 :skolemid |97|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@3))
)) (=> (and (forall ((i_16_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@4) null)))
 :qid |stdinbpl.1501:30|
 :skolemid |98|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_16_1@@4))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_4@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_4@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv6 o_4@@24)) o_4@@24)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_4@@24 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@15) o_4@@24 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_4@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_4@@24))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_4@@24 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@15) o_4@@24 Integer_value))))
 :qid |stdinbpl.1507:30|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_4@@24 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@15) o_4@@25 f_5@@17) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) o_4@@25 f_5@@17)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@15) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) o_4@@25 f_5@@17))
)) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@15) o_4@@26 f_5@@18) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) o_4@@26 f_5@@18)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@15) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) o_4@@26 f_5@@18))
))) (forall ((o_4@@27 T@Ref) (f_5@@19 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@15) o_4@@27 f_5@@19) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) o_4@@27 f_5@@19)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@15) o_4@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) o_4@@27 f_5@@19))
))) (forall ((o_4@@28 T@Ref) (f_5@@20 T@Field_53397_3522) ) (!  (=> (not (= f_5@@20 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@15) o_4@@28 f_5@@20) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_4@@28 f_5@@20)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@15) o_4@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_4@@28 f_5@@20))
))) (forall ((o_4@@29 T@Ref) (f_5@@21 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@15) o_4@@29 f_5@@21) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) o_4@@29 f_5@@21)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@15) o_4@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) o_4@@29 f_5@@21))
))) (forall ((o_4@@30 T@Ref) (f_5@@22 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@15) o_4@@30 f_5@@22) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2) o_4@@30 f_5@@22)))
 :qid |stdinbpl.1511:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@15) o_4@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2) o_4@@30 f_5@@22))
))) (and (state ExhaleHeap@0 QPMask@2) (= 0 0))) (and (=> (= (ControlFlow 0 141) 140) anon251_Then_correct) (=> (= (ControlFlow 0 141) 135) anon251_Else_correct))))))))))))))
(let ((anon57_correct true))
(let ((anon235_Else_correct  (=> (and (not (and (<= 0 i_10_1) (< i_10_1 1))) (= (ControlFlow 0 46) 43)) anon57_correct)))
(let ((anon235_Then_correct  (=> (and (<= 0 i_10_1) (< i_10_1 1)) (and (=> (= (ControlFlow 0 44) (- 0 45)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) (+ (* tid half@0) i_10_1)) Integer_value))) (=> (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) (+ (* tid half@0) i_10_1)) Integer_value)) (=> (= (ControlFlow 0 44) 43) anon57_correct))))))
(let ((anon38_correct true))
(let ((anon225_Else_correct  (=> (and (not (and (>= ix_6 0) (and (< ix_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (and (>= jx_6 0) (and (< jx_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (not (= ix_6 jx_6))))))) (= (ControlFlow 0 42) 39)) anon38_correct)))
(let ((anon225_Then_correct  (=> (and (>= ix_6 0) (and (< ix_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (and (>= jx_6 0) (and (< jx_6 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (not (= ix_6 jx_6)))))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) ix_6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) jx_6)))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) ix_6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) jx_6))) (=> (= (ControlFlow 0 40) 39) anon38_correct))))))
(let ((anon125_correct true))
(let ((anon124_correct  (=> (< 0 k@0) (=> (and (<= k@0 half@0) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null))) (=> (and (and (and (= Mask@24 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@23) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@23) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@23) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@23) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@23) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@23) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@23))) (state ExhaleHeap@0 Mask@24)) (and (forall ((i_22_1 Int) ) (!  (=> (and (<= 0 i_22_1) (< i_22_1 k@0)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (+ (* tid half@0) i_22_1)) Integer_value)))
 :qid |stdinbpl.1851:26|
 :skolemid |119|
)) (state ExhaleHeap@0 Mask@24))) (and (and (state ExhaleHeap@0 Mask@24) (= Mask@25 Mask@24)) (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 47) 26)))) anon125_correct)))))
(let ((anon271_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@23 Mask@21) (= (ControlFlow 0 49) 47)) anon124_correct))))
(let ((anon271_Then_correct  (=> (and (= 0 0) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) null))) (=> (and (and (= Mask@22 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@21) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@21) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@21) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@21) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@21) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@21) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@21))) (state ExhaleHeap@0 Mask@22)) (and (= Mask@23 Mask@22) (= (ControlFlow 0 48) 47))) anon124_correct))))
(let ((anon270_Else_correct  (=> (and (not (= tid 0)) (= Mask@21 Mask@19)) (and (=> (= (ControlFlow 0 52) 48) anon271_Then_correct) (=> (= (ControlFlow 0 52) 49) anon271_Else_correct)))))
(let ((anon270_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) null)) (= Mask@20 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@19) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@19) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@19) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@19) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@19)))) (and (state ExhaleHeap@0 Mask@20) (= Mask@21 Mask@20))) (and (=> (= (ControlFlow 0 51) 48) anon271_Then_correct) (=> (= (ControlFlow 0 51) 49) anon271_Else_correct))))))
(let ((anon269_Else_correct  (=> (and (not (= tid 0)) (= Mask@19 QPMask@3)) (and (=> (= (ControlFlow 0 54) 51) anon270_Then_correct) (=> (= (ControlFlow 0 54) 52) anon270_Else_correct)))))
(let ((anon269_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) null)) (= Mask@18 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3)))) (and (state ExhaleHeap@0 Mask@18) (= Mask@19 Mask@18))) (and (=> (= (ControlFlow 0 53) 51) anon270_Then_correct) (=> (= (ControlFlow 0 53) 52) anon270_Else_correct))))))
(let ((anon268_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 55) 53) anon269_Then_correct) (=> (= (ControlFlow 0 55) 54) anon269_Else_correct)))))
(let ((anon268_Else_correct  (=> (and (not (= 0 1)) (= Mask@21 QPMask@3)) (and (=> (= (ControlFlow 0 50) 48) anon271_Then_correct) (=> (= (ControlFlow 0 50) 49) anon271_Else_correct)))))
(let ((anon250_Else_correct  (=> (and (and (not (< k@0 half@0)) (state ExhaleHeap@0 Mask@11)) (and (<= 0 tid) (< tid tcount))) (=> (and (and (and (and (= tid lid) (= tcount gsize)) (and (= gid 0) (> wildcard@10 NoPerm))) (and (and (not (= this null)) (= Mask@16 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@11) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@11) this src) wildcard@10)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@11) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@11)))) (and (state ExhaleHeap@0 Mask@16) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src)) gsize)))) (and (and (and (> wildcard@11 NoPerm) (not (= this null))) (and (= Mask@17 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@16) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@16) this dst) wildcard@11)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@16) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@16) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@16) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@16) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@16))) (state ExhaleHeap@0 Mask@17))) (and (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this dst)) gsize) (<= 4 gsize)) (and (= (mod gsize 4) 0) (forall ((ix_13 Int) (jx_13 Int) ) (!  (=> (and (>= ix_13 0) (and (< ix_13 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (and (>= jx_13 0) (and (< jx_13 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src))) (not (= ix_13 jx_13)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_13) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_13))))
 :qid |stdinbpl.1780:26|
 :skolemid |111|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) ix_13) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) jx_13))
)))))) (and (=> (= (ControlFlow 0 56) (- 0 58)) (forall ((i_21 Int) (i_21_1 Int) ) (!  (=> (and (and (and (and (not (= i_21 i_21_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21_1)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21_1))))
 :qid |stdinbpl.1786:21|
 :skolemid |112|
))) (=> (forall ((i_21@@0 Int) (i_21_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_21@@0 i_21_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21_1@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21_1@@0))))
 :qid |stdinbpl.1786:21|
 :skolemid |112|
)) (=> (and (forall ((i_21@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange8 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@1)) (= (invRecv8 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@1)) i_21@@1)))
 :qid |stdinbpl.1792:28|
 :skolemid |113|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_21@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@1))
)) (forall ((o_4@@31 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_4@@31)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_4@@31)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv8 o_4@@31)) o_4@@31))
 :qid |stdinbpl.1796:28|
 :skolemid |114|
 :pattern ( (invRecv8 o_4@@31))
))) (and (=> (= (ControlFlow 0 56) (- 0 57)) (forall ((i_21@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1802:21|
 :skolemid |115|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_21@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@2))
))) (=> (forall ((i_21@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1802:21|
 :skolemid |115|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_21@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@3))
)) (=> (and (forall ((i_21@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@4) null)))
 :qid |stdinbpl.1808:28|
 :skolemid |116|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_21@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_21@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) i_21@@4))
)) (forall ((o_4@@32 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_4@@32)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_4@@32)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@0) this src) (invRecv8 o_4@@32)) o_4@@32)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_4@@32 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@17) o_4@@32 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_4@@32)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_4@@32))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_4@@32 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@17) o_4@@32 Integer_value))))
 :qid |stdinbpl.1814:28|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_4@@32 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@33 T@Ref) (f_5@@23 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@17) o_4@@33 f_5@@23) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) o_4@@33 f_5@@23)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@17) o_4@@33 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) o_4@@33 f_5@@23))
)) (forall ((o_4@@34 T@Ref) (f_5@@24 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@17) o_4@@34 f_5@@24) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) o_4@@34 f_5@@24)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@17) o_4@@34 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) o_4@@34 f_5@@24))
))) (forall ((o_4@@35 T@Ref) (f_5@@25 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@17) o_4@@35 f_5@@25) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) o_4@@35 f_5@@25)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@17) o_4@@35 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) o_4@@35 f_5@@25))
))) (forall ((o_4@@36 T@Ref) (f_5@@26 T@Field_53397_3522) ) (!  (=> (not (= f_5@@26 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@17) o_4@@36 f_5@@26) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_4@@36 f_5@@26)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@17) o_4@@36 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_4@@36 f_5@@26))
))) (forall ((o_4@@37 T@Ref) (f_5@@27 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@17) o_4@@37 f_5@@27) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) o_4@@37 f_5@@27)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@17) o_4@@37 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) o_4@@37 f_5@@27))
))) (forall ((o_4@@38 T@Ref) (f_5@@28 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@17) o_4@@38 f_5@@28) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3) o_4@@38 f_5@@28)))
 :qid |stdinbpl.1818:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@17) o_4@@38 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3) o_4@@38 f_5@@28))
))) (and (state ExhaleHeap@0 QPMask@3) (= 0 0))) (and (=> (= (ControlFlow 0 56) 55) anon268_Then_correct) (=> (= (ControlFlow 0 56) 50) anon268_Else_correct)))))))))))))
(let ((anon234_Else_correct  (=> (and (forall ((i_11_1_1 Int) ) (!  (=> (and (<= 0 i_11_1_1) (< i_11_1_1 1)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) (+ (* tid half@0) i_11_1_1)) Integer_value)))
 :qid |stdinbpl.1213:28|
 :skolemid |83|
)) (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@11)) (and (and (=> (= (ControlFlow 0 207) 204) anon236_Then_correct) (=> (= (ControlFlow 0 207) 141) anon250_Then_correct)) (=> (= (ControlFlow 0 207) 56) anon250_Else_correct)))))
(let ((anon54_correct  (=> (= Mask@11 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@10) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@10) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@10) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@10) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@10))) (and (and (=> (= (ControlFlow 0 208) 207) anon234_Else_correct) (=> (= (ControlFlow 0 208) 44) anon235_Then_correct)) (=> (= (ControlFlow 0 208) 46) anon235_Else_correct)))))
(let ((anon233_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 211) 208)) anon54_correct)))
(let ((anon233_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 209) (- 0 210)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@10) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value)) (=> (= (ControlFlow 0 209) 208) anon54_correct))))))
(let ((anon52_correct  (and (=> (= (ControlFlow 0 212) (- 0 214)) (< 0 1)) (=> (< 0 1) (and (=> (= (ControlFlow 0 212) (- 0 213)) (<= 1 half@0)) (=> (<= 1 half@0) (and (=> (= (ControlFlow 0 212) 209) anon233_Then_correct) (=> (= (ControlFlow 0 212) 211) anon233_Else_correct))))))))
(let ((anon51_correct  (=> (= Mask@9 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@8) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@8) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@8) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@8) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@8) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@8) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@8))) (=> (and (= Mask@10 Mask@9) (= (ControlFlow 0 216) 212)) anon52_correct))))
(let ((anon232_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 219) 216)) anon51_correct)))
(let ((anon232_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 217) (- 0 218)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@8) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@8) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) tid) Integer_value)) (=> (= (ControlFlow 0 217) 216) anon51_correct))))))
(let ((anon231_Then_correct  (=> (= 0 0) (and (=> (= (ControlFlow 0 220) 217) anon232_Then_correct) (=> (= (ControlFlow 0 220) 219) anon232_Else_correct)))))
(let ((anon231_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@10 Mask@8) (= (ControlFlow 0 215) 212)) anon52_correct))))
(let ((anon47_correct  (=> (and (= Mask@7 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@6) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 1) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@6) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@6) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@6) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@6))) (= Mask@8 Mask@7)) (and (=> (= (ControlFlow 0 223) 220) anon231_Then_correct) (=> (= (ControlFlow 0 223) 215) anon231_Else_correct)))))
(let ((anon230_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 226) 223)) anon47_correct)))
(let ((anon230_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 224) (- 0 225)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 1) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@6) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 1) Integer_value)) (=> (= (ControlFlow 0 224) 223) anon47_correct))))))
(let ((anon229_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 227) 224) anon230_Then_correct) (=> (= (ControlFlow 0 227) 226) anon230_Else_correct)))))
(let ((anon229_Else_correct  (=> (and (not (= tid 0)) (= Mask@8 Mask@6)) (and (=> (= (ControlFlow 0 222) 220) anon231_Then_correct) (=> (= (ControlFlow 0 222) 215) anon231_Else_correct)))))
(let ((anon43_correct  (=> (and (= Mask@5 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 0) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1))) (= Mask@6 Mask@5)) (and (=> (= (ControlFlow 0 229) 227) anon229_Then_correct) (=> (= (ControlFlow 0 229) 222) anon229_Else_correct)))))
(let ((anon228_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 232) 229)) anon43_correct)))
(let ((anon228_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 230) (- 0 231)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 0) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst) 0) Integer_value)) (=> (= (ControlFlow 0 230) 229) anon43_correct))))))
(let ((anon227_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 233) 230) anon228_Then_correct) (=> (= (ControlFlow 0 233) 232) anon228_Else_correct)))))
(let ((anon227_Else_correct  (=> (and (not (= tid 0)) (= Mask@6 QPMask@1)) (and (=> (= (ControlFlow 0 228) 227) anon229_Then_correct) (=> (= (ControlFlow 0 228) 222) anon229_Else_correct)))))
(let ((anon226_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 234) 233) anon227_Then_correct) (=> (= (ControlFlow 0 234) 228) anon227_Else_correct)))))
(let ((anon226_Else_correct  (=> (and (not (= 0 1)) (= Mask@8 QPMask@1)) (and (=> (= (ControlFlow 0 221) 220) anon231_Then_correct) (=> (= (ControlFlow 0 221) 215) anon231_Else_correct)))))
(let ((anon224_Else_correct  (=> (forall ((ix_7_1 Int) (jx_7_1 Int) ) (!  (=> (and (>= ix_7_1 0) (and (< ix_7_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (and (>= jx_7_1 0) (and (< jx_7_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src))) (not (= ix_7_1 jx_7_1)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) ix_7_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) jx_7_1))))
 :qid |stdinbpl.1119:28|
 :skolemid |75|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) ix_7_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) jx_7_1))
)) (and (=> (= (ControlFlow 0 235) (- 0 239)) (forall ((i_9_1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1127:25|
 :skolemid |76|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_9_1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1))
))) (=> (forall ((i_9_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@0) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1127:25|
 :skolemid |76|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_9_1@@0))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@0))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@0))
)) (and (=> (= (ControlFlow 0 235) (- 0 238)) (forall ((i_9_1@@1 Int) (i_9_2 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@1 i_9_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_2))))
 :qid |stdinbpl.1134:25|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_9_1@@1) (neverTriggered4 i_9_2))
))) (=> (forall ((i_9_1@@2 Int) (i_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_9_1@@2 i_9_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_2@@0))))
 :qid |stdinbpl.1134:25|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_9_1@@2) (neverTriggered4 i_9_2@@0))
)) (and (=> (= (ControlFlow 0 235) (- 0 237)) (forall ((i_9_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@3) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@3) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1141:25|
 :skolemid |78|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_9_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@3))
))) (=> (forall ((i_9_1@@4 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@4) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@4) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@4) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1141:25|
 :skolemid |78|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_9_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@4))
)) (=> (forall ((i_9_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@5) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange4 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@5)) (= (invRecv4 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@5)) i_9_1@@5)))
 :qid |stdinbpl.1147:30|
 :skolemid |79|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_9_1@@5))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_9_1@@5))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) i_9_1@@5))
)) (=> (and (forall ((o_4@@39 T@Ref) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_4@@39)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_4@@39))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) (invRecv4 o_4@@39)) o_4@@39))
 :qid |stdinbpl.1151:30|
 :skolemid |80|
 :pattern ( (invRecv4 o_4@@39))
)) (forall ((o_4@@40 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_4@@40)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_4@@40))) (and (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src) (invRecv4 o_4@@40)) o_4@@40) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_4@@40 Integer_value) (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@4) o_4@@40 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_4@@40)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_4@@40)))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_4@@40 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@4) o_4@@40 Integer_value))))
 :qid |stdinbpl.1157:30|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_4@@40 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_4@@41 T@Ref) (f_5@@29 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@4) o_4@@41 f_5@@29) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) o_4@@41 f_5@@29)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) o_4@@41 f_5@@29))
)) (forall ((o_4@@42 T@Ref) (f_5@@30 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@4) o_4@@42 f_5@@30) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) o_4@@42 f_5@@30)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) o_4@@42 f_5@@30))
))) (forall ((o_4@@43 T@Ref) (f_5@@31 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@4) o_4@@43 f_5@@31) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) o_4@@43 f_5@@31)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) o_4@@43 f_5@@31))
))) (forall ((o_4@@44 T@Ref) (f_5@@32 T@Field_53397_3522) ) (!  (=> (not (= f_5@@32 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@4) o_4@@44 f_5@@32) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_4@@44 f_5@@32)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_4@@44 f_5@@32))
))) (forall ((o_4@@45 T@Ref) (f_5@@33 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@4) o_4@@45 f_5@@33) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) o_4@@45 f_5@@33)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) o_4@@45 f_5@@33))
))) (forall ((o_4@@46 T@Ref) (f_5@@34 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@4) o_4@@46 f_5@@34) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1) o_4@@46 f_5@@34)))
 :qid |stdinbpl.1163:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1) o_4@@46 f_5@@34))
))) (and (=> (= (ControlFlow 0 235) (- 0 236)) (= 0 0)) (=> (= 0 0) (and (=> (= (ControlFlow 0 235) 234) anon226_Then_correct) (=> (= (ControlFlow 0 235) 221) anon226_Else_correct))))))))))))))))
(let ((anon223_Then_correct  (=> (< tid 2) (and (=> (= (ControlFlow 0 240) (- 0 259)) (HasDirectPerm_27839_54103 Mask@2 this dst)) (=> (HasDirectPerm_27839_54103 Mask@2 this dst) (and (=> (= (ControlFlow 0 240) (- 0 258)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 240) (- 0 257)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 240) (- 0 256)) (HasDirectPerm_27839_54103 Mask@2 this src)) (=> (HasDirectPerm_27839_54103 Mask@2 this src) (and (=> (= (ControlFlow 0 240) (- 0 255)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 240) (- 0 254)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 240) (- 0 253)) (HasDirectPerm_27847_3522 Mask@2 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) tid) Integer_value)) (=> (HasDirectPerm_27847_3522 Mask@2 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) tid) Integer_value) (and (=> (= (ControlFlow 0 240) (- 0 252)) (= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) Integer_value)) (=> (= Heap@0 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@19) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@19) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) Integer_value (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) tid) Integer_value)) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@19) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@19))) (=> (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 240) (- 0 251)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 240) (- 0 250)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 240) (- 0 249)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 240) (- 0 248)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 240) (- 0 247)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 240) (- 0 246)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this src) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this src) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this src)) (= Mask@3 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this src (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this src) wildcard@4)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@2)))) (and (=> (= (ControlFlow 0 240) (- 0 245)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this src)) gsize) (and (=> (= (ControlFlow 0 240) (- 0 244)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) this dst) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) this dst) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) this dst)) (= Mask@4 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) this dst (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) this dst) wildcard@5)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@3) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@3) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@3) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@3)))) (and (=> (= (ControlFlow 0 240) (- 0 243)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@0) this dst)) gsize) (and (=> (= (ControlFlow 0 240) (- 0 242)) (<= 4 gsize)) (=> (<= 4 gsize) (and (=> (= (ControlFlow 0 240) (- 0 241)) (= (mod gsize 4) 0)) (=> (= (mod gsize 4) 0) (and (and (=> (= (ControlFlow 0 240) 235) anon224_Else_correct) (=> (= (ControlFlow 0 240) 40) anon225_Then_correct)) (=> (= (ControlFlow 0 240) 42) anon225_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon223_Else_correct  (=> (and (and (<= 2 tid) (= Mask@25 Mask@2)) (and (= Heap@1 Heap@@19) (= (ControlFlow 0 38) 26))) anon125_correct)))
(let ((anon211_Else_correct  (=> (state Heap@@19 Mask@2) (=> (and (and (= half@0 (div gsize 2)) (state Heap@@19 Mask@2)) (and (= offset@0 (ite (= tid 0) 0 half@0)) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 260) 240) anon223_Then_correct) (=> (= (ControlFlow 0 260) 38) anon223_Else_correct))))))
(let ((anon209_Else_correct  (and (=> (= (ControlFlow 0 315) (- 0 320)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1_1)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1_1))))
 :qid |stdinbpl.782:15|
 :skolemid |59|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1_1@@0))))
 :qid |stdinbpl.782:15|
 :skolemid |59|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1)) (= (invRecv1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1)) i_1@@1)))
 :qid |stdinbpl.788:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1))
)) (forall ((o_4@@47 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_4@@47)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_4@@47)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv1 o_4@@47)) o_4@@47))
 :qid |stdinbpl.792:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_4@@47))
))) (and (=> (= (ControlFlow 0 315) (- 0 319)) (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.798:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.798:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4) null)))
 :qid |stdinbpl.804:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_4@@48)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_4@@48)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv1 o_4@@48)) o_4@@48)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_4@@48 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_4@@48 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_4@@48)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_4@@48))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_4@@48 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_4@@48 Integer_value))))
 :qid |stdinbpl.810:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_4@@48 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@35 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@1) o_4@@49 f_5@@35) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_4@@49 f_5@@35)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@1) o_4@@49 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_4@@49 f_5@@35))
)) (forall ((o_4@@50 T@Ref) (f_5@@36 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@1) o_4@@50 f_5@@36) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_4@@50 f_5@@36)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@1) o_4@@50 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_4@@50 f_5@@36))
))) (forall ((o_4@@51 T@Ref) (f_5@@37 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@1) o_4@@51 f_5@@37) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_4@@51 f_5@@37)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@1) o_4@@51 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_4@@51 f_5@@37))
))) (forall ((o_4@@52 T@Ref) (f_5@@38 T@Field_53397_3522) ) (!  (=> (not (= f_5@@38 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_4@@52 f_5@@38) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_4@@52 f_5@@38)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_4@@52 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_4@@52 f_5@@38))
))) (forall ((o_4@@53 T@Ref) (f_5@@39 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@1) o_4@@53 f_5@@39) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_4@@53 f_5@@39)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@1) o_4@@53 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_4@@53 f_5@@39))
))) (forall ((o_4@@54 T@Ref) (f_5@@40 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@1) o_4@@54 f_5@@40) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_4@@54 f_5@@40)))
 :qid |stdinbpl.814:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@1) o_4@@54 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_4@@54 f_5@@40))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 315) (- 0 318)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 315) (- 0 317)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 315) (- 0 316)) (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< tid (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (=> (and (and (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) null)) (= Mask@2 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 315) 312) anon211_Then_correct) (=> (= (ControlFlow 0 315) 260) anon211_Else_correct))))))))))))))))))
(let ((anon11_correct true))
(let ((anon210_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_2)) (= (ControlFlow 0 24) 18)) anon11_correct)))
(let ((anon210_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_2) (and (=> (= (ControlFlow 0 19) (- 0 23)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 19) (- 0 22)) (>= i_2 0)) (=> (>= i_2 0) (and (=> (= (ControlFlow 0 19) (- 0 21)) (< i_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< i_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 19) 18) anon11_correct))))))))))))
(let ((anon204_Else_correct  (=> (and (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_1))))
 :qid |stdinbpl.760:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 321) 315) anon209_Else_correct) (=> (= (ControlFlow 0 321) 19) anon210_Then_correct)) (=> (= (ControlFlow 0 321) 24) anon210_Else_correct)))))
(let ((anon7_correct true))
(let ((anon208_Else_correct  (=> (and (not (and (>= ix 0) (and (< ix (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx 0) (and (< jx (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix jx))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon208_Then_correct  (=> (and (>= ix 0) (and (< ix (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx 0) (and (< jx (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix jx)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= ix 0)) (=> (>= ix 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< ix (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< ix (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx 0)) (=> (>= jx 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< jx (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon207_Else_correct  (=> (> 0 jx) (and (=> (= (ControlFlow 0 14) 2) anon208_Then_correct) (=> (= (ControlFlow 0 14) 9) anon208_Else_correct)))))
(let ((anon207_Then_correct  (=> (>= jx 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 12) 2) anon208_Then_correct) (=> (= (ControlFlow 0 12) 9) anon208_Else_correct)))))))
(let ((anon206_Then_correct  (=> (< ix (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 15) 12) anon207_Then_correct) (=> (= (ControlFlow 0 15) 14) anon207_Else_correct)))))
(let ((anon206_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) ix) (and (=> (= (ControlFlow 0 11) 2) anon208_Then_correct) (=> (= (ControlFlow 0 11) 9) anon208_Else_correct)))))
(let ((anon205_Then_correct  (=> (>= ix 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 16) 15) anon206_Then_correct) (=> (= (ControlFlow 0 16) 11) anon206_Else_correct)))))))
(let ((anon205_Else_correct  (=> (> 0 ix) (and (=> (= (ControlFlow 0 10) 2) anon208_Then_correct) (=> (= (ControlFlow 0 10) 9) anon208_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (and (and (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@19) this $allocated) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src) wildcard@0)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 322) (- 0 324)) (HasDirectPerm_27839_54103 Mask@0 this src)) (=> (HasDirectPerm_27839_54103 Mask@0 this src) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) gsize) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= this null)) (= Mask@1 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@0) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@0) this dst) wildcard@1)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 322) (- 0 323)) (HasDirectPerm_27839_54103 Mask@1 this dst)) (=> (HasDirectPerm_27839_54103 Mask@1 this dst) (=> (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) gsize) (state Heap@@19 Mask@1)) (=> (and (and (<= 4 gsize) (state Heap@@19 Mask@1)) (and (= (mod gsize 4) 0) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 322) 321) anon204_Else_correct) (=> (= (ControlFlow 0 322) 16) anon205_Then_correct)) (=> (= (ControlFlow 0 322) 10) anon205_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 325) 322)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
