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
(assert (forall ((Heap@@0 T@PolymorphicMapType_47162) (ExhaleHeap T@PolymorphicMapType_47162) (Mask@@0 T@PolymorphicMapType_47183) (pm_f_21 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_27839_159603 Mask@@0 null pm_f_21) (IsPredicateField_27839_159630 pm_f_21)) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@0) null (PredicateMaskField_27839 pm_f_21)) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap) null (PredicateMaskField_27839 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_27839_159630 pm_f_21) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap) null (PredicateMaskField_27839 pm_f_21)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47162) (ExhaleHeap@@0 T@PolymorphicMapType_47162) (Mask@@1 T@PolymorphicMapType_47183) (pm_f_21@@0 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_27839_159603 Mask@@1 null pm_f_21@@0) (IsWandField_27839_161581 pm_f_21@@0)) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@1) null (WandMaskField_27839 pm_f_21@@0)) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@0) null (WandMaskField_27839 pm_f_21@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_27839_161581 pm_f_21@@0) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@0) null (WandMaskField_27839 pm_f_21@@0)))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_47162) (ExhaleHeap@@1 T@PolymorphicMapType_47162) (Mask@@2 T@PolymorphicMapType_47183) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@2) o_43 $allocated) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@1) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@1) o_43 $allocated))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_47162) (ExhaleHeap@@3 T@PolymorphicMapType_47162) (Mask@@16 T@PolymorphicMapType_47183) (o_43@@0 T@Ref) (f_56 T@Field_27839_159672) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_27839_166252 Mask@@16 o_43@@0 f_56) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@4) o_43@@0 f_56) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@3) o_43@@0 f_56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@3) o_43@@0 f_56))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47162) (ExhaleHeap@@4 T@PolymorphicMapType_47162) (Mask@@17 T@PolymorphicMapType_47183) (o_43@@1 T@Ref) (f_56@@0 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_27839_159603 Mask@@17 o_43@@1 f_56@@0) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@5) o_43@@1 f_56@@0) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@4) o_43@@1 f_56@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@4) o_43@@1 f_56@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47162) (ExhaleHeap@@5 T@PolymorphicMapType_47162) (Mask@@18 T@PolymorphicMapType_47183) (o_43@@2 T@Ref) (f_56@@1 T@Field_47235_47236) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_27839_47236 Mask@@18 o_43@@2 f_56@@1) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@6) o_43@@2 f_56@@1) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@5) o_43@@2 f_56@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@5) o_43@@2 f_56@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47162) (ExhaleHeap@@6 T@PolymorphicMapType_47162) (Mask@@19 T@PolymorphicMapType_47183) (o_43@@3 T@Ref) (f_56@@2 T@Field_47222_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_27839_53 Mask@@19 o_43@@3 f_56@@2) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@7) o_43@@3 f_56@@2) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@6) o_43@@3 f_56@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@6) o_43@@3 f_56@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47162) (ExhaleHeap@@7 T@PolymorphicMapType_47162) (Mask@@20 T@PolymorphicMapType_47183) (o_43@@4 T@Ref) (f_56@@3 T@Field_53397_3522) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_27847_3522 Mask@@20 o_43@@4 f_56@@3) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@8) o_43@@4 f_56@@3) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@7) o_43@@4 f_56@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@7) o_43@@4 f_56@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47162) (ExhaleHeap@@8 T@PolymorphicMapType_47162) (Mask@@21 T@PolymorphicMapType_47183) (o_43@@5 T@Ref) (f_56@@4 T@Field_53283_53288) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_27839_54103 Mask@@21 o_43@@5 f_56@@4) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@9) o_43@@5 f_56@@4) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@8) o_43@@5 f_56@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@8) o_43@@5 f_56@@4))
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
(assert (forall ((Heap@@10 T@PolymorphicMapType_47162) (ExhaleHeap@@9 T@PolymorphicMapType_47162) (Mask@@22 T@PolymorphicMapType_47183) (pm_f_21@@1 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_27839_159603 Mask@@22 null pm_f_21@@1) (IsPredicateField_27839_159630 pm_f_21@@1)) (and (and (and (and (and (forall ((o2_21 T@Ref) (f_56@@5 T@Field_47222_53) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21 f_56@@5) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@10) o2_21 f_56@@5) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21 f_56@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21 f_56@@5))
)) (forall ((o2_21@@0 T@Ref) (f_56@@6 T@Field_47235_47236) ) (!  (=> (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21@@0 f_56@@6) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@10) o2_21@@0 f_56@@6) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@0 f_56@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@0 f_56@@6))
))) (forall ((o2_21@@1 T@Ref) (f_56@@7 T@Field_53283_53288) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21@@1 f_56@@7) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@10) o2_21@@1 f_56@@7) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@1 f_56@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@1 f_56@@7))
))) (forall ((o2_21@@2 T@Ref) (f_56@@8 T@Field_53397_3522) ) (!  (=> (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21@@2 f_56@@8) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@10) o2_21@@2 f_56@@8) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@2 f_56@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@2 f_56@@8))
))) (forall ((o2_21@@3 T@Ref) (f_56@@9 T@Field_27839_159539) ) (!  (=> (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21@@3 f_56@@9) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@10) o2_21@@3 f_56@@9) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@3 f_56@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@3 f_56@@9))
))) (forall ((o2_21@@4 T@Ref) (f_56@@10 T@Field_27839_159672) ) (!  (=> (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) null (PredicateMaskField_27839 pm_f_21@@1))) o2_21@@4 f_56@@10) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@10) o2_21@@4 f_56@@10) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@4 f_56@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@9) o2_21@@4 f_56@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_27839_159630 pm_f_21@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47162) (ExhaleHeap@@10 T@PolymorphicMapType_47162) (Mask@@23 T@PolymorphicMapType_47183) (pm_f_21@@2 T@Field_27839_159539) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_27839_159603 Mask@@23 null pm_f_21@@2) (IsWandField_27839_161581 pm_f_21@@2)) (and (and (and (and (and (forall ((o2_21@@5 T@Ref) (f_56@@11 T@Field_47222_53) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@5 f_56@@11) (= (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@11) o2_21@@5 f_56@@11) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@5 f_56@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@5 f_56@@11))
)) (forall ((o2_21@@6 T@Ref) (f_56@@12 T@Field_47235_47236) ) (!  (=> (select (|PolymorphicMapType_47711_47222_47236#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@6 f_56@@12) (= (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@11) o2_21@@6 f_56@@12) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@6 f_56@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@6 f_56@@12))
))) (forall ((o2_21@@7 T@Ref) (f_56@@13 T@Field_53283_53288) ) (!  (=> (select (|PolymorphicMapType_47711_47222_53288#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@7 f_56@@13) (= (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@11) o2_21@@7 f_56@@13) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@7 f_56@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@7 f_56@@13))
))) (forall ((o2_21@@8 T@Ref) (f_56@@14 T@Field_53397_3522) ) (!  (=> (select (|PolymorphicMapType_47711_47222_3522#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@8 f_56@@14) (= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@11) o2_21@@8 f_56@@14) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@8 f_56@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@8 f_56@@14))
))) (forall ((o2_21@@9 T@Ref) (f_56@@15 T@Field_27839_159539) ) (!  (=> (select (|PolymorphicMapType_47711_47222_159539#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@9 f_56@@15) (= (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@11) o2_21@@9 f_56@@15) (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@9 f_56@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@9 f_56@@15))
))) (forall ((o2_21@@10 T@Ref) (f_56@@16 T@Field_27839_159672) ) (!  (=> (select (|PolymorphicMapType_47711_47222_161054#PolymorphicMapType_47711| (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) null (WandMaskField_27839 pm_f_21@@2))) o2_21@@10 f_56@@16) (= (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@11) o2_21@@10 f_56@@16) (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@10 f_56@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| ExhaleHeap@@10) o2_21@@10 f_56@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_27839_161581 pm_f_21@@2))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_47162) (o_11 T@Ref) (f_57 T@Field_27839_159539) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@12) (store (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@12) o_11 f_57 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@12) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@12) (store (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@12) o_11 f_57 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47162) (o_11@@0 T@Ref) (f_57@@0 T@Field_27839_159672) (v@@5 T@PolymorphicMapType_47711) ) (! (succHeap Heap@@13 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@13) (store (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@13) o_11@@0 f_57@@0 v@@5) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@13) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@13) (store (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@13) o_11@@0 f_57@@0 v@@5) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47162) (o_11@@1 T@Ref) (f_57@@1 T@Field_53397_3522) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@14) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@14) o_11@@1 f_57@@1 v@@6) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@14) (store (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@14) o_11@@1 f_57@@1 v@@6) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@14) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47162) (o_11@@2 T@Ref) (f_57@@2 T@Field_53283_53288) (v@@7 T@Seq_53286) ) (! (succHeap Heap@@15 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@15) (store (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@15) o_11@@2 f_57@@2 v@@7) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@15) (store (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@15) o_11@@2 f_57@@2 v@@7) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@15) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47162) (o_11@@3 T@Ref) (f_57@@3 T@Field_47235_47236) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@16) (store (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@16) o_11@@3 f_57@@3 v@@8) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@16) (store (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@16) o_11@@3 f_57@@3 v@@8) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@16) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47162) (o_11@@4 T@Ref) (f_57@@4 T@Field_47222_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_47162 (store (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@17) o_11@@4 f_57@@4 v@@9) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47162 (store (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@17) o_11@@4 f_57@@4 v@@9) (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_27839_159716#PolymorphicMapType_47162| Heap@@17) (|PolymorphicMapType_47162_47222_159539#PolymorphicMapType_47162| Heap@@17)))
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
(assert (forall ((o_11@@5 T@Ref) (f_17 T@Field_47235_47236) (Heap@@18 T@PolymorphicMapType_47162) ) (!  (=> (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@18) o_11@@5 $allocated) (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@18) (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@18) o_11@@5 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47162_27612_27613#PolymorphicMapType_47162| Heap@@18) o_11@@5 f_17))
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
(declare-fun i_66 () Int)
(declare-fun half () Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_47183)
(declare-fun this () T@Ref)
(declare-fun Heap@@19 () T@PolymorphicMapType_47162)
(declare-fun i_67 () Int)
(declare-fun gsize () Int)
(declare-fun i_69 () Int)
(declare-fun PostMask@5 () T@PolymorphicMapType_47183)
(declare-fun PostHeap@0 () T@PolymorphicMapType_47162)
(declare-fun i_70 () Int)
(declare-fun tid () Int)
(declare-fun PostMask@3 () T@PolymorphicMapType_47183)
(declare-fun PostMask@4 () T@PolymorphicMapType_47183)
(declare-fun QPMask@3 () T@PolymorphicMapType_47183)
(declare-fun PostMask@2 () T@PolymorphicMapType_47183)
(declare-fun qpRange20 (T@Ref) Bool)
(declare-fun invRecv20 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_47183)
(declare-fun i_68 () Int)
(declare-fun ix_22 () Int)
(declare-fun jx_22 () Int)
(declare-fun tcount () Int)
(declare-fun lid () Int)
(declare-fun gid () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_47183)
(declare-fun wildcard@3 () Real)
(declare-fun i_13_1 () Int)
(declare-fun i_15_1 () Int)
(declare-fun Mask@6 () T@PolymorphicMapType_47183)
(declare-fun Mask@5 () T@PolymorphicMapType_47183)
(declare-fun Mask@7 () T@PolymorphicMapType_47183)
(declare-fun Mask@4 () T@PolymorphicMapType_47183)
(declare-fun QPMask@2 () T@PolymorphicMapType_47183)
(declare-fun dummyFunction_3522 (Int) Bool)
(declare-fun neverTriggered21 (Int) Bool)
(declare-fun Mask@3 () T@PolymorphicMapType_47183)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) Int)
(declare-fun ix_6_1 () Int)
(declare-fun jx_6_1 () Int)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_47183)
(declare-fun wildcard@5 () Real)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_47183)
(declare-fun _x_tid_8 () Int)
(declare-fun ix_21 () Int)
(declare-fun jx_21 () Int)
(declare-fun qpRange18 (T@Ref) Bool)
(declare-fun invRecv18 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_47183)
(declare-fun i_55 () Int)
(declare-fun ix_20 () Int)
(declare-fun jx_20 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_47183)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id main_post_check_1)
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
 (=> (= (ControlFlow 0 0) 208) (let ((anon28_correct true))
(let ((anon107_Else_correct  (=> (and (not (and (<= 0 i_66) (< i_66 half))) (= (ControlFlow 0 196) 187)) anon28_correct)))
(let ((anon107_Then_correct  (=> (and (<= 0 i_66) (< i_66 half)) (and (=> (= (ControlFlow 0 188) (- 0 195)) (HasDirectPerm_27839_54103 QPMask@1 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@1 this dst) (and (=> (= (ControlFlow 0 188) (- 0 194)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 188) (- 0 193)) (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value)) (=> (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) (and (=> (= (ControlFlow 0 188) (- 0 192)) (HasDirectPerm_27839_54103 QPMask@1 this src)) (=> (HasDirectPerm_27839_54103 QPMask@1 this src) (and (=> (= (ControlFlow 0 188) (- 0 191)) (>= i_66 0)) (=> (>= i_66 0) (and (=> (= (ControlFlow 0 188) (- 0 190)) (< i_66 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< i_66 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 188) (- 0 189)) (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_66) Integer_value)) (=> (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_66) Integer_value) (=> (= (ControlFlow 0 188) 187) anon28_correct))))))))))))))))))
(let ((anon34_correct true))
(let ((anon110_Else_correct  (=> (and (not (and (<= half i_67) (< i_67 gsize))) (= (ControlFlow 0 182) 173)) anon34_correct)))
(let ((anon110_Then_correct  (=> (and (<= half i_67) (< i_67 gsize)) (and (=> (= (ControlFlow 0 174) (- 0 181)) (HasDirectPerm_27839_54103 QPMask@1 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@1 this dst) (and (=> (= (ControlFlow 0 174) (- 0 180)) (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 174) (- 0 179)) (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value)) (=> (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) (and (=> (= (ControlFlow 0 174) (- 0 178)) (HasDirectPerm_27839_54103 QPMask@1 this src)) (=> (HasDirectPerm_27839_54103 QPMask@1 this src) (and (=> (= (ControlFlow 0 174) (- 0 177)) (>= i_67 0)) (=> (>= i_67 0) (and (=> (= (ControlFlow 0 174) (- 0 176)) (< i_67 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< i_67 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 174) (- 0 175)) (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_67) Integer_value)) (=> (HasDirectPerm_27847_3522 QPMask@1 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_67) Integer_value) (=> (= (ControlFlow 0 174) 173) anon34_correct))))))))))))))))))
(let ((anon57_correct true))
(let ((anon123_Else_correct  (=> (and (not (and (<= 0 i_69) (< i_69 half))) (= (ControlFlow 0 147) 138)) anon57_correct)))
(let ((anon123_Then_correct  (=> (and (<= 0 i_69) (< i_69 half)) (and (=> (= (ControlFlow 0 139) (- 0 146)) (HasDirectPerm_27839_54103 PostMask@5 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@5 this dst) (and (=> (= (ControlFlow 0 139) (- 0 145)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (and (=> (= (ControlFlow 0 139) (- 0 144)) (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) (and (=> (= (ControlFlow 0 139) (- 0 143)) (HasDirectPerm_27839_54103 PostMask@5 this src)) (=> (HasDirectPerm_27839_54103 PostMask@5 this src) (and (=> (= (ControlFlow 0 139) (- 0 142)) (>= i_69 0)) (=> (>= i_69 0) (and (=> (= (ControlFlow 0 139) (- 0 141)) (< i_69 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< i_69 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 139) (- 0 140)) (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_69) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_69) Integer_value) (=> (= (ControlFlow 0 139) 138) anon57_correct))))))))))))))))))
(let ((anon63_correct true))
(let ((anon126_Else_correct  (=> (and (not (and (<= half i_70) (< i_70 gsize))) (= (ControlFlow 0 133) 124)) anon63_correct)))
(let ((anon126_Then_correct  (=> (and (<= half i_70) (< i_70 gsize)) (and (=> (= (ControlFlow 0 125) (- 0 132)) (HasDirectPerm_27839_54103 PostMask@5 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@5 this dst) (and (=> (= (ControlFlow 0 125) (- 0 131)) (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (and (=> (= (ControlFlow 0 125) (- 0 130)) (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) Integer_value) (and (=> (= (ControlFlow 0 125) (- 0 129)) (HasDirectPerm_27839_54103 PostMask@5 this src)) (=> (HasDirectPerm_27839_54103 PostMask@5 this src) (and (=> (= (ControlFlow 0 125) (- 0 128)) (>= i_70 0)) (=> (>= i_70 0) (and (=> (= (ControlFlow 0 125) (- 0 127)) (< i_70 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< i_70 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 125) (- 0 126)) (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_70) Integer_value)) (=> (HasDirectPerm_27847_3522 PostMask@5 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_70) Integer_value) (=> (= (ControlFlow 0 125) 124) anon63_correct))))))))))))))))))
(let ((anon65_correct true))
(let ((anon125_Else_correct  (=> (and (forall ((i_11_1 Int) ) (!  (=> (and (<= half i_11_1) (< i_11_1 gsize)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_11_1) Integer_value)))
 :qid |stdinbpl.4150:22|
 :skolemid |238|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_11_1))
)) (= (ControlFlow 0 123) 121)) anon65_correct)))
(let ((anon124_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 134) 123) anon125_Else_correct) (=> (= (ControlFlow 0 134) 125) anon126_Then_correct)) (=> (= (ControlFlow 0 134) 133) anon126_Else_correct)))))
(let ((anon124_Else_correct  (=> (and (not (= tid 0)) (= (ControlFlow 0 122) 121)) anon65_correct)))
(let ((anon59_correct  (=> (state PostHeap@0 PostMask@5) (and (=> (= (ControlFlow 0 135) 134) anon124_Then_correct) (=> (= (ControlFlow 0 135) 122) anon124_Else_correct)))))
(let ((anon122_Else_correct  (=> (and (forall ((i_9_1 Int) ) (!  (=> (and (<= 0 i_9_1) (< i_9_1 half)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| PostHeap@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_9_1) Integer_value)))
 :qid |stdinbpl.4122:22|
 :skolemid |237|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_9_1))
)) (= (ControlFlow 0 137) 135)) anon59_correct)))
(let ((anon121_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 148) 137) anon122_Else_correct) (=> (= (ControlFlow 0 148) 139) anon123_Then_correct)) (=> (= (ControlFlow 0 148) 147) anon123_Else_correct)))))
(let ((anon121_Else_correct  (=> (and (not (= tid 0)) (= (ControlFlow 0 136) 135)) anon59_correct)))
(let ((anon53_correct  (=> (state PostHeap@0 PostMask@5) (and (=> (= (ControlFlow 0 149) 148) anon121_Then_correct) (=> (= (ControlFlow 0 149) 136) anon121_Else_correct)))))
(let ((anon120_Else_correct  (=> (not (= tid 0)) (=> (and (= PostMask@5 PostMask@3) (= (ControlFlow 0 153) 149)) anon53_correct))))
(let ((anon120_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 150) (- 0 152)) (HasDirectPerm_27839_54103 PostMask@3 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@3 this dst) (and (=> (= (ControlFlow 0 150) (- 0 151)) (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) null)) (=> (and (and (= PostMask@4 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@3) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@3) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@3) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@3) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@3))) (state PostHeap@0 PostMask@4)) (and (= PostMask@5 PostMask@4) (= (ControlFlow 0 150) 149))) anon53_correct)))))))))
(let ((anon51_correct  (=> (state PostHeap@0 PostMask@3) (and (=> (= (ControlFlow 0 154) 150) anon120_Then_correct) (=> (= (ControlFlow 0 154) 153) anon120_Else_correct)))))
(let ((anon119_Else_correct  (=> (not (= tid 0)) (=> (and (= PostMask@3 QPMask@3) (= (ControlFlow 0 158) 154)) anon51_correct))))
(let ((anon119_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 155) (- 0 157)) (HasDirectPerm_27839_54103 QPMask@3 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@3 this dst) (and (=> (= (ControlFlow 0 155) (- 0 156)) (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) null)) (=> (and (and (= PostMask@2 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3))) (state PostHeap@0 PostMask@2)) (and (= PostMask@3 PostMask@2) (= (ControlFlow 0 155) 154))) anon51_correct)))))))))
(let ((anon117_Else_correct  (and (=> (= (ControlFlow 0 159) (- 0 165)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_2))))
 :qid |stdinbpl.4019:15|
 :skolemid |230|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_2@@0))))
 :qid |stdinbpl.4019:15|
 :skolemid |230|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange20 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@1)) (= (invRecv20 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.4025:22|
 :skolemid |231|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv20 o_9)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange20 o_9)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (invRecv20 o_9)) o_9))
 :qid |stdinbpl.4029:22|
 :skolemid |232|
 :pattern ( (invRecv20 o_9))
))) (and (=> (= (ControlFlow 0 159) (- 0 164)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.4035:15|
 :skolemid |233|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@2))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.4035:15|
 :skolemid |233|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@3))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@4) null)))
 :qid |stdinbpl.4041:22|
 :skolemid |234|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) i_7_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv20 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange20 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (invRecv20 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_9@@0 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_9@@0 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv20 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange20 o_9@@0))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_9@@0 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_9@@0 Integer_value))))
 :qid |stdinbpl.4047:22|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_9@@0 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) o_9@@1 f_5)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@3) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) o_9@@2 f_5@@0)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@3) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) o_9@@3 f_5@@1)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@3) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_53397_3522) ) (!  (=> (not (= f_5@@2 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_9@@4 f_5@@2)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@3) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) o_9@@5 f_5@@3)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@3) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3) o_9@@6 f_5@@4)))
 :qid |stdinbpl.4051:29|
 :skolemid |236|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@3) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 159) (- 0 163)) (HasDirectPerm_27839_54103 QPMask@3 this src)) (=> (HasDirectPerm_27839_54103 QPMask@3 this src) (and (=> (= (ControlFlow 0 159) (- 0 162)) (HasDirectPerm_27839_54103 QPMask@1 this src)) (=> (HasDirectPerm_27839_54103 QPMask@1 this src) (=> (and (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) (state PostHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 159) (- 0 161)) (HasDirectPerm_27839_54103 QPMask@3 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@3 this dst) (and (=> (= (ControlFlow 0 159) (- 0 160)) (HasDirectPerm_27839_54103 QPMask@1 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@1 this dst) (=> (and (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) (state PostHeap@0 QPMask@3)) (and (=> (= (ControlFlow 0 159) 155) anon119_Then_correct) (=> (= (ControlFlow 0 159) 158) anon119_Else_correct)))))))))))))))))))))
