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
(declare-sort T@Field_16924_53 0)
(declare-sort T@Field_16937_16938 0)
(declare-sort T@Field_25821_5251 0)
(declare-sort T@Field_11147_45413 0)
(declare-sort T@Field_11147_45280 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_16885 0)) (((PolymorphicMapType_16885 (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| (Array T@Ref T@Field_25821_5251 Real)) (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| (Array T@Ref T@Field_16924_53 Real)) (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| (Array T@Ref T@Field_16937_16938 Real)) (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| (Array T@Ref T@Field_11147_45280 Real)) (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| (Array T@Ref T@Field_11147_45413 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17413 0)) (((PolymorphicMapType_17413 (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (Array T@Ref T@Field_16924_53 Bool)) (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (Array T@Ref T@Field_16937_16938 Bool)) (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (Array T@Ref T@Field_25821_5251 Bool)) (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (Array T@Ref T@Field_11147_45280 Bool)) (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (Array T@Ref T@Field_11147_45413 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16864 0)) (((PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| (Array T@Ref T@Field_16924_53 Bool)) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| (Array T@Ref T@Field_16937_16938 T@Ref)) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| (Array T@Ref T@Field_25821_5251 Int)) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| (Array T@Ref T@Field_11147_45413 T@PolymorphicMapType_17413)) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| (Array T@Ref T@Field_11147_45280 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_16924_53)
(declare-fun f_7 () T@Field_25821_5251)
(declare-sort T@Seq_25866 0)
(declare-fun |Seq#Length_11155| (T@Seq_25866) Int)
(declare-fun |Seq#Drop_11155| (T@Seq_25866 Int) T@Seq_25866)
(declare-sort T@Seq_3128 0)
(declare-fun |Seq#Length_3128| (T@Seq_3128) Int)
(declare-fun |Seq#Drop_3128| (T@Seq_3128 Int) T@Seq_3128)
(declare-fun succHeap (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864) Bool)
(declare-fun state (T@PolymorphicMapType_16864 T@PolymorphicMapType_16885) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16885) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17413)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_11155| (T@Seq_25866 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3128| (T@Seq_3128 Int) Int)
(declare-fun |Seq#Empty_11155| () T@Seq_25866)
(declare-fun |Seq#Empty_3128| () T@Seq_3128)
(declare-fun |Seq#Update_11155| (T@Seq_25866 Int T@Ref) T@Seq_25866)
(declare-fun |Seq#Update_3128| (T@Seq_3128 Int Int) T@Seq_3128)
(declare-fun |Set#Union_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_11160| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_11155| (T@Seq_25866 Int) T@Seq_25866)
(declare-fun |Seq#Take_3128| (T@Seq_3128 Int) T@Seq_3128)
(declare-fun |Seq#Contains_3128| (T@Seq_3128 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3128)
(declare-fun |Set#Card_11160| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_11195| (T@Seq_25866 T@Ref) Bool)
(declare-fun |Seq#Skolem_11195| (T@Seq_25866 T@Ref) Int)
(declare-fun |Seq#Skolem_3128| (T@Seq_3128 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864 T@PolymorphicMapType_16885) Bool)
(declare-fun IsPredicateField_11147_45371 (T@Field_11147_45280) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11147 (T@Field_11147_45280) T@Field_11147_45413)
(declare-fun HasDirectPerm_11147_45344 (T@PolymorphicMapType_16885 T@Ref T@Field_11147_45280) Bool)
(declare-fun IsWandField_11147_47118 (T@Field_11147_45280) Bool)
(declare-fun WandMaskField_11147 (T@Field_11147_45280) T@Field_11147_45413)
(declare-fun |Seq#Singleton_11160| (T@Ref) T@Seq_25866)
(declare-fun |Seq#Singleton_3128| (Int) T@Seq_3128)
(declare-fun |Seq#Append_25866| (T@Seq_25866 T@Seq_25866) T@Seq_25866)
(declare-fun |Seq#Append_3128| (T@Seq_3128 T@Seq_3128) T@Seq_3128)
(declare-fun dummyHeap () T@PolymorphicMapType_16864)
(declare-fun ZeroMask () T@PolymorphicMapType_16885)
(declare-fun InsidePredicate_16924_16924 (T@Field_11147_45280 T@FrameType T@Field_11147_45280 T@FrameType) Bool)
(declare-fun IsPredicateField_11147_5251 (T@Field_25821_5251) Bool)
(declare-fun IsWandField_11147_5251 (T@Field_25821_5251) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11147_50664 (T@Field_11147_45413) Bool)
(declare-fun IsWandField_11147_50680 (T@Field_11147_45413) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11147_16938 (T@Field_16937_16938) Bool)
(declare-fun IsWandField_11147_16938 (T@Field_16937_16938) Bool)
(declare-fun IsPredicateField_11147_53 (T@Field_16924_53) Bool)
(declare-fun IsWandField_11147_53 (T@Field_16924_53) Bool)
(declare-fun |Set#Equal_11157| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_11147_51118 (T@PolymorphicMapType_16885 T@Ref T@Field_11147_45413) Bool)
(declare-fun HasDirectPerm_11147_16938 (T@PolymorphicMapType_16885 T@Ref T@Field_16937_16938) Bool)
(declare-fun HasDirectPerm_11147_53 (T@PolymorphicMapType_16885 T@Ref T@Field_16924_53) Bool)
(declare-fun HasDirectPerm_11147_5251 (T@PolymorphicMapType_16885 T@Ref T@Field_25821_5251) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16885 T@PolymorphicMapType_16885 T@PolymorphicMapType_16885) Bool)
(declare-fun |Set#Difference_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_3128| (T@Seq_3128 T@Seq_3128) Bool)
(declare-fun |Seq#Equal_11155| (T@Seq_25866 T@Seq_25866) Bool)
(declare-fun |Set#UnionOne_11160| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_11195| (T@Seq_25866 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3128| (T@Seq_3128 Int) Bool)
(declare-fun |Set#Empty_11160| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_25866| (T@Seq_25866 T@Seq_25866) Int)
(declare-fun |Seq#SkolemDiff_3128| (T@Seq_3128 T@Seq_3128) Int)
(assert (forall ((s T@Seq_25866) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11155| s)) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) (- (|Seq#Length_11155| s) n))) (=> (< (|Seq#Length_11155| s) n) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) (|Seq#Length_11155| s))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11155| (|Seq#Drop_11155| s n)))
 :pattern ( (|Seq#Length_11155| s) (|Seq#Drop_11155| s n))
)))
(assert (forall ((s@@0 T@Seq_3128) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3128| s@@0)) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) (- (|Seq#Length_3128| s@@0) n@@0))) (=> (< (|Seq#Length_3128| s@@0) n@@0) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) (|Seq#Length_3128| s@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3128| s@@0) (|Seq#Drop_3128| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16864) (Heap1 T@PolymorphicMapType_16864) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16864) (Mask T@PolymorphicMapType_16885) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16864) (Heap1@@0 T@PolymorphicMapType_16864) (Heap2 T@PolymorphicMapType_16864) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11147_45413) ) (!  (not (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11147_45280) ) (!  (not (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25821_5251) ) (!  (not (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16937_16938) ) (!  (not (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16924_53) ) (!  (not (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.682:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_25866) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_11155| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_11155| (|Seq#Drop_11155| s@@1 n@@1) j) (|Seq#Index_11155| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11155| (|Seq#Drop_11155| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3128) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3128| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3128| (|Seq#Drop_3128| s@@2 n@@2) j@@0) (|Seq#Index_3128| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3128| (|Seq#Drop_3128| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_11155| |Seq#Empty_11155|) 0))
(assert (= (|Seq#Length_3128| |Seq#Empty_3128|) 0))
(assert (forall ((s@@3 T@Seq_25866) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11155| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3) (|Seq#Index_11155| s@@3 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11155| s@@3 n@@3) (|Seq#Update_11155| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3128) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3128| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3128| s@@4 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3128| s@@4 n@@4) (|Seq#Update_3128| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_11160| (|Set#Union_11160| a@@0 b@@0) b@@0) (|Set#Union_11160| a@@0 b@@0))
 :qid |stdinbpl.634:18|
 :skolemid |74|
 :pattern ( (|Set#Union_11160| (|Set#Union_11160| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11160| (|Set#Intersection_11160| a@@1 b@@1) b@@1) (|Set#Intersection_11160| a@@1 b@@1))
 :qid |stdinbpl.638:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_11160| (|Set#Intersection_11160| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_11160| r) o) (= r o))
 :qid |stdinbpl.603:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_11160| r) o))
)))
(assert (forall ((s@@5 T@Seq_25866) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11155| s@@5)) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11155| s@@5) n@@5) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) (|Seq#Length_11155| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11155| s@@5 n@@5) (|Seq#Length_11155| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3128) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3128| s@@6)) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3128| s@@6) n@@6) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) (|Seq#Length_3128| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3128| s@@6 n@@6) (|Seq#Length_3128| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3128| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.579:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3128| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_11160| (|Set#Union_11160| a@@2 b@@2)) (|Set#Card_11160| (|Set#Intersection_11160| a@@2 b@@2))) (+ (|Set#Card_11160| a@@2) (|Set#Card_11160| b@@2)))
 :qid |stdinbpl.642:18|
 :skolemid |78|
 :pattern ( (|Set#Card_11160| (|Set#Union_11160| a@@2 b@@2)))
 :pattern ( (|Set#Card_11160| (|Set#Intersection_11160| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_25866) (x T@Ref) ) (!  (=> (|Seq#Contains_11195| s@@7 x) (and (and (<= 0 (|Seq#Skolem_11195| s@@7 x)) (< (|Seq#Skolem_11195| s@@7 x) (|Seq#Length_11155| s@@7))) (= (|Seq#Index_11155| s@@7 (|Seq#Skolem_11195| s@@7 x)) x)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_11195| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3128) (x@@0 Int) ) (!  (=> (|Seq#Contains_3128| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3128| s@@8 x@@0)) (< (|Seq#Skolem_3128| s@@8 x@@0) (|Seq#Length_3128| s@@8))) (= (|Seq#Index_3128| s@@8 (|Seq#Skolem_3128| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3128| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_25866) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11155| s@@9 n@@7) s@@9))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11155| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3128) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3128| s@@10 n@@8) s@@10))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3128| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.274:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.685:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16864) (ExhaleHeap T@PolymorphicMapType_16864) (Mask@@0 T@PolymorphicMapType_16885) (pm_f_8 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11147_45344 Mask@@0 null pm_f_8) (IsPredicateField_11147_45371 pm_f_8)) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@0) null (PredicateMaskField_11147 pm_f_8)) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap) null (PredicateMaskField_11147 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11147_45371 pm_f_8) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap) null (PredicateMaskField_11147 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16864) (ExhaleHeap@@0 T@PolymorphicMapType_16864) (Mask@@1 T@PolymorphicMapType_16885) (pm_f_8@@0 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11147_45344 Mask@@1 null pm_f_8@@0) (IsWandField_11147_47118 pm_f_8@@0)) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@1) null (WandMaskField_11147 pm_f_8@@0)) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@0) null (WandMaskField_11147 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11147_47118 pm_f_8@@0) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@0) null (WandMaskField_11147 pm_f_8@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_11195| (|Seq#Singleton_11160| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_11195| (|Seq#Singleton_11160| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3128| (|Seq#Singleton_3128| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3128| (|Seq#Singleton_3128| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_25866) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_11155| s@@11))) (= (|Seq#Index_11155| (|Seq#Take_11155| s@@11 n@@9) j@@3) (|Seq#Index_11155| s@@11 j@@3)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11155| (|Seq#Take_11155| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_11155| s@@11 j@@3) (|Seq#Take_11155| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3128) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3128| s@@12))) (= (|Seq#Index_3128| (|Seq#Take_3128| s@@12 n@@10) j@@4) (|Seq#Index_3128| s@@12 j@@4)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3128| (|Seq#Take_3128| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3128| s@@12 j@@4) (|Seq#Take_3128| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_25866) (t T@Seq_25866) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11155| s@@13))) (< n@@11 (|Seq#Length_11155| (|Seq#Append_25866| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11155| s@@13)) (|Seq#Length_11155| s@@13)) n@@11) (= (|Seq#Take_11155| (|Seq#Append_25866| s@@13 t) n@@11) (|Seq#Append_25866| s@@13 (|Seq#Take_11155| t (|Seq#Sub| n@@11 (|Seq#Length_11155| s@@13)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11155| (|Seq#Append_25866| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3128) (t@@0 T@Seq_3128) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3128| s@@14))) (< n@@12 (|Seq#Length_3128| (|Seq#Append_3128| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3128| s@@14)) (|Seq#Length_3128| s@@14)) n@@12) (= (|Seq#Take_3128| (|Seq#Append_3128| s@@14 t@@0) n@@12) (|Seq#Append_3128| s@@14 (|Seq#Take_3128| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3128| s@@14)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3128| (|Seq#Append_3128| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16864) (ExhaleHeap@@1 T@PolymorphicMapType_16864) (Mask@@2 T@PolymorphicMapType_16885) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@2) o_18 $allocated) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@1) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@1) o_18 $allocated))
)))
(assert (forall ((p T@Field_11147_45280) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16924_16924 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16924_16924 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_25866) (s1 T@Seq_25866) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11155|)) (not (= s1 |Seq#Empty_11155|))) (<= (|Seq#Length_11155| s0) n@@13)) (< n@@13 (|Seq#Length_11155| (|Seq#Append_25866| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11155| s0)) (|Seq#Length_11155| s0)) n@@13) (= (|Seq#Index_11155| (|Seq#Append_25866| s0 s1) n@@13) (|Seq#Index_11155| s1 (|Seq#Sub| n@@13 (|Seq#Length_11155| s0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11155| (|Seq#Append_25866| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3128) (s1@@0 T@Seq_3128) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3128|)) (not (= s1@@0 |Seq#Empty_3128|))) (<= (|Seq#Length_3128| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3128| (|Seq#Append_3128| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3128| s0@@0)) (|Seq#Length_3128| s0@@0)) n@@14) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@0 s1@@0) n@@14) (|Seq#Index_3128| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3128| s0@@0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3128| (|Seq#Append_3128| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11147_5251 f_7)))
(assert  (not (IsWandField_11147_5251 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16864) (ExhaleHeap@@2 T@PolymorphicMapType_16864) (Mask@@3 T@PolymorphicMapType_16885) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_16885) (o_2@@4 T@Ref) (f_4@@4 T@Field_11147_45413) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11147_50664 f_4@@4))) (not (IsWandField_11147_50680 f_4@@4))) (<= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_16885) (o_2@@5 T@Ref) (f_4@@5 T@Field_11147_45280) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11147_45371 f_4@@5))) (not (IsWandField_11147_47118 f_4@@5))) (<= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_16885) (o_2@@6 T@Ref) (f_4@@6 T@Field_16937_16938) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11147_16938 f_4@@6))) (not (IsWandField_11147_16938 f_4@@6))) (<= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_16885) (o_2@@7 T@Ref) (f_4@@7 T@Field_16924_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11147_53 f_4@@7))) (not (IsWandField_11147_53 f_4@@7))) (<= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16885) (o_2@@8 T@Ref) (f_4@@8 T@Field_25821_5251) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11147_5251 f_4@@8))) (not (IsWandField_11147_5251 f_4@@8))) (<= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_11157| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.667:31|
 :skolemid |84|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.666:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_11157| a@@4 b@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16885) (o_2@@9 T@Ref) (f_4@@9 T@Field_11147_45413) ) (! (= (HasDirectPerm_11147_51118 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_51118 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16885) (o_2@@10 T@Ref) (f_4@@10 T@Field_11147_45280) ) (! (= (HasDirectPerm_11147_45344 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_45344 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16885) (o_2@@11 T@Ref) (f_4@@11 T@Field_16937_16938) ) (! (= (HasDirectPerm_11147_16938 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_16938 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16885) (o_2@@12 T@Ref) (f_4@@12 T@Field_16924_53) ) (! (= (HasDirectPerm_11147_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16885) (o_2@@13 T@Ref) (f_4@@13 T@Field_25821_5251) ) (! (= (HasDirectPerm_11147_5251 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_5251 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16864) (ExhaleHeap@@3 T@PolymorphicMapType_16864) (Mask@@14 T@PolymorphicMapType_16885) (pm_f_8@@1 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_11147_45344 Mask@@14 null pm_f_8@@1) (IsPredicateField_11147_45371 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_16924_53) ) (!  (=> (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8 f_26) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@4) o2_8 f_26) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_16937_16938) ) (!  (=> (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@4) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_25821_5251) ) (!  (=> (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@4) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_11147_45280) ) (!  (=> (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@4) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_11147_45413) ) (!  (=> (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@3 f_26@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_11147_45371 pm_f_8@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16864) (ExhaleHeap@@4 T@PolymorphicMapType_16864) (Mask@@15 T@PolymorphicMapType_16885) (pm_f_8@@2 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_11147_45344 Mask@@15 null pm_f_8@@2) (IsWandField_11147_47118 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_16924_53) ) (!  (=> (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@5) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@4 f_26@@4))
)) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_16937_16938) ) (!  (=> (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@5) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_25821_5251) ) (!  (=> (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@5) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_11147_45280) ) (!  (=> (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@5) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_11147_45413) ) (!  (=> (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_11147_47118 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3128| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.577:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3128| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16864) (ExhaleHeap@@5 T@PolymorphicMapType_16864) (Mask@@16 T@PolymorphicMapType_16885) (o_18@@0 T@Ref) (f_26@@9 T@Field_11147_45413) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_11147_51118 Mask@@16 o_18@@0 f_26@@9) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@6) o_18@@0 f_26@@9) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@5) o_18@@0 f_26@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@5) o_18@@0 f_26@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16864) (ExhaleHeap@@6 T@PolymorphicMapType_16864) (Mask@@17 T@PolymorphicMapType_16885) (o_18@@1 T@Ref) (f_26@@10 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_11147_45344 Mask@@17 o_18@@1 f_26@@10) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@7) o_18@@1 f_26@@10) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@6) o_18@@1 f_26@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@6) o_18@@1 f_26@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16864) (ExhaleHeap@@7 T@PolymorphicMapType_16864) (Mask@@18 T@PolymorphicMapType_16885) (o_18@@2 T@Ref) (f_26@@11 T@Field_16937_16938) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_11147_16938 Mask@@18 o_18@@2 f_26@@11) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@8) o_18@@2 f_26@@11) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@7) o_18@@2 f_26@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@7) o_18@@2 f_26@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16864) (ExhaleHeap@@8 T@PolymorphicMapType_16864) (Mask@@19 T@PolymorphicMapType_16885) (o_18@@3 T@Ref) (f_26@@12 T@Field_16924_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_11147_53 Mask@@19 o_18@@3 f_26@@12) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@9) o_18@@3 f_26@@12) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@8) o_18@@3 f_26@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@8) o_18@@3 f_26@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16864) (ExhaleHeap@@9 T@PolymorphicMapType_16864) (Mask@@20 T@PolymorphicMapType_16885) (o_18@@4 T@Ref) (f_26@@13 T@Field_25821_5251) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_11147_5251 Mask@@20 o_18@@4 f_26@@13) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@10) o_18@@4 f_26@@13) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@9) o_18@@4 f_26@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@9) o_18@@4 f_26@@13))
)))
(assert (forall ((s0@@1 T@Seq_25866) (s1@@1 T@Seq_25866) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11155|)) (not (= s1@@1 |Seq#Empty_11155|))) (= (|Seq#Length_11155| (|Seq#Append_25866| s0@@1 s1@@1)) (+ (|Seq#Length_11155| s0@@1) (|Seq#Length_11155| s1@@1))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11155| (|Seq#Append_25866| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3128) (s1@@2 T@Seq_3128) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3128|)) (not (= s1@@2 |Seq#Empty_3128|))) (= (|Seq#Length_3128| (|Seq#Append_3128| s0@@2 s1@@2)) (+ (|Seq#Length_3128| s0@@2) (|Seq#Length_3128| s1@@2))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3128| (|Seq#Append_3128| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11147_45413) ) (! (= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11147_45280) ) (! (= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16937_16938) ) (! (= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16924_53) ) (! (= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25821_5251) ) (! (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_25866) (t@@1 T@Seq_25866) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11155| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11155| s@@15)) (|Seq#Length_11155| s@@15)) n@@15) (= (|Seq#Drop_11155| (|Seq#Append_25866| s@@15 t@@1) n@@15) (|Seq#Drop_11155| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11155| s@@15))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11155| (|Seq#Append_25866| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3128) (t@@2 T@Seq_3128) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3128| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3128| s@@16)) (|Seq#Length_3128| s@@16)) n@@16) (= (|Seq#Drop_3128| (|Seq#Append_3128| s@@16 t@@2) n@@16) (|Seq#Drop_3128| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3128| s@@16))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3128| (|Seq#Append_3128| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16885) (SummandMask1 T@PolymorphicMapType_16885) (SummandMask2 T@PolymorphicMapType_16885) (o_2@@19 T@Ref) (f_4@@19 T@Field_11147_45413) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16885) (SummandMask1@@0 T@PolymorphicMapType_16885) (SummandMask2@@0 T@PolymorphicMapType_16885) (o_2@@20 T@Ref) (f_4@@20 T@Field_11147_45280) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16885) (SummandMask1@@1 T@PolymorphicMapType_16885) (SummandMask2@@1 T@PolymorphicMapType_16885) (o_2@@21 T@Ref) (f_4@@21 T@Field_16937_16938) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16885) (SummandMask1@@2 T@PolymorphicMapType_16885) (SummandMask2@@2 T@PolymorphicMapType_16885) (o_2@@22 T@Ref) (f_4@@22 T@Field_16924_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16885) (SummandMask1@@3 T@PolymorphicMapType_16885) (SummandMask2@@3 T@PolymorphicMapType_16885) (o_2@@23 T@Ref) (f_4@@23 T@Field_25821_5251) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_11160| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.631:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_11160| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_11160| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_11160| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.576:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_11160| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.646:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_11160| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_11160| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 T@Seq_3128) (b@@6 T@Seq_3128) ) (!  (=> (|Seq#Equal_3128| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3128| a@@7 b@@6))
)))
(assert (forall ((a@@8 T@Seq_25866) (b@@7 T@Seq_25866) ) (!  (=> (|Seq#Equal_11155| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_11155| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_11157| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.668:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_11157| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@10 y@@1) (select (|Set#UnionOne_11160| a@@10 x@@3) y@@1))
 :qid |stdinbpl.611:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_11160| a@@10 x@@3) (select a@@10 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@11 y@@2) (select (|Set#Union_11160| a@@11 b@@9) y@@2))
 :qid |stdinbpl.621:18|
 :skolemid |71|
 :pattern ( (|Set#Union_11160| a@@11 b@@9) (select a@@11 y@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@10 y@@3) (select (|Set#Union_11160| a@@12 b@@10) y@@3))
 :qid |stdinbpl.623:18|
 :skolemid |72|
 :pattern ( (|Set#Union_11160| a@@12 b@@10) (select b@@10 y@@3))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_11160| a@@13 x@@4) o@@3)  (or (= o@@3 x@@4) (select a@@13 o@@3)))
 :qid |stdinbpl.607:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_11160| a@@13 x@@4) o@@3))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@11 y@@4) (not (select (|Set#Difference_11160| a@@14 b@@11) y@@4)))
 :qid |stdinbpl.648:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_11160| a@@14 b@@11) (select b@@11 y@@4))
)))
(assert (forall ((s@@17 T@Seq_25866) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11155| s@@17))) (|Seq#ContainsTrigger_11195| s@@17 (|Seq#Index_11155| s@@17 i@@3)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11155| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3128) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3128| s@@18))) (|Seq#ContainsTrigger_3128| s@@18 (|Seq#Index_3128| s@@18 i@@4)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3128| s@@18 i@@4))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)) (|Set#Card_11160| (|Set#Difference_11160| b@@12 a@@15))) (|Set#Card_11160| (|Set#Intersection_11160| a@@15 b@@12))) (|Set#Card_11160| (|Set#Union_11160| a@@15 b@@12))) (= (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)) (- (|Set#Card_11160| a@@15) (|Set#Card_11160| (|Set#Intersection_11160| a@@15 b@@12)))))
 :qid |stdinbpl.650:18|
 :skolemid |81|
 :pattern ( (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)))
)))
(assert (forall ((s0@@3 T@Seq_25866) (s1@@3 T@Seq_25866) ) (!  (and (=> (= s0@@3 |Seq#Empty_11155|) (= (|Seq#Append_25866| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11155|) (= (|Seq#Append_25866| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_25866| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3128) (s1@@4 T@Seq_3128) ) (!  (and (=> (= s0@@4 |Seq#Empty_3128|) (= (|Seq#Append_3128| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3128|) (= (|Seq#Append_3128| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3128| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11155| (|Seq#Singleton_11160| t@@3) 0) t@@3)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11160| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3128| (|Seq#Singleton_3128| t@@4) 0) t@@4)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3128| t@@4))
)))
(assert (forall ((s@@19 T@Seq_25866) ) (! (<= 0 (|Seq#Length_11155| s@@19))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11155| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3128) ) (! (<= 0 (|Seq#Length_3128| s@@20))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3128| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_11160| s@@21))
 :qid |stdinbpl.593:18|
 :skolemid |58|
 :pattern ( (|Set#Card_11160| s@@21))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_11160| a@@16 x@@5) x@@5)
 :qid |stdinbpl.609:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_11160| a@@16 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_3128) (s1@@5 T@Seq_3128) ) (!  (=> (|Seq#Equal_3128| s0@@5 s1@@5) (and (= (|Seq#Length_3128| s0@@5) (|Seq#Length_3128| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3128| s0@@5))) (= (|Seq#Index_3128| s0@@5 j@@6) (|Seq#Index_3128| s1@@5 j@@6)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3128| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3128| s1@@5 j@@6))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3128| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_25866) (s1@@6 T@Seq_25866) ) (!  (=> (|Seq#Equal_11155| s0@@6 s1@@6) (and (= (|Seq#Length_11155| s0@@6) (|Seq#Length_11155| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_11155| s0@@6))) (= (|Seq#Index_11155| s0@@6 j@@7) (|Seq#Index_11155| s1@@6 j@@7)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11155| s0@@6 j@@7))
 :pattern ( (|Seq#Index_11155| s1@@6 j@@7))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_11155| s0@@6 s1@@6))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@17 x@@6) (= (|Set#Card_11160| (|Set#UnionOne_11160| a@@17 x@@6)) (|Set#Card_11160| a@@17)))
 :qid |stdinbpl.613:18|
 :skolemid |68|
 :pattern ( (|Set#Card_11160| (|Set#UnionOne_11160| a@@17 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11155| (|Seq#Singleton_11160| t@@5)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11160| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3128| (|Seq#Singleton_3128| t@@6)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3128| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_11160| (|Set#Singleton_11160| r@@0)) 1)
 :qid |stdinbpl.604:18|
 :skolemid |64|
 :pattern ( (|Set#Card_11160| (|Set#Singleton_11160| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_11160| r@@1) r@@1)
 :qid |stdinbpl.602:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_11160| r@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_11160| a@@18 (|Set#Union_11160| a@@18 b@@13)) (|Set#Union_11160| a@@18 b@@13))
 :qid |stdinbpl.636:18|
 :skolemid |75|
 :pattern ( (|Set#Union_11160| a@@18 (|Set#Union_11160| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11160| a@@19 (|Set#Intersection_11160| a@@19 b@@14)) (|Set#Intersection_11160| a@@19 b@@14))
 :qid |stdinbpl.640:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_11160| a@@19 (|Set#Intersection_11160| a@@19 b@@14)))
)))
(assert (forall ((s@@22 T@Seq_25866) (t@@7 T@Seq_25866) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11155| s@@22))) (= (|Seq#Take_11155| (|Seq#Append_25866| s@@22 t@@7) n@@17) (|Seq#Take_11155| s@@22 n@@17)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11155| (|Seq#Append_25866| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3128) (t@@8 T@Seq_3128) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3128| s@@23))) (= (|Seq#Take_3128| (|Seq#Append_3128| s@@23 t@@8) n@@18) (|Seq#Take_3128| s@@23 n@@18)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3128| (|Seq#Append_3128| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_11160| o@@4))
 :qid |stdinbpl.596:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_11160| o@@4))
)))
(assert (forall ((s@@24 T@Seq_25866) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_11155| s@@24))) (= (|Seq#Length_11155| (|Seq#Update_11155| s@@24 i@@5 v@@2)) (|Seq#Length_11155| s@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11155| (|Seq#Update_11155| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_11155| s@@24) (|Seq#Update_11155| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3128) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3128| s@@25))) (= (|Seq#Length_3128| (|Seq#Update_3128| s@@25 i@@6 v@@3)) (|Seq#Length_3128| s@@25)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3128| (|Seq#Update_3128| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3128| s@@25) (|Seq#Update_3128| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16864) (o_20 T@Ref) (f_30 T@Field_11147_45280) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@11) (store (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@11) o_20 f_30 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@11) (store (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@11) o_20 f_30 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16864) (o_20@@0 T@Ref) (f_30@@0 T@Field_11147_45413) (v@@5 T@PolymorphicMapType_17413) ) (! (succHeap Heap@@12 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@12) (store (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@12) (store (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16864) (o_20@@1 T@Ref) (f_30@@1 T@Field_25821_5251) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@13) (store (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@13) (store (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16864) (o_20@@2 T@Ref) (f_30@@2 T@Field_16937_16938) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@14) (store (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@14) (store (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16864) (o_20@@3 T@Ref) (f_30@@3 T@Field_16924_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_16864 (store (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (store (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_25866) (t@@9 T@Seq_25866) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11155| s@@26))) (= (|Seq#Drop_11155| (|Seq#Append_25866| s@@26 t@@9) n@@19) (|Seq#Append_25866| (|Seq#Drop_11155| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11155| (|Seq#Append_25866| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3128) (t@@10 T@Seq_3128) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3128| s@@27))) (= (|Seq#Drop_3128| (|Seq#Append_3128| s@@27 t@@10) n@@20) (|Seq#Append_3128| (|Seq#Drop_3128| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3128| (|Seq#Append_3128| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.680:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.681:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@28 T@Seq_25866) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_11155| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_11155| (|Seq#Drop_11155| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_11155| s@@28 i@@7))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11155| s@@28 n@@21) (|Seq#Index_11155| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3128) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3128| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3128| (|Seq#Drop_3128| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3128| s@@29 i@@8))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3128| s@@29 n@@22) (|Seq#Index_3128| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_11160| s@@30) 0) (= s@@30 |Set#Empty_11160|)) (=> (not (= (|Set#Card_11160| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.599:33|
 :skolemid |60|
))))
 :qid |stdinbpl.597:18|
 :skolemid |61|
 :pattern ( (|Set#Card_11160| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_25866) (s1@@7 T@Seq_25866) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11155|)) (not (= s1@@7 |Seq#Empty_11155|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11155| s0@@7))) (= (|Seq#Index_11155| (|Seq#Append_25866| s0@@7 s1@@7) n@@23) (|Seq#Index_11155| s0@@7 n@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11155| (|Seq#Append_25866| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11155| s0@@7 n@@23) (|Seq#Append_25866| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3128) (s1@@8 T@Seq_3128) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3128|)) (not (= s1@@8 |Seq#Empty_3128|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3128| s0@@8))) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@8 s1@@8) n@@24) (|Seq#Index_3128| s0@@8 n@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3128| (|Seq#Append_3128| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3128| s0@@8 n@@24) (|Seq#Append_3128| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_25866) (s1@@9 T@Seq_25866) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11155|)) (not (= s1@@9 |Seq#Empty_11155|))) (<= 0 m)) (< m (|Seq#Length_11155| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11155| s0@@9)) (|Seq#Length_11155| s0@@9)) m) (= (|Seq#Index_11155| (|Seq#Append_25866| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11155| s0@@9))) (|Seq#Index_11155| s1@@9 m))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11155| s1@@9 m) (|Seq#Append_25866| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3128) (s1@@10 T@Seq_3128) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3128|)) (not (= s1@@10 |Seq#Empty_3128|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3128| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3128| s0@@10)) (|Seq#Length_3128| s0@@10)) m@@0) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3128| s0@@10))) (|Seq#Index_3128| s1@@10 m@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3128| s1@@10 m@@0) (|Seq#Append_3128| s0@@10 s1@@10))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@22 x@@8)) (= (|Set#Card_11160| (|Set#UnionOne_11160| a@@22 x@@8)) (+ (|Set#Card_11160| a@@22) 1)))
 :qid |stdinbpl.615:18|
 :skolemid |69|
 :pattern ( (|Set#Card_11160| (|Set#UnionOne_11160| a@@22 x@@8)))
)))
(assert (forall ((o_20@@4 T@Ref) (f_29 T@Field_16937_16938) (Heap@@16 T@PolymorphicMapType_16864) ) (!  (=> (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@16) o_20@@4 $allocated) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@16) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@16) o_20@@4 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@16) o_20@@4 f_29))
)))
(assert (forall ((s@@31 T@Seq_25866) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_11155| s@@31))) (= (|Seq#Index_11155| s@@31 i@@9) x@@9)) (|Seq#Contains_11195| s@@31 x@@9))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_11195| s@@31 x@@9) (|Seq#Index_11155| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3128) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3128| s@@32))) (= (|Seq#Index_3128| s@@32 i@@10) x@@10)) (|Seq#Contains_3128| s@@32 x@@10))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3128| s@@32 x@@10) (|Seq#Index_3128| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_25866) (s1@@11 T@Seq_25866) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_11155| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11155| s0@@11 s1@@11))) (not (= (|Seq#Length_11155| s0@@11) (|Seq#Length_11155| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11155| s0@@11 s1@@11))) (= (|Seq#Length_11155| s0@@11) (|Seq#Length_11155| s1@@11))) (= (|Seq#SkolemDiff_25866| s0@@11 s1@@11) (|Seq#SkolemDiff_25866| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_25866| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_25866| s0@@11 s1@@11) (|Seq#Length_11155| s0@@11))) (not (= (|Seq#Index_11155| s0@@11 (|Seq#SkolemDiff_25866| s0@@11 s1@@11)) (|Seq#Index_11155| s1@@11 (|Seq#SkolemDiff_25866| s0@@11 s1@@11))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_11155| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3128) (s1@@12 T@Seq_3128) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3128| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3128| s0@@12 s1@@12))) (not (= (|Seq#Length_3128| s0@@12) (|Seq#Length_3128| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3128| s0@@12 s1@@12))) (= (|Seq#Length_3128| s0@@12) (|Seq#Length_3128| s1@@12))) (= (|Seq#SkolemDiff_3128| s0@@12 s1@@12) (|Seq#SkolemDiff_3128| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3128| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3128| s0@@12 s1@@12) (|Seq#Length_3128| s0@@12))) (not (= (|Seq#Index_3128| s0@@12 (|Seq#SkolemDiff_3128| s0@@12 s1@@12)) (|Seq#Index_3128| s1@@12 (|Seq#SkolemDiff_3128| s0@@12 s1@@12))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3128| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11147_45280) (v_1@@0 T@FrameType) (q T@Field_11147_45280) (w@@0 T@FrameType) (r@@2 T@Field_11147_45280) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16924_16924 p@@1 v_1@@0 q w@@0) (InsidePredicate_16924_16924 q w@@0 r@@2 u)) (InsidePredicate_16924_16924 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16924_16924 p@@1 v_1@@0 q w@@0) (InsidePredicate_16924_16924 q w@@0 r@@2 u))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.686:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((s@@33 T@Seq_25866) ) (!  (=> (= (|Seq#Length_11155| s@@33) 0) (= s@@33 |Seq#Empty_11155|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11155| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3128) ) (!  (=> (= (|Seq#Length_3128| s@@34) 0) (= s@@34 |Seq#Empty_3128|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3128| s@@34))
)))
(assert (forall ((s@@35 T@Seq_25866) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11155| s@@35 n@@25) |Seq#Empty_11155|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11155| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3128) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3128| s@@36 n@@26) |Seq#Empty_3128|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3128| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_11160| a@@24 b@@17) o@@5)  (or (select a@@24 o@@5) (select b@@17 o@@5)))
 :qid |stdinbpl.619:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_11160| a@@24 b@@17) o@@5))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x_5 () Int)
(declare-fun s_1 () T@Seq_25866)
(declare-fun Heap@@17 () T@PolymorphicMapType_16864)
(declare-fun x_23 () Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_16885)
(declare-fun x_22 () T@Ref)
(declare-fun qpRange10 (T@Ref) Bool)
(declare-fun invRecv10 (T@Ref) T@Ref)
(set-info :boogie-vc-id reprothree)
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
 (=> (= (ControlFlow 0 0) 21) (let ((anon13_correct true))
(let ((anon21_Else_correct  (=> (and (not (and (<= 0 x_5) (< x_5 (|Seq#Length_11155| s_1)))) (= (ControlFlow 0 16) 13)) anon13_correct)))
(let ((anon21_Then_correct  (=> (and (<= 0 x_5) (< x_5 (|Seq#Length_11155| s_1))) (and (=> (= (ControlFlow 0 14) (- 0 15)) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@17) (|Seq#Index_11155| s_1 x_5) f_7) 0)) (=> (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@17) (|Seq#Index_11155| s_1 x_5) f_7) 0) (=> (= (ControlFlow 0 14) 13) anon13_correct))))))
(let ((anon9_correct true))
(let ((anon19_Else_correct  (=> (and (not (and (<= 0 x_23) (< x_23 (|Seq#Length_11155| s_1)))) (= (ControlFlow 0 12) 7)) anon9_correct)))
(let ((anon19_Then_correct  (=> (and (<= 0 x_23) (< x_23 (|Seq#Length_11155| s_1))) (and (=> (= (ControlFlow 0 8) (- 0 11)) (>= x_23 0)) (=> (>= x_23 0) (and (=> (= (ControlFlow 0 8) (- 0 10)) (< x_23 (|Seq#Length_11155| s_1))) (=> (< x_23 (|Seq#Length_11155| s_1)) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_11147_5251 QPMask@0 (|Seq#Index_11155| s_1 x_23) f_7)) (=> (HasDirectPerm_11147_5251 QPMask@0 (|Seq#Index_11155| s_1 x_23) f_7) (=> (= (ControlFlow 0 8) 7) anon9_correct))))))))))
(let ((anon20_Else_correct true))
(let ((anon16_Else_correct  (=> (forall ((x_3 T@Ref) ) (!  (=> (|Seq#Contains_11195| s_1 x_3) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@17) x_3 f_7) 0))
 :qid |stdinbpl.1782:20|
 :skolemid |191|
 :pattern ( (|Seq#ContainsTrigger_11195| s_1 x_3))
 :pattern ( (|Seq#Contains_11195| s_1 x_3))
)) (=> (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0)) (and (and (and (and (=> (= (ControlFlow 0 17) 6) anon20_Else_correct) (=> (= (ControlFlow 0 17) 14) anon21_Then_correct)) (=> (= (ControlFlow 0 17) 16) anon21_Else_correct)) (=> (= (ControlFlow 0 17) 8) anon19_Then_correct)) (=> (= (ControlFlow 0 17) 12) anon19_Else_correct))))))
(let ((anon5_correct true))
(let ((anon17_Else_correct  (=> (and (not (|Seq#Contains_11195| s_1 x_22)) (= (ControlFlow 0 5) 2)) anon5_correct)))
(let ((anon17_Then_correct  (=> (|Seq#Contains_11195| s_1 x_22) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_11147_5251 QPMask@0 x_22 f_7)) (=> (HasDirectPerm_11147_5251 QPMask@0 x_22 f_7) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (|Seq#Contains_11195| s_1 x_1)) (|Seq#Contains_11195| s_1 x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.1737:15|
 :skolemid |185|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (|Seq#Contains_11195| s_1 x_1@@0)) (|Seq#Contains_11195| s_1 x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.1737:15|
 :skolemid |185|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (|Seq#Contains_11195| s_1 x_1@@1) (< NoPerm FullPerm)) (and (qpRange10 x_1@@1) (= (invRecv10 x_1@@1) x_1@@1)))
 :qid |stdinbpl.1743:22|
 :skolemid |186|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) x_1@@1 f_7))
 :pattern ( (|Seq#ContainsTrigger_11195| s_1 x_1@@1))
 :pattern ( (|Seq#Contains_11195| s_1 x_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_11195| s_1 (invRecv10 o_9)) (< NoPerm FullPerm)) (qpRange10 o_9)) (= (invRecv10 o_9) o_9))
 :qid |stdinbpl.1747:22|
 :skolemid |187|
 :pattern ( (invRecv10 o_9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (|Seq#Contains_11195| s_1 x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.1753:22|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) x_1@@2 f_7))
 :pattern ( (|Seq#ContainsTrigger_11195| s_1 x_1@@2))
 :pattern ( (|Seq#Contains_11195| s_1 x_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_11195| s_1 (invRecv10 o_9@@0)) (< NoPerm FullPerm)) (qpRange10 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv10 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (|Seq#Contains_11195| s_1 (invRecv10 o_9@@0)) (< NoPerm FullPerm)) (qpRange10 o_9@@0))) (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.1759:22|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_16924_53) ) (!  (=> true (= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.1763:29|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_16937_16938) ) (!  (=> true (= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1763:29|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_25821_5251) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1763:29|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_11147_45280) ) (!  (=> true (= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1763:29|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_11147_45413) ) (!  (=> true (= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1763:29|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| QPMask@0) o_9@@5 f_5@@3))
))) (state Heap@@17 QPMask@0)) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 18) 17) anon16_Else_correct) (=> (= (ControlFlow 0 18) 3) anon17_Then_correct)) (=> (= (ControlFlow 0 18) 5) anon17_Else_correct))))))))
(let ((anon15_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 20) 1) anon15_Then_correct) (=> (= (ControlFlow 0 20) 18) anon15_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 21) 20) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))
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
(declare-sort T@Field_16924_53 0)
(declare-sort T@Field_16937_16938 0)
(declare-sort T@Field_25821_5251 0)
(declare-sort T@Field_11147_45413 0)
(declare-sort T@Field_11147_45280 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_16885 0)) (((PolymorphicMapType_16885 (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| (Array T@Ref T@Field_25821_5251 Real)) (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| (Array T@Ref T@Field_16924_53 Real)) (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| (Array T@Ref T@Field_16937_16938 Real)) (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| (Array T@Ref T@Field_11147_45280 Real)) (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| (Array T@Ref T@Field_11147_45413 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_17413 0)) (((PolymorphicMapType_17413 (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (Array T@Ref T@Field_16924_53 Bool)) (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (Array T@Ref T@Field_16937_16938 Bool)) (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (Array T@Ref T@Field_25821_5251 Bool)) (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (Array T@Ref T@Field_11147_45280 Bool)) (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (Array T@Ref T@Field_11147_45413 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_16864 0)) (((PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| (Array T@Ref T@Field_16924_53 Bool)) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| (Array T@Ref T@Field_16937_16938 T@Ref)) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| (Array T@Ref T@Field_25821_5251 Int)) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| (Array T@Ref T@Field_11147_45413 T@PolymorphicMapType_17413)) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| (Array T@Ref T@Field_11147_45280 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_16924_53)
(declare-fun f_7 () T@Field_25821_5251)
(declare-sort T@Seq_25866 0)
(declare-fun |Seq#Length_11155| (T@Seq_25866) Int)
(declare-fun |Seq#Drop_11155| (T@Seq_25866 Int) T@Seq_25866)
(declare-sort T@Seq_3128 0)
(declare-fun |Seq#Length_3128| (T@Seq_3128) Int)
(declare-fun |Seq#Drop_3128| (T@Seq_3128 Int) T@Seq_3128)
(declare-fun succHeap (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864) Bool)
(declare-fun state (T@PolymorphicMapType_16864 T@PolymorphicMapType_16885) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_16885) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_17413)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_11155| (T@Seq_25866 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3128| (T@Seq_3128 Int) Int)
(declare-fun |Seq#Empty_11155| () T@Seq_25866)
(declare-fun |Seq#Empty_3128| () T@Seq_3128)
(declare-fun |Seq#Update_11155| (T@Seq_25866 Int T@Ref) T@Seq_25866)
(declare-fun |Seq#Update_3128| (T@Seq_3128 Int Int) T@Seq_3128)
(declare-fun |Set#Union_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_11160| (T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#Take_11155| (T@Seq_25866 Int) T@Seq_25866)
(declare-fun |Seq#Take_3128| (T@Seq_3128 Int) T@Seq_3128)
(declare-fun |Seq#Contains_3128| (T@Seq_3128 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3128)
(declare-fun |Set#Card_11160| ((Array T@Ref Bool)) Int)
(declare-fun |Seq#Contains_11195| (T@Seq_25866 T@Ref) Bool)
(declare-fun |Seq#Skolem_11195| (T@Seq_25866 T@Ref) Int)
(declare-fun |Seq#Skolem_3128| (T@Seq_3128 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_16864 T@PolymorphicMapType_16864 T@PolymorphicMapType_16885) Bool)
(declare-fun IsPredicateField_11147_45371 (T@Field_11147_45280) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11147 (T@Field_11147_45280) T@Field_11147_45413)
(declare-fun HasDirectPerm_11147_45344 (T@PolymorphicMapType_16885 T@Ref T@Field_11147_45280) Bool)
(declare-fun IsWandField_11147_47118 (T@Field_11147_45280) Bool)
(declare-fun WandMaskField_11147 (T@Field_11147_45280) T@Field_11147_45413)
(declare-fun |Seq#Singleton_11160| (T@Ref) T@Seq_25866)
(declare-fun |Seq#Singleton_3128| (Int) T@Seq_3128)
(declare-fun |Seq#Append_25866| (T@Seq_25866 T@Seq_25866) T@Seq_25866)
(declare-fun |Seq#Append_3128| (T@Seq_3128 T@Seq_3128) T@Seq_3128)
(declare-fun dummyHeap () T@PolymorphicMapType_16864)
(declare-fun ZeroMask () T@PolymorphicMapType_16885)
(declare-fun InsidePredicate_16924_16924 (T@Field_11147_45280 T@FrameType T@Field_11147_45280 T@FrameType) Bool)
(declare-fun IsPredicateField_11147_5251 (T@Field_25821_5251) Bool)
(declare-fun IsWandField_11147_5251 (T@Field_25821_5251) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11147_50664 (T@Field_11147_45413) Bool)
(declare-fun IsWandField_11147_50680 (T@Field_11147_45413) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11147_16938 (T@Field_16937_16938) Bool)
(declare-fun IsWandField_11147_16938 (T@Field_16937_16938) Bool)
(declare-fun IsPredicateField_11147_53 (T@Field_16924_53) Bool)
(declare-fun IsWandField_11147_53 (T@Field_16924_53) Bool)
(declare-fun |Set#Equal_11157| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun HasDirectPerm_11147_51118 (T@PolymorphicMapType_16885 T@Ref T@Field_11147_45413) Bool)
(declare-fun HasDirectPerm_11147_16938 (T@PolymorphicMapType_16885 T@Ref T@Field_16937_16938) Bool)
(declare-fun HasDirectPerm_11147_53 (T@PolymorphicMapType_16885 T@Ref T@Field_16924_53) Bool)
(declare-fun HasDirectPerm_11147_5251 (T@PolymorphicMapType_16885 T@Ref T@Field_25821_5251) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_16885 T@PolymorphicMapType_16885 T@PolymorphicMapType_16885) Bool)
(declare-fun |Set#Difference_11160| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Seq#Equal_3128| (T@Seq_3128 T@Seq_3128) Bool)
(declare-fun |Seq#Equal_11155| (T@Seq_25866 T@Seq_25866) Bool)
(declare-fun |Set#UnionOne_11160| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Seq#ContainsTrigger_11195| (T@Seq_25866 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3128| (T@Seq_3128 Int) Bool)
(declare-fun |Set#Empty_11160| () (Array T@Ref Bool))
(declare-fun |Seq#SkolemDiff_25866| (T@Seq_25866 T@Seq_25866) Int)
(declare-fun |Seq#SkolemDiff_3128| (T@Seq_3128 T@Seq_3128) Int)
(assert (forall ((s T@Seq_25866) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_11155| s)) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) (- (|Seq#Length_11155| s) n))) (=> (< (|Seq#Length_11155| s) n) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_11155| (|Seq#Drop_11155| s n)) (|Seq#Length_11155| s))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_11155| (|Seq#Drop_11155| s n)))
 :pattern ( (|Seq#Length_11155| s) (|Seq#Drop_11155| s n))
)))
(assert (forall ((s@@0 T@Seq_3128) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3128| s@@0)) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) (- (|Seq#Length_3128| s@@0) n@@0))) (=> (< (|Seq#Length_3128| s@@0) n@@0) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)) (|Seq#Length_3128| s@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3128| (|Seq#Drop_3128| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3128| s@@0) (|Seq#Drop_3128| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_16864) (Heap1 T@PolymorphicMapType_16864) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_16864) (Mask T@PolymorphicMapType_16885) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_16864) (Heap1@@0 T@PolymorphicMapType_16864) (Heap2 T@PolymorphicMapType_16864) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11147_45413) ) (!  (not (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11147_45280) ) (!  (not (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_25821_5251) ) (!  (not (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_16937_16938) ) (!  (not (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_16924_53) ) (!  (not (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.682:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_25866) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_11155| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_11155| (|Seq#Drop_11155| s@@1 n@@1) j) (|Seq#Index_11155| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_11155| (|Seq#Drop_11155| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3128) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3128| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3128| (|Seq#Drop_3128| s@@2 n@@2) j@@0) (|Seq#Index_3128| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.339:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3128| (|Seq#Drop_3128| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_11155| |Seq#Empty_11155|) 0))
(assert (= (|Seq#Length_3128| |Seq#Empty_3128|) 0))
(assert (forall ((s@@3 T@Seq_25866) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_11155| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3) (|Seq#Index_11155| s@@3 n@@3)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_11155| (|Seq#Update_11155| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_11155| s@@3 n@@3) (|Seq#Update_11155| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3128) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3128| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3128| s@@4 n@@4)))))
 :qid |stdinbpl.294:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3128| (|Seq#Update_3128| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3128| s@@4 n@@4) (|Seq#Update_3128| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_11160| (|Set#Union_11160| a@@0 b@@0) b@@0) (|Set#Union_11160| a@@0 b@@0))
 :qid |stdinbpl.634:18|
 :skolemid |74|
 :pattern ( (|Set#Union_11160| (|Set#Union_11160| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11160| (|Set#Intersection_11160| a@@1 b@@1) b@@1) (|Set#Intersection_11160| a@@1 b@@1))
 :qid |stdinbpl.638:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_11160| (|Set#Intersection_11160| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_11160| r) o) (= r o))
 :qid |stdinbpl.603:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_11160| r) o))
)))
(assert (forall ((s@@5 T@Seq_25866) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_11155| s@@5)) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_11155| s@@5) n@@5) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) (|Seq#Length_11155| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_11155| (|Seq#Take_11155| s@@5 n@@5)))
 :pattern ( (|Seq#Take_11155| s@@5 n@@5) (|Seq#Length_11155| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3128) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3128| s@@6)) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3128| s@@6) n@@6) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) (|Seq#Length_3128| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)) 0)))
 :qid |stdinbpl.305:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3128| (|Seq#Take_3128| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3128| s@@6 n@@6) (|Seq#Length_3128| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3128| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.579:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3128| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_11160| (|Set#Union_11160| a@@2 b@@2)) (|Set#Card_11160| (|Set#Intersection_11160| a@@2 b@@2))) (+ (|Set#Card_11160| a@@2) (|Set#Card_11160| b@@2)))
 :qid |stdinbpl.642:18|
 :skolemid |78|
 :pattern ( (|Set#Card_11160| (|Set#Union_11160| a@@2 b@@2)))
 :pattern ( (|Set#Card_11160| (|Set#Intersection_11160| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_25866) (x T@Ref) ) (!  (=> (|Seq#Contains_11195| s@@7 x) (and (and (<= 0 (|Seq#Skolem_11195| s@@7 x)) (< (|Seq#Skolem_11195| s@@7 x) (|Seq#Length_11155| s@@7))) (= (|Seq#Index_11155| s@@7 (|Seq#Skolem_11195| s@@7 x)) x)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_11195| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3128) (x@@0 Int) ) (!  (=> (|Seq#Contains_3128| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3128| s@@8 x@@0)) (< (|Seq#Skolem_3128| s@@8 x@@0) (|Seq#Length_3128| s@@8))) (= (|Seq#Index_3128| s@@8 (|Seq#Skolem_3128| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.437:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3128| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_25866) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_11155| s@@9 n@@7) s@@9))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_11155| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3128) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3128| s@@10 n@@8) s@@10))
 :qid |stdinbpl.421:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3128| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.274:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.272:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.685:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_16864) (ExhaleHeap T@PolymorphicMapType_16864) (Mask@@0 T@PolymorphicMapType_16885) (pm_f_8 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11147_45344 Mask@@0 null pm_f_8) (IsPredicateField_11147_45371 pm_f_8)) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@0) null (PredicateMaskField_11147 pm_f_8)) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap) null (PredicateMaskField_11147 pm_f_8)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11147_45371 pm_f_8) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap) null (PredicateMaskField_11147 pm_f_8)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_16864) (ExhaleHeap@@0 T@PolymorphicMapType_16864) (Mask@@1 T@PolymorphicMapType_16885) (pm_f_8@@0 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11147_45344 Mask@@1 null pm_f_8@@0) (IsWandField_11147_47118 pm_f_8@@0)) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@1) null (WandMaskField_11147 pm_f_8@@0)) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@0) null (WandMaskField_11147 pm_f_8@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11147_47118 pm_f_8@@0) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@0) null (WandMaskField_11147 pm_f_8@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_11195| (|Seq#Singleton_11160| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_11195| (|Seq#Singleton_11160| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3128| (|Seq#Singleton_3128| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.562:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3128| (|Seq#Singleton_3128| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_25866) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_11155| s@@11))) (= (|Seq#Index_11155| (|Seq#Take_11155| s@@11 n@@9) j@@3) (|Seq#Index_11155| s@@11 j@@3)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_11155| (|Seq#Take_11155| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_11155| s@@11 j@@3) (|Seq#Take_11155| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3128) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3128| s@@12))) (= (|Seq#Index_3128| (|Seq#Take_3128| s@@12 n@@10) j@@4) (|Seq#Index_3128| s@@12 j@@4)))
 :qid |stdinbpl.313:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3128| (|Seq#Take_3128| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3128| s@@12 j@@4) (|Seq#Take_3128| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_25866) (t T@Seq_25866) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_11155| s@@13))) (< n@@11 (|Seq#Length_11155| (|Seq#Append_25866| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_11155| s@@13)) (|Seq#Length_11155| s@@13)) n@@11) (= (|Seq#Take_11155| (|Seq#Append_25866| s@@13 t) n@@11) (|Seq#Append_25866| s@@13 (|Seq#Take_11155| t (|Seq#Sub| n@@11 (|Seq#Length_11155| s@@13)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_11155| (|Seq#Append_25866| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3128) (t@@0 T@Seq_3128) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3128| s@@14))) (< n@@12 (|Seq#Length_3128| (|Seq#Append_3128| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3128| s@@14)) (|Seq#Length_3128| s@@14)) n@@12) (= (|Seq#Take_3128| (|Seq#Append_3128| s@@14 t@@0) n@@12) (|Seq#Append_3128| s@@14 (|Seq#Take_3128| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3128| s@@14)))))))
 :qid |stdinbpl.398:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3128| (|Seq#Append_3128| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_16864) (ExhaleHeap@@1 T@PolymorphicMapType_16864) (Mask@@2 T@PolymorphicMapType_16885) (o_18 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@2) o_18 $allocated) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@1) o_18 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@1) o_18 $allocated))
)))
(assert (forall ((p T@Field_11147_45280) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_16924_16924 p v_1 p w))
 :qid |stdinbpl.216:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_16924_16924 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_25866) (s1 T@Seq_25866) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_11155|)) (not (= s1 |Seq#Empty_11155|))) (<= (|Seq#Length_11155| s0) n@@13)) (< n@@13 (|Seq#Length_11155| (|Seq#Append_25866| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_11155| s0)) (|Seq#Length_11155| s0)) n@@13) (= (|Seq#Index_11155| (|Seq#Append_25866| s0 s1) n@@13) (|Seq#Index_11155| s1 (|Seq#Sub| n@@13 (|Seq#Length_11155| s0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_11155| (|Seq#Append_25866| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3128) (s1@@0 T@Seq_3128) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3128|)) (not (= s1@@0 |Seq#Empty_3128|))) (<= (|Seq#Length_3128| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3128| (|Seq#Append_3128| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3128| s0@@0)) (|Seq#Length_3128| s0@@0)) n@@14) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@0 s1@@0) n@@14) (|Seq#Index_3128| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3128| s0@@0))))))
 :qid |stdinbpl.285:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3128| (|Seq#Append_3128| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_11147_5251 f_7)))
(assert  (not (IsWandField_11147_5251 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_16864) (ExhaleHeap@@2 T@PolymorphicMapType_16864) (Mask@@3 T@PolymorphicMapType_16885) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_16885) (o_2@@4 T@Ref) (f_4@@4 T@Field_11147_45413) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_11147_50664 f_4@@4))) (not (IsWandField_11147_50680 f_4@@4))) (<= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_16885) (o_2@@5 T@Ref) (f_4@@5 T@Field_11147_45280) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_11147_45371 f_4@@5))) (not (IsWandField_11147_47118 f_4@@5))) (<= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_16885) (o_2@@6 T@Ref) (f_4@@6 T@Field_16937_16938) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11147_16938 f_4@@6))) (not (IsWandField_11147_16938 f_4@@6))) (<= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_16885) (o_2@@7 T@Ref) (f_4@@7 T@Field_16924_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11147_53 f_4@@7))) (not (IsWandField_11147_53 f_4@@7))) (<= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_16885) (o_2@@8 T@Ref) (f_4@@8 T@Field_25821_5251) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11147_5251 f_4@@8))) (not (IsWandField_11147_5251 f_4@@8))) (<= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) ) (! (= (|Set#Equal_11157| a@@4 b@@3) (forall ((o@@0 T@Ref) ) (! (= (select a@@4 o@@0) (select b@@3 o@@0))
 :qid |stdinbpl.667:31|
 :skolemid |84|
 :pattern ( (select a@@4 o@@0))
 :pattern ( (select b@@3 o@@0))
)))
 :qid |stdinbpl.666:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_11157| a@@4 b@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_16885) (o_2@@9 T@Ref) (f_4@@9 T@Field_11147_45413) ) (! (= (HasDirectPerm_11147_51118 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_51118 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_16885) (o_2@@10 T@Ref) (f_4@@10 T@Field_11147_45280) ) (! (= (HasDirectPerm_11147_45344 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_45344 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_16885) (o_2@@11 T@Ref) (f_4@@11 T@Field_16937_16938) ) (! (= (HasDirectPerm_11147_16938 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_16938 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_16885) (o_2@@12 T@Ref) (f_4@@12 T@Field_16924_53) ) (! (= (HasDirectPerm_11147_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_16885) (o_2@@13 T@Ref) (f_4@@13 T@Field_25821_5251) ) (! (= (HasDirectPerm_11147_5251 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11147_5251 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_16864) (ExhaleHeap@@3 T@PolymorphicMapType_16864) (Mask@@14 T@PolymorphicMapType_16885) (pm_f_8@@1 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_11147_45344 Mask@@14 null pm_f_8@@1) (IsPredicateField_11147_45371 pm_f_8@@1)) (and (and (and (and (forall ((o2_8 T@Ref) (f_26 T@Field_16924_53) ) (!  (=> (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8 f_26) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@4) o2_8 f_26) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8 f_26)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8 f_26))
)) (forall ((o2_8@@0 T@Ref) (f_26@@0 T@Field_16937_16938) ) (!  (=> (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@0 f_26@@0) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@4) o2_8@@0 f_26@@0) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@0 f_26@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@0 f_26@@0))
))) (forall ((o2_8@@1 T@Ref) (f_26@@1 T@Field_25821_5251) ) (!  (=> (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@1 f_26@@1) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@4) o2_8@@1 f_26@@1) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@1 f_26@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@1 f_26@@1))
))) (forall ((o2_8@@2 T@Ref) (f_26@@2 T@Field_11147_45280) ) (!  (=> (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@2 f_26@@2) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@4) o2_8@@2 f_26@@2) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@2 f_26@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@2 f_26@@2))
))) (forall ((o2_8@@3 T@Ref) (f_26@@3 T@Field_11147_45413) ) (!  (=> (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) null (PredicateMaskField_11147 pm_f_8@@1))) o2_8@@3 f_26@@3) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@4) o2_8@@3 f_26@@3) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@3 f_26@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@3) o2_8@@3 f_26@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_11147_45371 pm_f_8@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_16864) (ExhaleHeap@@4 T@PolymorphicMapType_16864) (Mask@@15 T@PolymorphicMapType_16885) (pm_f_8@@2 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_11147_45344 Mask@@15 null pm_f_8@@2) (IsWandField_11147_47118 pm_f_8@@2)) (and (and (and (and (forall ((o2_8@@4 T@Ref) (f_26@@4 T@Field_16924_53) ) (!  (=> (select (|PolymorphicMapType_17413_16924_53#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@4 f_26@@4) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@5) o2_8@@4 f_26@@4) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@4 f_26@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@4 f_26@@4))
)) (forall ((o2_8@@5 T@Ref) (f_26@@5 T@Field_16937_16938) ) (!  (=> (select (|PolymorphicMapType_17413_16924_16938#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@5 f_26@@5) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@5) o2_8@@5 f_26@@5) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@5 f_26@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@5 f_26@@5))
))) (forall ((o2_8@@6 T@Ref) (f_26@@6 T@Field_25821_5251) ) (!  (=> (select (|PolymorphicMapType_17413_16924_5251#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@6 f_26@@6) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@5) o2_8@@6 f_26@@6) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@6 f_26@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@6 f_26@@6))
))) (forall ((o2_8@@7 T@Ref) (f_26@@7 T@Field_11147_45280) ) (!  (=> (select (|PolymorphicMapType_17413_16924_45280#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@7 f_26@@7) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@5) o2_8@@7 f_26@@7) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@7 f_26@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@7 f_26@@7))
))) (forall ((o2_8@@8 T@Ref) (f_26@@8 T@Field_11147_45413) ) (!  (=> (select (|PolymorphicMapType_17413_16924_46591#PolymorphicMapType_17413| (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) null (WandMaskField_11147 pm_f_8@@2))) o2_8@@8 f_26@@8) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@5) o2_8@@8 f_26@@8) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@8 f_26@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@4) o2_8@@8 f_26@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_11147_47118 pm_f_8@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.204:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3128| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.577:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3128| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_16864) (ExhaleHeap@@5 T@PolymorphicMapType_16864) (Mask@@16 T@PolymorphicMapType_16885) (o_18@@0 T@Ref) (f_26@@9 T@Field_11147_45413) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_11147_51118 Mask@@16 o_18@@0 f_26@@9) (= (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@6) o_18@@0 f_26@@9) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@5) o_18@@0 f_26@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| ExhaleHeap@@5) o_18@@0 f_26@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_16864) (ExhaleHeap@@6 T@PolymorphicMapType_16864) (Mask@@17 T@PolymorphicMapType_16885) (o_18@@1 T@Ref) (f_26@@10 T@Field_11147_45280) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_11147_45344 Mask@@17 o_18@@1 f_26@@10) (= (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@7) o_18@@1 f_26@@10) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@6) o_18@@1 f_26@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| ExhaleHeap@@6) o_18@@1 f_26@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_16864) (ExhaleHeap@@7 T@PolymorphicMapType_16864) (Mask@@18 T@PolymorphicMapType_16885) (o_18@@2 T@Ref) (f_26@@11 T@Field_16937_16938) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_11147_16938 Mask@@18 o_18@@2 f_26@@11) (= (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@8) o_18@@2 f_26@@11) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@7) o_18@@2 f_26@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| ExhaleHeap@@7) o_18@@2 f_26@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_16864) (ExhaleHeap@@8 T@PolymorphicMapType_16864) (Mask@@19 T@PolymorphicMapType_16885) (o_18@@3 T@Ref) (f_26@@12 T@Field_16924_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_11147_53 Mask@@19 o_18@@3 f_26@@12) (= (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@9) o_18@@3 f_26@@12) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@8) o_18@@3 f_26@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| ExhaleHeap@@8) o_18@@3 f_26@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_16864) (ExhaleHeap@@9 T@PolymorphicMapType_16864) (Mask@@20 T@PolymorphicMapType_16885) (o_18@@4 T@Ref) (f_26@@13 T@Field_25821_5251) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_11147_5251 Mask@@20 o_18@@4 f_26@@13) (= (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@10) o_18@@4 f_26@@13) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@9) o_18@@4 f_26@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| ExhaleHeap@@9) o_18@@4 f_26@@13))
)))
(assert (forall ((s0@@1 T@Seq_25866) (s1@@1 T@Seq_25866) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_11155|)) (not (= s1@@1 |Seq#Empty_11155|))) (= (|Seq#Length_11155| (|Seq#Append_25866| s0@@1 s1@@1)) (+ (|Seq#Length_11155| s0@@1) (|Seq#Length_11155| s1@@1))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_11155| (|Seq#Append_25866| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3128) (s1@@2 T@Seq_3128) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3128|)) (not (= s1@@2 |Seq#Empty_3128|))) (= (|Seq#Length_3128| (|Seq#Append_3128| s0@@2 s1@@2)) (+ (|Seq#Length_3128| s0@@2) (|Seq#Length_3128| s1@@2))))
 :qid |stdinbpl.254:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3128| (|Seq#Append_3128| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11147_45413) ) (! (= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_11147_45280) ) (! (= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_16937_16938) ) (! (= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_16924_53) ) (! (= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25821_5251) ) (! (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_25866) (t@@1 T@Seq_25866) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_11155| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_11155| s@@15)) (|Seq#Length_11155| s@@15)) n@@15) (= (|Seq#Drop_11155| (|Seq#Append_25866| s@@15 t@@1) n@@15) (|Seq#Drop_11155| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_11155| s@@15))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_11155| (|Seq#Append_25866| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3128) (t@@2 T@Seq_3128) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3128| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3128| s@@16)) (|Seq#Length_3128| s@@16)) n@@16) (= (|Seq#Drop_3128| (|Seq#Append_3128| s@@16 t@@2) n@@16) (|Seq#Drop_3128| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3128| s@@16))))))
 :qid |stdinbpl.411:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3128| (|Seq#Append_3128| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_16885) (SummandMask1 T@PolymorphicMapType_16885) (SummandMask2 T@PolymorphicMapType_16885) (o_2@@19 T@Ref) (f_4@@19 T@Field_11147_45413) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_16885_11147_49535#PolymorphicMapType_16885| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_16885) (SummandMask1@@0 T@PolymorphicMapType_16885) (SummandMask2@@0 T@PolymorphicMapType_16885) (o_2@@20 T@Ref) (f_4@@20 T@Field_11147_45280) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_16885_11147_45280#PolymorphicMapType_16885| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_16885) (SummandMask1@@1 T@PolymorphicMapType_16885) (SummandMask2@@1 T@PolymorphicMapType_16885) (o_2@@21 T@Ref) (f_4@@21 T@Field_16937_16938) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_16885_11147_16938#PolymorphicMapType_16885| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_16885) (SummandMask1@@2 T@PolymorphicMapType_16885) (SummandMask2@@2 T@PolymorphicMapType_16885) (o_2@@22 T@Ref) (f_4@@22 T@Field_16924_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_16885_11147_53#PolymorphicMapType_16885| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_16885) (SummandMask1@@3 T@PolymorphicMapType_16885) (SummandMask2@@3 T@PolymorphicMapType_16885) (o_2@@23 T@Ref) (f_4@@23 T@Field_25821_5251) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_16885_11147_5251#PolymorphicMapType_16885| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Intersection_11160| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (select b@@4 o@@1)))
 :qid |stdinbpl.631:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_11160| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Intersection_11160| a@@5 b@@4) (select a@@5 o@@1))
 :pattern ( (|Set#Intersection_11160| a@@5 b@@4) (select b@@4 o@@1))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.576:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3128| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (o@@2 T@Ref) ) (! (= (select (|Set#Difference_11160| a@@6 b@@5) o@@2)  (and (select a@@6 o@@2) (not (select b@@5 o@@2))))
 :qid |stdinbpl.646:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_11160| a@@6 b@@5) o@@2))
 :pattern ( (|Set#Difference_11160| a@@6 b@@5) (select a@@6 o@@2))
)))
(assert (forall ((a@@7 T@Seq_3128) (b@@6 T@Seq_3128) ) (!  (=> (|Seq#Equal_3128| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3128| a@@7 b@@6))
)))
(assert (forall ((a@@8 T@Seq_25866) (b@@7 T@Seq_25866) ) (!  (=> (|Seq#Equal_11155| a@@8 b@@7) (= a@@8 b@@7))
 :qid |stdinbpl.549:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_11155| a@@8 b@@7))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (=> (|Set#Equal_11157| a@@9 b@@8) (= a@@9 b@@8))
 :qid |stdinbpl.668:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_11157| a@@9 b@@8))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (x@@3 T@Ref) (y@@1 T@Ref) ) (!  (=> (select a@@10 y@@1) (select (|Set#UnionOne_11160| a@@10 x@@3) y@@1))
 :qid |stdinbpl.611:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_11160| a@@10 x@@3) (select a@@10 y@@1))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select a@@11 y@@2) (select (|Set#Union_11160| a@@11 b@@9) y@@2))
 :qid |stdinbpl.621:18|
 :skolemid |71|
 :pattern ( (|Set#Union_11160| a@@11 b@@9) (select a@@11 y@@2))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) (y@@3 T@Ref) ) (!  (=> (select b@@10 y@@3) (select (|Set#Union_11160| a@@12 b@@10) y@@3))
 :qid |stdinbpl.623:18|
 :skolemid |72|
 :pattern ( (|Set#Union_11160| a@@12 b@@10) (select b@@10 y@@3))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@4 T@Ref) (o@@3 T@Ref) ) (! (= (select (|Set#UnionOne_11160| a@@13 x@@4) o@@3)  (or (= o@@3 x@@4) (select a@@13 o@@3)))
 :qid |stdinbpl.607:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_11160| a@@13 x@@4) o@@3))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@11 (Array T@Ref Bool)) (y@@4 T@Ref) ) (!  (=> (select b@@11 y@@4) (not (select (|Set#Difference_11160| a@@14 b@@11) y@@4)))
 :qid |stdinbpl.648:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_11160| a@@14 b@@11) (select b@@11 y@@4))
)))
(assert (forall ((s@@17 T@Seq_25866) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_11155| s@@17))) (|Seq#ContainsTrigger_11195| s@@17 (|Seq#Index_11155| s@@17 i@@3)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_11155| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3128) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3128| s@@18))) (|Seq#ContainsTrigger_3128| s@@18 (|Seq#Index_3128| s@@18 i@@4)))
 :qid |stdinbpl.442:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3128| s@@18 i@@4))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@12 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)) (|Set#Card_11160| (|Set#Difference_11160| b@@12 a@@15))) (|Set#Card_11160| (|Set#Intersection_11160| a@@15 b@@12))) (|Set#Card_11160| (|Set#Union_11160| a@@15 b@@12))) (= (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)) (- (|Set#Card_11160| a@@15) (|Set#Card_11160| (|Set#Intersection_11160| a@@15 b@@12)))))
 :qid |stdinbpl.650:18|
 :skolemid |81|
 :pattern ( (|Set#Card_11160| (|Set#Difference_11160| a@@15 b@@12)))
)))
(assert (forall ((s0@@3 T@Seq_25866) (s1@@3 T@Seq_25866) ) (!  (and (=> (= s0@@3 |Seq#Empty_11155|) (= (|Seq#Append_25866| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_11155|) (= (|Seq#Append_25866| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_25866| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3128) (s1@@4 T@Seq_3128) ) (!  (and (=> (= s0@@4 |Seq#Empty_3128|) (= (|Seq#Append_3128| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3128|) (= (|Seq#Append_3128| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.260:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3128| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_11155| (|Seq#Singleton_11160| t@@3) 0) t@@3)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_11160| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3128| (|Seq#Singleton_3128| t@@4) 0) t@@4)
 :qid |stdinbpl.264:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3128| t@@4))
)))
(assert (forall ((s@@19 T@Seq_25866) ) (! (<= 0 (|Seq#Length_11155| s@@19))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_11155| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3128) ) (! (<= 0 (|Seq#Length_3128| s@@20))
 :qid |stdinbpl.243:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3128| s@@20))
)))
(assert (forall ((s@@21 (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_11160| s@@21))
 :qid |stdinbpl.593:18|
 :skolemid |58|
 :pattern ( (|Set#Card_11160| s@@21))
)))
(assert (forall ((a@@16 (Array T@Ref Bool)) (x@@5 T@Ref) ) (! (select (|Set#UnionOne_11160| a@@16 x@@5) x@@5)
 :qid |stdinbpl.609:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_11160| a@@16 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_3128) (s1@@5 T@Seq_3128) ) (!  (=> (|Seq#Equal_3128| s0@@5 s1@@5) (and (= (|Seq#Length_3128| s0@@5) (|Seq#Length_3128| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3128| s0@@5))) (= (|Seq#Index_3128| s0@@5 j@@6) (|Seq#Index_3128| s1@@5 j@@6)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3128| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3128| s1@@5 j@@6))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3128| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_25866) (s1@@6 T@Seq_25866) ) (!  (=> (|Seq#Equal_11155| s0@@6 s1@@6) (and (= (|Seq#Length_11155| s0@@6) (|Seq#Length_11155| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_11155| s0@@6))) (= (|Seq#Index_11155| s0@@6 j@@7) (|Seq#Index_11155| s1@@6 j@@7)))
 :qid |stdinbpl.539:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_11155| s0@@6 j@@7))
 :pattern ( (|Seq#Index_11155| s1@@6 j@@7))
))))
 :qid |stdinbpl.536:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_11155| s0@@6 s1@@6))
)))
(assert (forall ((a@@17 (Array T@Ref Bool)) (x@@6 T@Ref) ) (!  (=> (select a@@17 x@@6) (= (|Set#Card_11160| (|Set#UnionOne_11160| a@@17 x@@6)) (|Set#Card_11160| a@@17)))
 :qid |stdinbpl.613:18|
 :skolemid |68|
 :pattern ( (|Set#Card_11160| (|Set#UnionOne_11160| a@@17 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_11155| (|Seq#Singleton_11160| t@@5)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_11160| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3128| (|Seq#Singleton_3128| t@@6)) 1)
 :qid |stdinbpl.251:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3128| t@@6))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_11160| (|Set#Singleton_11160| r@@0)) 1)
 :qid |stdinbpl.604:18|
 :skolemid |64|
 :pattern ( (|Set#Card_11160| (|Set#Singleton_11160| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_11160| r@@1) r@@1)
 :qid |stdinbpl.602:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_11160| r@@1))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Union_11160| a@@18 (|Set#Union_11160| a@@18 b@@13)) (|Set#Union_11160| a@@18 b@@13))
 :qid |stdinbpl.636:18|
 :skolemid |75|
 :pattern ( (|Set#Union_11160| a@@18 (|Set#Union_11160| a@@18 b@@13)))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_11160| a@@19 (|Set#Intersection_11160| a@@19 b@@14)) (|Set#Intersection_11160| a@@19 b@@14))
 :qid |stdinbpl.640:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_11160| a@@19 (|Set#Intersection_11160| a@@19 b@@14)))
)))
(assert (forall ((s@@22 T@Seq_25866) (t@@7 T@Seq_25866) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_11155| s@@22))) (= (|Seq#Take_11155| (|Seq#Append_25866| s@@22 t@@7) n@@17) (|Seq#Take_11155| s@@22 n@@17)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_11155| (|Seq#Append_25866| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3128) (t@@8 T@Seq_3128) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3128| s@@23))) (= (|Seq#Take_3128| (|Seq#Append_3128| s@@23 t@@8) n@@18) (|Seq#Take_3128| s@@23 n@@18)))
 :qid |stdinbpl.393:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3128| (|Seq#Append_3128| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@4 T@Ref) ) (!  (not (select |Set#Empty_11160| o@@4))
 :qid |stdinbpl.596:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_11160| o@@4))
)))
(assert (forall ((s@@24 T@Seq_25866) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_11155| s@@24))) (= (|Seq#Length_11155| (|Seq#Update_11155| s@@24 i@@5 v@@2)) (|Seq#Length_11155| s@@24)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_11155| (|Seq#Update_11155| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_11155| s@@24) (|Seq#Update_11155| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3128) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3128| s@@25))) (= (|Seq#Length_3128| (|Seq#Update_3128| s@@25 i@@6 v@@3)) (|Seq#Length_3128| s@@25)))
 :qid |stdinbpl.292:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3128| (|Seq#Update_3128| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3128| s@@25) (|Seq#Update_3128| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_16864) (o_20 T@Ref) (f_30 T@Field_11147_45280) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@11) (store (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@11) o_20 f_30 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@11) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@11) (store (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@11) o_20 f_30 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_16864) (o_20@@0 T@Ref) (f_30@@0 T@Field_11147_45413) (v@@5 T@PolymorphicMapType_17413) ) (! (succHeap Heap@@12 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@12) (store (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@12) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@12) (store (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@12) o_20@@0 f_30@@0 v@@5) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_16864) (o_20@@1 T@Ref) (f_30@@1 T@Field_25821_5251) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@13) (store (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@13) (store (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@13) o_20@@1 f_30@@1 v@@6) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@13) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_16864) (o_20@@2 T@Ref) (f_30@@2 T@Field_16937_16938) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@14) (store (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@14) (store (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@14) o_20@@2 f_30@@2 v@@7) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@14) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_16864) (o_20@@3 T@Ref) (f_30@@3 T@Field_16924_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_16864 (store (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_16864 (store (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@15) o_20@@3 f_30@@3 v@@8) (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_5251#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_11147_45457#PolymorphicMapType_16864| Heap@@15) (|PolymorphicMapType_16864_16924_45280#PolymorphicMapType_16864| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_25866) (t@@9 T@Seq_25866) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_11155| s@@26))) (= (|Seq#Drop_11155| (|Seq#Append_25866| s@@26 t@@9) n@@19) (|Seq#Append_25866| (|Seq#Drop_11155| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_11155| (|Seq#Append_25866| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3128) (t@@10 T@Seq_3128) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3128| s@@27))) (= (|Seq#Drop_3128| (|Seq#Append_3128| s@@27 t@@10) n@@20) (|Seq#Append_3128| (|Seq#Drop_3128| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.407:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3128| (|Seq#Append_3128| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@20 Int) (b@@15 Int) ) (! (= (<= a@@20 b@@15) (= (|Math#min| a@@20 b@@15) a@@20))
 :qid |stdinbpl.680:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@20 b@@15))
)))
(assert (forall ((a@@21 Int) (b@@16 Int) ) (! (= (<= b@@16 a@@21) (= (|Math#min| a@@21 b@@16) b@@16))
 :qid |stdinbpl.681:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@21 b@@16))
)))
(assert (forall ((s@@28 T@Seq_25866) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_11155| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_11155| (|Seq#Drop_11155| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_11155| s@@28 i@@7))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_11155| s@@28 n@@21) (|Seq#Index_11155| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3128) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3128| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3128| (|Seq#Drop_3128| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3128| s@@29 i@@8))))
 :qid |stdinbpl.343:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3128| s@@29 n@@22) (|Seq#Index_3128| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_11160| s@@30) 0) (= s@@30 |Set#Empty_11160|)) (=> (not (= (|Set#Card_11160| s@@30) 0)) (exists ((x@@7 T@Ref) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.599:33|
 :skolemid |60|
))))
 :qid |stdinbpl.597:18|
 :skolemid |61|
 :pattern ( (|Set#Card_11160| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_25866) (s1@@7 T@Seq_25866) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_11155|)) (not (= s1@@7 |Seq#Empty_11155|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_11155| s0@@7))) (= (|Seq#Index_11155| (|Seq#Append_25866| s0@@7 s1@@7) n@@23) (|Seq#Index_11155| s0@@7 n@@23)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_11155| (|Seq#Append_25866| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_11155| s0@@7 n@@23) (|Seq#Append_25866| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3128) (s1@@8 T@Seq_3128) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3128|)) (not (= s1@@8 |Seq#Empty_3128|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3128| s0@@8))) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@8 s1@@8) n@@24) (|Seq#Index_3128| s0@@8 n@@24)))
 :qid |stdinbpl.283:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3128| (|Seq#Append_3128| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3128| s0@@8 n@@24) (|Seq#Append_3128| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_25866) (s1@@9 T@Seq_25866) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_11155|)) (not (= s1@@9 |Seq#Empty_11155|))) (<= 0 m)) (< m (|Seq#Length_11155| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_11155| s0@@9)) (|Seq#Length_11155| s0@@9)) m) (= (|Seq#Index_11155| (|Seq#Append_25866| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_11155| s0@@9))) (|Seq#Index_11155| s1@@9 m))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_11155| s1@@9 m) (|Seq#Append_25866| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3128) (s1@@10 T@Seq_3128) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3128|)) (not (= s1@@10 |Seq#Empty_3128|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3128| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3128| s0@@10)) (|Seq#Length_3128| s0@@10)) m@@0) (= (|Seq#Index_3128| (|Seq#Append_3128| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3128| s0@@10))) (|Seq#Index_3128| s1@@10 m@@0))))
 :qid |stdinbpl.288:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3128| s1@@10 m@@0) (|Seq#Append_3128| s0@@10 s1@@10))
)))
(assert (forall ((a@@22 (Array T@Ref Bool)) (x@@8 T@Ref) ) (!  (=> (not (select a@@22 x@@8)) (= (|Set#Card_11160| (|Set#UnionOne_11160| a@@22 x@@8)) (+ (|Set#Card_11160| a@@22) 1)))
 :qid |stdinbpl.615:18|
 :skolemid |69|
 :pattern ( (|Set#Card_11160| (|Set#UnionOne_11160| a@@22 x@@8)))
)))
(assert (forall ((o_20@@4 T@Ref) (f_29 T@Field_16937_16938) (Heap@@16 T@PolymorphicMapType_16864) ) (!  (=> (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@16) o_20@@4 $allocated) (select (|PolymorphicMapType_16864_10760_53#PolymorphicMapType_16864| Heap@@16) (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@16) o_20@@4 f_29) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_16864_10763_10764#PolymorphicMapType_16864| Heap@@16) o_20@@4 f_29))
)))
(assert (forall ((s@@31 T@Seq_25866) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_11155| s@@31))) (= (|Seq#Index_11155| s@@31 i@@9) x@@9)) (|Seq#Contains_11195| s@@31 x@@9))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_11195| s@@31 x@@9) (|Seq#Index_11155| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3128) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3128| s@@32))) (= (|Seq#Index_3128| s@@32 i@@10) x@@10)) (|Seq#Contains_3128| s@@32 x@@10))
 :qid |stdinbpl.440:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3128| s@@32 x@@10) (|Seq#Index_3128| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_25866) (s1@@11 T@Seq_25866) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_11155| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11155| s0@@11 s1@@11))) (not (= (|Seq#Length_11155| s0@@11) (|Seq#Length_11155| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_11155| s0@@11 s1@@11))) (= (|Seq#Length_11155| s0@@11) (|Seq#Length_11155| s1@@11))) (= (|Seq#SkolemDiff_25866| s0@@11 s1@@11) (|Seq#SkolemDiff_25866| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_25866| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_25866| s0@@11 s1@@11) (|Seq#Length_11155| s0@@11))) (not (= (|Seq#Index_11155| s0@@11 (|Seq#SkolemDiff_25866| s0@@11 s1@@11)) (|Seq#Index_11155| s1@@11 (|Seq#SkolemDiff_25866| s0@@11 s1@@11))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_11155| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3128) (s1@@12 T@Seq_3128) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3128| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3128| s0@@12 s1@@12))) (not (= (|Seq#Length_3128| s0@@12) (|Seq#Length_3128| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3128| s0@@12 s1@@12))) (= (|Seq#Length_3128| s0@@12) (|Seq#Length_3128| s1@@12))) (= (|Seq#SkolemDiff_3128| s0@@12 s1@@12) (|Seq#SkolemDiff_3128| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3128| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3128| s0@@12 s1@@12) (|Seq#Length_3128| s0@@12))) (not (= (|Seq#Index_3128| s0@@12 (|Seq#SkolemDiff_3128| s0@@12 s1@@12)) (|Seq#Index_3128| s1@@12 (|Seq#SkolemDiff_3128| s0@@12 s1@@12))))))
 :qid |stdinbpl.544:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3128| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_11147_45280) (v_1@@0 T@FrameType) (q T@Field_11147_45280) (w@@0 T@FrameType) (r@@2 T@Field_11147_45280) (u T@FrameType) ) (!  (=> (and (InsidePredicate_16924_16924 p@@1 v_1@@0 q w@@0) (InsidePredicate_16924_16924 q w@@0 r@@2 u)) (InsidePredicate_16924_16924 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.211:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_16924_16924 p@@1 v_1@@0 q w@@0) (InsidePredicate_16924_16924 q w@@0 r@@2 u))
)))
(assert (forall ((a@@23 Int) ) (!  (=> (< a@@23 0) (= (|Math#clip| a@@23) 0))
 :qid |stdinbpl.686:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@23))
)))
(assert (forall ((s@@33 T@Seq_25866) ) (!  (=> (= (|Seq#Length_11155| s@@33) 0) (= s@@33 |Seq#Empty_11155|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_11155| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3128) ) (!  (=> (= (|Seq#Length_3128| s@@34) 0) (= s@@34 |Seq#Empty_3128|))
 :qid |stdinbpl.247:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3128| s@@34))
)))
(assert (forall ((s@@35 T@Seq_25866) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_11155| s@@35 n@@25) |Seq#Empty_11155|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_11155| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3128) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3128| s@@36 n@@26) |Seq#Empty_3128|))
 :qid |stdinbpl.423:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3128| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@24 (Array T@Ref Bool)) (b@@17 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_11160| a@@24 b@@17) o@@5)  (or (select a@@24 o@@5) (select b@@17 o@@5)))
 :qid |stdinbpl.619:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_11160| a@@24 b@@17) o@@5))
)))
; Valid

