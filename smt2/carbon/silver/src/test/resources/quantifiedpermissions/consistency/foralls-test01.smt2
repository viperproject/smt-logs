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
(declare-sort T@Field_12892_53 0)
(declare-sort T@Field_12905_12906 0)
(declare-sort T@Field_21767_5155 0)
(declare-sort T@Field_12892_32544 0)
(declare-sort T@Field_12892_32411 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12853 0)) (((PolymorphicMapType_12853 (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| (Array T@Ref T@Field_21767_5155 Real)) (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_53 Real)) (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| (Array T@Ref T@Field_12905_12906 Real)) (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_32411 Real)) (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_32544 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13381 0)) (((PolymorphicMapType_13381 (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (Array T@Ref T@Field_12905_12906 Bool)) (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (Array T@Ref T@Field_21767_5155 Bool)) (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_32411 Bool)) (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_32544 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12832 0)) (((PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| (Array T@Ref T@Field_12905_12906 T@Ref)) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| (Array T@Ref T@Field_21767_5155 Int)) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_32544 T@PolymorphicMapType_13381)) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_32411 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12892_53)
(declare-fun f_7 () T@Field_21767_5155)
(declare-sort T@Seq_21814 0)
(declare-fun |Seq#Length_8825| (T@Seq_21814) Int)
(declare-fun |Seq#Drop_8825| (T@Seq_21814 Int) T@Seq_21814)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun state (T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12853) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13381)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_8825| (T@Seq_21814 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_8825| () T@Seq_21814)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun |Seq#Update_8825| (T@Seq_21814 Int T@Ref) T@Seq_21814)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Set#Union_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_7959| (Int) (Array Int Bool))
(declare-fun |Seq#Take_8825| (T@Seq_21814 Int) T@Seq_21814)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Set#Card_7959| ((Array Int Bool)) Int)
(declare-fun |Seq#Contains_21814| (T@Seq_21814 T@Ref) Bool)
(declare-fun |Seq#Skolem_21814| (T@Seq_21814 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun IsPredicateField_12892_32502 (T@Field_12892_32411) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12892 (T@Field_12892_32411) T@Field_12892_32544)
(declare-fun HasDirectPerm_12892_32475 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_32411) Bool)
(declare-fun IsWandField_12892_34249 (T@Field_12892_32411) Bool)
(declare-fun WandMaskField_12892 (T@Field_12892_32411) T@Field_12892_32544)
(declare-fun |Seq#Singleton_8825| (T@Ref) T@Seq_21814)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |Seq#Append_21814| (T@Seq_21814 T@Seq_21814) T@Seq_21814)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_12832)
(declare-fun ZeroMask () T@PolymorphicMapType_12853)
(declare-fun InsidePredicate_12892_12892 (T@Field_12892_32411 T@FrameType T@Field_12892_32411 T@FrameType) Bool)
(declare-fun IsPredicateField_8815_5155 (T@Field_21767_5155) Bool)
(declare-fun IsWandField_8815_5155 (T@Field_21767_5155) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8815_37795 (T@Field_12892_32544) Bool)
(declare-fun IsWandField_8815_37811 (T@Field_12892_32544) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8815_12906 (T@Field_12905_12906) Bool)
(declare-fun IsWandField_8815_12906 (T@Field_12905_12906) Bool)
(declare-fun IsPredicateField_8815_53 (T@Field_12892_53) Bool)
(declare-fun IsWandField_8815_53 (T@Field_12892_53) Bool)
(declare-fun HasDirectPerm_12892_38249 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_32544) Bool)
(declare-fun HasDirectPerm_12892_5155 (T@PolymorphicMapType_12853 T@Ref T@Field_21767_5155) Bool)
(declare-fun HasDirectPerm_12892_12906 (T@PolymorphicMapType_12853 T@Ref T@Field_12905_12906) Bool)
(declare-fun HasDirectPerm_12892_53 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12853 T@PolymorphicMapType_12853 T@PolymorphicMapType_12853) Bool)
(declare-fun |Set#Difference_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_21814| (T@Seq_21814 T@Seq_21814) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Set#UnionOne_7959| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Seq#ContainsTrigger_8825| (T@Seq_21814 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Set#Empty_7959| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_21814| (T@Seq_21814 T@Seq_21814) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(assert (forall ((s T@Seq_21814) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8825| s)) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) (- (|Seq#Length_8825| s) n))) (=> (< (|Seq#Length_8825| s) n) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) (|Seq#Length_8825| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8825| (|Seq#Drop_8825| s n)))
 :pattern ( (|Seq#Length_8825| s) (|Seq#Drop_8825| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12832) (Heap1 T@PolymorphicMapType_12832) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12832) (Mask T@PolymorphicMapType_12853) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12832) (Heap1@@0 T@PolymorphicMapType_12832) (Heap2 T@PolymorphicMapType_12832) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12892_32544) ) (!  (not (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12892_32411) ) (!  (not (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21767_5155) ) (!  (not (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12905_12906) ) (!  (not (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12892_53) ) (!  (not (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.670:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_21814) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8825| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8825| (|Seq#Drop_8825| s@@1 n@@1) j) (|Seq#Index_8825| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8825| (|Seq#Drop_8825| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8825| |Seq#Empty_8825|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((s@@3 T@Seq_21814) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8825| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3) (|Seq#Index_8825| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8825| s@@3 n@@3) (|Seq#Update_8825| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_7959| (|Set#Union_7959| a@@0 b@@0) b@@0) (|Set#Union_7959| a@@0 b@@0))
 :qid |stdinbpl.622:18|
 :skolemid |74|
 :pattern ( (|Set#Union_7959| (|Set#Union_7959| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_7959| (|Set#Intersection_7959| a@@1 b@@1) b@@1) (|Set#Intersection_7959| a@@1 b@@1))
 :qid |stdinbpl.626:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_7959| (|Set#Intersection_7959| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_7959| r) o) (= r o))
 :qid |stdinbpl.591:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_7959| r) o))
)))
(assert (forall ((s@@5 T@Seq_21814) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8825| s@@5)) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8825| s@@5) n@@5) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) (|Seq#Length_8825| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8825| s@@5 n@@5) (|Seq#Length_8825| s@@5))
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
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_7959| (|Set#Union_7959| a@@2 b@@2)) (|Set#Card_7959| (|Set#Intersection_7959| a@@2 b@@2))) (+ (|Set#Card_7959| a@@2) (|Set#Card_7959| b@@2)))
 :qid |stdinbpl.630:18|
 :skolemid |78|
 :pattern ( (|Set#Card_7959| (|Set#Union_7959| a@@2 b@@2)))
 :pattern ( (|Set#Card_7959| (|Set#Intersection_7959| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_21814) (x T@Ref) ) (!  (=> (|Seq#Contains_21814| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21814| s@@7 x)) (< (|Seq#Skolem_21814| s@@7 x) (|Seq#Length_8825| s@@7))) (= (|Seq#Index_8825| s@@7 (|Seq#Skolem_21814| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21814| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21814) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8825| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8825| s@@9 n@@7))
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
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.673:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12832) (ExhaleHeap T@PolymorphicMapType_12832) (Mask@@0 T@PolymorphicMapType_12853) (pm_f_45 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12892_32475 Mask@@0 null pm_f_45) (IsPredicateField_12892_32502 pm_f_45)) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@0) null (PredicateMaskField_12892 pm_f_45)) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_12892 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12892_32502 pm_f_45) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_12892 pm_f_45)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12832) (ExhaleHeap@@0 T@PolymorphicMapType_12832) (Mask@@1 T@PolymorphicMapType_12853) (pm_f_45@@0 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12892_32475 Mask@@1 null pm_f_45@@0) (IsWandField_12892_34249 pm_f_45@@0)) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@1) null (WandMaskField_12892 pm_f_45@@0)) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_12892 pm_f_45@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12892_34249 pm_f_45@@0) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_12892 pm_f_45@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21814| (|Seq#Singleton_8825| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21814| (|Seq#Singleton_8825| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21814) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8825| s@@11))) (= (|Seq#Index_8825| (|Seq#Take_8825| s@@11 n@@9) j@@3) (|Seq#Index_8825| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8825| (|Seq#Take_8825| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8825| s@@11 j@@3) (|Seq#Take_8825| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21814) (t T@Seq_21814) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8825| s@@13))) (< n@@11 (|Seq#Length_8825| (|Seq#Append_21814| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8825| s@@13)) (|Seq#Length_8825| s@@13)) n@@11) (= (|Seq#Take_8825| (|Seq#Append_21814| s@@13 t) n@@11) (|Seq#Append_21814| s@@13 (|Seq#Take_8825| t (|Seq#Sub| n@@11 (|Seq#Length_8825| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8825| (|Seq#Append_21814| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12832) (ExhaleHeap@@1 T@PolymorphicMapType_12832) (Mask@@2 T@PolymorphicMapType_12853) (o_48 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@2) o_48 $allocated) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_48 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_48 $allocated))
)))
(assert (forall ((p T@Field_12892_32411) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12892_12892 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12892_12892 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21814) (s1 T@Seq_21814) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8825|)) (not (= s1 |Seq#Empty_8825|))) (<= (|Seq#Length_8825| s0) n@@13)) (< n@@13 (|Seq#Length_8825| (|Seq#Append_21814| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8825| s0)) (|Seq#Length_8825| s0)) n@@13) (= (|Seq#Index_8825| (|Seq#Append_21814| s0 s1) n@@13) (|Seq#Index_8825| s1 (|Seq#Sub| n@@13 (|Seq#Length_8825| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8825| (|Seq#Append_21814| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8815_5155 f_7)))
(assert  (not (IsWandField_8815_5155 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12832) (ExhaleHeap@@2 T@PolymorphicMapType_12832) (Mask@@3 T@PolymorphicMapType_12853) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12853) (o_2@@4 T@Ref) (f_4@@4 T@Field_12892_32544) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_8815_37795 f_4@@4))) (not (IsWandField_8815_37811 f_4@@4))) (<= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12853) (o_2@@5 T@Ref) (f_4@@5 T@Field_12892_32411) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_12892_32502 f_4@@5))) (not (IsWandField_12892_34249 f_4@@5))) (<= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12853) (o_2@@6 T@Ref) (f_4@@6 T@Field_12905_12906) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8815_12906 f_4@@6))) (not (IsWandField_8815_12906 f_4@@6))) (<= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12853) (o_2@@7 T@Ref) (f_4@@7 T@Field_12892_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8815_53 f_4@@7))) (not (IsWandField_8815_53 f_4@@7))) (<= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12853) (o_2@@8 T@Ref) (f_4@@8 T@Field_21767_5155) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8815_5155 f_4@@8))) (not (IsWandField_8815_5155 f_4@@8))) (<= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12853) (o_2@@9 T@Ref) (f_4@@9 T@Field_12892_32544) ) (! (= (HasDirectPerm_12892_38249 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_38249 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12853) (o_2@@10 T@Ref) (f_4@@10 T@Field_12892_32411) ) (! (= (HasDirectPerm_12892_32475 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_32475 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12853) (o_2@@11 T@Ref) (f_4@@11 T@Field_21767_5155) ) (! (= (HasDirectPerm_12892_5155 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_5155 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12853) (o_2@@12 T@Ref) (f_4@@12 T@Field_12905_12906) ) (! (= (HasDirectPerm_12892_12906 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_12906 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12853) (o_2@@13 T@Ref) (f_4@@13 T@Field_12892_53) ) (! (= (HasDirectPerm_12892_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12832) (ExhaleHeap@@3 T@PolymorphicMapType_12832) (Mask@@14 T@PolymorphicMapType_12853) (pm_f_45@@1 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_12892_32475 Mask@@14 null pm_f_45@@1) (IsPredicateField_12892_32502 pm_f_45@@1)) (and (and (and (and (forall ((o2_45 T@Ref) (f_66 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45 f_66) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@4) o2_45 f_66) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45 f_66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45 f_66))
)) (forall ((o2_45@@0 T@Ref) (f_66@@0 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@0 f_66@@0) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@4) o2_45@@0 f_66@@0) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@0 f_66@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@0 f_66@@0))
))) (forall ((o2_45@@1 T@Ref) (f_66@@1 T@Field_21767_5155) ) (!  (=> (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@1 f_66@@1) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@4) o2_45@@1 f_66@@1) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@1 f_66@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@1 f_66@@1))
))) (forall ((o2_45@@2 T@Ref) (f_66@@2 T@Field_12892_32411) ) (!  (=> (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@2 f_66@@2) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@4) o2_45@@2 f_66@@2) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@2 f_66@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@2 f_66@@2))
))) (forall ((o2_45@@3 T@Ref) (f_66@@3 T@Field_12892_32544) ) (!  (=> (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@3 f_66@@3) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) o2_45@@3 f_66@@3) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@3 f_66@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@3 f_66@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_12892_32502 pm_f_45@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12832) (ExhaleHeap@@4 T@PolymorphicMapType_12832) (Mask@@15 T@PolymorphicMapType_12853) (pm_f_45@@2 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_12892_32475 Mask@@15 null pm_f_45@@2) (IsWandField_12892_34249 pm_f_45@@2)) (and (and (and (and (forall ((o2_45@@4 T@Ref) (f_66@@4 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@4 f_66@@4) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@5) o2_45@@4 f_66@@4) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@4 f_66@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@4 f_66@@4))
)) (forall ((o2_45@@5 T@Ref) (f_66@@5 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@5 f_66@@5) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@5) o2_45@@5 f_66@@5) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@5 f_66@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@5 f_66@@5))
))) (forall ((o2_45@@6 T@Ref) (f_66@@6 T@Field_21767_5155) ) (!  (=> (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@6 f_66@@6) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@5) o2_45@@6 f_66@@6) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@6 f_66@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@6 f_66@@6))
))) (forall ((o2_45@@7 T@Ref) (f_66@@7 T@Field_12892_32411) ) (!  (=> (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@7 f_66@@7) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@5) o2_45@@7 f_66@@7) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@7 f_66@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@7 f_66@@7))
))) (forall ((o2_45@@8 T@Ref) (f_66@@8 T@Field_12892_32544) ) (!  (=> (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@8 f_66@@8) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) o2_45@@8 f_66@@8) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@8 f_66@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@8 f_66@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_12892_34249 pm_f_45@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12832) (ExhaleHeap@@5 T@PolymorphicMapType_12832) (Mask@@16 T@PolymorphicMapType_12853) (o_48@@0 T@Ref) (f_66@@9 T@Field_12892_32544) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_12892_38249 Mask@@16 o_48@@0 f_66@@9) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@6) o_48@@0 f_66@@9) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@5) o_48@@0 f_66@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@5) o_48@@0 f_66@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12832) (ExhaleHeap@@6 T@PolymorphicMapType_12832) (Mask@@17 T@PolymorphicMapType_12853) (o_48@@1 T@Ref) (f_66@@10 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_12892_32475 Mask@@17 o_48@@1 f_66@@10) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@7) o_48@@1 f_66@@10) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@6) o_48@@1 f_66@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@6) o_48@@1 f_66@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12832) (ExhaleHeap@@7 T@PolymorphicMapType_12832) (Mask@@18 T@PolymorphicMapType_12853) (o_48@@2 T@Ref) (f_66@@11 T@Field_21767_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_12892_5155 Mask@@18 o_48@@2 f_66@@11) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@8) o_48@@2 f_66@@11) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@7) o_48@@2 f_66@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@7) o_48@@2 f_66@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12832) (ExhaleHeap@@8 T@PolymorphicMapType_12832) (Mask@@19 T@PolymorphicMapType_12853) (o_48@@3 T@Ref) (f_66@@12 T@Field_12905_12906) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_12892_12906 Mask@@19 o_48@@3 f_66@@12) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@9) o_48@@3 f_66@@12) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@8) o_48@@3 f_66@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@8) o_48@@3 f_66@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12832) (ExhaleHeap@@9 T@PolymorphicMapType_12832) (Mask@@20 T@PolymorphicMapType_12853) (o_48@@4 T@Ref) (f_66@@13 T@Field_12892_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_12892_53 Mask@@20 o_48@@4 f_66@@13) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@10) o_48@@4 f_66@@13) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@9) o_48@@4 f_66@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@9) o_48@@4 f_66@@13))
)))
(assert (forall ((s0@@1 T@Seq_21814) (s1@@1 T@Seq_21814) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8825|)) (not (= s1@@1 |Seq#Empty_8825|))) (= (|Seq#Length_8825| (|Seq#Append_21814| s0@@1 s1@@1)) (+ (|Seq#Length_8825| s0@@1) (|Seq#Length_8825| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8825| (|Seq#Append_21814| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12892_32544) ) (! (= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12892_32411) ) (! (= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12905_12906) ) (! (= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12892_53) ) (! (= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21767_5155) ) (! (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_21814) (t@@1 T@Seq_21814) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8825| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8825| s@@15)) (|Seq#Length_8825| s@@15)) n@@15) (= (|Seq#Drop_8825| (|Seq#Append_21814| s@@15 t@@1) n@@15) (|Seq#Drop_8825| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8825| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8825| (|Seq#Append_21814| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12853) (SummandMask1 T@PolymorphicMapType_12853) (SummandMask2 T@PolymorphicMapType_12853) (o_2@@19 T@Ref) (f_4@@19 T@Field_12892_32544) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12853) (SummandMask1@@0 T@PolymorphicMapType_12853) (SummandMask2@@0 T@PolymorphicMapType_12853) (o_2@@20 T@Ref) (f_4@@20 T@Field_12892_32411) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12853) (SummandMask1@@1 T@PolymorphicMapType_12853) (SummandMask2@@1 T@PolymorphicMapType_12853) (o_2@@21 T@Ref) (f_4@@21 T@Field_12905_12906) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12853) (SummandMask1@@2 T@PolymorphicMapType_12853) (SummandMask2@@2 T@PolymorphicMapType_12853) (o_2@@22 T@Ref) (f_4@@22 T@Field_12892_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12853) (SummandMask1@@3 T@PolymorphicMapType_12853) (SummandMask2@@3 T@PolymorphicMapType_12853) (o_2@@23 T@Ref) (f_4@@23 T@Field_21767_5155) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) (o@@0 Int) ) (! (= (select (|Set#Intersection_7959| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.619:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_7959| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7959| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7959| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Difference_7959| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.634:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_7959| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7959| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_21814) (b@@5 T@Seq_21814) ) (!  (=> (|Seq#Equal_21814| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21814| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3032) (b@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array Int Bool)) (x@@3 Int) (y@@1 Int) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_7959| a@@8 x@@3) y@@1))
 :qid |stdinbpl.599:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_7959| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_7959| a@@9 b@@7) y@@2))
 :qid |stdinbpl.609:18|
 :skolemid |71|
 :pattern ( (|Set#Union_7959| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_7959| a@@10 b@@8) y@@3))
 :qid |stdinbpl.611:18|
 :skolemid |72|
 :pattern ( (|Set#Union_7959| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x@@4 Int) (o@@2 Int) ) (! (= (select (|Set#UnionOne_7959| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.595:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_7959| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@9 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_7959| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.636:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_7959| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_21814) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8825| s@@17))) (|Seq#ContainsTrigger_8825| s@@17 (|Seq#Index_8825| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8825| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)) (|Set#Card_7959| (|Set#Difference_7959| b@@10 a@@13))) (|Set#Card_7959| (|Set#Intersection_7959| a@@13 b@@10))) (|Set#Card_7959| (|Set#Union_7959| a@@13 b@@10))) (= (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)) (- (|Set#Card_7959| a@@13) (|Set#Card_7959| (|Set#Intersection_7959| a@@13 b@@10)))))
 :qid |stdinbpl.638:18|
 :skolemid |81|
 :pattern ( (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_21814) (s1@@3 T@Seq_21814) ) (!  (and (=> (= s0@@3 |Seq#Empty_8825|) (= (|Seq#Append_21814| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8825|) (= (|Seq#Append_21814| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21814| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8825| (|Seq#Singleton_8825| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8825| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21814) ) (! (<= 0 (|Seq#Length_8825| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8825| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_7959| s@@21))
 :qid |stdinbpl.581:18|
 :skolemid |58|
 :pattern ( (|Set#Card_7959| s@@21))
)))
(assert (forall ((a@@14 (Array Int Bool)) (x@@5 Int) ) (! (select (|Set#UnionOne_7959| a@@14 x@@5) x@@5)
 :qid |stdinbpl.597:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_7959| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_21814) (s1@@5 T@Seq_21814) ) (!  (=> (|Seq#Equal_21814| s0@@5 s1@@5) (and (= (|Seq#Length_8825| s0@@5) (|Seq#Length_8825| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8825| s0@@5))) (= (|Seq#Index_8825| s0@@5 j@@6) (|Seq#Index_8825| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8825| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8825| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21814| s0@@5 s1@@5))
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
(assert (forall ((a@@15 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_7959| (|Set#UnionOne_7959| a@@15 x@@6)) (|Set#Card_7959| a@@15)))
 :qid |stdinbpl.601:18|
 :skolemid |68|
 :pattern ( (|Set#Card_7959| (|Set#UnionOne_7959| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8825| (|Seq#Singleton_8825| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8825| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_7959| (|Set#Singleton_7959| r@@0)) 1)
 :qid |stdinbpl.592:18|
 :skolemid |64|
 :pattern ( (|Set#Card_7959| (|Set#Singleton_7959| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_7959| r@@1) r@@1)
 :qid |stdinbpl.590:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_7959| r@@1))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@11 (Array Int Bool)) ) (! (= (|Set#Union_7959| a@@16 (|Set#Union_7959| a@@16 b@@11)) (|Set#Union_7959| a@@16 b@@11))
 :qid |stdinbpl.624:18|
 :skolemid |75|
 :pattern ( (|Set#Union_7959| a@@16 (|Set#Union_7959| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@12 (Array Int Bool)) ) (! (= (|Set#Intersection_7959| a@@17 (|Set#Intersection_7959| a@@17 b@@12)) (|Set#Intersection_7959| a@@17 b@@12))
 :qid |stdinbpl.628:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_7959| a@@17 (|Set#Intersection_7959| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_21814) (t@@7 T@Seq_21814) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8825| s@@22))) (= (|Seq#Take_8825| (|Seq#Append_21814| s@@22 t@@7) n@@17) (|Seq#Take_8825| s@@22 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8825| (|Seq#Append_21814| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@23))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18) (|Seq#Take_3032| s@@23 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 Int) ) (!  (not (select |Set#Empty_7959| o@@3))
 :qid |stdinbpl.584:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_7959| o@@3))
)))
(assert (forall ((s@@24 T@Seq_21814) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8825| s@@24))) (= (|Seq#Length_8825| (|Seq#Update_8825| s@@24 i@@5 v@@2)) (|Seq#Length_8825| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8825| (|Seq#Update_8825| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8825| s@@24) (|Seq#Update_8825| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@25))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)) (|Seq#Length_3032| s@@25)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@25) (|Seq#Update_3032| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12832) (o_39 T@Ref) (f_53 T@Field_12892_32411) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@11) o_39 f_53 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@11) o_39 f_53 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12832) (o_39@@0 T@Ref) (f_53@@0 T@Field_12892_32544) (v@@5 T@PolymorphicMapType_13381) ) (! (succHeap Heap@@12 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@12) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@12) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12832) (o_39@@1 T@Ref) (f_53@@1 T@Field_21767_5155) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@13) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@13) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12832) (o_39@@2 T@Ref) (f_53@@2 T@Field_12905_12906) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@14) o_39@@2 f_53@@2 v@@7) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@14) o_39@@2 f_53@@2 v@@7) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12832) (o_39@@3 T@Ref) (f_53@@3 T@Field_12892_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@15) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@15) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_21814) (t@@9 T@Seq_21814) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8825| s@@26))) (= (|Seq#Drop_8825| (|Seq#Append_21814| s@@26 t@@9) n@@19) (|Seq#Append_21814| (|Seq#Drop_8825| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8825| (|Seq#Append_21814| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@27))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.669:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_21814) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8825| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8825| (|Seq#Drop_8825| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8825| s@@28 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8825| s@@28 n@@21) (|Seq#Index_8825| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@29 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Index_3032| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_7959| s@@30) 0) (= s@@30 |Set#Empty_7959|)) (=> (not (= (|Set#Card_7959| s@@30) 0)) (exists ((x@@7 Int) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.587:33|
 :skolemid |60|
))))
 :qid |stdinbpl.585:18|
 :skolemid |61|
 :pattern ( (|Set#Card_7959| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_21814) (s1@@7 T@Seq_21814) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8825|)) (not (= s1@@7 |Seq#Empty_8825|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8825| s0@@7))) (= (|Seq#Index_8825| (|Seq#Append_21814| s0@@7 s1@@7) n@@23) (|Seq#Index_8825| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8825| (|Seq#Append_21814| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8825| s0@@7 n@@23) (|Seq#Append_21814| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21814) (s1@@9 T@Seq_21814) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8825|)) (not (= s1@@9 |Seq#Empty_8825|))) (<= 0 m)) (< m (|Seq#Length_8825| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8825| s0@@9)) (|Seq#Length_8825| s0@@9)) m) (= (|Seq#Index_8825| (|Seq#Append_21814| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8825| s0@@9))) (|Seq#Index_8825| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8825| s1@@9 m) (|Seq#Append_21814| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@8 Int) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_7959| (|Set#UnionOne_7959| a@@20 x@@8)) (+ (|Set#Card_7959| a@@20) 1)))
 :qid |stdinbpl.603:18|
 :skolemid |69|
 :pattern ( (|Set#Card_7959| (|Set#UnionOne_7959| a@@20 x@@8)))
)))
(assert (forall ((o_39@@4 T@Ref) (f_21 T@Field_12905_12906) (Heap@@16 T@PolymorphicMapType_12832) ) (!  (=> (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@16) o_39@@4 $allocated) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@16) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@16) o_39@@4 f_21) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@16) o_39@@4 f_21))
)))
(assert (forall ((s@@31 T@Seq_21814) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8825| s@@31))) (= (|Seq#Index_8825| s@@31 i@@9) x@@9)) (|Seq#Contains_21814| s@@31 x@@9))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21814| s@@31 x@@9) (|Seq#Index_8825| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3032) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@32))) (= (|Seq#Index_3032| s@@32 i@@10) x@@10)) (|Seq#Contains_3032| s@@32 x@@10))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@32 x@@10) (|Seq#Index_3032| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21814) (s1@@11 T@Seq_21814) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21814| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21814| s0@@11 s1@@11))) (not (= (|Seq#Length_8825| s0@@11) (|Seq#Length_8825| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21814| s0@@11 s1@@11))) (= (|Seq#Length_8825| s0@@11) (|Seq#Length_8825| s1@@11))) (= (|Seq#SkolemDiff_21814| s0@@11 s1@@11) (|Seq#SkolemDiff_21814| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21814| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21814| s0@@11 s1@@11) (|Seq#Length_8825| s0@@11))) (not (= (|Seq#Index_8825| s0@@11 (|Seq#SkolemDiff_21814| s0@@11 s1@@11)) (|Seq#Index_8825| s1@@11 (|Seq#SkolemDiff_21814| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21814| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12892_32411) (v_1@@0 T@FrameType) (q T@Field_12892_32411) (w@@0 T@FrameType) (r@@2 T@Field_12892_32411) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r@@2 u)) (InsidePredicate_12892_12892 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.674:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_21814) ) (!  (=> (= (|Seq#Length_8825| s@@33) 0) (= s@@33 |Seq#Empty_8825|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8825| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@34) 0) (= s@@34 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@34))
)))
(assert (forall ((s@@35 T@Seq_21814) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8825| s@@35 n@@25) |Seq#Empty_8825|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8825| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@36 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array Int Bool)) (b@@15 (Array Int Bool)) (o@@4 Int) ) (! (= (select (|Set#Union_7959| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.607:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_7959| a@@22 b@@15) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun ys () T@Seq_21814)
(declare-fun i_4 () Int)
(declare-fun Heap@@17 () T@PolymorphicMapType_12832)
(declare-fun QPMask@0 () T@PolymorphicMapType_12853)
(declare-fun i_3 () Int)
(declare-fun j_15 () Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id test01)
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
 (=> (= (ControlFlow 0 0) 20) (let ((anon9_correct true))
(let ((anon15_Else_correct  (=> (and (not (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8825| ys)) i_4)) (= (ControlFlow 0 15) 11)) anon9_correct)))
(let ((anon15_Then_correct  (=> (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8825| ys)) i_4) (and (=> (= (ControlFlow 0 12) (- 0 14)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (< i_4 (|Seq#Length_8825| ys))) (=> (< i_4 (|Seq#Length_8825| ys)) (=> (= (ControlFlow 0 12) 11) anon9_correct))))))))
(let ((anon14_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8825| ys)) i_3_2)) (|Seq#Contains_3032| (|Seq#Range| 0 (|Seq#Length_8825| ys)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_8825| ys i_3_2) (|Seq#Index_8825| ys i_3_3))))
 :qid |stdinbpl.865:15|
 :skolemid |125|
)))))
(let ((anon12_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 j_1) (< j_1 (|Seq#Length_8825| ys)))) (not (= (|Seq#Index_8825| ys i_1) (|Seq#Index_8825| ys j_1))))
 :qid |stdinbpl.847:20|
 :skolemid |124|
 :pattern ( (|Seq#Index_8825| ys i_1) (|Seq#Index_8825| ys j_1))
)) (state Heap@@17 QPMask@0)) (and (and (=> (= (ControlFlow 0 16) 10) anon14_Else_correct) (=> (= (ControlFlow 0 16) 12) anon15_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon15_Else_correct)))))
(let ((anon5_correct true))
(let ((anon13_Else_correct  (=> (and (not (and (<= 0 i_3) (and (< i_3 j_15) (< j_15 (|Seq#Length_8825| ys))))) (= (ControlFlow 0 8) 2)) anon5_correct)))
(let ((anon13_Then_correct  (=> (and (<= 0 i_3) (and (< i_3 j_15) (< j_15 (|Seq#Length_8825| ys)))) (and (=> (= (ControlFlow 0 3) (- 0 7)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 3) (- 0 6)) (< i_3 (|Seq#Length_8825| ys))) (=> (< i_3 (|Seq#Length_8825| ys)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (>= j_15 0)) (=> (>= j_15 0) (and (=> (= (ControlFlow 0 3) (- 0 4)) (< j_15 (|Seq#Length_8825| ys))) (=> (< j_15 (|Seq#Length_8825| ys)) (=> (= (ControlFlow 0 3) 2) anon5_correct))))))))))))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 17) (- 0 18)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.799:15|
 :skolemid |118|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.799:15|
 :skolemid |118|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (and (select xs x_1@@1) (< NoPerm FullPerm)) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.805:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@17) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs x_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select xs (invRecv1 o_9)) (< NoPerm FullPerm)) (qpRange1 o_9)) (= (invRecv1 o_9) o_9))
 :qid |stdinbpl.809:22|
 :skolemid |120|
 :pattern ( (invRecv1 o_9))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.815:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@17) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs x_1@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select xs (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) o_9@@0 f_7) (+ (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_9@@0 f_7) FullPerm)))) (=> (not (and (and (select xs (invRecv1 o_9@@0)) (< NoPerm FullPerm)) (qpRange1 o_9@@0))) (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) o_9@@0 f_7) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_9@@0 f_7))))
 :qid |stdinbpl.821:22|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) o_9@@0 f_7))
)))) (=> (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_12892_53) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| QPMask@0) o_9@@1 f_5)))
 :qid |stdinbpl.825:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| QPMask@0) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_12905_12906) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| QPMask@0) o_9@@2 f_5@@0)))
 :qid |stdinbpl.825:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| QPMask@0) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_21767_5155) ) (!  (=> (not (= f_5@@1 f_7)) (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) o_9@@3 f_5@@1)))
 :qid |stdinbpl.825:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| QPMask@0) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_12892_32411) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| QPMask@0) o_9@@4 f_5@@2)))
 :qid |stdinbpl.825:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| QPMask@0) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_12892_32544) ) (!  (=> true (= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| QPMask@0) o_9@@5 f_5@@3)))
 :qid |stdinbpl.825:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| QPMask@0) o_9@@5 f_5@@3))
))) (and (state Heap@@17 QPMask@0) (state Heap@@17 QPMask@0))) (and (and (=> (= (ControlFlow 0 17) 16) anon12_Else_correct) (=> (= (ControlFlow 0 17) 3) anon13_Then_correct)) (=> (= (ControlFlow 0 17) 8) anon13_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@17 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 19) 1) anon11_Then_correct) (=> (= (ControlFlow 0 19) 17) anon11_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 20) 19) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))
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
(declare-sort T@Field_12892_53 0)
(declare-sort T@Field_12905_12906 0)
(declare-sort T@Field_21767_5155 0)
(declare-sort T@Field_12892_32544 0)
(declare-sort T@Field_12892_32411 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12853 0)) (((PolymorphicMapType_12853 (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| (Array T@Ref T@Field_21767_5155 Real)) (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_53 Real)) (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| (Array T@Ref T@Field_12905_12906 Real)) (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_32411 Real)) (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| (Array T@Ref T@Field_12892_32544 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13381 0)) (((PolymorphicMapType_13381 (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (Array T@Ref T@Field_12905_12906 Bool)) (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (Array T@Ref T@Field_21767_5155 Bool)) (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_32411 Bool)) (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (Array T@Ref T@Field_12892_32544 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12832 0)) (((PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_53 Bool)) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| (Array T@Ref T@Field_12905_12906 T@Ref)) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| (Array T@Ref T@Field_21767_5155 Int)) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_32544 T@PolymorphicMapType_13381)) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| (Array T@Ref T@Field_12892_32411 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12892_53)
(declare-fun f_7 () T@Field_21767_5155)
(declare-sort T@Seq_21814 0)
(declare-fun |Seq#Length_8825| (T@Seq_21814) Int)
(declare-fun |Seq#Drop_8825| (T@Seq_21814 Int) T@Seq_21814)
(declare-sort T@Seq_3032 0)
(declare-fun |Seq#Length_3032| (T@Seq_3032) Int)
(declare-fun |Seq#Drop_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun succHeap (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832) Bool)
(declare-fun state (T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12853) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13381)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_8825| (T@Seq_21814 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3032| (T@Seq_3032 Int) Int)
(declare-fun |Seq#Empty_8825| () T@Seq_21814)
(declare-fun |Seq#Empty_3032| () T@Seq_3032)
(declare-fun |Seq#Update_8825| (T@Seq_21814 Int T@Ref) T@Seq_21814)
(declare-fun |Seq#Update_3032| (T@Seq_3032 Int Int) T@Seq_3032)
(declare-fun |Set#Union_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Intersection_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Set#Singleton_7959| (Int) (Array Int Bool))
(declare-fun |Seq#Take_8825| (T@Seq_21814 Int) T@Seq_21814)
(declare-fun |Seq#Take_3032| (T@Seq_3032 Int) T@Seq_3032)
(declare-fun |Seq#Contains_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3032)
(declare-fun |Set#Card_7959| ((Array Int Bool)) Int)
(declare-fun |Seq#Contains_21814| (T@Seq_21814 T@Ref) Bool)
(declare-fun |Seq#Skolem_21814| (T@Seq_21814 T@Ref) Int)
(declare-fun |Seq#Skolem_3032| (T@Seq_3032 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12832 T@PolymorphicMapType_12832 T@PolymorphicMapType_12853) Bool)
(declare-fun IsPredicateField_12892_32502 (T@Field_12892_32411) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12892 (T@Field_12892_32411) T@Field_12892_32544)
(declare-fun HasDirectPerm_12892_32475 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_32411) Bool)
(declare-fun IsWandField_12892_34249 (T@Field_12892_32411) Bool)
(declare-fun WandMaskField_12892 (T@Field_12892_32411) T@Field_12892_32544)
(declare-fun |Seq#Singleton_8825| (T@Ref) T@Seq_21814)
(declare-fun |Seq#Singleton_3032| (Int) T@Seq_3032)
(declare-fun |Seq#Append_21814| (T@Seq_21814 T@Seq_21814) T@Seq_21814)
(declare-fun |Seq#Append_3032| (T@Seq_3032 T@Seq_3032) T@Seq_3032)
(declare-fun dummyHeap () T@PolymorphicMapType_12832)
(declare-fun ZeroMask () T@PolymorphicMapType_12853)
(declare-fun InsidePredicate_12892_12892 (T@Field_12892_32411 T@FrameType T@Field_12892_32411 T@FrameType) Bool)
(declare-fun IsPredicateField_8815_5155 (T@Field_21767_5155) Bool)
(declare-fun IsWandField_8815_5155 (T@Field_21767_5155) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8815_37795 (T@Field_12892_32544) Bool)
(declare-fun IsWandField_8815_37811 (T@Field_12892_32544) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8815_12906 (T@Field_12905_12906) Bool)
(declare-fun IsWandField_8815_12906 (T@Field_12905_12906) Bool)
(declare-fun IsPredicateField_8815_53 (T@Field_12892_53) Bool)
(declare-fun IsWandField_8815_53 (T@Field_12892_53) Bool)
(declare-fun HasDirectPerm_12892_38249 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_32544) Bool)
(declare-fun HasDirectPerm_12892_5155 (T@PolymorphicMapType_12853 T@Ref T@Field_21767_5155) Bool)
(declare-fun HasDirectPerm_12892_12906 (T@PolymorphicMapType_12853 T@Ref T@Field_12905_12906) Bool)
(declare-fun HasDirectPerm_12892_53 (T@PolymorphicMapType_12853 T@Ref T@Field_12892_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12853 T@PolymorphicMapType_12853 T@PolymorphicMapType_12853) Bool)
(declare-fun |Set#Difference_7959| ((Array Int Bool) (Array Int Bool)) (Array Int Bool))
(declare-fun |Seq#Equal_21814| (T@Seq_21814 T@Seq_21814) Bool)
(declare-fun |Seq#Equal_3032| (T@Seq_3032 T@Seq_3032) Bool)
(declare-fun |Set#UnionOne_7959| ((Array Int Bool) Int) (Array Int Bool))
(declare-fun |Seq#ContainsTrigger_8825| (T@Seq_21814 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3032| (T@Seq_3032 Int) Bool)
(declare-fun |Set#Empty_7959| () (Array Int Bool))
(declare-fun |Seq#SkolemDiff_21814| (T@Seq_21814 T@Seq_21814) Int)
(declare-fun |Seq#SkolemDiff_3032| (T@Seq_3032 T@Seq_3032) Int)
(assert (forall ((s T@Seq_21814) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_8825| s)) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) (- (|Seq#Length_8825| s) n))) (=> (< (|Seq#Length_8825| s) n) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_8825| (|Seq#Drop_8825| s n)) (|Seq#Length_8825| s))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_8825| (|Seq#Drop_8825| s n)))
 :pattern ( (|Seq#Length_8825| s) (|Seq#Drop_8825| s n))
)))
(assert (forall ((s@@0 T@Seq_3032) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3032| s@@0)) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (- (|Seq#Length_3032| s@@0) n@@0))) (=> (< (|Seq#Length_3032| s@@0) n@@0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)) (|Seq#Length_3032| s@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3032| (|Seq#Drop_3032| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3032| s@@0) (|Seq#Drop_3032| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12832) (Heap1 T@PolymorphicMapType_12832) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12832) (Mask T@PolymorphicMapType_12853) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12832) (Heap1@@0 T@PolymorphicMapType_12832) (Heap2 T@PolymorphicMapType_12832) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12892_32544) ) (!  (not (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12892_32411) ) (!  (not (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21767_5155) ) (!  (not (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12905_12906) ) (!  (not (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12892_53) ) (!  (not (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.670:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_21814) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_8825| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_8825| (|Seq#Drop_8825| s@@1 n@@1) j) (|Seq#Index_8825| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_8825| (|Seq#Drop_8825| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3032) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3032| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0) (|Seq#Index_3032| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.327:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3032| (|Seq#Drop_3032| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_8825| |Seq#Empty_8825|) 0))
(assert (= (|Seq#Length_3032| |Seq#Empty_3032|) 0))
(assert (forall ((s@@3 T@Seq_21814) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_8825| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3) (|Seq#Index_8825| s@@3 n@@3)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_8825| (|Seq#Update_8825| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_8825| s@@3 n@@3) (|Seq#Update_8825| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3032) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3032| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3032| s@@4 n@@4)))))
 :qid |stdinbpl.282:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3032| (|Seq#Update_3032| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3032| s@@4 n@@4) (|Seq#Update_3032| s@@4 i@@0 v@@0))
)))
(assert (forall ((a@@0 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Union_7959| (|Set#Union_7959| a@@0 b@@0) b@@0) (|Set#Union_7959| a@@0 b@@0))
 :qid |stdinbpl.622:18|
 :skolemid |74|
 :pattern ( (|Set#Union_7959| (|Set#Union_7959| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@1 (Array Int Bool)) ) (! (= (|Set#Intersection_7959| (|Set#Intersection_7959| a@@1 b@@1) b@@1) (|Set#Intersection_7959| a@@1 b@@1))
 :qid |stdinbpl.626:18|
 :skolemid |76|
 :pattern ( (|Set#Intersection_7959| (|Set#Intersection_7959| a@@1 b@@1) b@@1))
)))
(assert (forall ((r Int) (o Int) ) (! (= (select (|Set#Singleton_7959| r) o) (= r o))
 :qid |stdinbpl.591:18|
 :skolemid |63|
 :pattern ( (select (|Set#Singleton_7959| r) o))
)))
(assert (forall ((s@@5 T@Seq_21814) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_8825| s@@5)) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_8825| s@@5) n@@5) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) (|Seq#Length_8825| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)) 0)))
 :qid |stdinbpl.293:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_8825| (|Seq#Take_8825| s@@5 n@@5)))
 :pattern ( (|Seq#Take_8825| s@@5 n@@5) (|Seq#Length_8825| s@@5))
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
(assert (forall ((a@@2 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (! (= (+ (|Set#Card_7959| (|Set#Union_7959| a@@2 b@@2)) (|Set#Card_7959| (|Set#Intersection_7959| a@@2 b@@2))) (+ (|Set#Card_7959| a@@2) (|Set#Card_7959| b@@2)))
 :qid |stdinbpl.630:18|
 :skolemid |78|
 :pattern ( (|Set#Card_7959| (|Set#Union_7959| a@@2 b@@2)))
 :pattern ( (|Set#Card_7959| (|Set#Intersection_7959| a@@2 b@@2)))
)))
(assert (forall ((s@@7 T@Seq_21814) (x T@Ref) ) (!  (=> (|Seq#Contains_21814| s@@7 x) (and (and (<= 0 (|Seq#Skolem_21814| s@@7 x)) (< (|Seq#Skolem_21814| s@@7 x) (|Seq#Length_8825| s@@7))) (= (|Seq#Index_8825| s@@7 (|Seq#Skolem_21814| s@@7 x)) x)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_21814| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3032) (x@@0 Int) ) (!  (=> (|Seq#Contains_3032| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3032| s@@8 x@@0)) (< (|Seq#Skolem_3032| s@@8 x@@0) (|Seq#Length_3032| s@@8))) (= (|Seq#Index_3032| s@@8 (|Seq#Skolem_3032| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.425:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3032| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_21814) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_8825| s@@9 n@@7) s@@9))
 :qid |stdinbpl.409:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_8825| s@@9 n@@7))
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
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.673:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12832) (ExhaleHeap T@PolymorphicMapType_12832) (Mask@@0 T@PolymorphicMapType_12853) (pm_f_45 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_12892_32475 Mask@@0 null pm_f_45) (IsPredicateField_12892_32502 pm_f_45)) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@0) null (PredicateMaskField_12892 pm_f_45)) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_12892 pm_f_45)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_12892_32502 pm_f_45) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap) null (PredicateMaskField_12892 pm_f_45)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12832) (ExhaleHeap@@0 T@PolymorphicMapType_12832) (Mask@@1 T@PolymorphicMapType_12853) (pm_f_45@@0 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_12892_32475 Mask@@1 null pm_f_45@@0) (IsWandField_12892_34249 pm_f_45@@0)) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@1) null (WandMaskField_12892 pm_f_45@@0)) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_12892 pm_f_45@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_12892_34249 pm_f_45@@0) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@0) null (WandMaskField_12892 pm_f_45@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_21814| (|Seq#Singleton_8825| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_21814| (|Seq#Singleton_8825| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.550:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3032| (|Seq#Singleton_3032| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_21814) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_8825| s@@11))) (= (|Seq#Index_8825| (|Seq#Take_8825| s@@11 n@@9) j@@3) (|Seq#Index_8825| s@@11 j@@3)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_8825| (|Seq#Take_8825| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_8825| s@@11 j@@3) (|Seq#Take_8825| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3032) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3032| s@@12))) (= (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4) (|Seq#Index_3032| s@@12 j@@4)))
 :qid |stdinbpl.301:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3032| (|Seq#Take_3032| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3032| s@@12 j@@4) (|Seq#Take_3032| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_21814) (t T@Seq_21814) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_8825| s@@13))) (< n@@11 (|Seq#Length_8825| (|Seq#Append_21814| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_8825| s@@13)) (|Seq#Length_8825| s@@13)) n@@11) (= (|Seq#Take_8825| (|Seq#Append_21814| s@@13 t) n@@11) (|Seq#Append_21814| s@@13 (|Seq#Take_8825| t (|Seq#Sub| n@@11 (|Seq#Length_8825| s@@13)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_8825| (|Seq#Append_21814| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3032) (t@@0 T@Seq_3032) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3032| s@@14))) (< n@@12 (|Seq#Length_3032| (|Seq#Append_3032| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)) (|Seq#Length_3032| s@@14)) n@@12) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12) (|Seq#Append_3032| s@@14 (|Seq#Take_3032| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3032| s@@14)))))))
 :qid |stdinbpl.386:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12832) (ExhaleHeap@@1 T@PolymorphicMapType_12832) (Mask@@2 T@PolymorphicMapType_12853) (o_48 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@2) o_48 $allocated) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_48 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@1) o_48 $allocated))
)))
(assert (forall ((p T@Field_12892_32411) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12892_12892 p v_1 p w))
 :qid |stdinbpl.204:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12892_12892 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_21814) (s1 T@Seq_21814) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_8825|)) (not (= s1 |Seq#Empty_8825|))) (<= (|Seq#Length_8825| s0) n@@13)) (< n@@13 (|Seq#Length_8825| (|Seq#Append_21814| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_8825| s0)) (|Seq#Length_8825| s0)) n@@13) (= (|Seq#Index_8825| (|Seq#Append_21814| s0 s1) n@@13) (|Seq#Index_8825| s1 (|Seq#Sub| n@@13 (|Seq#Length_8825| s0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_8825| (|Seq#Append_21814| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3032) (s1@@0 T@Seq_3032) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3032|)) (not (= s1@@0 |Seq#Empty_3032|))) (<= (|Seq#Length_3032| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3032| (|Seq#Append_3032| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0)) (|Seq#Length_3032| s0@@0)) n@@14) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14) (|Seq#Index_3032| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3032| s0@@0))))))
 :qid |stdinbpl.273:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_8815_5155 f_7)))
(assert  (not (IsWandField_8815_5155 f_7)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12832) (ExhaleHeap@@2 T@PolymorphicMapType_12832) (Mask@@3 T@PolymorphicMapType_12853) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_12853) (o_2@@4 T@Ref) (f_4@@4 T@Field_12892_32544) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_8815_37795 f_4@@4))) (not (IsWandField_8815_37811 f_4@@4))) (<= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12853) (o_2@@5 T@Ref) (f_4@@5 T@Field_12892_32411) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_12892_32502 f_4@@5))) (not (IsWandField_12892_34249 f_4@@5))) (<= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12853) (o_2@@6 T@Ref) (f_4@@6 T@Field_12905_12906) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8815_12906 f_4@@6))) (not (IsWandField_8815_12906 f_4@@6))) (<= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12853) (o_2@@7 T@Ref) (f_4@@7 T@Field_12892_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8815_53 f_4@@7))) (not (IsWandField_8815_53 f_4@@7))) (<= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12853) (o_2@@8 T@Ref) (f_4@@8 T@Field_21767_5155) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8815_5155 f_4@@8))) (not (IsWandField_8815_5155 f_4@@8))) (<= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12853) (o_2@@9 T@Ref) (f_4@@9 T@Field_12892_32544) ) (! (= (HasDirectPerm_12892_38249 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_38249 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12853) (o_2@@10 T@Ref) (f_4@@10 T@Field_12892_32411) ) (! (= (HasDirectPerm_12892_32475 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_32475 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12853) (o_2@@11 T@Ref) (f_4@@11 T@Field_21767_5155) ) (! (= (HasDirectPerm_12892_5155 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_5155 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12853) (o_2@@12 T@Ref) (f_4@@12 T@Field_12905_12906) ) (! (= (HasDirectPerm_12892_12906 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_12906 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12853) (o_2@@13 T@Ref) (f_4@@13 T@Field_12892_53) ) (! (= (HasDirectPerm_12892_53 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12892_53 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12832) (ExhaleHeap@@3 T@PolymorphicMapType_12832) (Mask@@14 T@PolymorphicMapType_12853) (pm_f_45@@1 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_12892_32475 Mask@@14 null pm_f_45@@1) (IsPredicateField_12892_32502 pm_f_45@@1)) (and (and (and (and (forall ((o2_45 T@Ref) (f_66 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45 f_66) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@4) o2_45 f_66) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45 f_66)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45 f_66))
)) (forall ((o2_45@@0 T@Ref) (f_66@@0 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@0 f_66@@0) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@4) o2_45@@0 f_66@@0) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@0 f_66@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@0 f_66@@0))
))) (forall ((o2_45@@1 T@Ref) (f_66@@1 T@Field_21767_5155) ) (!  (=> (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@1 f_66@@1) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@4) o2_45@@1 f_66@@1) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@1 f_66@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@1 f_66@@1))
))) (forall ((o2_45@@2 T@Ref) (f_66@@2 T@Field_12892_32411) ) (!  (=> (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@2 f_66@@2) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@4) o2_45@@2 f_66@@2) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@2 f_66@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@2 f_66@@2))
))) (forall ((o2_45@@3 T@Ref) (f_66@@3 T@Field_12892_32544) ) (!  (=> (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) null (PredicateMaskField_12892 pm_f_45@@1))) o2_45@@3 f_66@@3) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@4) o2_45@@3 f_66@@3) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@3 f_66@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@3) o2_45@@3 f_66@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_12892_32502 pm_f_45@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12832) (ExhaleHeap@@4 T@PolymorphicMapType_12832) (Mask@@15 T@PolymorphicMapType_12853) (pm_f_45@@2 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_12892_32475 Mask@@15 null pm_f_45@@2) (IsWandField_12892_34249 pm_f_45@@2)) (and (and (and (and (forall ((o2_45@@4 T@Ref) (f_66@@4 T@Field_12892_53) ) (!  (=> (select (|PolymorphicMapType_13381_12892_53#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@4 f_66@@4) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@5) o2_45@@4 f_66@@4) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@4 f_66@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@4 f_66@@4))
)) (forall ((o2_45@@5 T@Ref) (f_66@@5 T@Field_12905_12906) ) (!  (=> (select (|PolymorphicMapType_13381_12892_12906#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@5 f_66@@5) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@5) o2_45@@5 f_66@@5) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@5 f_66@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@5 f_66@@5))
))) (forall ((o2_45@@6 T@Ref) (f_66@@6 T@Field_21767_5155) ) (!  (=> (select (|PolymorphicMapType_13381_12892_5155#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@6 f_66@@6) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@5) o2_45@@6 f_66@@6) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@6 f_66@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@6 f_66@@6))
))) (forall ((o2_45@@7 T@Ref) (f_66@@7 T@Field_12892_32411) ) (!  (=> (select (|PolymorphicMapType_13381_12892_32411#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@7 f_66@@7) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@5) o2_45@@7 f_66@@7) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@7 f_66@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@7 f_66@@7))
))) (forall ((o2_45@@8 T@Ref) (f_66@@8 T@Field_12892_32544) ) (!  (=> (select (|PolymorphicMapType_13381_12892_33722#PolymorphicMapType_13381| (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) null (WandMaskField_12892 pm_f_45@@2))) o2_45@@8 f_66@@8) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@5) o2_45@@8 f_66@@8) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@8 f_66@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@4) o2_45@@8 f_66@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_12892_34249 pm_f_45@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.192:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.565:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3032| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12832) (ExhaleHeap@@5 T@PolymorphicMapType_12832) (Mask@@16 T@PolymorphicMapType_12853) (o_48@@0 T@Ref) (f_66@@9 T@Field_12892_32544) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_12892_38249 Mask@@16 o_48@@0 f_66@@9) (= (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@6) o_48@@0 f_66@@9) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@5) o_48@@0 f_66@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| ExhaleHeap@@5) o_48@@0 f_66@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12832) (ExhaleHeap@@6 T@PolymorphicMapType_12832) (Mask@@17 T@PolymorphicMapType_12853) (o_48@@1 T@Ref) (f_66@@10 T@Field_12892_32411) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_12892_32475 Mask@@17 o_48@@1 f_66@@10) (= (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@7) o_48@@1 f_66@@10) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@6) o_48@@1 f_66@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| ExhaleHeap@@6) o_48@@1 f_66@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12832) (ExhaleHeap@@7 T@PolymorphicMapType_12832) (Mask@@18 T@PolymorphicMapType_12853) (o_48@@2 T@Ref) (f_66@@11 T@Field_21767_5155) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_12892_5155 Mask@@18 o_48@@2 f_66@@11) (= (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@8) o_48@@2 f_66@@11) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@7) o_48@@2 f_66@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| ExhaleHeap@@7) o_48@@2 f_66@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12832) (ExhaleHeap@@8 T@PolymorphicMapType_12832) (Mask@@19 T@PolymorphicMapType_12853) (o_48@@3 T@Ref) (f_66@@12 T@Field_12905_12906) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_12892_12906 Mask@@19 o_48@@3 f_66@@12) (= (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@9) o_48@@3 f_66@@12) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@8) o_48@@3 f_66@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| ExhaleHeap@@8) o_48@@3 f_66@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12832) (ExhaleHeap@@9 T@PolymorphicMapType_12832) (Mask@@20 T@PolymorphicMapType_12853) (o_48@@4 T@Ref) (f_66@@13 T@Field_12892_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_12892_53 Mask@@20 o_48@@4 f_66@@13) (= (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@10) o_48@@4 f_66@@13) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@9) o_48@@4 f_66@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| ExhaleHeap@@9) o_48@@4 f_66@@13))
)))
(assert (forall ((s0@@1 T@Seq_21814) (s1@@1 T@Seq_21814) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_8825|)) (not (= s1@@1 |Seq#Empty_8825|))) (= (|Seq#Length_8825| (|Seq#Append_21814| s0@@1 s1@@1)) (+ (|Seq#Length_8825| s0@@1) (|Seq#Length_8825| s1@@1))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_8825| (|Seq#Append_21814| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3032) (s1@@2 T@Seq_3032) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3032|)) (not (= s1@@2 |Seq#Empty_3032|))) (= (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)) (+ (|Seq#Length_3032| s0@@2) (|Seq#Length_3032| s1@@2))))
 :qid |stdinbpl.242:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3032| (|Seq#Append_3032| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12892_32544) ) (! (= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12892_32411) ) (! (= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12905_12906) ) (! (= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12892_53) ) (! (= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21767_5155) ) (! (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_21814) (t@@1 T@Seq_21814) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_8825| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_8825| s@@15)) (|Seq#Length_8825| s@@15)) n@@15) (= (|Seq#Drop_8825| (|Seq#Append_21814| s@@15 t@@1) n@@15) (|Seq#Drop_8825| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_8825| s@@15))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_8825| (|Seq#Append_21814| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3032) (t@@2 T@Seq_3032) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3032| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16)) (|Seq#Length_3032| s@@16)) n@@16) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16) (|Seq#Drop_3032| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3032| s@@16))))))
 :qid |stdinbpl.399:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12853) (SummandMask1 T@PolymorphicMapType_12853) (SummandMask2 T@PolymorphicMapType_12853) (o_2@@19 T@Ref) (f_4@@19 T@Field_12892_32544) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12853_8815_36666#PolymorphicMapType_12853| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12853) (SummandMask1@@0 T@PolymorphicMapType_12853) (SummandMask2@@0 T@PolymorphicMapType_12853) (o_2@@20 T@Ref) (f_4@@20 T@Field_12892_32411) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12853_8815_32411#PolymorphicMapType_12853| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12853) (SummandMask1@@1 T@PolymorphicMapType_12853) (SummandMask2@@1 T@PolymorphicMapType_12853) (o_2@@21 T@Ref) (f_4@@21 T@Field_12905_12906) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12853_8815_12906#PolymorphicMapType_12853| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12853) (SummandMask1@@2 T@PolymorphicMapType_12853) (SummandMask2@@2 T@PolymorphicMapType_12853) (o_2@@22 T@Ref) (f_4@@22 T@Field_12892_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12853_8815_53#PolymorphicMapType_12853| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12853) (SummandMask1@@3 T@PolymorphicMapType_12853) (SummandMask2@@3 T@PolymorphicMapType_12853) (o_2@@23 T@Ref) (f_4@@23 T@Field_21767_5155) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12853_8815_5155#PolymorphicMapType_12853| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array Int Bool)) (b@@3 (Array Int Bool)) (o@@0 Int) ) (! (= (select (|Set#Intersection_7959| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.619:18|
 :skolemid |73|
 :pattern ( (select (|Set#Intersection_7959| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_7959| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_7959| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.564:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3032| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@5 (Array Int Bool)) (b@@4 (Array Int Bool)) (o@@1 Int) ) (! (= (select (|Set#Difference_7959| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.634:18|
 :skolemid |79|
 :pattern ( (select (|Set#Difference_7959| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_7959| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 T@Seq_21814) (b@@5 T@Seq_21814) ) (!  (=> (|Seq#Equal_21814| a@@6 b@@5) (= a@@6 b@@5))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_21814| a@@6 b@@5))
)))
(assert (forall ((a@@7 T@Seq_3032) (b@@6 T@Seq_3032) ) (!  (=> (|Seq#Equal_3032| a@@7 b@@6) (= a@@7 b@@6))
 :qid |stdinbpl.537:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3032| a@@7 b@@6))
)))
(assert (forall ((a@@8 (Array Int Bool)) (x@@3 Int) (y@@1 Int) ) (!  (=> (select a@@8 y@@1) (select (|Set#UnionOne_7959| a@@8 x@@3) y@@1))
 :qid |stdinbpl.599:18|
 :skolemid |67|
 :pattern ( (|Set#UnionOne_7959| a@@8 x@@3) (select a@@8 y@@1))
)))
(assert (forall ((a@@9 (Array Int Bool)) (b@@7 (Array Int Bool)) (y@@2 Int) ) (!  (=> (select a@@9 y@@2) (select (|Set#Union_7959| a@@9 b@@7) y@@2))
 :qid |stdinbpl.609:18|
 :skolemid |71|
 :pattern ( (|Set#Union_7959| a@@9 b@@7) (select a@@9 y@@2))
)))
(assert (forall ((a@@10 (Array Int Bool)) (b@@8 (Array Int Bool)) (y@@3 Int) ) (!  (=> (select b@@8 y@@3) (select (|Set#Union_7959| a@@10 b@@8) y@@3))
 :qid |stdinbpl.611:18|
 :skolemid |72|
 :pattern ( (|Set#Union_7959| a@@10 b@@8) (select b@@8 y@@3))
)))
(assert (forall ((a@@11 (Array Int Bool)) (x@@4 Int) (o@@2 Int) ) (! (= (select (|Set#UnionOne_7959| a@@11 x@@4) o@@2)  (or (= o@@2 x@@4) (select a@@11 o@@2)))
 :qid |stdinbpl.595:18|
 :skolemid |65|
 :pattern ( (select (|Set#UnionOne_7959| a@@11 x@@4) o@@2))
)))
(assert (forall ((a@@12 (Array Int Bool)) (b@@9 (Array Int Bool)) (y@@4 Int) ) (!  (=> (select b@@9 y@@4) (not (select (|Set#Difference_7959| a@@12 b@@9) y@@4)))
 :qid |stdinbpl.636:18|
 :skolemid |80|
 :pattern ( (|Set#Difference_7959| a@@12 b@@9) (select b@@9 y@@4))
)))
(assert (forall ((s@@17 T@Seq_21814) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_8825| s@@17))) (|Seq#ContainsTrigger_8825| s@@17 (|Seq#Index_8825| s@@17 i@@3)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_8825| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3032) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3032| s@@18))) (|Seq#ContainsTrigger_3032| s@@18 (|Seq#Index_3032| s@@18 i@@4)))
 :qid |stdinbpl.430:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3032| s@@18 i@@4))
)))
(assert (forall ((a@@13 (Array Int Bool)) (b@@10 (Array Int Bool)) ) (!  (and (= (+ (+ (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)) (|Set#Card_7959| (|Set#Difference_7959| b@@10 a@@13))) (|Set#Card_7959| (|Set#Intersection_7959| a@@13 b@@10))) (|Set#Card_7959| (|Set#Union_7959| a@@13 b@@10))) (= (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)) (- (|Set#Card_7959| a@@13) (|Set#Card_7959| (|Set#Intersection_7959| a@@13 b@@10)))))
 :qid |stdinbpl.638:18|
 :skolemid |81|
 :pattern ( (|Set#Card_7959| (|Set#Difference_7959| a@@13 b@@10)))
)))
(assert (forall ((s0@@3 T@Seq_21814) (s1@@3 T@Seq_21814) ) (!  (and (=> (= s0@@3 |Seq#Empty_8825|) (= (|Seq#Append_21814| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_8825|) (= (|Seq#Append_21814| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_21814| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3032) (s1@@4 T@Seq_3032) ) (!  (and (=> (= s0@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3032|) (= (|Seq#Append_3032| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.248:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3032| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_8825| (|Seq#Singleton_8825| t@@3) 0) t@@3)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_8825| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3032| (|Seq#Singleton_3032| t@@4) 0) t@@4)
 :qid |stdinbpl.252:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3032| t@@4))
)))
(assert (forall ((s@@19 T@Seq_21814) ) (! (<= 0 (|Seq#Length_8825| s@@19))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_8825| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3032) ) (! (<= 0 (|Seq#Length_3032| s@@20))
 :qid |stdinbpl.231:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3032| s@@20))
)))
(assert (forall ((s@@21 (Array Int Bool)) ) (! (<= 0 (|Set#Card_7959| s@@21))
 :qid |stdinbpl.581:18|
 :skolemid |58|
 :pattern ( (|Set#Card_7959| s@@21))
)))
(assert (forall ((a@@14 (Array Int Bool)) (x@@5 Int) ) (! (select (|Set#UnionOne_7959| a@@14 x@@5) x@@5)
 :qid |stdinbpl.597:18|
 :skolemid |66|
 :pattern ( (|Set#UnionOne_7959| a@@14 x@@5))
)))
(assert (forall ((s0@@5 T@Seq_21814) (s1@@5 T@Seq_21814) ) (!  (=> (|Seq#Equal_21814| s0@@5 s1@@5) (and (= (|Seq#Length_8825| s0@@5) (|Seq#Length_8825| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_8825| s0@@5))) (= (|Seq#Index_8825| s0@@5 j@@6) (|Seq#Index_8825| s1@@5 j@@6)))
 :qid |stdinbpl.527:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_8825| s0@@5 j@@6))
 :pattern ( (|Seq#Index_8825| s1@@5 j@@6))
))))
 :qid |stdinbpl.524:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_21814| s0@@5 s1@@5))
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
(assert (forall ((a@@15 (Array Int Bool)) (x@@6 Int) ) (!  (=> (select a@@15 x@@6) (= (|Set#Card_7959| (|Set#UnionOne_7959| a@@15 x@@6)) (|Set#Card_7959| a@@15)))
 :qid |stdinbpl.601:18|
 :skolemid |68|
 :pattern ( (|Set#Card_7959| (|Set#UnionOne_7959| a@@15 x@@6)))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_8825| (|Seq#Singleton_8825| t@@5)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_8825| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3032| (|Seq#Singleton_3032| t@@6)) 1)
 :qid |stdinbpl.239:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3032| t@@6))
)))
(assert (forall ((r@@0 Int) ) (! (= (|Set#Card_7959| (|Set#Singleton_7959| r@@0)) 1)
 :qid |stdinbpl.592:18|
 :skolemid |64|
 :pattern ( (|Set#Card_7959| (|Set#Singleton_7959| r@@0)))
)))
(assert (forall ((r@@1 Int) ) (! (select (|Set#Singleton_7959| r@@1) r@@1)
 :qid |stdinbpl.590:18|
 :skolemid |62|
 :pattern ( (|Set#Singleton_7959| r@@1))
)))
(assert (forall ((a@@16 (Array Int Bool)) (b@@11 (Array Int Bool)) ) (! (= (|Set#Union_7959| a@@16 (|Set#Union_7959| a@@16 b@@11)) (|Set#Union_7959| a@@16 b@@11))
 :qid |stdinbpl.624:18|
 :skolemid |75|
 :pattern ( (|Set#Union_7959| a@@16 (|Set#Union_7959| a@@16 b@@11)))
)))
(assert (forall ((a@@17 (Array Int Bool)) (b@@12 (Array Int Bool)) ) (! (= (|Set#Intersection_7959| a@@17 (|Set#Intersection_7959| a@@17 b@@12)) (|Set#Intersection_7959| a@@17 b@@12))
 :qid |stdinbpl.628:18|
 :skolemid |77|
 :pattern ( (|Set#Intersection_7959| a@@17 (|Set#Intersection_7959| a@@17 b@@12)))
)))
(assert (forall ((s@@22 T@Seq_21814) (t@@7 T@Seq_21814) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_8825| s@@22))) (= (|Seq#Take_8825| (|Seq#Append_21814| s@@22 t@@7) n@@17) (|Seq#Take_8825| s@@22 n@@17)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_8825| (|Seq#Append_21814| s@@22 t@@7) n@@17))
)))
(assert (forall ((s@@23 T@Seq_3032) (t@@8 T@Seq_3032) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3032| s@@23))) (= (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18) (|Seq#Take_3032| s@@23 n@@18)))
 :qid |stdinbpl.381:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3032| (|Seq#Append_3032| s@@23 t@@8) n@@18))
)))
(assert (forall ((o@@3 Int) ) (!  (not (select |Set#Empty_7959| o@@3))
 :qid |stdinbpl.584:18|
 :skolemid |59|
 :pattern ( (select |Set#Empty_7959| o@@3))
)))
(assert (forall ((s@@24 T@Seq_21814) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_8825| s@@24))) (= (|Seq#Length_8825| (|Seq#Update_8825| s@@24 i@@5 v@@2)) (|Seq#Length_8825| s@@24)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_8825| (|Seq#Update_8825| s@@24 i@@5 v@@2)))
 :pattern ( (|Seq#Length_8825| s@@24) (|Seq#Update_8825| s@@24 i@@5 v@@2))
)))
(assert (forall ((s@@25 T@Seq_3032) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3032| s@@25))) (= (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)) (|Seq#Length_3032| s@@25)))
 :qid |stdinbpl.280:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3032| (|Seq#Update_3032| s@@25 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3032| s@@25) (|Seq#Update_3032| s@@25 i@@6 v@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12832) (o_39 T@Ref) (f_53 T@Field_12892_32411) (v@@4 T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@11) o_39 f_53 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@11) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@11) (store (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@11) o_39 f_53 v@@4)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12832) (o_39@@0 T@Ref) (f_53@@0 T@Field_12892_32544) (v@@5 T@PolymorphicMapType_13381) ) (! (succHeap Heap@@12 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@12) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@12) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@12) (store (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@12) o_39@@0 f_53@@0 v@@5) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12832) (o_39@@1 T@Ref) (f_53@@1 T@Field_21767_5155) (v@@6 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@13) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@13) (store (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@13) o_39@@1 f_53@@1 v@@6) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@13) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12832) (o_39@@2 T@Ref) (f_53@@2 T@Field_12905_12906) (v@@7 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@14) o_39@@2 f_53@@2 v@@7) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@14) (store (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@14) o_39@@2 f_53@@2 v@@7) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@14) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12832) (o_39@@3 T@Ref) (f_53@@3 T@Field_12892_53) (v@@8 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@15) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12832 (store (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@15) o_39@@3 f_53@@3 v@@8) (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_8815_5155#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32588#PolymorphicMapType_12832| Heap@@15) (|PolymorphicMapType_12832_12892_32411#PolymorphicMapType_12832| Heap@@15)))
)))
(assert (forall ((s@@26 T@Seq_21814) (t@@9 T@Seq_21814) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_8825| s@@26))) (= (|Seq#Drop_8825| (|Seq#Append_21814| s@@26 t@@9) n@@19) (|Seq#Append_21814| (|Seq#Drop_8825| s@@26 n@@19) t@@9)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_8825| (|Seq#Append_21814| s@@26 t@@9) n@@19))
)))
(assert (forall ((s@@27 T@Seq_3032) (t@@10 T@Seq_3032) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3032| s@@27))) (= (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20) (|Seq#Append_3032| (|Seq#Drop_3032| s@@27 n@@20) t@@10)))
 :qid |stdinbpl.395:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3032| (|Seq#Append_3032| s@@27 t@@10) n@@20))
)))
(assert (forall ((a@@18 Int) (b@@13 Int) ) (! (= (<= a@@18 b@@13) (= (|Math#min| a@@18 b@@13) a@@18))
 :qid |stdinbpl.668:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@18 b@@13))
)))
(assert (forall ((a@@19 Int) (b@@14 Int) ) (! (= (<= b@@14 a@@19) (= (|Math#min| a@@19 b@@14) b@@14))
 :qid |stdinbpl.669:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@19 b@@14))
)))
(assert (forall ((s@@28 T@Seq_21814) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_8825| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_8825| (|Seq#Drop_8825| s@@28 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_8825| s@@28 i@@7))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_8825| s@@28 n@@21) (|Seq#Index_8825| s@@28 i@@7))
)))
(assert (forall ((s@@29 T@Seq_3032) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3032| s@@29))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3032| (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3032| s@@29 i@@8))))
 :qid |stdinbpl.331:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3032| s@@29 n@@22) (|Seq#Index_3032| s@@29 i@@8))
)))
(assert (forall ((s@@30 (Array Int Bool)) ) (!  (and (= (= (|Set#Card_7959| s@@30) 0) (= s@@30 |Set#Empty_7959|)) (=> (not (= (|Set#Card_7959| s@@30) 0)) (exists ((x@@7 Int) ) (! (select s@@30 x@@7)
 :qid |stdinbpl.587:33|
 :skolemid |60|
))))
 :qid |stdinbpl.585:18|
 :skolemid |61|
 :pattern ( (|Set#Card_7959| s@@30))
)))
(assert (forall ((s0@@7 T@Seq_21814) (s1@@7 T@Seq_21814) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_8825|)) (not (= s1@@7 |Seq#Empty_8825|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_8825| s0@@7))) (= (|Seq#Index_8825| (|Seq#Append_21814| s0@@7 s1@@7) n@@23) (|Seq#Index_8825| s0@@7 n@@23)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_8825| (|Seq#Append_21814| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_8825| s0@@7 n@@23) (|Seq#Append_21814| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3032) (s1@@8 T@Seq_3032) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3032|)) (not (= s1@@8 |Seq#Empty_3032|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3032| s0@@8))) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24) (|Seq#Index_3032| s0@@8 n@@24)))
 :qid |stdinbpl.271:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3032| (|Seq#Append_3032| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3032| s0@@8 n@@24) (|Seq#Append_3032| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_21814) (s1@@9 T@Seq_21814) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_8825|)) (not (= s1@@9 |Seq#Empty_8825|))) (<= 0 m)) (< m (|Seq#Length_8825| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_8825| s0@@9)) (|Seq#Length_8825| s0@@9)) m) (= (|Seq#Index_8825| (|Seq#Append_21814| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_8825| s0@@9))) (|Seq#Index_8825| s1@@9 m))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_8825| s1@@9 m) (|Seq#Append_21814| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3032) (s1@@10 T@Seq_3032) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3032|)) (not (= s1@@10 |Seq#Empty_3032|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3032| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10)) (|Seq#Length_3032| s0@@10)) m@@0) (= (|Seq#Index_3032| (|Seq#Append_3032| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3032| s0@@10))) (|Seq#Index_3032| s1@@10 m@@0))))
 :qid |stdinbpl.276:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3032| s1@@10 m@@0) (|Seq#Append_3032| s0@@10 s1@@10))
)))
(assert (forall ((a@@20 (Array Int Bool)) (x@@8 Int) ) (!  (=> (not (select a@@20 x@@8)) (= (|Set#Card_7959| (|Set#UnionOne_7959| a@@20 x@@8)) (+ (|Set#Card_7959| a@@20) 1)))
 :qid |stdinbpl.603:18|
 :skolemid |69|
 :pattern ( (|Set#Card_7959| (|Set#UnionOne_7959| a@@20 x@@8)))
)))
(assert (forall ((o_39@@4 T@Ref) (f_21 T@Field_12905_12906) (Heap@@16 T@PolymorphicMapType_12832) ) (!  (=> (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@16) o_39@@4 $allocated) (select (|PolymorphicMapType_12832_8450_53#PolymorphicMapType_12832| Heap@@16) (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@16) o_39@@4 f_21) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12832_8453_8454#PolymorphicMapType_12832| Heap@@16) o_39@@4 f_21))
)))
(assert (forall ((s@@31 T@Seq_21814) (x@@9 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_8825| s@@31))) (= (|Seq#Index_8825| s@@31 i@@9) x@@9)) (|Seq#Contains_21814| s@@31 x@@9))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_21814| s@@31 x@@9) (|Seq#Index_8825| s@@31 i@@9))
)))
(assert (forall ((s@@32 T@Seq_3032) (x@@10 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3032| s@@32))) (= (|Seq#Index_3032| s@@32 i@@10) x@@10)) (|Seq#Contains_3032| s@@32 x@@10))
 :qid |stdinbpl.428:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3032| s@@32 x@@10) (|Seq#Index_3032| s@@32 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_21814) (s1@@11 T@Seq_21814) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_21814| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21814| s0@@11 s1@@11))) (not (= (|Seq#Length_8825| s0@@11) (|Seq#Length_8825| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_21814| s0@@11 s1@@11))) (= (|Seq#Length_8825| s0@@11) (|Seq#Length_8825| s1@@11))) (= (|Seq#SkolemDiff_21814| s0@@11 s1@@11) (|Seq#SkolemDiff_21814| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_21814| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_21814| s0@@11 s1@@11) (|Seq#Length_8825| s0@@11))) (not (= (|Seq#Index_8825| s0@@11 (|Seq#SkolemDiff_21814| s0@@11 s1@@11)) (|Seq#Index_8825| s1@@11 (|Seq#SkolemDiff_21814| s0@@11 s1@@11))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_21814| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3032) (s1@@12 T@Seq_3032) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3032| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (not (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3032| s0@@12 s1@@12))) (= (|Seq#Length_3032| s0@@12) (|Seq#Length_3032| s1@@12))) (= (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#SkolemDiff_3032| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3032| s0@@12 s1@@12) (|Seq#Length_3032| s0@@12))) (not (= (|Seq#Index_3032| s0@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12)) (|Seq#Index_3032| s1@@12 (|Seq#SkolemDiff_3032| s0@@12 s1@@12))))))
 :qid |stdinbpl.532:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3032| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12892_32411) (v_1@@0 T@FrameType) (q T@Field_12892_32411) (w@@0 T@FrameType) (r@@2 T@Field_12892_32411) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r@@2 u)) (InsidePredicate_12892_12892 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.199:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12892_12892 p@@1 v_1@@0 q w@@0) (InsidePredicate_12892_12892 q w@@0 r@@2 u))
)))
(assert (forall ((a@@21 Int) ) (!  (=> (< a@@21 0) (= (|Math#clip| a@@21) 0))
 :qid |stdinbpl.674:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@21))
)))
(assert (forall ((s@@33 T@Seq_21814) ) (!  (=> (= (|Seq#Length_8825| s@@33) 0) (= s@@33 |Seq#Empty_8825|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_8825| s@@33))
)))
(assert (forall ((s@@34 T@Seq_3032) ) (!  (=> (= (|Seq#Length_3032| s@@34) 0) (= s@@34 |Seq#Empty_3032|))
 :qid |stdinbpl.235:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3032| s@@34))
)))
(assert (forall ((s@@35 T@Seq_21814) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_8825| s@@35 n@@25) |Seq#Empty_8825|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_8825| s@@35 n@@25))
)))
(assert (forall ((s@@36 T@Seq_3032) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3032| s@@36 n@@26) |Seq#Empty_3032|))
 :qid |stdinbpl.411:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3032| s@@36 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@22 (Array Int Bool)) (b@@15 (Array Int Bool)) (o@@4 Int) ) (! (= (select (|Set#Union_7959| a@@22 b@@15) o@@4)  (or (select a@@22 o@@4) (select b@@15 o@@4)))
 :qid |stdinbpl.607:18|
 :skolemid |70|
 :pattern ( (select (|Set#Union_7959| a@@22 b@@15) o@@4))
)))
; Valid