(let ((anon48_correct true))
(let ((anon118_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_68)) (= (ControlFlow 0 120) 114)) anon48_correct)))
(let ((anon118_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_68) (and (=> (= (ControlFlow 0 115) (- 0 119)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 115) (- 0 118)) (>= i_68 0)) (=> (>= i_68 0) (and (=> (= (ControlFlow 0 115) (- 0 117)) (< i_68 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< i_68 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 115) (- 0 116)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 115) 114) anon48_correct))))))))))))
(let ((anon112_Else_correct  (=> (and (forall ((ix_5_2 Int) (jx_5_2 Int) ) (!  (=> (and (>= ix_5_2 0) (and (< ix_5_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_5_2 0) (and (< jx_5_2 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_5_2 jx_5_2)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) ix_5_2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) jx_5_2))))
 :qid |stdinbpl.3997:20|
 :skolemid |229|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) ix_5_2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src) jx_5_2))
)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 166) 159) anon117_Else_correct) (=> (= (ControlFlow 0 166) 115) anon118_Then_correct)) (=> (= (ControlFlow 0 166) 120) anon118_Else_correct)))))
(let ((anon44_correct true))
(let ((anon116_Else_correct  (=> (and (not (and (>= ix_22 0) (and (< ix_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_22 0) (and (< jx_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_22 jx_22))))))) (= (ControlFlow 0 105) 97)) anon44_correct)))
(let ((anon116_Then_correct  (=> (and (>= ix_22 0) (and (< ix_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (>= jx_22 0) (and (< jx_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (not (= ix_22 jx_22)))))) (and (=> (= (ControlFlow 0 98) (- 0 104)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 98) (- 0 103)) (>= ix_22 0)) (=> (>= ix_22 0) (and (=> (= (ControlFlow 0 98) (- 0 102)) (< ix_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< ix_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 98) (- 0 101)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 98) (- 0 100)) (>= jx_22 0)) (=> (>= jx_22 0) (and (=> (= (ControlFlow 0 98) (- 0 99)) (< jx_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)))) (=> (< jx_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (=> (= (ControlFlow 0 98) 97) anon44_correct))))))))))))))))
(let ((anon115_Else_correct  (=> (> 0 jx_22) (and (=> (= (ControlFlow 0 110) 98) anon116_Then_correct) (=> (= (ControlFlow 0 110) 105) anon116_Else_correct)))))
(let ((anon115_Then_correct  (=> (>= jx_22 0) (and (=> (= (ControlFlow 0 108) (- 0 109)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 108) 98) anon116_Then_correct) (=> (= (ControlFlow 0 108) 105) anon116_Else_correct)))))))
(let ((anon114_Then_correct  (=> (< ix_22 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 111) 108) anon115_Then_correct) (=> (= (ControlFlow 0 111) 110) anon115_Else_correct)))))
(let ((anon114_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)) ix_22) (and (=> (= (ControlFlow 0 107) 98) anon116_Then_correct) (=> (= (ControlFlow 0 107) 105) anon116_Else_correct)))))
(let ((anon113_Then_correct  (=> (>= ix_22 0) (and (=> (= (ControlFlow 0 112) (- 0 113)) (HasDirectPerm_27839_54103 PostMask@1 this src)) (=> (HasDirectPerm_27839_54103 PostMask@1 this src) (and (=> (= (ControlFlow 0 112) 111) anon114_Then_correct) (=> (= (ControlFlow 0 112) 107) anon114_Else_correct)))))))
(let ((anon113_Else_correct  (=> (> 0 ix_22) (and (=> (= (ControlFlow 0 106) 98) anon116_Then_correct) (=> (= (ControlFlow 0 106) 105) anon116_Else_correct)))))
(let ((anon111_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= this null)) (= PostMask@0 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src) wildcard@2)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 167) (- 0 169)) (HasDirectPerm_27839_54103 PostMask@0 this src)) (=> (HasDirectPerm_27839_54103 PostMask@0 this src) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this src)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= this null)) (= PostMask@1 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@0) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| PostMask@0) this dst) wildcard@3)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| PostMask@0) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 167) (- 0 168)) (HasDirectPerm_27839_54103 PostMask@1 this dst)) (=> (HasDirectPerm_27839_54103 PostMask@1 this dst) (=> (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| PostHeap@0) this dst)) gsize) (state PostHeap@0 PostMask@1)) (=> (and (and (<= 4 gsize) (state PostHeap@0 PostMask@1)) (and (= (mod gsize 4) 0) (state PostHeap@0 PostMask@1))) (and (and (=> (= (ControlFlow 0 167) 166) anon112_Else_correct) (=> (= (ControlFlow 0 167) 112) anon113_Then_correct)) (=> (= (ControlFlow 0 167) 106) anon113_Else_correct))))))))))))))
(let ((anon82_correct true))
(let ((anon135_Else_correct  (=> (and (not (and (<= 0 i_13_1) (< i_13_1 half))) (= (ControlFlow 0 65) 62)) anon82_correct)))
(let ((anon135_Then_correct  (=> (and (<= 0 i_13_1) (< i_13_1 half)) (and (=> (= (ControlFlow 0 63) (- 0 64)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_13_1) Integer_value))) (=> (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_13_1) Integer_value)) (=> (= (ControlFlow 0 63) 62) anon82_correct))))))
(let ((anon88_correct true))
(let ((anon138_Else_correct  (=> (and (not (and (<= half i_15_1) (< i_15_1 gsize))) (= (ControlFlow 0 58) 55)) anon88_correct)))
(let ((anon138_Then_correct  (=> (and (<= half i_15_1) (< i_15_1 gsize)) (and (=> (= (ControlFlow 0 56) (- 0 57)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_15_1) Integer_value))) (=> (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_15_1) Integer_value)) (=> (= (ControlFlow 0 56) 55) anon88_correct))))))
(let ((anon90_correct true))
(let ((anon137_Else_correct  (=> (and (forall ((i_16_1_1 Int) ) (!  (=> (and (<= half i_16_1_1) (< i_16_1_1 gsize)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_16_1_1) Integer_value)))
 :qid |stdinbpl.4288:22|
 :skolemid |248|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_16_1_1))
)) (= (ControlFlow 0 54) 52)) anon90_correct)))
(let ((anon136_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 59) 54) anon137_Else_correct) (=> (= (ControlFlow 0 59) 56) anon138_Then_correct)) (=> (= (ControlFlow 0 59) 58) anon138_Else_correct)))))
(let ((anon136_Else_correct  (=> (and (not (= tid 0)) (= (ControlFlow 0 53) 52)) anon90_correct)))
(let ((anon134_Else_correct  (=> (forall ((i_14_1_1 Int) ) (!  (=> (and (<= 0 i_14_1_1) (< i_14_1_1 half)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_14_1_1) Integer_value)))
 :qid |stdinbpl.4275:22|
 :skolemid |247|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_14_1_1))
)) (and (=> (= (ControlFlow 0 61) 59) anon136_Then_correct) (=> (= (ControlFlow 0 61) 53) anon136_Else_correct)))))
(let ((anon133_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 66) 61) anon134_Else_correct) (=> (= (ControlFlow 0 66) 63) anon135_Then_correct)) (=> (= (ControlFlow 0 66) 65) anon135_Else_correct)))))
(let ((anon133_Else_correct  (=> (not (= tid 0)) (and (=> (= (ControlFlow 0 60) 59) anon136_Then_correct) (=> (= (ControlFlow 0 60) 53) anon136_Else_correct)))))
(let ((anon77_correct  (=> (and (= Mask@6 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@5) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@5) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@5) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@5) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@5))) (= Mask@7 Mask@6)) (and (=> (= (ControlFlow 0 68) 66) anon133_Then_correct) (=> (= (ControlFlow 0 68) 60) anon133_Else_correct)))))
(let ((anon132_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 71) 68)) anon77_correct)))
(let ((anon132_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 69) (- 0 70)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@5) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value)) (=> (= (ControlFlow 0 69) 68) anon77_correct))))))
(let ((anon131_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 72) 69) anon132_Then_correct) (=> (= (ControlFlow 0 72) 71) anon132_Else_correct)))))
(let ((anon131_Else_correct  (=> (and (not (= tid 0)) (= Mask@7 Mask@5)) (and (=> (= (ControlFlow 0 67) 66) anon133_Then_correct) (=> (= (ControlFlow 0 67) 60) anon133_Else_correct)))))
(let ((anon73_correct  (=> (and (= Mask@4 (PolymorphicMapType_47183 (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) (store (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2))) (= Mask@5 Mask@4)) (and (=> (= (ControlFlow 0 74) 72) anon131_Then_correct) (=> (= (ControlFlow 0 74) 67) anon131_Else_correct)))))
(let ((anon130_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 77) 74)) anon73_correct)))
(let ((anon130_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 75) (- 0 76)) (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value)) (=> (= (ControlFlow 0 75) 74) anon73_correct))))))
(let ((anon129_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 78) 75) anon130_Then_correct) (=> (= (ControlFlow 0 78) 77) anon130_Else_correct)))))
(let ((anon129_Else_correct  (=> (and (not (= tid 0)) (= Mask@5 QPMask@2)) (and (=> (= (ControlFlow 0 73) 72) anon131_Then_correct) (=> (= (ControlFlow 0 73) 67) anon131_Else_correct)))))
(let ((anon127_Else_correct  (=> (forall ((ix_7_1 Int) (jx_7_1 Int) ) (!  (=> (and (>= ix_7_1 0) (and (< ix_7_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_7_1 0) (and (< jx_7_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_7_1 jx_7_1)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_7_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_7_1))))
 :qid |stdinbpl.4198:20|
 :skolemid |239|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_7_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_7_1))
)) (and (=> (= (ControlFlow 0 79) (- 0 84)) (forall ((i_12_1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.4206:17|
 :skolemid |240|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_12_1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1))
))) (=> (forall ((i_12_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@0) (dummyFunction_3522 (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.4206:17|
 :skolemid |240|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_12_1@@0))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@0))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@0))
)) (and (=> (= (ControlFlow 0 79) (- 0 83)) (forall ((i_12_1@@1 Int) (i_12_2 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@1 i_12_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_2))))
 :qid |stdinbpl.4213:17|
 :skolemid |241|
 :pattern ( (neverTriggered21 i_12_1@@1) (neverTriggered21 i_12_2))
))) (=> (forall ((i_12_1@@2 Int) (i_12_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_12_1@@2 i_12_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@2) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_2@@0))))
 :qid |stdinbpl.4213:17|
 :skolemid |241|
 :pattern ( (neverTriggered21 i_12_1@@2) (neverTriggered21 i_12_2@@0))
)) (and (=> (= (ControlFlow 0 79) (- 0 82)) (forall ((i_12_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@3) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@3) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.4220:17|
 :skolemid |242|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_12_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@3))
))) (=> (forall ((i_12_1@@4 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@4) (>= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@4) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.4220:17|
 :skolemid |242|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_12_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@4))
)) (=> (forall ((i_12_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@5) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange21 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@5)) (= (invRecv21 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@5)) i_12_1@@5)))
 :qid |stdinbpl.4226:22|
 :skolemid |243|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_12_1@@5))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_12_1@@5))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_12_1@@5))
)) (=> (and (forall ((o_9@@7 T@Ref) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv21 o_9@@7)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange21 o_9@@7))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv21 o_9@@7)) o_9@@7))
 :qid |stdinbpl.4230:22|
 :skolemid |244|
 :pattern ( (invRecv21 o_9@@7))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv21 o_9@@8)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange21 o_9@@8))) (and (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv21 o_9@@8)) o_9@@8) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_9@@8 Integer_value) (- (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) o_9@@8 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv21 o_9@@8)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange21 o_9@@8)))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_9@@8 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) o_9@@8 Integer_value))))
 :qid |stdinbpl.4236:22|
 :skolemid |245|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_9@@8 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@3) o_9@@9 f_5@@5) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@2) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@3) o_9@@10 f_5@@6) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@3) o_9@@11 f_5@@7) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_53397_3522) ) (!  (=> (not (= f_5@@8 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@3) o_9@@12 f_5@@8) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@2) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@3) o_9@@13 f_5@@9) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) o_9@@13 f_5@@9)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@2) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@3) o_9@@14 f_5@@10) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2) o_9@@14 f_5@@10)))
 :qid |stdinbpl.4242:29|
 :skolemid |246|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@2) o_9@@14 f_5@@10))
))) (and (=> (= (ControlFlow 0 79) (- 0 81)) (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (=> (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) (and (=> (= (ControlFlow 0 79) (- 0 80)) (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (=> (|Seq#Equal_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) (and (=> (= (ControlFlow 0 79) 78) anon129_Then_correct) (=> (= (ControlFlow 0 79) 73) anon129_Else_correct))))))))))))))))))
(let ((anon69_correct true))
(let ((anon128_Else_correct  (=> (and (not (and (>= ix_6_1 0) (and (< ix_6_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_6_1 0) (and (< jx_6_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_6_1 jx_6_1))))))) (= (ControlFlow 0 51) 48)) anon69_correct)))
(let ((anon128_Then_correct  (=> (and (>= ix_6_1 0) (and (< ix_6_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_6_1 0) (and (< jx_6_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_6_1 jx_6_1)))))) (and (=> (= (ControlFlow 0 49) (- 0 50)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_6_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_6_1)))) (=> (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_6_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_6_1))) (=> (= (ControlFlow 0 49) 48) anon69_correct))))))
(let ((anon111_Else_correct  (and (=> (= (ControlFlow 0 85) (- 0 96)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 85) (- 0 95)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 85) (- 0 94)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 85) (- 0 93)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 85) (- 0 92)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 85) (- 0 91)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) this src) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) this src) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) this src)) (= Mask@2 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) this src (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) this src) wildcard@4)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1)))) (and (=> (= (ControlFlow 0 85) (- 0 90)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) gsize) (and (=> (= (ControlFlow 0 85) (- 0 89)) (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this dst) NoPerm)) (=> (> (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this dst) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this dst)) (= Mask@3 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this dst (- (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@2) this dst) wildcard@5)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@2) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@2)))) (and (=> (= (ControlFlow 0 85) (- 0 88)) (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) gsize)) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) gsize) (and (=> (= (ControlFlow 0 85) (- 0 87)) (<= 4 gsize)) (=> (<= 4 gsize) (and (=> (= (ControlFlow 0 85) (- 0 86)) (= (mod gsize 4) 0)) (=> (= (mod gsize 4) 0) (and (and (=> (= (ControlFlow 0 85) 79) anon127_Else_correct) (=> (= (ControlFlow 0 85) 49) anon128_Then_correct)) (=> (= (ControlFlow 0 85) 51) anon128_Else_correct))))))))))))))))))))))))))))))
(let ((anon36_correct  (=> (state Heap@@19 QPMask@1) (and (=> (= (ControlFlow 0 170) 167) anon111_Then_correct) (=> (= (ControlFlow 0 170) 85) anon111_Else_correct)))))
(let ((anon109_Else_correct  (=> (and (forall ((i_5_1 Int) ) (!  (=> (and (<= half i_5_1) (< i_5_1 gsize)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 1) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_5_1) Integer_value)))
 :qid |stdinbpl.3913:22|
 :skolemid |228|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_5_1))
)) (= (ControlFlow 0 172) 170)) anon36_correct)))
(let ((anon108_Then_correct  (=> (< 1 gsize) (and (and (=> (= (ControlFlow 0 183) 172) anon109_Else_correct) (=> (= (ControlFlow 0 183) 174) anon110_Then_correct)) (=> (= (ControlFlow 0 183) 182) anon110_Else_correct)))))
(let ((anon108_Else_correct  (=> (and (<= gsize 1) (= (ControlFlow 0 171) 170)) anon36_correct)))
(let ((anon30_correct  (=> (state Heap@@19 QPMask@1) (and (=> (= (ControlFlow 0 184) 183) anon108_Then_correct) (=> (= (ControlFlow 0 184) 171) anon108_Else_correct)))))
(let ((anon106_Else_correct  (=> (and (forall ((i_3_2 Int) ) (!  (=> (and (<= 0 i_3_2) (< i_3_2 half)) (>= (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) 0) Integer_value) (select (|PolymorphicMapType_47162_27847_3522#PolymorphicMapType_47162| Heap@@19) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_3_2) Integer_value)))
 :qid |stdinbpl.3885:22|
 :skolemid |227|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_3_2))
)) (= (ControlFlow 0 186) 184)) anon30_correct)))
(let ((anon105_Then_correct  (=> (< 0 gsize) (and (and (=> (= (ControlFlow 0 197) 186) anon106_Else_correct) (=> (= (ControlFlow 0 197) 188) anon107_Then_correct)) (=> (= (ControlFlow 0 197) 196) anon107_Else_correct)))))
(let ((anon105_Else_correct  (=> (and (<= gsize 0) (= (ControlFlow 0 185) 184)) anon30_correct)))
(let ((anon103_Else_correct  (and (=> (= (ControlFlow 0 198) (- 0 199)) (forall ((_x_tid_1 Int) (_x_tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_1 _x_tid_1_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1_1))))
 :qid |stdinbpl.3828:15|
 :skolemid |221|
))) (=> (forall ((_x_tid_1@@0 Int) (_x_tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= _x_tid_1@@0 _x_tid_1_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1_1@@0))))
 :qid |stdinbpl.3828:15|
 :skolemid |221|
)) (=> (and (and (forall ((_x_tid_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1@@1) (< NoPerm FullPerm)) (and (qpRange19 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@1)) (= (invRecv19 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@1)) _x_tid_1@@1)))
 :qid |stdinbpl.3834:22|
 :skolemid |222|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) _x_tid_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv19 o_9@@15)) (< NoPerm FullPerm)) (qpRange19 o_9@@15)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) (invRecv19 o_9@@15)) o_9@@15))
 :qid |stdinbpl.3838:22|
 :skolemid |223|
 :pattern ( (invRecv19 o_9@@15))
))) (and (forall ((_x_tid_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1@@2) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@2) null)))
 :qid |stdinbpl.3844:22|
 :skolemid |224|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) _x_tid_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) _x_tid_1@@2))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv19 o_9@@16)) (< NoPerm FullPerm)) (qpRange19 o_9@@16)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) (invRecv19 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_9@@16 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@16 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv19 o_9@@16)) (< NoPerm FullPerm)) (qpRange19 o_9@@16))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_9@@16 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@16 Integer_value))))
 :qid |stdinbpl.3850:22|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_9@@16 Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@1) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@1) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_53397_3522) ) (!  (=> (not (= f_5@@14 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@20 f_5@@14) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_9@@20 f_5@@14)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@1) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_9@@21 f_5@@15) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) o_9@@21 f_5@@15)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@1) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_9@@22 f_5@@16) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1) o_9@@22 f_5@@16)))
 :qid |stdinbpl.3854:29|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@1) o_9@@22 f_5@@16))
))) (and (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1)) (and (= (+ half half) gsize) (state Heap@@19 QPMask@1)))) (and (=> (= (ControlFlow 0 198) 197) anon105_Then_correct) (=> (= (ControlFlow 0 198) 185) anon105_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon104_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_8)) (= (ControlFlow 0 47) 42)) anon23_correct)))
(let ((anon104_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) _x_tid_8) (and (=> (= (ControlFlow 0 43) (- 0 46)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 43) (- 0 45)) (>= _x_tid_8 0)) (=> (>= _x_tid_8 0) (and (=> (= (ControlFlow 0 43) (- 0 44)) (< _x_tid_8 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< _x_tid_8 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (=> (= (ControlFlow 0 43) 42) anon23_correct))))))))))
(let ((anon98_Else_correct  (=> (and (forall ((ix_3 Int) (jx_3 Int) ) (!  (=> (and (>= ix_3 0) (and (< ix_3 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (>= jx_3 0) (and (< jx_3 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (not (= ix_3 jx_3)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) ix_3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) jx_3))))
 :qid |stdinbpl.3808:20|
 :skolemid |220|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) ix_3) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst) jx_3))
)) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 200) 198) anon103_Else_correct) (=> (= (ControlFlow 0 200) 43) anon104_Then_correct)) (=> (= (ControlFlow 0 200) 47) anon104_Else_correct)))))
(let ((anon19_correct true))
(let ((anon102_Else_correct  (=> (and (not (and (>= ix_21 0) (and (< ix_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (>= jx_21 0) (and (< jx_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (not (= ix_21 jx_21))))))) (= (ControlFlow 0 33) 25)) anon19_correct)))
(let ((anon102_Then_correct  (=> (and (>= ix_21 0) (and (< ix_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (>= jx_21 0) (and (< jx_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (not (= ix_21 jx_21)))))) (and (=> (= (ControlFlow 0 26) (- 0 32)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 26) (- 0 31)) (>= ix_21 0)) (=> (>= ix_21 0) (and (=> (= (ControlFlow 0 26) (- 0 30)) (< ix_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< ix_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 26) (- 0 29)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 26) (- 0 28)) (>= jx_21 0)) (=> (>= jx_21 0) (and (=> (= (ControlFlow 0 26) (- 0 27)) (< jx_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)))) (=> (< jx_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (=> (= (ControlFlow 0 26) 25) anon19_correct))))))))))))))))
(let ((anon101_Else_correct  (=> (> 0 jx_21) (and (=> (= (ControlFlow 0 38) 26) anon102_Then_correct) (=> (= (ControlFlow 0 38) 33) anon102_Else_correct)))))
(let ((anon101_Then_correct  (=> (>= jx_21 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 36) 26) anon102_Then_correct) (=> (= (ControlFlow 0 36) 33) anon102_Else_correct)))))))
(let ((anon100_Then_correct  (=> (< ix_21 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 39) 36) anon101_Then_correct) (=> (= (ControlFlow 0 39) 38) anon101_Else_correct)))))
(let ((anon100_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) ix_21) (and (=> (= (ControlFlow 0 35) 26) anon102_Then_correct) (=> (= (ControlFlow 0 35) 33) anon102_Else_correct)))))
(let ((anon99_Then_correct  (=> (>= ix_21 0) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_27839_54103 QPMask@0 this dst)) (=> (HasDirectPerm_27839_54103 QPMask@0 this dst) (and (=> (= (ControlFlow 0 40) 39) anon100_Then_correct) (=> (= (ControlFlow 0 40) 35) anon100_Else_correct)))))))
(let ((anon99_Else_correct  (=> (> 0 ix_21) (and (=> (= (ControlFlow 0 34) 26) anon102_Then_correct) (=> (= (ControlFlow 0 34) 33) anon102_Else_correct)))))
(let ((anon96_Else_correct  (and (=> (= (ControlFlow 0 201) (- 0 203)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1_1)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1_1))))
 :qid |stdinbpl.3740:15|
 :skolemid |213|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1_1@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@0) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1_1@@0))))
 :qid |stdinbpl.3740:15|
 :skolemid |213|
)) (=> (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange18 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1)) (= (invRecv18 (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1)) i_1@@1)))
 :qid |stdinbpl.3746:22|
 :skolemid |214|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@1))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv18 o_9@@23)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange18 o_9@@23)) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv18 o_9@@23)) o_9@@23))
 :qid |stdinbpl.3750:22|
 :skolemid |215|
 :pattern ( (invRecv18 o_9@@23))
))) (and (=> (= (ControlFlow 0 201) (- 0 202)) (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3756:15|
 :skolemid |216|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@2))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@2))
))) (=> (forall ((i_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3756:15|
 :skolemid |216|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@3))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@3))
)) (=> (and (forall ((i_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4) null)))
 :qid |stdinbpl.3762:22|
 :skolemid |217|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_1@@4))
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) i_1@@4))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv18 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange18 o_9@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) (invRecv18 o_9@@24)) o_9@@24)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@24 Integer_value) (+ (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_9@@24 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv18 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange18 o_9@@24))) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@24 Integer_value) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_9@@24 Integer_value))))
 :qid |stdinbpl.3768:22|
 :skolemid |218|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@24 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_47222_53) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@1) o_9@@25 f_5@@17) (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_9@@25 f_5@@17)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@1) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| QPMask@0) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_47235_47236) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@1) o_9@@26 f_5@@18) (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_9@@26 f_5@@18)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@1) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| QPMask@0) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_53283_53288) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@1) o_9@@27 f_5@@19) (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_9@@27 f_5@@19)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@1) o_9@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| QPMask@0) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_53397_3522) ) (!  (=> (not (= f_5@@20 Integer_value)) (= (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_9@@28 f_5@@20) (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@28 f_5@@20)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@1) o_9@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| QPMask@0) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_27839_159539) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@1) o_9@@29 f_5@@21) (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_9@@29 f_5@@21)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@1) o_9@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| QPMask@0) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_27839_159672) ) (!  (=> true (= (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@1) o_9@@30 f_5@@22) (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_9@@30 f_5@@22)))
 :qid |stdinbpl.3772:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@1) o_9@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| QPMask@0) o_9@@30 f_5@@22))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 201) 200) anon98_Else_correct) (=> (= (ControlFlow 0 201) 40) anon99_Then_correct)) (=> (= (ControlFlow 0 201) 34) anon99_Else_correct)))))))))))
