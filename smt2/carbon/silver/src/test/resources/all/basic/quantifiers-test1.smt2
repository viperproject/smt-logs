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
(declare-sort T@Field_19538_53 0)
(declare-sort T@Field_19551_19552 0)
(declare-sort T@Field_28398_4990 0)
(declare-sort T@Field_12262_52625 0)
(declare-sort T@Field_12262_52492 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_19499 0)) (((PolymorphicMapType_19499 (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| (Array T@Ref T@Field_28398_4990 Real)) (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| (Array T@Ref T@Field_19538_53 Real)) (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| (Array T@Ref T@Field_19551_19552 Real)) (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| (Array T@Ref T@Field_12262_52492 Real)) (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| (Array T@Ref T@Field_12262_52625 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20027 0)) (((PolymorphicMapType_20027 (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (Array T@Ref T@Field_19551_19552 Bool)) (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (Array T@Ref T@Field_28398_4990 Bool)) (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (Array T@Ref T@Field_12262_52492 Bool)) (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (Array T@Ref T@Field_12262_52625 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19478 0)) (((PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| (Array T@Ref T@Field_19551_19552 T@Ref)) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| (Array T@Ref T@Field_28398_4990 Int)) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| (Array T@Ref T@Field_12262_52625 T@PolymorphicMapType_20027)) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| (Array T@Ref T@Field_12262_52492 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_19538_53)
(declare-fun Cell_x () T@Field_28398_4990)
(declare-sort T@Seq_51106 0)
(declare-fun |Seq#Length_12462| (T@Seq_51106) Int)
(declare-fun |Seq#Drop_12462| (T@Seq_51106 Int) T@Seq_51106)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun state (T@PolymorphicMapType_19478 T@PolymorphicMapType_19499) Bool)
(declare-fun |g2'| (T@PolymorphicMapType_19478 Int Int) Bool)
(declare-fun |g2#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478) Bool)
(declare-fun Cell_get_1 (T@PolymorphicMapType_19478 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_19499) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20027)
(declare-fun |f'| (T@PolymorphicMapType_19478 Int Int) Int)
(declare-fun dummyFunction_5179 (Int) Bool)
(declare-fun |f#triggerStateless| (Int Int) Int)
(declare-fun dummyFunction_6120 (Bool) Bool)
(declare-fun |g2#triggerStateless| (Int Int) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_12462| (T@Seq_51106 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |f#frame| (T@FrameType Int Int) Int)
(declare-fun |Seq#Empty_12462| () T@Seq_51106)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |Cell_get'| (T@PolymorphicMapType_19478 T@Ref) Int)
(declare-fun |Cell_get#triggerStateless| (T@Ref) Int)
(declare-fun |reqIGt0'| (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |reqIGt0#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun |f2'| (T@PolymorphicMapType_19478 Int) Bool)
(declare-fun |f2#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_12462| (T@Seq_51106 Int T@Ref) T@Seq_51106)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_12462| (T@Seq_51106 Int) T@Seq_51106)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_51106| (T@Seq_51106 T@Ref) Bool)
(declare-fun |Seq#Skolem_51106| (T@Seq_51106 T@Ref) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun reqIGt0 (T@PolymorphicMapType_19478 Int) Int)
(declare-fun g_3 (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478 T@PolymorphicMapType_19499) Bool)
(declare-fun IsPredicateField_12262_52583 (T@Field_12262_52492) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12262 (T@Field_12262_52492) T@Field_12262_52625)
(declare-fun HasDirectPerm_12262_52556 (T@PolymorphicMapType_19499 T@Ref T@Field_12262_52492) Bool)
(declare-fun IsWandField_12262_54330 (T@Field_12262_52492) Bool)
(declare-fun WandMaskField_12262 (T@Field_12262_52492) T@Field_12262_52625)
(declare-fun g2_1 (T@PolymorphicMapType_19478 Int Int) Bool)
(declare-fun |Seq#Singleton_12462| (T@Ref) T@Seq_51106)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun f2_3 (T@PolymorphicMapType_19478 Int) Bool)
(declare-fun |Seq#Append_51106| (T@Seq_51106 T@Seq_51106) T@Seq_51106)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_19478)
(declare-fun ZeroMask () T@PolymorphicMapType_19499)
(declare-fun InsidePredicate_19538_19538 (T@Field_12262_52492 T@FrameType T@Field_12262_52492 T@FrameType) Bool)
(declare-fun IsPredicateField_12262_4990 (T@Field_28398_4990) Bool)
(declare-fun IsWandField_12262_4990 (T@Field_28398_4990) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12262_57876 (T@Field_12262_52625) Bool)
(declare-fun IsWandField_12262_57892 (T@Field_12262_52625) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12262_19552 (T@Field_19551_19552) Bool)
(declare-fun IsWandField_12262_19552 (T@Field_19551_19552) Bool)
(declare-fun IsPredicateField_12262_53 (T@Field_19538_53) Bool)
(declare-fun IsWandField_12262_53 (T@Field_19538_53) Bool)
(declare-fun HasDirectPerm_12262_58330 (T@PolymorphicMapType_19499 T@Ref T@Field_12262_52625) Bool)
(declare-fun HasDirectPerm_12262_19552 (T@PolymorphicMapType_19499 T@Ref T@Field_19551_19552) Bool)
(declare-fun HasDirectPerm_12262_53 (T@PolymorphicMapType_19499 T@Ref T@Field_19538_53) Bool)
(declare-fun HasDirectPerm_12262_4990 (T@PolymorphicMapType_19499 T@Ref T@Field_28398_4990) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun f_6@@0 (T@PolymorphicMapType_19478 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_19499 T@PolymorphicMapType_19499 T@PolymorphicMapType_19499) Bool)
(declare-fun |Seq#Equal_51106| (T@Seq_51106 T@Seq_51106) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |f2#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_12462| (T@Seq_51106 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_9095| (T@Seq_2867 Int) Bool)
(declare-fun |Cell_get#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_4990 (Int) T@FrameType)
(declare-fun |reqIGt0#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(declare-fun |Seq#SkolemDiff_51106| (T@Seq_51106 T@Seq_51106) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_51106) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12462| s)) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) (- (|Seq#Length_12462| s) n))) (=> (< (|Seq#Length_12462| s) n) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) (|Seq#Length_12462| s))))
 :qid |stdinbpl.281:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12462| (|Seq#Drop_12462| s n)))
 :pattern ( (|Seq#Length_12462| s) (|Seq#Drop_12462| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.281:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_19478) (Mask T@PolymorphicMapType_19499) (i Int) (j_9 Int) ) (!  (=> (state Heap Mask) (= (|g2'| Heap i j_9) (|g2#frame| EmptyFrame i j_9)))
 :qid |stdinbpl.1040:15|
 :skolemid |141|
 :pattern ( (state Heap Mask) (|g2'| Heap i j_9))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_19478) (Heap1 T@PolymorphicMapType_19478) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19478) (Mask@@0 T@PolymorphicMapType_19499) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (Cell_get_1 Heap@@0 this) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@0) this Cell_x)))
 :qid |stdinbpl.764:15|
 :skolemid |120|
 :pattern ( (state Heap@@0 Mask@@0) (Cell_get_1 Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19478) (Mask@@1 T@PolymorphicMapType_19499) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19478) (Heap1@@0 T@PolymorphicMapType_19478) (Heap2 T@PolymorphicMapType_19478) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12262_52625) ) (!  (not (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12262_52492) ) (!  (not (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28398_4990) ) (!  (not (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19551_19552) ) (!  (not (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19538_53) ) (!  (not (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19478) (i@@0 Int) (j_9@@0 Int) ) (! (dummyFunction_5179 (|f#triggerStateless| i@@0 j_9@@0))
 :qid |stdinbpl.877:15|
 :skolemid |127|
 :pattern ( (|f'| Heap@@2 i@@0 j_9@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19478) (i@@1 Int) (j_9@@1 Int) ) (! (dummyFunction_6120 (|g2#triggerStateless| i@@1 j_9@@1))
 :qid |stdinbpl.1027:15|
 :skolemid |139|
 :pattern ( (|g2'| Heap@@3 i@@1 j_9@@1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.645:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_51106) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12462| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12462| (|Seq#Drop_12462| s@@1 n@@1) j) (|Seq#Index_12462| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.302:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12462| (|Seq#Drop_12462| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.302:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19478) (Mask@@2 T@PolymorphicMapType_19499) (i@@2 Int) (j_9@@2 Int) ) (!  (=> (state Heap@@4 Mask@@2) (= (|f'| Heap@@4 i@@2 j_9@@2) (|f#frame| EmptyFrame i@@2 j_9@@2)))
 :qid |stdinbpl.890:15|
 :skolemid |129|
 :pattern ( (state Heap@@4 Mask@@2) (|f'| Heap@@4 i@@2 j_9@@2))
)))
(assert (= (|Seq#Length_12462| |Seq#Empty_12462|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19478) (this@@0 T@Ref) ) (! (dummyFunction_5179 (|Cell_get#triggerStateless| this@@0))
 :qid |stdinbpl.758:15|
 :skolemid |119|
 :pattern ( (|Cell_get'| Heap@@5 this@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19478) (i@@3 Int) ) (! (dummyFunction_5179 (|reqIGt0#triggerStateless| i@@3))
 :qid |stdinbpl.823:15|
 :skolemid |123|
 :pattern ( (|reqIGt0'| Heap@@6 i@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19478) (i@@4 Int) ) (! (dummyFunction_5179 (|g#triggerStateless| i@@4))
 :qid |stdinbpl.927:15|
 :skolemid |131|
 :pattern ( (|g'| Heap@@7 i@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19478) (i@@5 Int) ) (! (dummyFunction_6120 (|f2#triggerStateless| i@@5))
 :qid |stdinbpl.977:15|
 :skolemid |135|
 :pattern ( (|f2'| Heap@@8 i@@5))
)))
(assert (forall ((s@@3 T@Seq_51106) (i@@6 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12462| s@@3))) (and (=> (= i@@6 n@@3) (= (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3) v)) (=> (not (= i@@6 n@@3)) (= (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3) (|Seq#Index_12462| s@@3 n@@3)))))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3))
 :pattern ( (|Seq#Index_12462| s@@3 n@@3) (|Seq#Update_12462| s@@3 i@@6 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@7 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@7 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4) v@@0)) (=> (not (= i@@7 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@7 v@@0))
)))
(assert (forall ((s@@5 T@Seq_51106) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12462| s@@5)) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12462| s@@5) n@@5) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) (|Seq#Length_12462| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) 0)))
 :qid |stdinbpl.268:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12462| s@@5 n@@5) (|Seq#Length_12462| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.268:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.542:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_51106) (x T@Ref) ) (!  (=> (|Seq#Contains_51106| s@@7 x) (and (and (<= 0 (|Seq#Skolem_51106| s@@7 x)) (< (|Seq#Skolem_51106| s@@7 x) (|Seq#Length_12462| s@@7))) (= (|Seq#Index_12462| s@@7 (|Seq#Skolem_51106| s@@7 x)) x)))
 :qid |stdinbpl.400:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_51106| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.400:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19478) (this@@1 T@Ref) ) (!  (and (= (Cell_get_1 Heap@@9 this@@1) (|Cell_get'| Heap@@9 this@@1)) (dummyFunction_5179 (|Cell_get#triggerStateless| this@@1)))
 :qid |stdinbpl.754:15|
 :skolemid |118|
 :pattern ( (Cell_get_1 Heap@@9 this@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19478) (i@@8 Int) ) (!  (and (= (reqIGt0 Heap@@10 i@@8) (|reqIGt0'| Heap@@10 i@@8)) (dummyFunction_5179 (|reqIGt0#triggerStateless| i@@8)))
 :qid |stdinbpl.819:15|
 :skolemid |122|
 :pattern ( (reqIGt0 Heap@@10 i@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19478) (i@@9 Int) ) (!  (and (= (g_3 Heap@@11 i@@9) (|g'| Heap@@11 i@@9)) (dummyFunction_5179 (|g#triggerStateless| i@@9)))
 :qid |stdinbpl.923:15|
 :skolemid |130|
 :pattern ( (g_3 Heap@@11 i@@9))
)))
(assert (forall ((s@@9 T@Seq_51106) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12462| s@@9 n@@7) s@@9))
 :qid |stdinbpl.384:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12462| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2867| s@@10 n@@8) s@@10))
 :qid |stdinbpl.384:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@10 n@@8))
)))
(assert (forall ((i@@10 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@10 j@@1) (- i@@10 j@@1))
 :qid |stdinbpl.237:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@10 j@@1))
)))
(assert (forall ((i@@11 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@11 j@@2) (+ i@@11 j@@2))
 :qid |stdinbpl.235:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@11 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.648:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19478) (ExhaleHeap T@PolymorphicMapType_19478) (Mask@@3 T@PolymorphicMapType_19499) (pm_f_10 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_12262_52556 Mask@@3 null pm_f_10) (IsPredicateField_12262_52583 pm_f_10)) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@12) null (PredicateMaskField_12262 pm_f_10)) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap) null (PredicateMaskField_12262 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (IsPredicateField_12262_52583 pm_f_10) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap) null (PredicateMaskField_12262 pm_f_10)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19478) (ExhaleHeap@@0 T@PolymorphicMapType_19478) (Mask@@4 T@PolymorphicMapType_19499) (pm_f_10@@0 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_12262_52556 Mask@@4 null pm_f_10@@0) (IsWandField_12262_54330 pm_f_10@@0)) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@13) null (WandMaskField_12262 pm_f_10@@0)) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@0) null (WandMaskField_12262 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (IsWandField_12262_54330 pm_f_10@@0) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@0) null (WandMaskField_12262 pm_f_10@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19478) (Mask@@5 T@PolymorphicMapType_19499) (i@@12 Int) (j_9@@3 Int) ) (!  (=> (and (state Heap@@14 Mask@@5) (< AssumeFunctionsAbove 5)) (g2_1 Heap@@14 i@@12 j_9@@3))
 :qid |stdinbpl.1033:15|
 :skolemid |140|
 :pattern ( (state Heap@@14 Mask@@5) (g2_1 Heap@@14 i@@12 j_9@@3))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_51106| (|Seq#Singleton_12462| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.525:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_51106| (|Seq#Singleton_12462| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.525:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@2) y@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19478) (Mask@@6 T@PolymorphicMapType_19499) (i@@13 Int) ) (!  (=> (and (state Heap@@15 Mask@@6) (< AssumeFunctionsAbove 3)) (f2_3 Heap@@15 i@@13))
 :qid |stdinbpl.983:15|
 :skolemid |136|
 :pattern ( (state Heap@@15 Mask@@6) (f2_3 Heap@@15 i@@13))
)))
(assert (forall ((s@@11 T@Seq_51106) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12462| s@@11))) (= (|Seq#Index_12462| (|Seq#Take_12462| s@@11 n@@9) j@@3) (|Seq#Index_12462| s@@11 j@@3)))
 :qid |stdinbpl.276:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12462| (|Seq#Take_12462| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12462| s@@11 j@@3) (|Seq#Take_12462| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.276:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_51106) (t T@Seq_51106) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12462| s@@13))) (< n@@11 (|Seq#Length_12462| (|Seq#Append_51106| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12462| s@@13)) (|Seq#Length_12462| s@@13)) n@@11) (= (|Seq#Take_12462| (|Seq#Append_51106| s@@13 t) n@@11) (|Seq#Append_51106| s@@13 (|Seq#Take_12462| t (|Seq#Sub| n@@11 (|Seq#Length_12462| s@@13)))))))
 :qid |stdinbpl.361:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12462| (|Seq#Append_51106| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_3| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_3| s@@14 t@@0) n@@12) (|Seq#Append_3| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.361:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19478) (ExhaleHeap@@1 T@PolymorphicMapType_19478) (Mask@@7 T@PolymorphicMapType_19499) (o_29 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@16) o_29 $allocated) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@1) o_29 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@1) o_29 $allocated))
)))
(assert (forall ((p T@Field_12262_52492) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19538_19538 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19538_19538 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_51106) (s1 T@Seq_51106) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12462|)) (not (= s1 |Seq#Empty_12462|))) (<= (|Seq#Length_12462| s0) n@@13)) (< n@@13 (|Seq#Length_12462| (|Seq#Append_51106| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12462| s0)) (|Seq#Length_12462| s0)) n@@13) (= (|Seq#Index_12462| (|Seq#Append_51106| s0 s1) n@@13) (|Seq#Index_12462| s1 (|Seq#Sub| n@@13 (|Seq#Length_12462| s0))))))
 :qid |stdinbpl.248:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12462| (|Seq#Append_51106| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.248:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12262_4990 Cell_x)))
(assert  (not (IsWandField_12262_4990 Cell_x)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19478) (ExhaleHeap@@2 T@PolymorphicMapType_19478) (Mask@@8 T@PolymorphicMapType_19499) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@17 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_19499) (o_2@@4 T@Ref) (f_4@@4 T@Field_12262_52625) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12262_57876 f_4@@4))) (not (IsWandField_12262_57892 f_4@@4))) (<= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19499) (o_2@@5 T@Ref) (f_4@@5 T@Field_12262_52492) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12262_52583 f_4@@5))) (not (IsWandField_12262_54330 f_4@@5))) (<= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19499) (o_2@@6 T@Ref) (f_4@@6 T@Field_19551_19552) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12262_19552 f_4@@6))) (not (IsWandField_12262_19552 f_4@@6))) (<= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19499) (o_2@@7 T@Ref) (f_4@@7 T@Field_19538_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12262_53 f_4@@7))) (not (IsWandField_12262_53 f_4@@7))) (<= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19499) (o_2@@8 T@Ref) (f_4@@8 T@Field_28398_4990) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12262_4990 f_4@@8))) (not (IsWandField_12262_4990 f_4@@8))) (<= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19499) (o_2@@9 T@Ref) (f_4@@9 T@Field_12262_52625) ) (! (= (HasDirectPerm_12262_58330 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_58330 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19499) (o_2@@10 T@Ref) (f_4@@10 T@Field_12262_52492) ) (! (= (HasDirectPerm_12262_52556 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_52556 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19499) (o_2@@11 T@Ref) (f_4@@11 T@Field_19551_19552) ) (! (= (HasDirectPerm_12262_19552 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_19552 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19499) (o_2@@12 T@Ref) (f_4@@12 T@Field_19538_53) ) (! (= (HasDirectPerm_12262_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19499) (o_2@@13 T@Ref) (f_4@@13 T@Field_28398_4990) ) (! (= (HasDirectPerm_12262_4990 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_4990 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19478) (ExhaleHeap@@3 T@PolymorphicMapType_19478) (Mask@@19 T@PolymorphicMapType_19499) (pm_f_10@@1 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_12262_52556 Mask@@19 null pm_f_10@@1) (IsPredicateField_12262_52583 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_33 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10 f_33) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@18) o2_10 f_33) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10 f_33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10 f_33))
)) (forall ((o2_10@@0 T@Ref) (f_33@@0 T@Field_19551_19552) ) (!  (=> (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@0 f_33@@0) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@18) o2_10@@0 f_33@@0) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@0 f_33@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@0 f_33@@0))
))) (forall ((o2_10@@1 T@Ref) (f_33@@1 T@Field_28398_4990) ) (!  (=> (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@1 f_33@@1) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@18) o2_10@@1 f_33@@1) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@1 f_33@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@1 f_33@@1))
))) (forall ((o2_10@@2 T@Ref) (f_33@@2 T@Field_12262_52492) ) (!  (=> (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@2 f_33@@2) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@18) o2_10@@2 f_33@@2) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@2 f_33@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@2 f_33@@2))
))) (forall ((o2_10@@3 T@Ref) (f_33@@3 T@Field_12262_52625) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@3 f_33@@3) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) o2_10@@3 f_33@@3) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@3 f_33@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@3 f_33@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@19) (IsPredicateField_12262_52583 pm_f_10@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19478) (ExhaleHeap@@4 T@PolymorphicMapType_19478) (Mask@@20 T@PolymorphicMapType_19499) (pm_f_10@@2 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_12262_52556 Mask@@20 null pm_f_10@@2) (IsWandField_12262_54330 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_33@@4 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@4 f_33@@4) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@19) o2_10@@4 f_33@@4) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@4 f_33@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@4 f_33@@4))
)) (forall ((o2_10@@5 T@Ref) (f_33@@5 T@Field_19551_19552) ) (!  (=> (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@5 f_33@@5) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@19) o2_10@@5 f_33@@5) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@5 f_33@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@5 f_33@@5))
))) (forall ((o2_10@@6 T@Ref) (f_33@@6 T@Field_28398_4990) ) (!  (=> (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@6 f_33@@6) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@19) o2_10@@6 f_33@@6) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@6 f_33@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@6 f_33@@6))
))) (forall ((o2_10@@7 T@Ref) (f_33@@7 T@Field_12262_52492) ) (!  (=> (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@7 f_33@@7) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@19) o2_10@@7 f_33@@7) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@7 f_33@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@7 f_33@@7))
))) (forall ((o2_10@@8 T@Ref) (f_33@@8 T@Field_12262_52625) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@8 f_33@@8) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) o2_10@@8 f_33@@8) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@8 f_33@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@8 f_33@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@20) (IsWandField_12262_54330 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.540:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19478) (ExhaleHeap@@5 T@PolymorphicMapType_19478) (Mask@@21 T@PolymorphicMapType_19499) (o_29@@0 T@Ref) (f_33@@9 T@Field_12262_52625) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_12262_58330 Mask@@21 o_29@@0 f_33@@9) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@20) o_29@@0 f_33@@9) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@5) o_29@@0 f_33@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@5) o_29@@0 f_33@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19478) (ExhaleHeap@@6 T@PolymorphicMapType_19478) (Mask@@22 T@PolymorphicMapType_19499) (o_29@@1 T@Ref) (f_33@@10 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_12262_52556 Mask@@22 o_29@@1 f_33@@10) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@21) o_29@@1 f_33@@10) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@6) o_29@@1 f_33@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@6) o_29@@1 f_33@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19478) (ExhaleHeap@@7 T@PolymorphicMapType_19478) (Mask@@23 T@PolymorphicMapType_19499) (o_29@@2 T@Ref) (f_33@@11 T@Field_19551_19552) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_12262_19552 Mask@@23 o_29@@2 f_33@@11) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@22) o_29@@2 f_33@@11) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@7) o_29@@2 f_33@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@7) o_29@@2 f_33@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19478) (ExhaleHeap@@8 T@PolymorphicMapType_19478) (Mask@@24 T@PolymorphicMapType_19499) (o_29@@3 T@Ref) (f_33@@12 T@Field_19538_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_12262_53 Mask@@24 o_29@@3 f_33@@12) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@23) o_29@@3 f_33@@12) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@8) o_29@@3 f_33@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@8) o_29@@3 f_33@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19478) (ExhaleHeap@@9 T@PolymorphicMapType_19478) (Mask@@25 T@PolymorphicMapType_19499) (o_29@@4 T@Ref) (f_33@@13 T@Field_28398_4990) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_12262_4990 Mask@@25 o_29@@4 f_33@@13) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@24) o_29@@4 f_33@@13) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@9) o_29@@4 f_33@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@9) o_29@@4 f_33@@13))
)))
(assert (forall ((s0@@1 T@Seq_51106) (s1@@1 T@Seq_51106) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12462|)) (not (= s1@@1 |Seq#Empty_12462|))) (= (|Seq#Length_12462| (|Seq#Append_51106| s0@@1 s1@@1)) (+ (|Seq#Length_12462| s0@@1) (|Seq#Length_12462| s1@@1))))
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12462| (|Seq#Append_51106| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12262_52625) ) (! (= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12262_52492) ) (! (= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_19551_19552) ) (! (= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19538_53) ) (! (= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_28398_4990) ) (! (= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_51106) (t@@1 T@Seq_51106) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12462| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12462| s@@15)) (|Seq#Length_12462| s@@15)) n@@15) (= (|Seq#Drop_12462| (|Seq#Append_51106| s@@15 t@@1) n@@15) (|Seq#Drop_12462| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12462| s@@15))))))
 :qid |stdinbpl.374:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12462| (|Seq#Append_51106| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.374:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19478) (Mask@@26 T@PolymorphicMapType_19499) (i@@14 Int) ) (!  (=> (and (state Heap@@25 Mask@@26) (< AssumeFunctionsAbove 1)) (=> (>= i@@14 0) (= (reqIGt0 Heap@@25 i@@14) i@@14)))
 :qid |stdinbpl.829:15|
 :skolemid |124|
 :pattern ( (state Heap@@25 Mask@@26) (reqIGt0 Heap@@25 i@@14))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19478) (i@@15 Int) (j_9@@4 Int) ) (!  (and (= (f_6@@0 Heap@@26 i@@15 j_9@@4) (|f'| Heap@@26 i@@15 j_9@@4)) (dummyFunction_5179 (|f#triggerStateless| i@@15 j_9@@4)))
 :qid |stdinbpl.873:15|
 :skolemid |126|
 :pattern ( (f_6@@0 Heap@@26 i@@15 j_9@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19499) (SummandMask1 T@PolymorphicMapType_19499) (SummandMask2 T@PolymorphicMapType_19499) (o_2@@19 T@Ref) (f_4@@19 T@Field_12262_52625) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19499) (SummandMask1@@0 T@PolymorphicMapType_19499) (SummandMask2@@0 T@PolymorphicMapType_19499) (o_2@@20 T@Ref) (f_4@@20 T@Field_12262_52492) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19499) (SummandMask1@@1 T@PolymorphicMapType_19499) (SummandMask2@@1 T@PolymorphicMapType_19499) (o_2@@21 T@Ref) (f_4@@21 T@Field_19551_19552) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19499) (SummandMask1@@2 T@PolymorphicMapType_19499) (SummandMask2@@2 T@PolymorphicMapType_19499) (o_2@@22 T@Ref) (f_4@@22 T@Field_19538_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19499) (SummandMask1@@3 T@PolymorphicMapType_19499) (SummandMask2@@3 T@PolymorphicMapType_19499) (o_2@@23 T@Ref) (f_4@@23 T@Field_28398_4990) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.539:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_51106) (b@@0 T@Seq_51106) ) (!  (=> (|Seq#Equal_51106| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.512:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_51106| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_2867) (b@@1 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.512:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@2 b@@1))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19478) (Mask@@27 T@PolymorphicMapType_19499) (i@@16 Int) ) (!  (=> (state Heap@@27 Mask@@27) (= (|f2'| Heap@@27 i@@16) (|f2#frame| EmptyFrame i@@16)))
 :qid |stdinbpl.990:15|
 :skolemid |137|
 :pattern ( (state Heap@@27 Mask@@27) (|f2'| Heap@@27 i@@16))
)))
(assert (forall ((s@@17 T@Seq_51106) (i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 (|Seq#Length_12462| s@@17))) (|Seq#ContainsTrigger_12462| s@@17 (|Seq#Index_12462| s@@17 i@@17)))
 :qid |stdinbpl.405:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12462| s@@17 i@@17))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_9095| s@@18 (|Seq#Index_2867| s@@18 i@@18)))
 :qid |stdinbpl.405:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@18))
)))
(assert (forall ((s0@@3 T@Seq_51106) (s1@@3 T@Seq_51106) ) (!  (and (=> (= s0@@3 |Seq#Empty_12462|) (= (|Seq#Append_51106| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12462|) (= (|Seq#Append_51106| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.223:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_51106| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.223:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12462| (|Seq#Singleton_12462| t@@3) 0) t@@3)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12462| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@4) 0) t@@4)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@4))
)))
(assert (forall ((s@@19 T@Seq_51106) ) (! (<= 0 (|Seq#Length_12462| s@@19))
 :qid |stdinbpl.206:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12462| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.206:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19478) (i@@19 Int) ) (!  (and (= (f2_3 Heap@@28 i@@19) (|f2'| Heap@@28 i@@19)) (dummyFunction_6120 (|f2#triggerStateless| i@@19)))
 :qid |stdinbpl.973:15|
 :skolemid |134|
 :pattern ( (f2_3 Heap@@28 i@@19))
)))
(assert (forall ((s0@@5 T@Seq_51106) (s1@@5 T@Seq_51106) ) (!  (=> (|Seq#Equal_51106| s0@@5 s1@@5) (and (= (|Seq#Length_12462| s0@@5) (|Seq#Length_12462| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12462| s0@@5))) (= (|Seq#Index_12462| s0@@5 j@@6) (|Seq#Index_12462| s1@@5 j@@6)))
 :qid |stdinbpl.502:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12462| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12462| s1@@5 j@@6))
))))
 :qid |stdinbpl.499:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_51106| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.502:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.499:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19478) (Mask@@28 T@PolymorphicMapType_19499) (this@@2 T@Ref) ) (!  (=> (state Heap@@29 Mask@@28) (= (|Cell_get'| Heap@@29 this@@2) (|Cell_get#frame| (FrameFragment_4990 (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@29) this@@2 Cell_x)) this@@2)))
 :qid |stdinbpl.771:15|
 :skolemid |121|
 :pattern ( (state Heap@@29 Mask@@28) (|Cell_get'| Heap@@29 this@@2))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12462| (|Seq#Singleton_12462| t@@5)) 1)
 :qid |stdinbpl.214:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12462| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@6)) 1)
 :qid |stdinbpl.214:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19478) (Mask@@29 T@PolymorphicMapType_19499) (i@@20 Int) ) (!  (=> (state Heap@@30 Mask@@29) (= (|reqIGt0'| Heap@@30 i@@20) (|reqIGt0#frame| EmptyFrame i@@20)))
 :qid |stdinbpl.836:15|
 :skolemid |125|
 :pattern ( (state Heap@@30 Mask@@29) (|reqIGt0'| Heap@@30 i@@20))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19478) (Mask@@30 T@PolymorphicMapType_19499) (i@@21 Int) ) (!  (=> (state Heap@@31 Mask@@30) (= (|g'| Heap@@31 i@@21) (|g#frame| EmptyFrame i@@21)))
 :qid |stdinbpl.940:15|
 :skolemid |133|
 :pattern ( (state Heap@@31 Mask@@30) (|g'| Heap@@31 i@@21))
)))
(assert (forall ((s@@21 T@Seq_51106) (t@@7 T@Seq_51106) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12462| s@@21))) (= (|Seq#Take_12462| (|Seq#Append_51106| s@@21 t@@7) n@@17) (|Seq#Take_12462| s@@21 n@@17)))
 :qid |stdinbpl.356:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12462| (|Seq#Append_51106| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_3| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.356:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_51106) (i@@22 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_12462| s@@23))) (= (|Seq#Length_12462| (|Seq#Update_12462| s@@23 i@@22 v@@2)) (|Seq#Length_12462| s@@23)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12462| (|Seq#Update_12462| s@@23 i@@22 v@@2)))
 :pattern ( (|Seq#Length_12462| s@@23) (|Seq#Update_12462| s@@23 i@@22 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@23 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@23 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@23 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@23 v@@3))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19478) (o_28 T@Ref) (f_34 T@Field_12262_52492) (v@@4 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@32) (store (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@32) o_28 f_34 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@32) (store (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@32) o_28 f_34 v@@4)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19478) (o_28@@0 T@Ref) (f_34@@0 T@Field_12262_52625) (v@@5 T@PolymorphicMapType_20027) ) (! (succHeap Heap@@33 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@33) (store (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@33) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@33) (store (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@33) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19478) (o_28@@1 T@Ref) (f_34@@1 T@Field_28398_4990) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@34) (store (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@34) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@34) (store (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@34) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19478) (o_28@@2 T@Ref) (f_34@@2 T@Field_19551_19552) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@35) (store (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@35) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@35) (store (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@35) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19478) (o_28@@3 T@Ref) (f_34@@3 T@Field_19538_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_19478 (store (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@36) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (store (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@36) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@36)))
)))
(assert (forall ((s@@25 T@Seq_51106) (t@@9 T@Seq_51106) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12462| s@@25))) (= (|Seq#Drop_12462| (|Seq#Append_51106| s@@25 t@@9) n@@19) (|Seq#Append_51106| (|Seq#Drop_12462| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.370:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12462| (|Seq#Append_51106| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@26 t@@10) n@@20) (|Seq#Append_3| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.370:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.643:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.644:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_51106) (n@@21 Int) (i@@24 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@24)) (< i@@24 (|Seq#Length_12462| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@24 n@@21) n@@21) i@@24) (= (|Seq#Index_12462| (|Seq#Drop_12462| s@@27 n@@21) (|Seq#Sub| i@@24 n@@21)) (|Seq#Index_12462| s@@27 i@@24))))
 :qid |stdinbpl.306:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12462| s@@27 n@@21) (|Seq#Index_12462| s@@27 i@@24))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@25 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@25)) (< i@@25 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@25 n@@22) n@@22) i@@25) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@25 n@@22)) (|Seq#Index_2867| s@@28 i@@25))))
 :qid |stdinbpl.306:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@25))
)))
(assert (forall ((s0@@7 T@Seq_51106) (s1@@7 T@Seq_51106) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12462|)) (not (= s1@@7 |Seq#Empty_12462|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12462| s0@@7))) (= (|Seq#Index_12462| (|Seq#Append_51106| s0@@7 s1@@7) n@@23) (|Seq#Index_12462| s0@@7 n@@23)))
 :qid |stdinbpl.246:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12462| (|Seq#Append_51106| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12462| s0@@7 n@@23) (|Seq#Append_51106| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.246:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_3| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_51106) (s1@@9 T@Seq_51106) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12462|)) (not (= s1@@9 |Seq#Empty_12462|))) (<= 0 m)) (< m (|Seq#Length_12462| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12462| s0@@9)) (|Seq#Length_12462| s0@@9)) m) (= (|Seq#Index_12462| (|Seq#Append_51106| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12462| s0@@9))) (|Seq#Index_12462| s1@@9 m))))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12462| s1@@9 m) (|Seq#Append_51106| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_3| s0@@10 s1@@10))
)))
(assert (forall ((o_28@@4 T@Ref) (f_32 T@Field_19551_19552) (Heap@@37 T@PolymorphicMapType_19478) ) (!  (=> (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@37) o_28@@4 $allocated) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@37) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@37) o_28@@4 f_32) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@37) o_28@@4 f_32))
)))
(assert (forall ((s@@29 T@Seq_51106) (x@@3 T@Ref) (i@@26 Int) ) (!  (=> (and (and (<= 0 i@@26) (< i@@26 (|Seq#Length_12462| s@@29))) (= (|Seq#Index_12462| s@@29 i@@26) x@@3)) (|Seq#Contains_51106| s@@29 x@@3))
 :qid |stdinbpl.403:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_51106| s@@29 x@@3) (|Seq#Index_12462| s@@29 i@@26))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@27 Int) ) (!  (=> (and (and (<= 0 i@@27) (< i@@27 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@27) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.403:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@27))
)))
(assert (forall ((s0@@11 T@Seq_51106) (s1@@11 T@Seq_51106) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_51106| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_51106| s0@@11 s1@@11))) (not (= (|Seq#Length_12462| s0@@11) (|Seq#Length_12462| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_51106| s0@@11 s1@@11))) (= (|Seq#Length_12462| s0@@11) (|Seq#Length_12462| s1@@11))) (= (|Seq#SkolemDiff_51106| s0@@11 s1@@11) (|Seq#SkolemDiff_51106| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_51106| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_51106| s0@@11 s1@@11) (|Seq#Length_12462| s0@@11))) (not (= (|Seq#Index_12462| s0@@11 (|Seq#SkolemDiff_51106| s0@@11 s1@@11)) (|Seq#Index_12462| s1@@11 (|Seq#SkolemDiff_51106| s0@@11 s1@@11))))))
 :qid |stdinbpl.507:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_51106| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.507:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12262_52492) (v_1@@0 T@FrameType) (q T@Field_12262_52492) (w@@0 T@FrameType) (r T@Field_12262_52492) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19538_19538 p@@1 v_1@@0 q w@@0) (InsidePredicate_19538_19538 q w@@0 r u)) (InsidePredicate_19538_19538 p@@1 v_1@@0 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19538_19538 p@@1 v_1@@0 q w@@0) (InsidePredicate_19538_19538 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19478) (Mask@@31 T@PolymorphicMapType_19499) (i@@28 Int) (j_9@@5 Int) ) (!  (=> (and (state Heap@@38 Mask@@31) (< AssumeFunctionsAbove 2)) (= (f_6@@0 Heap@@38 i@@28 j_9@@5) (+ i@@28 j_9@@5)))
 :qid |stdinbpl.883:15|
 :skolemid |128|
 :pattern ( (state Heap@@38 Mask@@31) (f_6@@0 Heap@@38 i@@28 j_9@@5))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.649:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19478) (Mask@@32 T@PolymorphicMapType_19499) (i@@29 Int) ) (!  (=> (and (state Heap@@39 Mask@@32) (< AssumeFunctionsAbove 4)) (= (g_3 Heap@@39 i@@29) i@@29))
 :qid |stdinbpl.933:15|
 :skolemid |132|
 :pattern ( (state Heap@@39 Mask@@32) (g_3 Heap@@39 i@@29))
)))
(assert (forall ((s@@31 T@Seq_51106) ) (!  (=> (= (|Seq#Length_12462| s@@31) 0) (= s@@31 |Seq#Empty_12462|))
 :qid |stdinbpl.210:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12462| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.210:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_51106) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12462| s@@33 n@@25) |Seq#Empty_12462|))
 :qid |stdinbpl.386:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12462| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.386:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19478) (i@@30 Int) (j_9@@6 Int) ) (!  (and (= (g2_1 Heap@@40 i@@30 j_9@@6) (|g2'| Heap@@40 i@@30 j_9@@6)) (dummyFunction_6120 (|g2#triggerStateless| i@@30 j_9@@6)))
 :qid |stdinbpl.1023:15|
 :skolemid |138|
 :pattern ( (g2_1 Heap@@40 i@@30 j_9@@6))
)))
; Invalid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun v2_1 () Int)
(declare-fun Heap@@41 () T@PolymorphicMapType_19478)
(declare-fun v2_33 () Int)
(declare-fun v1_33 () Int)
(declare-fun A_1 () T@Seq_2867)
(set-info :boogie-vc-id test1)
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
 (=> (= (ControlFlow 0 0) 26) (let ((anon21_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 v2_1) (and (< v2_1 3) (f2_3 Heap@@41 v2_1)))) (= (ControlFlow 0 23) 20)) anon21_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 v2_1) (and (< v2_1 3) (f2_3 Heap@@41 v2_1))) (and (=> (= (ControlFlow 0 21) (- 0 22)) (exists ((j2_1 Int) ) (!  (and (<= 0 j2_1) (and (< j2_1 3) (= j2_1 v2_1)))
 :qid |stdinbpl.2183:19|
 :skolemid |164|
))) (=> (exists ((j2_1@@0 Int) ) (!  (and (<= 0 j2_1@@0) (and (< j2_1@@0 3) (= j2_1@@0 v2_1)))
 :qid |stdinbpl.2183:19|
 :skolemid |164|
)) (=> (= (ControlFlow 0 21) 20) anon21_correct))))))
(let ((anon32_Then_correct true))
(let ((anon34_Then_correct true))
(let ((anon17_correct true))
(let ((anon33_Then_correct  (=> (and (<= 0 v2_33) (and (< v2_33 3) (f2_3 Heap@@41 v2_33))) (and (=> (= (ControlFlow 0 14) 13) anon34_Then_correct) (=> (= (ControlFlow 0 14) 11) anon17_correct)))))
(let ((anon33_Else_correct  (=> (and (not (and (<= 0 v2_33) (and (< v2_33 3) (f2_3 Heap@@41 v2_33)))) (= (ControlFlow 0 12) 11)) anon17_correct)))
(let ((anon31_Then_correct  (=> (< v2_33 3) (and (and (=> (= (ControlFlow 0 18) 17) anon32_Then_correct) (=> (= (ControlFlow 0 18) 14) anon33_Then_correct)) (=> (= (ControlFlow 0 18) 12) anon33_Else_correct)))))
(let ((anon31_Else_correct  (=> (<= 3 v2_33) (and (=> (= (ControlFlow 0 16) 14) anon33_Then_correct) (=> (= (ControlFlow 0 16) 12) anon33_Else_correct)))))
(let ((anon30_Then_correct  (=> (<= 0 v2_33) (and (=> (= (ControlFlow 0 19) 18) anon31_Then_correct) (=> (= (ControlFlow 0 19) 16) anon31_Else_correct)))))
(let ((anon30_Else_correct  (=> (< v2_33 0) (and (=> (= (ControlFlow 0 15) 14) anon33_Then_correct) (=> (= (ControlFlow 0 15) 12) anon33_Else_correct)))))
(let ((anon35_Else_correct true))
(let ((anon23_Else_correct  (=> (forall ((v1_1 Int) ) (!  (=> (and (<= 0 v1_1) (and (< v1_1 3) (f2_3 Heap@@41 v1_1))) (exists ((j1_1 Int) ) (!  (and (<= 0 j1_1) (and (< j1_1 3) (= j1_1 v1_1)))
 :qid |stdinbpl.2148:63|
 :skolemid |162|
)))
 :qid |stdinbpl.2146:20|
 :skolemid |163|
 :pattern ( (|f2#frame| EmptyFrame v1_1))
)) (=> (and (state Heap@@41 ZeroMask) (state Heap@@41 ZeroMask)) (and (and (and (and (=> (= (ControlFlow 0 24) 10) anon35_Else_correct) (=> (= (ControlFlow 0 24) 21) anon36_Then_correct)) (=> (= (ControlFlow 0 24) 23) anon36_Else_correct)) (=> (= (ControlFlow 0 24) 19) anon30_Then_correct)) (=> (= (ControlFlow 0 24) 15) anon30_Else_correct))))))
(let ((anon26_Then_correct true))
(let ((anon28_Then_correct true))
(let ((anon8_correct true))
(let ((anon27_Then_correct  (=> (and (<= 0 v1_33) (and (< v1_33 3) (f2_3 Heap@@41 v1_33))) (and (=> (= (ControlFlow 0 4) 3) anon28_Then_correct) (=> (= (ControlFlow 0 4) 1) anon8_correct)))))
(let ((anon27_Else_correct  (=> (and (not (and (<= 0 v1_33) (and (< v1_33 3) (f2_3 Heap@@41 v1_33)))) (= (ControlFlow 0 2) 1)) anon8_correct)))
(let ((anon25_Then_correct  (=> (< v1_33 3) (and (and (=> (= (ControlFlow 0 8) 7) anon26_Then_correct) (=> (= (ControlFlow 0 8) 4) anon27_Then_correct)) (=> (= (ControlFlow 0 8) 2) anon27_Else_correct)))))
(let ((anon25_Else_correct  (=> (<= 3 v1_33) (and (=> (= (ControlFlow 0 6) 4) anon27_Then_correct) (=> (= (ControlFlow 0 6) 2) anon27_Else_correct)))))
(let ((anon24_Then_correct  (=> (<= 0 v1_33) (and (=> (= (ControlFlow 0 9) 8) anon25_Then_correct) (=> (= (ControlFlow 0 9) 6) anon25_Else_correct)))))
(let ((anon24_Else_correct  (=> (< v1_33 0) (and (=> (= (ControlFlow 0 5) 4) anon27_Then_correct) (=> (= (ControlFlow 0 5) 2) anon27_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@41 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (> (|Seq#Length_2867| A_1) 10) (state Heap@@41 ZeroMask)) (and (state Heap@@41 ZeroMask) (state Heap@@41 ZeroMask))) (and (and (=> (= (ControlFlow 0 25) 24) anon23_Else_correct) (=> (= (ControlFlow 0 25) 9) anon24_Then_correct)) (=> (= (ControlFlow 0 25) 5) anon24_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 26) 25) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 21) (- 22))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_19538_53 0)
(declare-sort T@Field_19551_19552 0)
(declare-sort T@Field_28398_4990 0)
(declare-sort T@Field_12262_52625 0)
(declare-sort T@Field_12262_52492 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_19499 0)) (((PolymorphicMapType_19499 (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| (Array T@Ref T@Field_28398_4990 Real)) (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| (Array T@Ref T@Field_19538_53 Real)) (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| (Array T@Ref T@Field_19551_19552 Real)) (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| (Array T@Ref T@Field_12262_52492 Real)) (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| (Array T@Ref T@Field_12262_52625 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_20027 0)) (((PolymorphicMapType_20027 (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (Array T@Ref T@Field_19551_19552 Bool)) (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (Array T@Ref T@Field_28398_4990 Bool)) (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (Array T@Ref T@Field_12262_52492 Bool)) (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (Array T@Ref T@Field_12262_52625 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19478 0)) (((PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| (Array T@Ref T@Field_19538_53 Bool)) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| (Array T@Ref T@Field_19551_19552 T@Ref)) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| (Array T@Ref T@Field_28398_4990 Int)) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| (Array T@Ref T@Field_12262_52625 T@PolymorphicMapType_20027)) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| (Array T@Ref T@Field_12262_52492 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_19538_53)
(declare-fun Cell_x () T@Field_28398_4990)
(declare-sort T@Seq_51106 0)
(declare-fun |Seq#Length_12462| (T@Seq_51106) Int)
(declare-fun |Seq#Drop_12462| (T@Seq_51106 Int) T@Seq_51106)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun state (T@PolymorphicMapType_19478 T@PolymorphicMapType_19499) Bool)
(declare-fun |g2'| (T@PolymorphicMapType_19478 Int Int) Bool)
(declare-fun |g2#frame| (T@FrameType Int Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun succHeap (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478) Bool)
(declare-fun Cell_get_1 (T@PolymorphicMapType_19478 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun GoodMask (T@PolymorphicMapType_19499) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_20027)
(declare-fun |f'| (T@PolymorphicMapType_19478 Int Int) Int)
(declare-fun dummyFunction_5179 (Int) Bool)
(declare-fun |f#triggerStateless| (Int Int) Int)
(declare-fun dummyFunction_6120 (Bool) Bool)
(declare-fun |g2#triggerStateless| (Int Int) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_12462| (T@Seq_51106 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |f#frame| (T@FrameType Int Int) Int)
(declare-fun |Seq#Empty_12462| () T@Seq_51106)
(declare-fun |Seq#Empty_2867| () T@Seq_2867)
(declare-fun |Cell_get'| (T@PolymorphicMapType_19478 T@Ref) Int)
(declare-fun |Cell_get#triggerStateless| (T@Ref) Int)
(declare-fun |reqIGt0'| (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |reqIGt0#triggerStateless| (Int) Int)
(declare-fun |g'| (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |g#triggerStateless| (Int) Int)
(declare-fun |f2'| (T@PolymorphicMapType_19478 Int) Bool)
(declare-fun |f2#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_12462| (T@Seq_51106 Int T@Ref) T@Seq_51106)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_12462| (T@Seq_51106 Int) T@Seq_51106)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Contains_51106| (T@Seq_51106 T@Ref) Bool)
(declare-fun |Seq#Skolem_51106| (T@Seq_51106 T@Ref) Int)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun reqIGt0 (T@PolymorphicMapType_19478 Int) Int)
(declare-fun g_3 (T@PolymorphicMapType_19478 Int) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_19478 T@PolymorphicMapType_19478 T@PolymorphicMapType_19499) Bool)
(declare-fun IsPredicateField_12262_52583 (T@Field_12262_52492) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_12262 (T@Field_12262_52492) T@Field_12262_52625)
(declare-fun HasDirectPerm_12262_52556 (T@PolymorphicMapType_19499 T@Ref T@Field_12262_52492) Bool)
(declare-fun IsWandField_12262_54330 (T@Field_12262_52492) Bool)
(declare-fun WandMaskField_12262 (T@Field_12262_52492) T@Field_12262_52625)
(declare-fun g2_1 (T@PolymorphicMapType_19478 Int Int) Bool)
(declare-fun |Seq#Singleton_12462| (T@Ref) T@Seq_51106)
(declare-fun |Seq#Singleton_3| (Int) T@Seq_2867)
(declare-fun f2_3 (T@PolymorphicMapType_19478 Int) Bool)
(declare-fun |Seq#Append_51106| (T@Seq_51106 T@Seq_51106) T@Seq_51106)
(declare-fun |Seq#Append_3| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun dummyHeap () T@PolymorphicMapType_19478)
(declare-fun ZeroMask () T@PolymorphicMapType_19499)
(declare-fun InsidePredicate_19538_19538 (T@Field_12262_52492 T@FrameType T@Field_12262_52492 T@FrameType) Bool)
(declare-fun IsPredicateField_12262_4990 (T@Field_28398_4990) Bool)
(declare-fun IsWandField_12262_4990 (T@Field_28398_4990) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_12262_57876 (T@Field_12262_52625) Bool)
(declare-fun IsWandField_12262_57892 (T@Field_12262_52625) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_12262_19552 (T@Field_19551_19552) Bool)
(declare-fun IsWandField_12262_19552 (T@Field_19551_19552) Bool)
(declare-fun IsPredicateField_12262_53 (T@Field_19538_53) Bool)
(declare-fun IsWandField_12262_53 (T@Field_19538_53) Bool)
(declare-fun HasDirectPerm_12262_58330 (T@PolymorphicMapType_19499 T@Ref T@Field_12262_52625) Bool)
(declare-fun HasDirectPerm_12262_19552 (T@PolymorphicMapType_19499 T@Ref T@Field_19551_19552) Bool)
(declare-fun HasDirectPerm_12262_53 (T@PolymorphicMapType_19499 T@Ref T@Field_19538_53) Bool)
(declare-fun HasDirectPerm_12262_4990 (T@PolymorphicMapType_19499 T@Ref T@Field_28398_4990) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun f_6@@0 (T@PolymorphicMapType_19478 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_19499 T@PolymorphicMapType_19499 T@PolymorphicMapType_19499) Bool)
(declare-fun |Seq#Equal_51106| (T@Seq_51106 T@Seq_51106) Bool)
(declare-fun |Seq#Equal_2867| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |f2#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_12462| (T@Seq_51106 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_9095| (T@Seq_2867 Int) Bool)
(declare-fun |Cell_get#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_4990 (Int) T@FrameType)
(declare-fun |reqIGt0#frame| (T@FrameType Int) Int)
(declare-fun |g#frame| (T@FrameType Int) Int)
(declare-fun |Seq#SkolemDiff_51106| (T@Seq_51106 T@Seq_51106) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(assert (forall ((s T@Seq_51106) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_12462| s)) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) (- (|Seq#Length_12462| s) n))) (=> (< (|Seq#Length_12462| s) n) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_12462| (|Seq#Drop_12462| s n)) (|Seq#Length_12462| s))))
 :qid |stdinbpl.281:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_12462| (|Seq#Drop_12462| s n)))
 :pattern ( (|Seq#Length_12462| s) (|Seq#Drop_12462| s n))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2867| s@@0)) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (- (|Seq#Length_2867| s@@0) n@@0))) (=> (< (|Seq#Length_2867| s@@0) n@@0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)) (|Seq#Length_2867| s@@0))))
 :qid |stdinbpl.281:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_2867| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2867| s@@0) (|Seq#Drop_2867| s@@0 n@@0))
)))
(assert (forall ((Heap T@PolymorphicMapType_19478) (Mask T@PolymorphicMapType_19499) (i Int) (j_9 Int) ) (!  (=> (state Heap Mask) (= (|g2'| Heap i j_9) (|g2#frame| EmptyFrame i j_9)))
 :qid |stdinbpl.1040:15|
 :skolemid |141|
 :pattern ( (state Heap Mask) (|g2'| Heap i j_9))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_19478) (Heap1 T@PolymorphicMapType_19478) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_19478) (Mask@@0 T@PolymorphicMapType_19499) (this T@Ref) ) (!  (=> (and (state Heap@@0 Mask@@0) (< AssumeFunctionsAbove 0)) (= (Cell_get_1 Heap@@0 this) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@0) this Cell_x)))
 :qid |stdinbpl.764:15|
 :skolemid |120|
 :pattern ( (state Heap@@0 Mask@@0) (Cell_get_1 Heap@@0 this))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_19478) (Mask@@1 T@PolymorphicMapType_19499) ) (!  (=> (state Heap@@1 Mask@@1) (GoodMask Mask@@1))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@1 Mask@@1))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_19478) (Heap1@@0 T@PolymorphicMapType_19478) (Heap2 T@PolymorphicMapType_19478) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_12262_52625) ) (!  (not (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_12262_52492) ) (!  (not (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28398_4990) ) (!  (not (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_19551_19552) ) (!  (not (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_19538_53) ) (!  (not (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_19478) (i@@0 Int) (j_9@@0 Int) ) (! (dummyFunction_5179 (|f#triggerStateless| i@@0 j_9@@0))
 :qid |stdinbpl.877:15|
 :skolemid |127|
 :pattern ( (|f'| Heap@@2 i@@0 j_9@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_19478) (i@@1 Int) (j_9@@1 Int) ) (! (dummyFunction_6120 (|g2#triggerStateless| i@@1 j_9@@1))
 :qid |stdinbpl.1027:15|
 :skolemid |139|
 :pattern ( (|g2'| Heap@@3 i@@1 j_9@@1))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.645:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@1 T@Seq_51106) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_12462| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_12462| (|Seq#Drop_12462| s@@1 n@@1) j) (|Seq#Index_12462| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.302:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_12462| (|Seq#Drop_12462| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2867| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0) (|Seq#Index_2867| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.302:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_2867| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_19478) (Mask@@2 T@PolymorphicMapType_19499) (i@@2 Int) (j_9@@2 Int) ) (!  (=> (state Heap@@4 Mask@@2) (= (|f'| Heap@@4 i@@2 j_9@@2) (|f#frame| EmptyFrame i@@2 j_9@@2)))
 :qid |stdinbpl.890:15|
 :skolemid |129|
 :pattern ( (state Heap@@4 Mask@@2) (|f'| Heap@@4 i@@2 j_9@@2))
)))
(assert (= (|Seq#Length_12462| |Seq#Empty_12462|) 0))
(assert (= (|Seq#Length_2867| |Seq#Empty_2867|) 0))
(assert (forall ((Heap@@5 T@PolymorphicMapType_19478) (this@@0 T@Ref) ) (! (dummyFunction_5179 (|Cell_get#triggerStateless| this@@0))
 :qid |stdinbpl.758:15|
 :skolemid |119|
 :pattern ( (|Cell_get'| Heap@@5 this@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_19478) (i@@3 Int) ) (! (dummyFunction_5179 (|reqIGt0#triggerStateless| i@@3))
 :qid |stdinbpl.823:15|
 :skolemid |123|
 :pattern ( (|reqIGt0'| Heap@@6 i@@3))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_19478) (i@@4 Int) ) (! (dummyFunction_5179 (|g#triggerStateless| i@@4))
 :qid |stdinbpl.927:15|
 :skolemid |131|
 :pattern ( (|g'| Heap@@7 i@@4))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_19478) (i@@5 Int) ) (! (dummyFunction_6120 (|f2#triggerStateless| i@@5))
 :qid |stdinbpl.977:15|
 :skolemid |135|
 :pattern ( (|f2'| Heap@@8 i@@5))
)))
(assert (forall ((s@@3 T@Seq_51106) (i@@6 Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_12462| s@@3))) (and (=> (= i@@6 n@@3) (= (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3) v)) (=> (not (= i@@6 n@@3)) (= (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3) (|Seq#Index_12462| s@@3 n@@3)))))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_12462| (|Seq#Update_12462| s@@3 i@@6 v) n@@3))
 :pattern ( (|Seq#Index_12462| s@@3 n@@3) (|Seq#Update_12462| s@@3 i@@6 v))
)))
(assert (forall ((s@@4 T@Seq_2867) (i@@7 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2867| s@@4))) (and (=> (= i@@7 n@@4) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4) v@@0)) (=> (not (= i@@7 n@@4)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4) (|Seq#Index_2867| s@@4 n@@4)))))
 :qid |stdinbpl.257:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@4 i@@7 v@@0) n@@4))
 :pattern ( (|Seq#Index_2867| s@@4 n@@4) (|Seq#Update_2867| s@@4 i@@7 v@@0))
)))
(assert (forall ((s@@5 T@Seq_51106) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_12462| s@@5)) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_12462| s@@5) n@@5) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) (|Seq#Length_12462| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)) 0)))
 :qid |stdinbpl.268:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_12462| (|Seq#Take_12462| s@@5 n@@5)))
 :pattern ( (|Seq#Take_12462| s@@5 n@@5) (|Seq#Length_12462| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2867) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2867| s@@6)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2867| s@@6) n@@6) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) (|Seq#Length_2867| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)) 0)))
 :qid |stdinbpl.268:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2867| s@@6 n@@6) (|Seq#Length_2867| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.542:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_51106) (x T@Ref) ) (!  (=> (|Seq#Contains_51106| s@@7 x) (and (and (<= 0 (|Seq#Skolem_51106| s@@7 x)) (< (|Seq#Skolem_51106| s@@7 x) (|Seq#Length_12462| s@@7))) (= (|Seq#Index_12462| s@@7 (|Seq#Skolem_51106| s@@7 x)) x)))
 :qid |stdinbpl.400:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_51106| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2867) (x@@0 Int) ) (!  (=> (|Seq#Contains_2867| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2867| s@@8 x@@0)) (< (|Seq#Skolem_2867| s@@8 x@@0) (|Seq#Length_2867| s@@8))) (= (|Seq#Index_2867| s@@8 (|Seq#Skolem_2867| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.400:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@8 x@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_19478) (this@@1 T@Ref) ) (!  (and (= (Cell_get_1 Heap@@9 this@@1) (|Cell_get'| Heap@@9 this@@1)) (dummyFunction_5179 (|Cell_get#triggerStateless| this@@1)))
 :qid |stdinbpl.754:15|
 :skolemid |118|
 :pattern ( (Cell_get_1 Heap@@9 this@@1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_19478) (i@@8 Int) ) (!  (and (= (reqIGt0 Heap@@10 i@@8) (|reqIGt0'| Heap@@10 i@@8)) (dummyFunction_5179 (|reqIGt0#triggerStateless| i@@8)))
 :qid |stdinbpl.819:15|
 :skolemid |122|
 :pattern ( (reqIGt0 Heap@@10 i@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_19478) (i@@9 Int) ) (!  (and (= (g_3 Heap@@11 i@@9) (|g'| Heap@@11 i@@9)) (dummyFunction_5179 (|g#triggerStateless| i@@9)))
 :qid |stdinbpl.923:15|
 :skolemid |130|
 :pattern ( (g_3 Heap@@11 i@@9))
)))
(assert (forall ((s@@9 T@Seq_51106) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_12462| s@@9 n@@7) s@@9))
 :qid |stdinbpl.384:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_12462| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2867) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2867| s@@10 n@@8) s@@10))
 :qid |stdinbpl.384:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2867| s@@10 n@@8))
)))
(assert (forall ((i@@10 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@10 j@@1) (- i@@10 j@@1))
 :qid |stdinbpl.237:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@10 j@@1))
)))
(assert (forall ((i@@11 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@11 j@@2) (+ i@@11 j@@2))
 :qid |stdinbpl.235:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@11 j@@2))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.648:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_19478) (ExhaleHeap T@PolymorphicMapType_19478) (Mask@@3 T@PolymorphicMapType_19499) (pm_f_10 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (=> (and (HasDirectPerm_12262_52556 Mask@@3 null pm_f_10) (IsPredicateField_12262_52583 pm_f_10)) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@12) null (PredicateMaskField_12262 pm_f_10)) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap) null (PredicateMaskField_12262 pm_f_10)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap Mask@@3) (IsPredicateField_12262_52583 pm_f_10) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap) null (PredicateMaskField_12262 pm_f_10)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_19478) (ExhaleHeap@@0 T@PolymorphicMapType_19478) (Mask@@4 T@PolymorphicMapType_19499) (pm_f_10@@0 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (=> (and (HasDirectPerm_12262_52556 Mask@@4 null pm_f_10@@0) (IsWandField_12262_54330 pm_f_10@@0)) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@13) null (WandMaskField_12262 pm_f_10@@0)) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@0) null (WandMaskField_12262 pm_f_10@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@0 Mask@@4) (IsWandField_12262_54330 pm_f_10@@0) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@0) null (WandMaskField_12262 pm_f_10@@0)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_19478) (Mask@@5 T@PolymorphicMapType_19499) (i@@12 Int) (j_9@@3 Int) ) (!  (=> (and (state Heap@@14 Mask@@5) (< AssumeFunctionsAbove 5)) (g2_1 Heap@@14 i@@12 j_9@@3))
 :qid |stdinbpl.1033:15|
 :skolemid |140|
 :pattern ( (state Heap@@14 Mask@@5) (g2_1 Heap@@14 i@@12 j_9@@3))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_51106| (|Seq#Singleton_12462| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.525:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_51106| (|Seq#Singleton_12462| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.525:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3| x@@2) y@@0))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_19478) (Mask@@6 T@PolymorphicMapType_19499) (i@@13 Int) ) (!  (=> (and (state Heap@@15 Mask@@6) (< AssumeFunctionsAbove 3)) (f2_3 Heap@@15 i@@13))
 :qid |stdinbpl.983:15|
 :skolemid |136|
 :pattern ( (state Heap@@15 Mask@@6) (f2_3 Heap@@15 i@@13))
)))
(assert (forall ((s@@11 T@Seq_51106) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_12462| s@@11))) (= (|Seq#Index_12462| (|Seq#Take_12462| s@@11 n@@9) j@@3) (|Seq#Index_12462| s@@11 j@@3)))
 :qid |stdinbpl.276:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_12462| (|Seq#Take_12462| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_12462| s@@11 j@@3) (|Seq#Take_12462| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2867) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2867| s@@12))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4) (|Seq#Index_2867| s@@12 j@@4)))
 :qid |stdinbpl.276:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2867| s@@12 j@@4) (|Seq#Take_2867| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_51106) (t T@Seq_51106) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_12462| s@@13))) (< n@@11 (|Seq#Length_12462| (|Seq#Append_51106| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_12462| s@@13)) (|Seq#Length_12462| s@@13)) n@@11) (= (|Seq#Take_12462| (|Seq#Append_51106| s@@13 t) n@@11) (|Seq#Append_51106| s@@13 (|Seq#Take_12462| t (|Seq#Sub| n@@11 (|Seq#Length_12462| s@@13)))))))
 :qid |stdinbpl.361:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_12462| (|Seq#Append_51106| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2867) (t@@0 T@Seq_2867) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2867| s@@14))) (< n@@12 (|Seq#Length_2867| (|Seq#Append_3| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)) (|Seq#Length_2867| s@@14)) n@@12) (= (|Seq#Take_2867| (|Seq#Append_3| s@@14 t@@0) n@@12) (|Seq#Append_3| s@@14 (|Seq#Take_2867| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2867| s@@14)))))))
 :qid |stdinbpl.361:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@16 T@PolymorphicMapType_19478) (ExhaleHeap@@1 T@PolymorphicMapType_19478) (Mask@@7 T@PolymorphicMapType_19499) (o_29 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@7) (=> (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@16) o_29 $allocated) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@1) o_29 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@1 Mask@@7) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@1) o_29 $allocated))
)))
(assert (forall ((p T@Field_12262_52492) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_19538_19538 p v_1 p w))
 :qid |stdinbpl.179:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_19538_19538 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_51106) (s1 T@Seq_51106) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_12462|)) (not (= s1 |Seq#Empty_12462|))) (<= (|Seq#Length_12462| s0) n@@13)) (< n@@13 (|Seq#Length_12462| (|Seq#Append_51106| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_12462| s0)) (|Seq#Length_12462| s0)) n@@13) (= (|Seq#Index_12462| (|Seq#Append_51106| s0 s1) n@@13) (|Seq#Index_12462| s1 (|Seq#Sub| n@@13 (|Seq#Length_12462| s0))))))
 :qid |stdinbpl.248:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_12462| (|Seq#Append_51106| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2867|)) (not (= s1@@0 |Seq#Empty_2867|))) (<= (|Seq#Length_2867| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2867| (|Seq#Append_3| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0)) (|Seq#Length_2867| s0@@0)) n@@14) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14) (|Seq#Index_2867| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2867| s0@@0))))))
 :qid |stdinbpl.248:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_12262_4990 Cell_x)))
(assert  (not (IsWandField_12262_4990 Cell_x)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_19478) (ExhaleHeap@@2 T@PolymorphicMapType_19478) (Mask@@8 T@PolymorphicMapType_19499) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@8) (succHeap Heap@@17 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@2 Mask@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_19499) (o_2@@4 T@Ref) (f_4@@4 T@Field_12262_52625) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_12262_57876 f_4@@4))) (not (IsWandField_12262_57892 f_4@@4))) (<= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_19499) (o_2@@5 T@Ref) (f_4@@5 T@Field_12262_52492) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_12262_52583 f_4@@5))) (not (IsWandField_12262_54330 f_4@@5))) (<= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_19499) (o_2@@6 T@Ref) (f_4@@6 T@Field_19551_19552) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_12262_19552 f_4@@6))) (not (IsWandField_12262_19552 f_4@@6))) (<= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_19499) (o_2@@7 T@Ref) (f_4@@7 T@Field_19538_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_12262_53 f_4@@7))) (not (IsWandField_12262_53 f_4@@7))) (<= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@12) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_19499) (o_2@@8 T@Ref) (f_4@@8 T@Field_28398_4990) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_12262_4990 f_4@@8))) (not (IsWandField_12262_4990 f_4@@8))) (<= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@13) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_19499) (o_2@@9 T@Ref) (f_4@@9 T@Field_12262_52625) ) (! (= (HasDirectPerm_12262_58330 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_58330 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_19499) (o_2@@10 T@Ref) (f_4@@10 T@Field_12262_52492) ) (! (= (HasDirectPerm_12262_52556 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_52556 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_19499) (o_2@@11 T@Ref) (f_4@@11 T@Field_19551_19552) ) (! (= (HasDirectPerm_12262_19552 Mask@@16 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| Mask@@16) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_19552 Mask@@16 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_19499) (o_2@@12 T@Ref) (f_4@@12 T@Field_19538_53) ) (! (= (HasDirectPerm_12262_53 Mask@@17 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| Mask@@17) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_53 Mask@@17 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_19499) (o_2@@13 T@Ref) (f_4@@13 T@Field_28398_4990) ) (! (= (HasDirectPerm_12262_4990 Mask@@18 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| Mask@@18) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_12262_4990 Mask@@18 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_19478) (ExhaleHeap@@3 T@PolymorphicMapType_19478) (Mask@@19 T@PolymorphicMapType_19499) (pm_f_10@@1 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@19) (=> (and (HasDirectPerm_12262_52556 Mask@@19 null pm_f_10@@1) (IsPredicateField_12262_52583 pm_f_10@@1)) (and (and (and (and (forall ((o2_10 T@Ref) (f_33 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10 f_33) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@18) o2_10 f_33) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10 f_33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10 f_33))
)) (forall ((o2_10@@0 T@Ref) (f_33@@0 T@Field_19551_19552) ) (!  (=> (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@0 f_33@@0) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@18) o2_10@@0 f_33@@0) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@0 f_33@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@0 f_33@@0))
))) (forall ((o2_10@@1 T@Ref) (f_33@@1 T@Field_28398_4990) ) (!  (=> (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@1 f_33@@1) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@18) o2_10@@1 f_33@@1) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@1 f_33@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@1 f_33@@1))
))) (forall ((o2_10@@2 T@Ref) (f_33@@2 T@Field_12262_52492) ) (!  (=> (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@2 f_33@@2) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@18) o2_10@@2 f_33@@2) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@2 f_33@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@2 f_33@@2))
))) (forall ((o2_10@@3 T@Ref) (f_33@@3 T@Field_12262_52625) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) null (PredicateMaskField_12262 pm_f_10@@1))) o2_10@@3 f_33@@3) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@18) o2_10@@3 f_33@@3) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@3 f_33@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@3) o2_10@@3 f_33@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@3 Mask@@19) (IsPredicateField_12262_52583 pm_f_10@@1))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_19478) (ExhaleHeap@@4 T@PolymorphicMapType_19478) (Mask@@20 T@PolymorphicMapType_19499) (pm_f_10@@2 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@20) (=> (and (HasDirectPerm_12262_52556 Mask@@20 null pm_f_10@@2) (IsWandField_12262_54330 pm_f_10@@2)) (and (and (and (and (forall ((o2_10@@4 T@Ref) (f_33@@4 T@Field_19538_53) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@4 f_33@@4) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@19) o2_10@@4 f_33@@4) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@4 f_33@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@4 f_33@@4))
)) (forall ((o2_10@@5 T@Ref) (f_33@@5 T@Field_19551_19552) ) (!  (=> (select (|PolymorphicMapType_20027_19538_19552#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@5 f_33@@5) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@19) o2_10@@5 f_33@@5) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@5 f_33@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@5 f_33@@5))
))) (forall ((o2_10@@6 T@Ref) (f_33@@6 T@Field_28398_4990) ) (!  (=> (select (|PolymorphicMapType_20027_19538_4990#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@6 f_33@@6) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@19) o2_10@@6 f_33@@6) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@6 f_33@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@6 f_33@@6))
))) (forall ((o2_10@@7 T@Ref) (f_33@@7 T@Field_12262_52492) ) (!  (=> (select (|PolymorphicMapType_20027_19538_52492#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@7 f_33@@7) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@19) o2_10@@7 f_33@@7) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@7 f_33@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@7 f_33@@7))
))) (forall ((o2_10@@8 T@Ref) (f_33@@8 T@Field_12262_52625) ) (!  (=> (select (|PolymorphicMapType_20027_19538_53803#PolymorphicMapType_20027| (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) null (WandMaskField_12262 pm_f_10@@2))) o2_10@@8 f_33@@8) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@19) o2_10@@8 f_33@@8) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@8 f_33@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@4) o2_10@@8 f_33@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@4 Mask@@20) (IsWandField_12262_54330 pm_f_10@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.167:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.540:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_19478) (ExhaleHeap@@5 T@PolymorphicMapType_19478) (Mask@@21 T@PolymorphicMapType_19499) (o_29@@0 T@Ref) (f_33@@9 T@Field_12262_52625) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@21) (=> (HasDirectPerm_12262_58330 Mask@@21 o_29@@0 f_33@@9) (= (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@20) o_29@@0 f_33@@9) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@5) o_29@@0 f_33@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@5 Mask@@21) (select (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| ExhaleHeap@@5) o_29@@0 f_33@@9))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_19478) (ExhaleHeap@@6 T@PolymorphicMapType_19478) (Mask@@22 T@PolymorphicMapType_19499) (o_29@@1 T@Ref) (f_33@@10 T@Field_12262_52492) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@22) (=> (HasDirectPerm_12262_52556 Mask@@22 o_29@@1 f_33@@10) (= (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@21) o_29@@1 f_33@@10) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@6) o_29@@1 f_33@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@6 Mask@@22) (select (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| ExhaleHeap@@6) o_29@@1 f_33@@10))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_19478) (ExhaleHeap@@7 T@PolymorphicMapType_19478) (Mask@@23 T@PolymorphicMapType_19499) (o_29@@2 T@Ref) (f_33@@11 T@Field_19551_19552) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@23) (=> (HasDirectPerm_12262_19552 Mask@@23 o_29@@2 f_33@@11) (= (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@22) o_29@@2 f_33@@11) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@7) o_29@@2 f_33@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@7 Mask@@23) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| ExhaleHeap@@7) o_29@@2 f_33@@11))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_19478) (ExhaleHeap@@8 T@PolymorphicMapType_19478) (Mask@@24 T@PolymorphicMapType_19499) (o_29@@3 T@Ref) (f_33@@12 T@Field_19538_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@24) (=> (HasDirectPerm_12262_53 Mask@@24 o_29@@3 f_33@@12) (= (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@23) o_29@@3 f_33@@12) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@8) o_29@@3 f_33@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@8 Mask@@24) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| ExhaleHeap@@8) o_29@@3 f_33@@12))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_19478) (ExhaleHeap@@9 T@PolymorphicMapType_19478) (Mask@@25 T@PolymorphicMapType_19499) (o_29@@4 T@Ref) (f_33@@13 T@Field_28398_4990) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@25) (=> (HasDirectPerm_12262_4990 Mask@@25 o_29@@4 f_33@@13) (= (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@24) o_29@@4 f_33@@13) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@9) o_29@@4 f_33@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@9 Mask@@25) (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| ExhaleHeap@@9) o_29@@4 f_33@@13))
)))
(assert (forall ((s0@@1 T@Seq_51106) (s1@@1 T@Seq_51106) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_12462|)) (not (= s1@@1 |Seq#Empty_12462|))) (= (|Seq#Length_12462| (|Seq#Append_51106| s0@@1 s1@@1)) (+ (|Seq#Length_12462| s0@@1) (|Seq#Length_12462| s1@@1))))
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_12462| (|Seq#Append_51106| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2867|)) (not (= s1@@2 |Seq#Empty_2867|))) (= (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)) (+ (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2))))
 :qid |stdinbpl.217:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_3| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_12262_52625) ) (! (= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_12262_52492) ) (! (= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_19551_19552) ) (! (= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_19538_53) ) (! (= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_28398_4990) ) (! (= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_51106) (t@@1 T@Seq_51106) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_12462| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_12462| s@@15)) (|Seq#Length_12462| s@@15)) n@@15) (= (|Seq#Drop_12462| (|Seq#Append_51106| s@@15 t@@1) n@@15) (|Seq#Drop_12462| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_12462| s@@15))))))
 :qid |stdinbpl.374:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_12462| (|Seq#Append_51106| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (t@@2 T@Seq_2867) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2867| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16)) (|Seq#Length_2867| s@@16)) n@@16) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@16 t@@2) n@@16) (|Seq#Drop_2867| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2867| s@@16))))))
 :qid |stdinbpl.374:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_19478) (Mask@@26 T@PolymorphicMapType_19499) (i@@14 Int) ) (!  (=> (and (state Heap@@25 Mask@@26) (< AssumeFunctionsAbove 1)) (=> (>= i@@14 0) (= (reqIGt0 Heap@@25 i@@14) i@@14)))
 :qid |stdinbpl.829:15|
 :skolemid |124|
 :pattern ( (state Heap@@25 Mask@@26) (reqIGt0 Heap@@25 i@@14))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_19478) (i@@15 Int) (j_9@@4 Int) ) (!  (and (= (f_6@@0 Heap@@26 i@@15 j_9@@4) (|f'| Heap@@26 i@@15 j_9@@4)) (dummyFunction_5179 (|f#triggerStateless| i@@15 j_9@@4)))
 :qid |stdinbpl.873:15|
 :skolemid |126|
 :pattern ( (f_6@@0 Heap@@26 i@@15 j_9@@4))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_19499) (SummandMask1 T@PolymorphicMapType_19499) (SummandMask2 T@PolymorphicMapType_19499) (o_2@@19 T@Ref) (f_4@@19 T@Field_12262_52625) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_19499_12262_56747#PolymorphicMapType_19499| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_19499) (SummandMask1@@0 T@PolymorphicMapType_19499) (SummandMask2@@0 T@PolymorphicMapType_19499) (o_2@@20 T@Ref) (f_4@@20 T@Field_12262_52492) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_19499_12262_52492#PolymorphicMapType_19499| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_19499) (SummandMask1@@1 T@PolymorphicMapType_19499) (SummandMask2@@1 T@PolymorphicMapType_19499) (o_2@@21 T@Ref) (f_4@@21 T@Field_19551_19552) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_19499_12262_19552#PolymorphicMapType_19499| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_19499) (SummandMask1@@2 T@PolymorphicMapType_19499) (SummandMask2@@2 T@PolymorphicMapType_19499) (o_2@@22 T@Ref) (f_4@@22 T@Field_19538_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_19499_12262_53#PolymorphicMapType_19499| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_19499) (SummandMask1@@3 T@PolymorphicMapType_19499) (SummandMask2@@3 T@PolymorphicMapType_19499) (o_2@@23 T@Ref) (f_4@@23 T@Field_28398_4990) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_19499_12262_4990#PolymorphicMapType_19499| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.539:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@1 T@Seq_51106) (b@@0 T@Seq_51106) ) (!  (=> (|Seq#Equal_51106| a@@1 b@@0) (= a@@1 b@@0))
 :qid |stdinbpl.512:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_51106| a@@1 b@@0))
)))
(assert (forall ((a@@2 T@Seq_2867) (b@@1 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.512:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2867| a@@2 b@@1))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_19478) (Mask@@27 T@PolymorphicMapType_19499) (i@@16 Int) ) (!  (=> (state Heap@@27 Mask@@27) (= (|f2'| Heap@@27 i@@16) (|f2#frame| EmptyFrame i@@16)))
 :qid |stdinbpl.990:15|
 :skolemid |137|
 :pattern ( (state Heap@@27 Mask@@27) (|f2'| Heap@@27 i@@16))
)))
(assert (forall ((s@@17 T@Seq_51106) (i@@17 Int) ) (!  (=> (and (<= 0 i@@17) (< i@@17 (|Seq#Length_12462| s@@17))) (|Seq#ContainsTrigger_12462| s@@17 (|Seq#Index_12462| s@@17 i@@17)))
 :qid |stdinbpl.405:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_12462| s@@17 i@@17))
)))
(assert (forall ((s@@18 T@Seq_2867) (i@@18 Int) ) (!  (=> (and (<= 0 i@@18) (< i@@18 (|Seq#Length_2867| s@@18))) (|Seq#ContainsTrigger_9095| s@@18 (|Seq#Index_2867| s@@18 i@@18)))
 :qid |stdinbpl.405:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@18 i@@18))
)))
(assert (forall ((s0@@3 T@Seq_51106) (s1@@3 T@Seq_51106) ) (!  (and (=> (= s0@@3 |Seq#Empty_12462|) (= (|Seq#Append_51106| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_12462|) (= (|Seq#Append_51106| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.223:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_51106| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) ) (!  (and (=> (= s0@@4 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2867|) (= (|Seq#Append_3| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.223:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_12462| (|Seq#Singleton_12462| t@@3) 0) t@@3)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_12462| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3| t@@4) 0) t@@4)
 :qid |stdinbpl.227:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3| t@@4))
)))
(assert (forall ((s@@19 T@Seq_51106) ) (! (<= 0 (|Seq#Length_12462| s@@19))
 :qid |stdinbpl.206:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_12462| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@20))
 :qid |stdinbpl.206:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@20))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_19478) (i@@19 Int) ) (!  (and (= (f2_3 Heap@@28 i@@19) (|f2'| Heap@@28 i@@19)) (dummyFunction_6120 (|f2#triggerStateless| i@@19)))
 :qid |stdinbpl.973:15|
 :skolemid |134|
 :pattern ( (f2_3 Heap@@28 i@@19))
)))
(assert (forall ((s0@@5 T@Seq_51106) (s1@@5 T@Seq_51106) ) (!  (=> (|Seq#Equal_51106| s0@@5 s1@@5) (and (= (|Seq#Length_12462| s0@@5) (|Seq#Length_12462| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_12462| s0@@5))) (= (|Seq#Index_12462| s0@@5 j@@6) (|Seq#Index_12462| s1@@5 j@@6)))
 :qid |stdinbpl.502:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_12462| s0@@5 j@@6))
 :pattern ( (|Seq#Index_12462| s1@@5 j@@6))
))))
 :qid |stdinbpl.499:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_51106| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2867) (s1@@6 T@Seq_2867) ) (!  (=> (|Seq#Equal_2867| s0@@6 s1@@6) (and (= (|Seq#Length_2867| s0@@6) (|Seq#Length_2867| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2867| s0@@6))) (= (|Seq#Index_2867| s0@@6 j@@7) (|Seq#Index_2867| s1@@6 j@@7)))
 :qid |stdinbpl.502:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2867| s1@@6 j@@7))
))))
 :qid |stdinbpl.499:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2867| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_19478) (Mask@@28 T@PolymorphicMapType_19499) (this@@2 T@Ref) ) (!  (=> (state Heap@@29 Mask@@28) (= (|Cell_get'| Heap@@29 this@@2) (|Cell_get#frame| (FrameFragment_4990 (select (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@29) this@@2 Cell_x)) this@@2)))
 :qid |stdinbpl.771:15|
 :skolemid |121|
 :pattern ( (state Heap@@29 Mask@@28) (|Cell_get'| Heap@@29 this@@2))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_12462| (|Seq#Singleton_12462| t@@5)) 1)
 :qid |stdinbpl.214:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_12462| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3| t@@6)) 1)
 :qid |stdinbpl.214:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3| t@@6))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_19478) (Mask@@29 T@PolymorphicMapType_19499) (i@@20 Int) ) (!  (=> (state Heap@@30 Mask@@29) (= (|reqIGt0'| Heap@@30 i@@20) (|reqIGt0#frame| EmptyFrame i@@20)))
 :qid |stdinbpl.836:15|
 :skolemid |125|
 :pattern ( (state Heap@@30 Mask@@29) (|reqIGt0'| Heap@@30 i@@20))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_19478) (Mask@@30 T@PolymorphicMapType_19499) (i@@21 Int) ) (!  (=> (state Heap@@31 Mask@@30) (= (|g'| Heap@@31 i@@21) (|g#frame| EmptyFrame i@@21)))
 :qid |stdinbpl.940:15|
 :skolemid |133|
 :pattern ( (state Heap@@31 Mask@@30) (|g'| Heap@@31 i@@21))
)))
(assert (forall ((s@@21 T@Seq_51106) (t@@7 T@Seq_51106) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_12462| s@@21))) (= (|Seq#Take_12462| (|Seq#Append_51106| s@@21 t@@7) n@@17) (|Seq#Take_12462| s@@21 n@@17)))
 :qid |stdinbpl.356:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_12462| (|Seq#Append_51106| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2867) (t@@8 T@Seq_2867) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2867| s@@22))) (= (|Seq#Take_2867| (|Seq#Append_3| s@@22 t@@8) n@@18) (|Seq#Take_2867| s@@22 n@@18)))
 :qid |stdinbpl.356:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_3| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_51106) (i@@22 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@22) (< i@@22 (|Seq#Length_12462| s@@23))) (= (|Seq#Length_12462| (|Seq#Update_12462| s@@23 i@@22 v@@2)) (|Seq#Length_12462| s@@23)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_12462| (|Seq#Update_12462| s@@23 i@@22 v@@2)))
 :pattern ( (|Seq#Length_12462| s@@23) (|Seq#Update_12462| s@@23 i@@22 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2867) (i@@23 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@23) (< i@@23 (|Seq#Length_2867| s@@24))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@23 v@@3)) (|Seq#Length_2867| s@@24)))
 :qid |stdinbpl.255:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@24 i@@23 v@@3)))
 :pattern ( (|Seq#Length_2867| s@@24) (|Seq#Update_2867| s@@24 i@@23 v@@3))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_19478) (o_28 T@Ref) (f_34 T@Field_12262_52492) (v@@4 T@FrameType) ) (! (succHeap Heap@@32 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@32) (store (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@32) o_28 f_34 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@32) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@32) (store (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@32) o_28 f_34 v@@4)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_19478) (o_28@@0 T@Ref) (f_34@@0 T@Field_12262_52625) (v@@5 T@PolymorphicMapType_20027) ) (! (succHeap Heap@@33 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@33) (store (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@33) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@33) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@33) (store (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@33) o_28@@0 f_34@@0 v@@5) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_19478) (o_28@@1 T@Ref) (f_34@@1 T@Field_28398_4990) (v@@6 Int) ) (! (succHeap Heap@@34 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@34) (store (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@34) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@34) (store (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@34) o_28@@1 f_34@@1 v@@6) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@34) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_19478) (o_28@@2 T@Ref) (f_34@@2 T@Field_19551_19552) (v@@7 T@Ref) ) (! (succHeap Heap@@35 (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@35) (store (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@35) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@35)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@35) (store (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@35) o_28@@2 f_34@@2 v@@7) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@35) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@35)))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_19478) (o_28@@3 T@Ref) (f_34@@3 T@Field_19538_53) (v@@8 Bool) ) (! (succHeap Heap@@36 (PolymorphicMapType_19478 (store (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@36) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@36)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_19478 (store (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@36) o_28@@3 f_34@@3 v@@8) (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_4990#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_12262_52669#PolymorphicMapType_19478| Heap@@36) (|PolymorphicMapType_19478_19538_52492#PolymorphicMapType_19478| Heap@@36)))
)))
(assert (forall ((s@@25 T@Seq_51106) (t@@9 T@Seq_51106) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_12462| s@@25))) (= (|Seq#Drop_12462| (|Seq#Append_51106| s@@25 t@@9) n@@19) (|Seq#Append_51106| (|Seq#Drop_12462| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.370:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_12462| (|Seq#Append_51106| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2867) (t@@10 T@Seq_2867) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2867| s@@26))) (= (|Seq#Drop_2867| (|Seq#Append_3| s@@26 t@@10) n@@20) (|Seq#Append_3| (|Seq#Drop_2867| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.370:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2867| (|Seq#Append_3| s@@26 t@@10) n@@20))
)))
(assert (forall ((a@@3 Int) (b@@2 Int) ) (! (= (<= a@@3 b@@2) (= (|Math#min| a@@3 b@@2) a@@3))
 :qid |stdinbpl.643:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@3 b@@2))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= b@@3 a@@4) (= (|Math#min| a@@4 b@@3) b@@3))
 :qid |stdinbpl.644:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((s@@27 T@Seq_51106) (n@@21 Int) (i@@24 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@24)) (< i@@24 (|Seq#Length_12462| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@24 n@@21) n@@21) i@@24) (= (|Seq#Index_12462| (|Seq#Drop_12462| s@@27 n@@21) (|Seq#Sub| i@@24 n@@21)) (|Seq#Index_12462| s@@27 i@@24))))
 :qid |stdinbpl.306:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_12462| s@@27 n@@21) (|Seq#Index_12462| s@@27 i@@24))
)))
(assert (forall ((s@@28 T@Seq_2867) (n@@22 Int) (i@@25 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@25)) (< i@@25 (|Seq#Length_2867| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@25 n@@22) n@@22) i@@25) (= (|Seq#Index_2867| (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Sub| i@@25 n@@22)) (|Seq#Index_2867| s@@28 i@@25))))
 :qid |stdinbpl.306:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2867| s@@28 n@@22) (|Seq#Index_2867| s@@28 i@@25))
)))
(assert (forall ((s0@@7 T@Seq_51106) (s1@@7 T@Seq_51106) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_12462|)) (not (= s1@@7 |Seq#Empty_12462|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_12462| s0@@7))) (= (|Seq#Index_12462| (|Seq#Append_51106| s0@@7 s1@@7) n@@23) (|Seq#Index_12462| s0@@7 n@@23)))
 :qid |stdinbpl.246:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_12462| (|Seq#Append_51106| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_12462| s0@@7 n@@23) (|Seq#Append_51106| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2867) (s1@@8 T@Seq_2867) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2867|)) (not (= s1@@8 |Seq#Empty_2867|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2867| s0@@8))) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24) (|Seq#Index_2867| s0@@8 n@@24)))
 :qid |stdinbpl.246:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_3| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2867| s0@@8 n@@24) (|Seq#Append_3| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_51106) (s1@@9 T@Seq_51106) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_12462|)) (not (= s1@@9 |Seq#Empty_12462|))) (<= 0 m)) (< m (|Seq#Length_12462| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_12462| s0@@9)) (|Seq#Length_12462| s0@@9)) m) (= (|Seq#Index_12462| (|Seq#Append_51106| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_12462| s0@@9))) (|Seq#Index_12462| s1@@9 m))))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_12462| s1@@9 m) (|Seq#Append_51106| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2867) (s1@@10 T@Seq_2867) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2867|)) (not (= s1@@10 |Seq#Empty_2867|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2867| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10)) (|Seq#Length_2867| s0@@10)) m@@0) (= (|Seq#Index_2867| (|Seq#Append_3| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2867| s0@@10))) (|Seq#Index_2867| s1@@10 m@@0))))
 :qid |stdinbpl.251:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@10 m@@0) (|Seq#Append_3| s0@@10 s1@@10))
)))
(assert (forall ((o_28@@4 T@Ref) (f_32 T@Field_19551_19552) (Heap@@37 T@PolymorphicMapType_19478) ) (!  (=> (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@37) o_28@@4 $allocated) (select (|PolymorphicMapType_19478_11913_53#PolymorphicMapType_19478| Heap@@37) (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@37) o_28@@4 f_32) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_19478_11916_11917#PolymorphicMapType_19478| Heap@@37) o_28@@4 f_32))
)))
(assert (forall ((s@@29 T@Seq_51106) (x@@3 T@Ref) (i@@26 Int) ) (!  (=> (and (and (<= 0 i@@26) (< i@@26 (|Seq#Length_12462| s@@29))) (= (|Seq#Index_12462| s@@29 i@@26) x@@3)) (|Seq#Contains_51106| s@@29 x@@3))
 :qid |stdinbpl.403:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_51106| s@@29 x@@3) (|Seq#Index_12462| s@@29 i@@26))
)))
(assert (forall ((s@@30 T@Seq_2867) (x@@4 Int) (i@@27 Int) ) (!  (=> (and (and (<= 0 i@@27) (< i@@27 (|Seq#Length_2867| s@@30))) (= (|Seq#Index_2867| s@@30 i@@27) x@@4)) (|Seq#Contains_2867| s@@30 x@@4))
 :qid |stdinbpl.403:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@30 x@@4) (|Seq#Index_2867| s@@30 i@@27))
)))
(assert (forall ((s0@@11 T@Seq_51106) (s1@@11 T@Seq_51106) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_51106| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_51106| s0@@11 s1@@11))) (not (= (|Seq#Length_12462| s0@@11) (|Seq#Length_12462| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_51106| s0@@11 s1@@11))) (= (|Seq#Length_12462| s0@@11) (|Seq#Length_12462| s1@@11))) (= (|Seq#SkolemDiff_51106| s0@@11 s1@@11) (|Seq#SkolemDiff_51106| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_51106| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_51106| s0@@11 s1@@11) (|Seq#Length_12462| s0@@11))) (not (= (|Seq#Index_12462| s0@@11 (|Seq#SkolemDiff_51106| s0@@11 s1@@11)) (|Seq#Index_12462| s1@@11 (|Seq#SkolemDiff_51106| s0@@11 s1@@11))))))
 :qid |stdinbpl.507:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_51106| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2867) (s1@@12 T@Seq_2867) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2867| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (not (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2867| s0@@12 s1@@12))) (= (|Seq#Length_2867| s0@@12) (|Seq#Length_2867| s1@@12))) (= (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#SkolemDiff_2867| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2867| s0@@12 s1@@12) (|Seq#Length_2867| s0@@12))) (not (= (|Seq#Index_2867| s0@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12)) (|Seq#Index_2867| s1@@12 (|Seq#SkolemDiff_2867| s0@@12 s1@@12))))))
 :qid |stdinbpl.507:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2867| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_12262_52492) (v_1@@0 T@FrameType) (q T@Field_12262_52492) (w@@0 T@FrameType) (r T@Field_12262_52492) (u T@FrameType) ) (!  (=> (and (InsidePredicate_19538_19538 p@@1 v_1@@0 q w@@0) (InsidePredicate_19538_19538 q w@@0 r u)) (InsidePredicate_19538_19538 p@@1 v_1@@0 r u))
 :qid |stdinbpl.174:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_19538_19538 p@@1 v_1@@0 q w@@0) (InsidePredicate_19538_19538 q w@@0 r u))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_19478) (Mask@@31 T@PolymorphicMapType_19499) (i@@28 Int) (j_9@@5 Int) ) (!  (=> (and (state Heap@@38 Mask@@31) (< AssumeFunctionsAbove 2)) (= (f_6@@0 Heap@@38 i@@28 j_9@@5) (+ i@@28 j_9@@5)))
 :qid |stdinbpl.883:15|
 :skolemid |128|
 :pattern ( (state Heap@@38 Mask@@31) (f_6@@0 Heap@@38 i@@28 j_9@@5))
)))
(assert (forall ((a@@5 Int) ) (!  (=> (< a@@5 0) (= (|Math#clip| a@@5) 0))
 :qid |stdinbpl.649:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@5))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_19478) (Mask@@32 T@PolymorphicMapType_19499) (i@@29 Int) ) (!  (=> (and (state Heap@@39 Mask@@32) (< AssumeFunctionsAbove 4)) (= (g_3 Heap@@39 i@@29) i@@29))
 :qid |stdinbpl.933:15|
 :skolemid |132|
 :pattern ( (state Heap@@39 Mask@@32) (g_3 Heap@@39 i@@29))
)))
(assert (forall ((s@@31 T@Seq_51106) ) (!  (=> (= (|Seq#Length_12462| s@@31) 0) (= s@@31 |Seq#Empty_12462|))
 :qid |stdinbpl.210:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_12462| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@32) 0) (= s@@32 |Seq#Empty_2867|))
 :qid |stdinbpl.210:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@32))
)))
(assert (forall ((s@@33 T@Seq_51106) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_12462| s@@33 n@@25) |Seq#Empty_12462|))
 :qid |stdinbpl.386:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_12462| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2867) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2867| s@@34 n@@26) |Seq#Empty_2867|))
 :qid |stdinbpl.386:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@40 T@PolymorphicMapType_19478) (i@@30 Int) (j_9@@6 Int) ) (!  (and (= (g2_1 Heap@@40 i@@30 j_9@@6) (|g2'| Heap@@40 i@@30 j_9@@6)) (dummyFunction_6120 (|g2#triggerStateless| i@@30 j_9@@6)))
 :qid |stdinbpl.1023:15|
 :skolemid |138|
 :pattern ( (g2_1 Heap@@40 i@@30 j_9@@6))
)))
; Invalid