(let ((anon11_correct true))
(let ((anon97_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_55)) (= (ControlFlow 0 24) 18)) anon11_correct)))
(let ((anon97_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_55) (and (=> (= (ControlFlow 0 19) (- 0 23)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 19) (- 0 22)) (>= i_55 0)) (=> (>= i_55 0) (and (=> (= (ControlFlow 0 19) (- 0 21)) (< i_55 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< i_55 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 19) (- 0 20)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 19) 18) anon11_correct))))))))))))
(let ((anon91_Else_correct  (=> (and (forall ((ix_1 Int) (jx_1 Int) ) (!  (=> (and (>= ix_1 0) (and (< ix_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_1 0) (and (< jx_1 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_1 jx_1)))))) (not (= (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_1))))
 :qid |stdinbpl.3718:20|
 :skolemid |212|
 :pattern ( (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) ix_1) (|Seq#Index_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src) jx_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 204) 201) anon96_Else_correct) (=> (= (ControlFlow 0 204) 19) anon97_Then_correct)) (=> (= (ControlFlow 0 204) 24) anon97_Else_correct)))))
(let ((anon7_correct true))
(let ((anon95_Else_correct  (=> (and (not (and (>= ix_20 0) (and (< ix_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_20 0) (and (< jx_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_20 jx_20))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon95_Then_correct  (=> (and (>= ix_20 0) (and (< ix_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (>= jx_20 0) (and (< jx_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (not (= ix_20 jx_20)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= ix_20 0)) (=> (>= ix_20 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< ix_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< ix_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= jx_20 0)) (=> (>= jx_20 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< jx_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)))) (=> (< jx_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon94_Else_correct  (=> (> 0 jx_20) (and (=> (= (ControlFlow 0 14) 2) anon95_Then_correct) (=> (= (ControlFlow 0 14) 9) anon95_Else_correct)))))
(let ((anon94_Then_correct  (=> (>= jx_20 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 12) 2) anon95_Then_correct) (=> (= (ControlFlow 0 12) 9) anon95_Else_correct)))))))
(let ((anon93_Then_correct  (=> (< ix_20 (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src))) (and (=> (= (ControlFlow 0 15) 12) anon94_Then_correct) (=> (= (ControlFlow 0 15) 14) anon94_Else_correct)))))
(let ((anon93_Else_correct  (=> (<= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) ix_20) (and (=> (= (ControlFlow 0 11) 2) anon95_Then_correct) (=> (= (ControlFlow 0 11) 9) anon95_Else_correct)))))
(let ((anon92_Then_correct  (=> (>= ix_20 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_27839_54103 Mask@1 this src)) (=> (HasDirectPerm_27839_54103 Mask@1 this src) (and (=> (= (ControlFlow 0 16) 15) anon93_Then_correct) (=> (= (ControlFlow 0 16) 11) anon93_Else_correct)))))))
(let ((anon92_Else_correct  (=> (> 0 ix_20) (and (=> (= (ControlFlow 0 10) 2) anon95_Then_correct) (=> (= (ControlFlow 0 10) 9) anon95_Else_correct)))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (and (and (select (|PolymorphicMapType_47162_27609_53#PolymorphicMapType_47162| Heap@@19) this $allocated) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| ZeroMask) this src) wildcard@0)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| ZeroMask) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 205) (- 0 207)) (HasDirectPerm_27839_54103 Mask@0 this src)) (=> (HasDirectPerm_27839_54103 Mask@0 this src) (=> (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this src)) gsize) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= this null)) (= Mask@1 (PolymorphicMapType_47183 (store (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@0) this dst (+ (select (|PolymorphicMapType_47183_27839_53951#PolymorphicMapType_47183| Mask@0) this dst) wildcard@1)) (|PolymorphicMapType_47183_27847_3522#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_53#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_47236#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_159539#PolymorphicMapType_47183| Mask@0) (|PolymorphicMapType_47183_27839_164366#PolymorphicMapType_47183| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 205) (- 0 206)) (HasDirectPerm_27839_54103 Mask@1 this dst)) (=> (HasDirectPerm_27839_54103 Mask@1 this dst) (=> (and (= (|Seq#Length_27840| (select (|PolymorphicMapType_47162_27839_54170#PolymorphicMapType_47162| Heap@@19) this dst)) gsize) (state Heap@@19 Mask@1)) (=> (and (and (<= 4 gsize) (state Heap@@19 Mask@1)) (and (= (mod gsize 4) 0) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 205) 204) anon91_Else_correct) (=> (= (ControlFlow 0 205) 16) anon92_Then_correct)) (=> (= (ControlFlow 0 205) 10) anon92_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 208) 205)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
