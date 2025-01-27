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
(declare-sort T@Field_12559_53 0)
(declare-sort T@Field_12572_12573 0)
(declare-sort T@Field_21542_5262 0)
(declare-sort T@Field_8623_31097 0)
(declare-sort T@Field_8623_30964 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_12520 0)) (((PolymorphicMapType_12520 (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| (Array T@Ref T@Field_21542_5262 Real)) (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| (Array T@Ref T@Field_12559_53 Real)) (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| (Array T@Ref T@Field_12572_12573 Real)) (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| (Array T@Ref T@Field_8623_30964 Real)) (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| (Array T@Ref T@Field_8623_31097 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_13048 0)) (((PolymorphicMapType_13048 (|PolymorphicMapType_13048_12559_53#PolymorphicMapType_13048| (Array T@Ref T@Field_12559_53 Bool)) (|PolymorphicMapType_13048_12559_12573#PolymorphicMapType_13048| (Array T@Ref T@Field_12572_12573 Bool)) (|PolymorphicMapType_13048_12559_5262#PolymorphicMapType_13048| (Array T@Ref T@Field_21542_5262 Bool)) (|PolymorphicMapType_13048_12559_30964#PolymorphicMapType_13048| (Array T@Ref T@Field_8623_30964 Bool)) (|PolymorphicMapType_13048_12559_32275#PolymorphicMapType_13048| (Array T@Ref T@Field_8623_31097 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12499 0)) (((PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| (Array T@Ref T@Field_12559_53 Bool)) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| (Array T@Ref T@Field_12572_12573 T@Ref)) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| (Array T@Ref T@Field_21542_5262 Int)) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| (Array T@Ref T@Field_8623_31097 T@PolymorphicMapType_13048)) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| (Array T@Ref T@Field_8623_30964 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_12559_53)
(declare-fun val () T@Field_21542_5262)
(declare-sort T@Seq_3035 0)
(declare-fun |Seq#Length_3035| (T@Seq_3035) Int)
(declare-fun |Seq#Drop_3035| (T@Seq_3035 Int) T@Seq_3035)
(declare-fun succHeap (T@PolymorphicMapType_12499 T@PolymorphicMapType_12499) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_12499 T@PolymorphicMapType_12499) Bool)
(declare-fun state (T@PolymorphicMapType_12499 T@PolymorphicMapType_12520) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_12520) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_13048)
(declare-sort T@ArrayDomainType 0)
(declare-fun |elements'| (T@PolymorphicMapType_12499 T@ArrayDomainType) (Array Int Bool))
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |elements#trigger| (T@FrameType T@ArrayDomainType) Bool)
(declare-fun FrameFragment_5408 (Int) T@FrameType)
(declare-fun |elements#condqp1| (T@PolymorphicMapType_12499 T@ArrayDomainType) Int)
(declare-fun loc (T@ArrayDomainType Int) T@Ref)
(declare-fun |Seq#ContainsTrigger_3035| (T@Seq_3035 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3035)
(declare-fun length_2 (T@ArrayDomainType) Int)
(declare-fun |Seq#Contains_3035| (T@Seq_3035 Int) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Seq#Index_3035| (T@Seq_3035 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_3035| () T@Seq_3035)
(declare-fun dummyFunction_21658 ((Array Int Bool)) Bool)
(declare-fun |elements#triggerStateless| (T@ArrayDomainType) (Array Int Bool))
(declare-fun |Seq#Update_3035| (T@Seq_3035 Int Int) T@Seq_3035)
(declare-fun |Seq#Take_3035| (T@Seq_3035 Int) T@Seq_3035)
(declare-fun |Seq#Skolem_3035| (T@Seq_3035 Int) Int)
(declare-fun elements_1 (T@PolymorphicMapType_12499 T@ArrayDomainType) (Array Int Bool))
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_12499 T@PolymorphicMapType_12499 T@PolymorphicMapType_12520) Bool)
(declare-fun IsPredicateField_8623_31055 (T@Field_8623_30964) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8623 (T@Field_8623_30964) T@Field_8623_31097)
(declare-fun HasDirectPerm_8623_31028 (T@PolymorphicMapType_12520 T@Ref T@Field_8623_30964) Bool)
(declare-fun IsWandField_8623_32802 (T@Field_8623_30964) Bool)
(declare-fun WandMaskField_8623 (T@Field_8623_30964) T@Field_8623_31097)
(declare-fun |Seq#Singleton_3035| (Int) T@Seq_3035)
(declare-fun |Seq#Append_3035| (T@Seq_3035 T@Seq_3035) T@Seq_3035)
(declare-fun dummyHeap () T@PolymorphicMapType_12499)
(declare-fun ZeroMask () T@PolymorphicMapType_12520)
(declare-fun InsidePredicate_12559_12559 (T@Field_8623_30964 T@FrameType T@Field_8623_30964 T@FrameType) Bool)
(declare-fun IsPredicateField_8623_5262 (T@Field_21542_5262) Bool)
(declare-fun IsWandField_8623_5262 (T@Field_21542_5262) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8623_36348 (T@Field_8623_31097) Bool)
(declare-fun IsWandField_8623_36364 (T@Field_8623_31097) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8623_12573 (T@Field_12572_12573) Bool)
(declare-fun IsWandField_8623_12573 (T@Field_12572_12573) Bool)
(declare-fun IsPredicateField_8623_53 (T@Field_12559_53) Bool)
(declare-fun IsWandField_8623_53 (T@Field_12559_53) Bool)
(declare-fun |Set#Equal_5284| ((Array Int Bool) (Array Int Bool)) Bool)
(declare-fun HasDirectPerm_8623_36802 (T@PolymorphicMapType_12520 T@Ref T@Field_8623_31097) Bool)
(declare-fun HasDirectPerm_8623_12573 (T@PolymorphicMapType_12520 T@Ref T@Field_12572_12573) Bool)
(declare-fun HasDirectPerm_8623_53 (T@PolymorphicMapType_12520 T@Ref T@Field_12559_53) Bool)
(declare-fun HasDirectPerm_8623_5262 (T@PolymorphicMapType_12520 T@Ref T@Field_21542_5262) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_12520 T@PolymorphicMapType_12520 T@PolymorphicMapType_12520) Bool)
(declare-fun |Seq#Equal_3035| (T@Seq_3035 T@Seq_3035) Bool)
(declare-fun first_1 (T@Ref) T@ArrayDomainType)
(declare-fun second_1 (T@Ref) Int)
(declare-fun |sk_elements#condqp1| (Int Int) Int)
(declare-fun |elements#frame| (T@FrameType T@ArrayDomainType) (Array Int Bool))
(declare-fun |Seq#SkolemDiff_3035| (T@Seq_3035 T@Seq_3035) Int)
(assert (forall ((s T@Seq_3035) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_3035| s)) (= (|Seq#Length_3035| (|Seq#Drop_3035| s n)) (- (|Seq#Length_3035| s) n))) (=> (< (|Seq#Length_3035| s) n) (= (|Seq#Length_3035| (|Seq#Drop_3035| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_3035| (|Seq#Drop_3035| s n)) (|Seq#Length_3035| s))))
 :qid |stdinbpl.309:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3035| (|Seq#Drop_3035| s n)))
 :pattern ( (|Seq#Length_3035| s) (|Seq#Drop_3035| s n))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_12499) (Heap1 T@PolymorphicMapType_12499) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_12499) (Mask T@PolymorphicMapType_12520) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_12499) (Heap1@@0 T@PolymorphicMapType_12499) (Heap2 T@PolymorphicMapType_12499) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_8623_31097) ) (!  (not (select (|PolymorphicMapType_13048_12559_32275#PolymorphicMapType_13048| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13048_12559_32275#PolymorphicMapType_13048| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_8623_30964) ) (!  (not (select (|PolymorphicMapType_13048_12559_30964#PolymorphicMapType_13048| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13048_12559_30964#PolymorphicMapType_13048| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_21542_5262) ) (!  (not (select (|PolymorphicMapType_13048_12559_5262#PolymorphicMapType_13048| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13048_12559_5262#PolymorphicMapType_13048| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_12572_12573) ) (!  (not (select (|PolymorphicMapType_13048_12559_12573#PolymorphicMapType_13048| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13048_12559_12573#PolymorphicMapType_13048| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_12559_53) ) (!  (not (select (|PolymorphicMapType_13048_12559_53#PolymorphicMapType_13048| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_13048_12559_53#PolymorphicMapType_13048| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_12499) (Mask@@0 T@PolymorphicMapType_12520) (this T@ArrayDomainType) ) (!  (=> (and (state Heap@@0 Mask@@0) (or (< AssumeFunctionsAbove 0) (|elements#trigger| (FrameFragment_5408 (|elements#condqp1| Heap@@0 this)) this))) (forall ((i_2 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 this)) i_2) (select (|elements'| Heap@@0 this) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@0) (loc this i_2) val)))
 :qid |stdinbpl.852:134|
 :skolemid |124|
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@0) (loc this i_2) val))
 :pattern ( (|Seq#ContainsTrigger_3035| (|Seq#Range| 0 (length_2 this)) i_2))
 :pattern ( (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 this)) i_2))
)))
 :qid |stdinbpl.850:15|
 :skolemid |125|
 :pattern ( (state Heap@@0 Mask@@0) (|elements'| Heap@@0 this))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.673:15|
 :skolemid |89|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((s@@0 T@Seq_3035) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_3035| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_3035| (|Seq#Drop_3035| s@@0 n@@0) j) (|Seq#Index_3035| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.330:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3035| (|Seq#Drop_3035| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_3035| |Seq#Empty_3035|) 0))
(assert (forall ((Heap@@1 T@PolymorphicMapType_12499) (this@@0 T@ArrayDomainType) ) (! (dummyFunction_21658 (|elements#triggerStateless| this@@0))
 :qid |stdinbpl.827:15|
 :skolemid |121|
 :pattern ( (|elements'| Heap@@1 this@@0))
)))
(assert (forall ((s@@1 T@Seq_3035) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_3035| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_3035| (|Seq#Update_3035| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_3035| (|Seq#Update_3035| s@@1 i v) n@@1) (|Seq#Index_3035| s@@1 n@@1)))))
 :qid |stdinbpl.285:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3035| (|Seq#Update_3035| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_3035| s@@1 n@@1) (|Seq#Update_3035| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_3035) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_3035| s@@2)) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_3035| s@@2) n@@2) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@2 n@@2)) (|Seq#Length_3035| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_3035| (|Seq#Take_3035| s@@2 n@@2)) 0)))
 :qid |stdinbpl.296:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3035| (|Seq#Take_3035| s@@2 n@@2)))
 :pattern ( (|Seq#Take_3035| s@@2 n@@2) (|Seq#Length_3035| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_3035| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.570:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3035| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_3035) (x Int) ) (!  (=> (|Seq#Contains_3035| s@@3 x) (and (and (<= 0 (|Seq#Skolem_3035| s@@3 x)) (< (|Seq#Skolem_3035| s@@3 x) (|Seq#Length_3035| s@@3))) (= (|Seq#Index_3035| s@@3 (|Seq#Skolem_3035| s@@3 x)) x)))
 :qid |stdinbpl.428:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3035| s@@3 x))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_12499) (this@@1 T@ArrayDomainType) ) (!  (and (= (elements_1 Heap@@2 this@@1) (|elements'| Heap@@2 this@@1)) (dummyFunction_21658 (|elements#triggerStateless| this@@1)))
 :qid |stdinbpl.823:15|
 :skolemid |120|
 :pattern ( (elements_1 Heap@@2 this@@1))
)))
(assert (forall ((s@@4 T@Seq_3035) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_3035| s@@4 n@@3) s@@4))
 :qid |stdinbpl.412:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3035| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.265:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.263:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((a@@0 Int) ) (!  (=> (<= 0 a@@0) (= (|Math#clip| a@@0) a@@0))
 :qid |stdinbpl.676:15|
 :skolemid |90|
 :pattern ( (|Math#clip| a@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_12499) (ExhaleHeap T@PolymorphicMapType_12499) (Mask@@1 T@PolymorphicMapType_12520) (pm_f_6 T@Field_8623_30964) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_8623_31028 Mask@@1 null pm_f_6) (IsPredicateField_8623_31055 pm_f_6)) (= (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@3) null (PredicateMaskField_8623 pm_f_6)) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap) null (PredicateMaskField_8623 pm_f_6)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap Mask@@1) (IsPredicateField_8623_31055 pm_f_6) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap) null (PredicateMaskField_8623 pm_f_6)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_12499) (ExhaleHeap@@0 T@PolymorphicMapType_12499) (Mask@@2 T@PolymorphicMapType_12520) (pm_f_6@@0 T@Field_8623_30964) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_8623_31028 Mask@@2 null pm_f_6@@0) (IsWandField_8623_32802 pm_f_6@@0)) (= (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@4) null (WandMaskField_8623 pm_f_6@@0)) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@0) null (WandMaskField_8623 pm_f_6@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@0 Mask@@2) (IsWandField_8623_32802 pm_f_6@@0) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@0) null (WandMaskField_8623 pm_f_6@@0)))
)))
(assert (forall ((x@@0 Int) (y Int) ) (! (= (|Seq#Contains_3035| (|Seq#Singleton_3035| x@@0) y) (= x@@0 y))
 :qid |stdinbpl.553:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3035| (|Seq#Singleton_3035| x@@0) y))
)))
(assert (forall ((s@@5 T@Seq_3035) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_3035| s@@5))) (= (|Seq#Index_3035| (|Seq#Take_3035| s@@5 n@@4) j@@2) (|Seq#Index_3035| s@@5 j@@2)))
 :qid |stdinbpl.304:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3035| (|Seq#Take_3035| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_3035| s@@5 j@@2) (|Seq#Take_3035| s@@5 n@@4))
)))
(assert (forall ((s@@6 T@Seq_3035) (t T@Seq_3035) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_3035| s@@6))) (< n@@5 (|Seq#Length_3035| (|Seq#Append_3035| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_3035| s@@6)) (|Seq#Length_3035| s@@6)) n@@5) (= (|Seq#Take_3035| (|Seq#Append_3035| s@@6 t) n@@5) (|Seq#Append_3035| s@@6 (|Seq#Take_3035| t (|Seq#Sub| n@@5 (|Seq#Length_3035| s@@6)))))))
 :qid |stdinbpl.389:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3035| (|Seq#Append_3035| s@@6 t) n@@5))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@5 T@PolymorphicMapType_12499) (ExhaleHeap@@1 T@PolymorphicMapType_12499) (Mask@@3 T@PolymorphicMapType_12520) (o_17 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@5) o_17 $allocated) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@1) o_17 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@1) o_17 $allocated))
)))
(assert (forall ((p T@Field_8623_30964) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_12559_12559 p v_1 p w))
 :qid |stdinbpl.207:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_12559_12559 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_3035) (s1 T@Seq_3035) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_3035|)) (not (= s1 |Seq#Empty_3035|))) (<= (|Seq#Length_3035| s0) n@@6)) (< n@@6 (|Seq#Length_3035| (|Seq#Append_3035| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_3035| s0)) (|Seq#Length_3035| s0)) n@@6) (= (|Seq#Index_3035| (|Seq#Append_3035| s0 s1) n@@6) (|Seq#Index_3035| s1 (|Seq#Sub| n@@6 (|Seq#Length_3035| s0))))))
 :qid |stdinbpl.276:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3035| (|Seq#Append_3035| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_8623_5262 val)))
(assert  (not (IsWandField_8623_5262 val)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_12499) (ExhaleHeap@@2 T@PolymorphicMapType_12499) (Mask@@4 T@PolymorphicMapType_12520) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@6 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_12520) (o_2@@4 T@Ref) (f_4@@4 T@Field_8623_31097) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| Mask@@5) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_8623_36348 f_4@@4))) (not (IsWandField_8623_36364 f_4@@4))) (<= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| Mask@@5) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| Mask@@5) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_12520) (o_2@@5 T@Ref) (f_4@@5 T@Field_8623_30964) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| Mask@@6) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_8623_31055 f_4@@5))) (not (IsWandField_8623_32802 f_4@@5))) (<= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| Mask@@6) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| Mask@@6) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_12520) (o_2@@6 T@Ref) (f_4@@6 T@Field_12572_12573) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| Mask@@7) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_8623_12573 f_4@@6))) (not (IsWandField_8623_12573 f_4@@6))) (<= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| Mask@@7) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| Mask@@7) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_12520) (o_2@@7 T@Ref) (f_4@@7 T@Field_12559_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| Mask@@8) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_8623_53 f_4@@7))) (not (IsWandField_8623_53 f_4@@7))) (<= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| Mask@@8) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| Mask@@8) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_12520) (o_2@@8 T@Ref) (f_4@@8 T@Field_21542_5262) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| Mask@@9) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_8623_5262 f_4@@8))) (not (IsWandField_8623_5262 f_4@@8))) (<= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| Mask@@9) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| Mask@@9) o_2@@8 f_4@@8))
)))
(assert (forall ((a@@1 (Array Int Bool)) (b@@0 (Array Int Bool)) ) (! (= (|Set#Equal_5284| a@@1 b@@0) (forall ((o Int) ) (! (= (select a@@1 o) (select b@@0 o))
 :qid |stdinbpl.658:31|
 :skolemid |84|
 :pattern ( (select a@@1 o))
 :pattern ( (select b@@0 o))
)))
 :qid |stdinbpl.657:17|
 :skolemid |85|
 :pattern ( (|Set#Equal_5284| a@@1 b@@0))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_12520) (o_2@@9 T@Ref) (f_4@@9 T@Field_8623_31097) ) (! (= (HasDirectPerm_8623_36802 Mask@@10 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| Mask@@10) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_36802 Mask@@10 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_12520) (o_2@@10 T@Ref) (f_4@@10 T@Field_8623_30964) ) (! (= (HasDirectPerm_8623_31028 Mask@@11 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| Mask@@11) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_31028 Mask@@11 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_12520) (o_2@@11 T@Ref) (f_4@@11 T@Field_12572_12573) ) (! (= (HasDirectPerm_8623_12573 Mask@@12 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| Mask@@12) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_12573 Mask@@12 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_12520) (o_2@@12 T@Ref) (f_4@@12 T@Field_12559_53) ) (! (= (HasDirectPerm_8623_53 Mask@@13 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| Mask@@13) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_53 Mask@@13 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_12520) (o_2@@13 T@Ref) (f_4@@13 T@Field_21542_5262) ) (! (= (HasDirectPerm_8623_5262 Mask@@14 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| Mask@@14) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8623_5262 Mask@@14 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_12499) (ExhaleHeap@@3 T@PolymorphicMapType_12499) (Mask@@15 T@PolymorphicMapType_12520) (pm_f_6@@1 T@Field_8623_30964) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (=> (and (HasDirectPerm_8623_31028 Mask@@15 null pm_f_6@@1) (IsPredicateField_8623_31055 pm_f_6@@1)) (and (and (and (and (forall ((o2_6 T@Ref) (f_25 T@Field_12559_53) ) (!  (=> (select (|PolymorphicMapType_13048_12559_53#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) null (PredicateMaskField_8623 pm_f_6@@1))) o2_6 f_25) (= (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@7) o2_6 f_25) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6 f_25)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6 f_25))
)) (forall ((o2_6@@0 T@Ref) (f_25@@0 T@Field_12572_12573) ) (!  (=> (select (|PolymorphicMapType_13048_12559_12573#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) null (PredicateMaskField_8623 pm_f_6@@1))) o2_6@@0 f_25@@0) (= (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@7) o2_6@@0 f_25@@0) (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@0 f_25@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@0 f_25@@0))
))) (forall ((o2_6@@1 T@Ref) (f_25@@1 T@Field_21542_5262) ) (!  (=> (select (|PolymorphicMapType_13048_12559_5262#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) null (PredicateMaskField_8623 pm_f_6@@1))) o2_6@@1 f_25@@1) (= (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@7) o2_6@@1 f_25@@1) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@1 f_25@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@1 f_25@@1))
))) (forall ((o2_6@@2 T@Ref) (f_25@@2 T@Field_8623_30964) ) (!  (=> (select (|PolymorphicMapType_13048_12559_30964#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) null (PredicateMaskField_8623 pm_f_6@@1))) o2_6@@2 f_25@@2) (= (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@7) o2_6@@2 f_25@@2) (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@2 f_25@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@2 f_25@@2))
))) (forall ((o2_6@@3 T@Ref) (f_25@@3 T@Field_8623_31097) ) (!  (=> (select (|PolymorphicMapType_13048_12559_32275#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) null (PredicateMaskField_8623 pm_f_6@@1))) o2_6@@3 f_25@@3) (= (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@7) o2_6@@3 f_25@@3) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@3 f_25@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@3) o2_6@@3 f_25@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@3 Mask@@15) (IsPredicateField_8623_31055 pm_f_6@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_12499) (ExhaleHeap@@4 T@PolymorphicMapType_12499) (Mask@@16 T@PolymorphicMapType_12520) (pm_f_6@@2 T@Field_8623_30964) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (=> (and (HasDirectPerm_8623_31028 Mask@@16 null pm_f_6@@2) (IsWandField_8623_32802 pm_f_6@@2)) (and (and (and (and (forall ((o2_6@@4 T@Ref) (f_25@@4 T@Field_12559_53) ) (!  (=> (select (|PolymorphicMapType_13048_12559_53#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) null (WandMaskField_8623 pm_f_6@@2))) o2_6@@4 f_25@@4) (= (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@8) o2_6@@4 f_25@@4) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@4 f_25@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@4 f_25@@4))
)) (forall ((o2_6@@5 T@Ref) (f_25@@5 T@Field_12572_12573) ) (!  (=> (select (|PolymorphicMapType_13048_12559_12573#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) null (WandMaskField_8623 pm_f_6@@2))) o2_6@@5 f_25@@5) (= (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@8) o2_6@@5 f_25@@5) (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@5 f_25@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@5 f_25@@5))
))) (forall ((o2_6@@6 T@Ref) (f_25@@6 T@Field_21542_5262) ) (!  (=> (select (|PolymorphicMapType_13048_12559_5262#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) null (WandMaskField_8623 pm_f_6@@2))) o2_6@@6 f_25@@6) (= (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@8) o2_6@@6 f_25@@6) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@6 f_25@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@6 f_25@@6))
))) (forall ((o2_6@@7 T@Ref) (f_25@@7 T@Field_8623_30964) ) (!  (=> (select (|PolymorphicMapType_13048_12559_30964#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) null (WandMaskField_8623 pm_f_6@@2))) o2_6@@7 f_25@@7) (= (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@8) o2_6@@7 f_25@@7) (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@7 f_25@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@7 f_25@@7))
))) (forall ((o2_6@@8 T@Ref) (f_25@@8 T@Field_8623_31097) ) (!  (=> (select (|PolymorphicMapType_13048_12559_32275#PolymorphicMapType_13048| (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) null (WandMaskField_8623 pm_f_6@@2))) o2_6@@8 f_25@@8) (= (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@8) o2_6@@8 f_25@@8) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@8 f_25@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@4) o2_6@@8 f_25@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@4 Mask@@16) (IsWandField_8623_32802 pm_f_6@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.195:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3035| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.568:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3035| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_12499) (ExhaleHeap@@5 T@PolymorphicMapType_12499) (Mask@@17 T@PolymorphicMapType_12520) (o_17@@0 T@Ref) (f_25@@9 T@Field_8623_31097) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (=> (HasDirectPerm_8623_36802 Mask@@17 o_17@@0 f_25@@9) (= (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@9) o_17@@0 f_25@@9) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@5) o_17@@0 f_25@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@5 Mask@@17) (select (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| ExhaleHeap@@5) o_17@@0 f_25@@9))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_12499) (ExhaleHeap@@6 T@PolymorphicMapType_12499) (Mask@@18 T@PolymorphicMapType_12520) (o_17@@1 T@Ref) (f_25@@10 T@Field_8623_30964) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (=> (HasDirectPerm_8623_31028 Mask@@18 o_17@@1 f_25@@10) (= (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@10) o_17@@1 f_25@@10) (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@6) o_17@@1 f_25@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@6 Mask@@18) (select (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| ExhaleHeap@@6) o_17@@1 f_25@@10))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_12499) (ExhaleHeap@@7 T@PolymorphicMapType_12499) (Mask@@19 T@PolymorphicMapType_12520) (o_17@@2 T@Ref) (f_25@@11 T@Field_12572_12573) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (=> (HasDirectPerm_8623_12573 Mask@@19 o_17@@2 f_25@@11) (= (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@11) o_17@@2 f_25@@11) (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@7) o_17@@2 f_25@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@7 Mask@@19) (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| ExhaleHeap@@7) o_17@@2 f_25@@11))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_12499) (ExhaleHeap@@8 T@PolymorphicMapType_12499) (Mask@@20 T@PolymorphicMapType_12520) (o_17@@3 T@Ref) (f_25@@12 T@Field_12559_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (=> (HasDirectPerm_8623_53 Mask@@20 o_17@@3 f_25@@12) (= (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@12) o_17@@3 f_25@@12) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@8) o_17@@3 f_25@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@8 Mask@@20) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| ExhaleHeap@@8) o_17@@3 f_25@@12))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_12499) (ExhaleHeap@@9 T@PolymorphicMapType_12499) (Mask@@21 T@PolymorphicMapType_12520) (o_17@@4 T@Ref) (f_25@@13 T@Field_21542_5262) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (=> (HasDirectPerm_8623_5262 Mask@@21 o_17@@4 f_25@@13) (= (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@13) o_17@@4 f_25@@13) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@9) o_17@@4 f_25@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@21) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| ExhaleHeap@@9) o_17@@4 f_25@@13))
)))
(assert (forall ((s0@@0 T@Seq_3035) (s1@@0 T@Seq_3035) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_3035|)) (not (= s1@@0 |Seq#Empty_3035|))) (= (|Seq#Length_3035| (|Seq#Append_3035| s0@@0 s1@@0)) (+ (|Seq#Length_3035| s0@@0) (|Seq#Length_3035| s1@@0))))
 :qid |stdinbpl.245:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3035| (|Seq#Append_3035| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_8623_31097) ) (! (= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_8623_30964) ) (! (= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_12572_12573) ) (! (= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_12559_53) ) (! (= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_21542_5262) ) (! (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@7 T@Seq_3035) (t@@0 T@Seq_3035) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_3035| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_3035| s@@7)) (|Seq#Length_3035| s@@7)) n@@7) (= (|Seq#Drop_3035| (|Seq#Append_3035| s@@7 t@@0) n@@7) (|Seq#Drop_3035| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_3035| s@@7))))))
 :qid |stdinbpl.402:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3035| (|Seq#Append_3035| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_12520) (SummandMask1 T@PolymorphicMapType_12520) (SummandMask2 T@PolymorphicMapType_12520) (o_2@@19 T@Ref) (f_4@@19 T@Field_8623_31097) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_12520) (SummandMask1@@0 T@PolymorphicMapType_12520) (SummandMask2@@0 T@PolymorphicMapType_12520) (o_2@@20 T@Ref) (f_4@@20 T@Field_8623_30964) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_12520) (SummandMask1@@1 T@PolymorphicMapType_12520) (SummandMask2@@1 T@PolymorphicMapType_12520) (o_2@@21 T@Ref) (f_4@@21 T@Field_12572_12573) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_12520) (SummandMask1@@2 T@PolymorphicMapType_12520) (SummandMask2@@2 T@PolymorphicMapType_12520) (o_2@@22 T@Ref) (f_4@@22 T@Field_12559_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_12520) (SummandMask1@@3 T@PolymorphicMapType_12520) (SummandMask2@@3 T@PolymorphicMapType_12520) (o_2@@23 T@Ref) (f_4@@23 T@Field_21542_5262) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.567:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3035| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a@@2 T@Seq_3035) (b@@1 T@Seq_3035) ) (!  (=> (|Seq#Equal_3035| a@@2 b@@1) (= a@@2 b@@1))
 :qid |stdinbpl.540:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3035| a@@2 b@@1))
)))
(assert (forall ((a@@3 (Array Int Bool)) (b@@2 (Array Int Bool)) ) (!  (=> (|Set#Equal_5284| a@@3 b@@2) (= a@@3 b@@2))
 :qid |stdinbpl.659:17|
 :skolemid |86|
 :pattern ( (|Set#Equal_5284| a@@3 b@@2))
)))
(assert (forall ((a_2 T@ArrayDomainType) ) (! (>= (length_2 a_2) 0)
 :qid |stdinbpl.793:15|
 :skolemid |119|
 :pattern ( (length_2 a_2))
)))
(assert (forall ((s@@8 T@Seq_3035) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_3035| s@@8))) (|Seq#ContainsTrigger_3035| s@@8 (|Seq#Index_3035| s@@8 i@@2)))
 :qid |stdinbpl.433:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3035| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_3035) (s1@@1 T@Seq_3035) ) (!  (and (=> (= s0@@1 |Seq#Empty_3035|) (= (|Seq#Append_3035| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_3035|) (= (|Seq#Append_3035| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.251:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3035| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_3035| (|Seq#Singleton_3035| t@@1) 0) t@@1)
 :qid |stdinbpl.255:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3035| t@@1))
)))
(assert (forall ((s@@9 T@Seq_3035) ) (! (<= 0 (|Seq#Length_3035| s@@9))
 :qid |stdinbpl.234:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3035| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_3035) (s1@@2 T@Seq_3035) ) (!  (=> (|Seq#Equal_3035| s0@@2 s1@@2) (and (= (|Seq#Length_3035| s0@@2) (|Seq#Length_3035| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_3035| s0@@2))) (= (|Seq#Index_3035| s0@@2 j@@4) (|Seq#Index_3035| s1@@2 j@@4)))
 :qid |stdinbpl.530:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3035| s0@@2 j@@4))
 :pattern ( (|Seq#Index_3035| s1@@2 j@@4))
))))
 :qid |stdinbpl.527:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3035| s0@@2 s1@@2))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_3035| (|Seq#Singleton_3035| t@@2)) 1)
 :qid |stdinbpl.242:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3035| t@@2))
)))
(assert (forall ((s@@10 T@Seq_3035) (t@@3 T@Seq_3035) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_3035| s@@10))) (= (|Seq#Take_3035| (|Seq#Append_3035| s@@10 t@@3) n@@8) (|Seq#Take_3035| s@@10 n@@8)))
 :qid |stdinbpl.384:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3035| (|Seq#Append_3035| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_3035) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_3035| s@@11))) (= (|Seq#Length_3035| (|Seq#Update_3035| s@@11 i@@3 v@@1)) (|Seq#Length_3035| s@@11)))
 :qid |stdinbpl.283:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3035| (|Seq#Update_3035| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_3035| s@@11) (|Seq#Update_3035| s@@11 i@@3 v@@1))
)))
(assert (forall ((a_2@@0 T@ArrayDomainType) (i@@4 Int) ) (!  (and (= (first_1 (loc a_2@@0 i@@4)) a_2@@0) (= (second_1 (loc a_2@@0 i@@4)) i@@4))
 :qid |stdinbpl.787:15|
 :skolemid |118|
 :pattern ( (loc a_2@@0 i@@4))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_12499) (Heap1Heap T@PolymorphicMapType_12499) (this@@2 T@ArrayDomainType) ) (!  (=> (and (=  (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 this@@2)) (|sk_elements#condqp1| (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2))) (< NoPerm FullPerm))  (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 this@@2)) (|sk_elements#condqp1| (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2))) (< NoPerm FullPerm))) (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 this@@2)) (|sk_elements#condqp1| (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap2Heap) (loc this@@2 (|sk_elements#condqp1| (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2))) val) (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap1Heap) (loc this@@2 (|sk_elements#condqp1| (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2))) val)))) (= (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2)))
 :qid |stdinbpl.844:15|
 :skolemid |123|
 :pattern ( (|elements#condqp1| Heap2Heap this@@2) (|elements#condqp1| Heap1Heap this@@2) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_12499) (o_16 T@Ref) (f_2 T@Field_8623_30964) (v@@2 T@FrameType) ) (! (succHeap Heap@@14 (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@14) (store (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@14) o_16 f_2 v@@2)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@14) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@14) (store (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@14) o_16 f_2 v@@2)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_12499) (o_16@@0 T@Ref) (f_2@@0 T@Field_8623_31097) (v@@3 T@PolymorphicMapType_13048) ) (! (succHeap Heap@@15 (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@15) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@15) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@15) (store (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@15) o_16@@0 f_2@@0 v@@3) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@15) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@15) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@15) (store (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@15) o_16@@0 f_2@@0 v@@3) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_12499) (o_16@@1 T@Ref) (f_2@@1 T@Field_21542_5262) (v@@4 Int) ) (! (succHeap Heap@@16 (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@16) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@16) (store (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@16) o_16@@1 f_2@@1 v@@4) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@16) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@16) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@16) (store (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@16) o_16@@1 f_2@@1 v@@4) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@16) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_12499) (o_16@@2 T@Ref) (f_2@@2 T@Field_12572_12573) (v@@5 T@Ref) ) (! (succHeap Heap@@17 (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@17) (store (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@17) o_16@@2 f_2@@2 v@@5) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@17) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@17) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@17) (store (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@17) o_16@@2 f_2@@2 v@@5) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@17) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@17) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_12499) (o_16@@3 T@Ref) (f_2@@3 T@Field_12559_53) (v@@6 Bool) ) (! (succHeap Heap@@18 (PolymorphicMapType_12499 (store (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@18) o_16@@3 f_2@@3 v@@6) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_12499 (store (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@18) o_16@@3 f_2@@3 v@@6) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@18) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@18)))
)))
(assert (forall ((s@@12 T@Seq_3035) (t@@4 T@Seq_3035) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_3035| s@@12))) (= (|Seq#Drop_3035| (|Seq#Append_3035| s@@12 t@@4) n@@9) (|Seq#Append_3035| (|Seq#Drop_3035| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.398:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3035| (|Seq#Append_3035| s@@12 t@@4) n@@9))
)))
(assert (forall ((a@@4 Int) (b@@3 Int) ) (! (= (<= a@@4 b@@3) (= (|Math#min| a@@4 b@@3) a@@4))
 :qid |stdinbpl.671:15|
 :skolemid |87|
 :pattern ( (|Math#min| a@@4 b@@3))
)))
(assert (forall ((a@@5 Int) (b@@4 Int) ) (! (= (<= b@@4 a@@5) (= (|Math#min| a@@5 b@@4) b@@4))
 :qid |stdinbpl.672:15|
 :skolemid |88|
 :pattern ( (|Math#min| a@@5 b@@4))
)))
(assert (forall ((s@@13 T@Seq_3035) (n@@10 Int) (i@@5 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@5)) (< i@@5 (|Seq#Length_3035| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@5 n@@10) n@@10) i@@5) (= (|Seq#Index_3035| (|Seq#Drop_3035| s@@13 n@@10) (|Seq#Sub| i@@5 n@@10)) (|Seq#Index_3035| s@@13 i@@5))))
 :qid |stdinbpl.334:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3035| s@@13 n@@10) (|Seq#Index_3035| s@@13 i@@5))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_12499) (Mask@@22 T@PolymorphicMapType_12520) (this@@3 T@ArrayDomainType) ) (!  (=> (state Heap@@19 Mask@@22) (= (|elements'| Heap@@19 this@@3) (|elements#frame| (FrameFragment_5408 (|elements#condqp1| Heap@@19 this@@3)) this@@3)))
 :qid |stdinbpl.834:15|
 :skolemid |122|
 :pattern ( (state Heap@@19 Mask@@22) (|elements'| Heap@@19 this@@3))
)))
(assert (forall ((s0@@3 T@Seq_3035) (s1@@3 T@Seq_3035) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_3035|)) (not (= s1@@3 |Seq#Empty_3035|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_3035| s0@@3))) (= (|Seq#Index_3035| (|Seq#Append_3035| s0@@3 s1@@3) n@@11) (|Seq#Index_3035| s0@@3 n@@11)))
 :qid |stdinbpl.274:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3035| (|Seq#Append_3035| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_3035| s0@@3 n@@11) (|Seq#Append_3035| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3035) (s1@@4 T@Seq_3035) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_3035|)) (not (= s1@@4 |Seq#Empty_3035|))) (<= 0 m)) (< m (|Seq#Length_3035| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_3035| s0@@4)) (|Seq#Length_3035| s0@@4)) m) (= (|Seq#Index_3035| (|Seq#Append_3035| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_3035| s0@@4))) (|Seq#Index_3035| s1@@4 m))))
 :qid |stdinbpl.279:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3035| s1@@4 m) (|Seq#Append_3035| s0@@4 s1@@4))
)))
(assert (forall ((o_16@@4 T@Ref) (f_10 T@Field_12572_12573) (Heap@@20 T@PolymorphicMapType_12499) ) (!  (=> (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@20) o_16@@4 $allocated) (select (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@20) (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@20) o_16@@4 f_10) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@20) o_16@@4 f_10))
)))
(assert (forall ((s@@14 T@Seq_3035) (x@@1 Int) (i@@6 Int) ) (!  (=> (and (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3035| s@@14))) (= (|Seq#Index_3035| s@@14 i@@6) x@@1)) (|Seq#Contains_3035| s@@14 x@@1))
 :qid |stdinbpl.431:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3035| s@@14 x@@1) (|Seq#Index_3035| s@@14 i@@6))
)))
(assert (forall ((s0@@5 T@Seq_3035) (s1@@5 T@Seq_3035) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_3035| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3035| s0@@5 s1@@5))) (not (= (|Seq#Length_3035| s0@@5) (|Seq#Length_3035| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_3035| s0@@5 s1@@5))) (= (|Seq#Length_3035| s0@@5) (|Seq#Length_3035| s1@@5))) (= (|Seq#SkolemDiff_3035| s0@@5 s1@@5) (|Seq#SkolemDiff_3035| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_3035| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_3035| s0@@5 s1@@5) (|Seq#Length_3035| s0@@5))) (not (= (|Seq#Index_3035| s0@@5 (|Seq#SkolemDiff_3035| s0@@5 s1@@5)) (|Seq#Index_3035| s1@@5 (|Seq#SkolemDiff_3035| s0@@5 s1@@5))))))
 :qid |stdinbpl.535:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3035| s0@@5 s1@@5))
)))
(assert (forall ((p@@1 T@Field_8623_30964) (v_1@@0 T@FrameType) (q T@Field_8623_30964) (w@@0 T@FrameType) (r T@Field_8623_30964) (u T@FrameType) ) (!  (=> (and (InsidePredicate_12559_12559 p@@1 v_1@@0 q w@@0) (InsidePredicate_12559_12559 q w@@0 r u)) (InsidePredicate_12559_12559 p@@1 v_1@@0 r u))
 :qid |stdinbpl.202:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_12559_12559 p@@1 v_1@@0 q w@@0) (InsidePredicate_12559_12559 q w@@0 r u))
)))
(assert (forall ((a@@6 Int) ) (!  (=> (< a@@6 0) (= (|Math#clip| a@@6) 0))
 :qid |stdinbpl.677:15|
 :skolemid |91|
 :pattern ( (|Math#clip| a@@6))
)))
(assert (forall ((s@@15 T@Seq_3035) ) (!  (=> (= (|Seq#Length_3035| s@@15) 0) (= s@@15 |Seq#Empty_3035|))
 :qid |stdinbpl.238:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3035| s@@15))
)))
(assert (forall ((s@@16 T@Seq_3035) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_3035| s@@16 n@@12) |Seq#Empty_3035|))
 :qid |stdinbpl.414:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3035| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun a_2@@1 () T@ArrayDomainType)
(declare-fun Heap@@21 () T@PolymorphicMapType_12499)
(declare-fun QPMask@0 () T@PolymorphicMapType_12520)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun PostHeap@0 () T@PolymorphicMapType_12499)
(declare-fun QPMask@3 () T@PolymorphicMapType_12520)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun neverTriggered7 (Int) Bool)
(declare-fun j_2 () Int)
(declare-fun dummy_2 (Bool) Bool)
(declare-fun x@@2 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_12499)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun QPMask@1 () T@PolymorphicMapType_12520)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun y@@0 () Int)
(set-info :boogie-vc-id swap)
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
 (=> (= (ControlFlow 0 0) 28) (let ((anon20_Else_correct true))
(let ((anon20_Then_correct  (and (=> (= (ControlFlow 0 19) (- 0 20)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_5_1)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_5_1) (loc a_2@@1 i_5_2))))
 :qid |stdinbpl.1110:21|
 :skolemid |149|
 :pattern ( (neverTriggered5 i_5_1) (neverTriggered5 i_5_2))
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_5_1@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_5_1@@0) (loc a_2@@1 i_5_2@@0))))
 :qid |stdinbpl.1110:21|
 :skolemid |149|
 :pattern ( (neverTriggered5 i_5_1@@0) (neverTriggered5 i_5_2@@0))
)) (=> (= (ControlFlow 0 19) (- 0 18)) (forall ((i_5_1@@1 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_5_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 i_5_1@@1) val) NoPerm)))
 :qid |stdinbpl.1117:21|
 :skolemid |150|
 :pattern ( (loc a_2@@1 i_5_1@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@21) (loc a_2@@1 i_5_1@@1) val))
)))))))
(let ((anon19_Then_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((i_4_1 Int) (i_4_2 Int) ) (!  (=> (and (and (and (and (not (= i_4_1 i_4_2)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_4_1)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_4_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_4_1) (loc a_2@@1 i_4_2))))
 :qid |stdinbpl.1071:21|
 :skolemid |145|
 :pattern ( (neverTriggered4 i_4_1) (neverTriggered4 i_4_2))
))) (=> (forall ((i_4_1@@0 Int) (i_4_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_4_1@@0 i_4_2@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_4_1@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_4_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_4_1@@0) (loc a_2@@1 i_4_2@@0))))
 :qid |stdinbpl.1071:21|
 :skolemid |145|
 :pattern ( (neverTriggered4 i_4_1@@0) (neverTriggered4 i_4_2@@0))
)) (=> (= (ControlFlow 0 16) (- 0 15)) (forall ((i_4_1@@1 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_4_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) (loc a_2@@1 i_4_1@@1) val) NoPerm)))
 :qid |stdinbpl.1078:21|
 :skolemid |146|
 :pattern ( (loc a_2@@1 i_4_1@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| PostHeap@0) (loc a_2@@1 i_4_1@@1) val))
)))))))
(let ((anon18_Else_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_2)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3_2) (loc a_2@@1 i_3_3))))
 :qid |stdinbpl.1024:15|
 :skolemid |139|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_2@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_3_2@@0) (loc a_2@@1 i_3_3@@0))))
 :qid |stdinbpl.1024:15|
 :skolemid |139|
)) (=> (and (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_2@@1) (< NoPerm FullPerm)) (and (qpRange3 (loc a_2@@1 i_3_2@@1)) (= (invRecv3 (loc a_2@@1 i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.1030:22|
 :skolemid |140|
 :pattern ( (loc a_2@@1 i_3_2@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| PostHeap@0) (loc a_2@@1 i_3_2@@1) val))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv3 o_9)) (< NoPerm FullPerm)) (qpRange3 o_9)) (= (loc a_2@@1 (invRecv3 o_9)) o_9))
 :qid |stdinbpl.1034:22|
 :skolemid |141|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_3_2@@2) (not (= (loc a_2@@1 i_3_2@@2) null)))
 :qid |stdinbpl.1040:22|
 :skolemid |142|
 :pattern ( (loc a_2@@1 i_3_2@@2))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| PostHeap@0) (loc a_2@@1 i_3_2@@2) val))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv3 o_9@@0)) (< NoPerm FullPerm)) (qpRange3 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv3 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) o_9@@0 val) (+ (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@0 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv3 o_9@@0)) (< NoPerm FullPerm)) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) o_9@@0 val) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@0 val))))
 :qid |stdinbpl.1046:22|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) o_9@@0 val))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_12559_53) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_9@@1 f_5) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@3) o_9@@1 f_5)))
 :qid |stdinbpl.1050:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@3) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_12572_12573) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_9@@2 f_5@@0) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@3) o_9@@2 f_5@@0)))
 :qid |stdinbpl.1050:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@3) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_21542_5262) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@3 f_5@@1) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) o_9@@3 f_5@@1)))
 :qid |stdinbpl.1050:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@3) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_8623_30964) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_9@@4 f_5@@2) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@3) o_9@@4 f_5@@2)))
 :qid |stdinbpl.1050:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@3) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_8623_31097) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_9@@5 f_5@@3) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@3) o_9@@5 f_5@@3)))
 :qid |stdinbpl.1050:29|
 :skolemid |144|
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@3) o_9@@5 f_5@@3))
))) (state PostHeap@0 QPMask@3)) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (and (=> (= (ControlFlow 0 22) 16) anon19_Then_correct) (=> (= (ControlFlow 0 22) 19) anon20_Then_correct)) (=> (= (ControlFlow 0 22) 21) anon20_Else_correct))))))))
(let ((anon18_Then_correct true))
(let ((anon17_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 24) 14) anon18_Then_correct) (=> (= (ControlFlow 0 24) 22) anon18_Else_correct)))))
(let ((anon23_Then_correct  (and (=> (= (ControlFlow 0 10) (- 0 11)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_7_1)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_7_1) (loc a_2@@1 i_7_2))))
 :qid |stdinbpl.1160:25|
 :skolemid |153|
 :pattern ( (neverTriggered7 i_7_1) (neverTriggered7 i_7_2))
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_7_1@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_7_1@@0) (loc a_2@@1 i_7_2@@0))))
 :qid |stdinbpl.1160:25|
 :skolemid |153|
 :pattern ( (neverTriggered7 i_7_1@@0) (neverTriggered7 i_7_2@@0))
)) (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((i_7_1@@1 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_7_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 i_7_1@@1) val) NoPerm)))
 :qid |stdinbpl.1167:25|
 :skolemid |154|
 :pattern ( (loc a_2@@1 i_7_1@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@21) (loc a_2@@1 i_7_1@@1) val))
)))))))
(let ((anon14_correct true))
(let ((anon22_Then_correct  (=> (and (<= 0 j_2) (< j_2 (length_2 a_2@@1))) (and (=> (= (ControlFlow 0 12) 10) anon23_Then_correct) (=> (= (ControlFlow 0 12) 7) anon14_correct)))))
(let ((anon22_Else_correct  (=> (and (not (and (<= 0 j_2) (< j_2 (length_2 a_2@@1)))) (= (ControlFlow 0 8) 7)) anon14_correct)))
(let ((anon21_Else_correct  (=> (forall ((j_1 Int) ) (!  (=> (and (<= 0 j_1) (< j_1 (length_2 a_2@@1))) (dummy_2 (select (elements_1 Heap@@21 a_2@@1) j_1)))
 :qid |stdinbpl.1191:20|
 :skolemid |157|
 :pattern ( (select (|elements#frame| (FrameFragment_5408 (|elements#condqp1| Heap@@21 a_2@@1)) a_2@@1) j_1))
)) (=> (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 3) (- 0 6)) (= FullPerm (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 x@@2) val))) (=> (= FullPerm (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 x@@2) val)) (=> (and (= Heap@0 (PolymorphicMapType_12499 (|PolymorphicMapType_12499_8248_53#PolymorphicMapType_12499| Heap@@21) (|PolymorphicMapType_12499_8251_8252#PolymorphicMapType_12499| Heap@@21) (store (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@21) (loc a_2@@1 x@@2) val (- 0 77)) (|PolymorphicMapType_12499_8623_31141#PolymorphicMapType_12499| Heap@@21) (|PolymorphicMapType_12499_12559_30964#PolymorphicMapType_12499| Heap@@21))) (state Heap@0 QPMask@0)) (and (=> (= (ControlFlow 0 3) (- 0 5)) (forall ((i_6_2 Int) (i_6_3 Int) ) (!  (=> (and (and (and (and (not (= i_6_2 i_6_3)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_2)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_6_2) (loc a_2@@1 i_6_3))))
 :qid |stdinbpl.1214:17|
 :skolemid |158|
 :pattern ( (neverTriggered6 i_6_2) (neverTriggered6 i_6_3))
))) (=> (forall ((i_6_2@@0 Int) (i_6_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_6_2@@0 i_6_3@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_2@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_6_2@@0) (loc a_2@@1 i_6_3@@0))))
 :qid |stdinbpl.1214:17|
 :skolemid |158|
 :pattern ( (neverTriggered6 i_6_2@@0) (neverTriggered6 i_6_3@@0))
)) (and (=> (= (ControlFlow 0 3) (- 0 4)) (forall ((i_6_2@@1 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_2@@1) (>= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 i_6_2@@1) val) FullPerm))
 :qid |stdinbpl.1221:17|
 :skolemid |159|
 :pattern ( (loc a_2@@1 i_6_2@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@0) (loc a_2@@1 i_6_2@@1) val))
))) (=> (forall ((i_6_2@@2 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_2@@2) (>= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) (loc a_2@@1 i_6_2@@2) val) FullPerm))
 :qid |stdinbpl.1221:17|
 :skolemid |159|
 :pattern ( (loc a_2@@1 i_6_2@@2))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@0) (loc a_2@@1 i_6_2@@2) val))
)) (=> (forall ((i_6_2@@3 Int) ) (!  (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_6_2@@3) (< NoPerm FullPerm)) (and (qpRange6 (loc a_2@@1 i_6_2@@3)) (= (invRecv6 (loc a_2@@1 i_6_2@@3)) i_6_2@@3)))
 :qid |stdinbpl.1227:22|
 :skolemid |160|
 :pattern ( (loc a_2@@1 i_6_2@@3))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@0) (loc a_2@@1 i_6_2@@3) val))
)) (=> (and (forall ((o_9@@6 T@Ref) ) (!  (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv6 o_9@@6)) (and (< NoPerm FullPerm) (qpRange6 o_9@@6))) (= (loc a_2@@1 (invRecv6 o_9@@6)) o_9@@6))
 :qid |stdinbpl.1231:22|
 :skolemid |161|
 :pattern ( (invRecv6 o_9@@6))
)) (forall ((o_9@@7 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv6 o_9@@7)) (and (< NoPerm FullPerm) (qpRange6 o_9@@7))) (and (= (loc a_2@@1 (invRecv6 o_9@@7)) o_9@@7) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@1) o_9@@7 val) (- (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@7 val) FullPerm)))) (=> (not (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv6 o_9@@7)) (and (< NoPerm FullPerm) (qpRange6 o_9@@7)))) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@1) o_9@@7 val) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@7 val))))
 :qid |stdinbpl.1237:22|
 :skolemid |162|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@1) o_9@@7 val))
))) (=> (and (and (and (and (and (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_12559_53) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@0) o_9@@8 f_5@@4) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@1) o_9@@8 f_5@@4)))
 :qid |stdinbpl.1243:29|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@1) o_9@@8 f_5@@4))
)) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_12572_12573) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@0) o_9@@9 f_5@@5) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@1) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1243:29|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@1) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_21542_5262) ) (!  (=> (not (= f_5@@6 val)) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@10 f_5@@6) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@1) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1243:29|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@1) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_8623_30964) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@0) o_9@@11 f_5@@7) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@1) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1243:29|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@1) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_8623_31097) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@0) o_9@@12 f_5@@8) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@1) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1243:29|
 :skolemid |163|
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@1) o_9@@12 f_5@@8))
))) (= (ControlFlow 0 3) (- 0 2))) (|Set#Equal_5284| (elements_1 Heap@0 a_2@@1) (elements_1 Heap@@21 a_2@@1))))))))))))))))
(let ((anon17_Else_correct  (=> (state Heap@@21 QPMask@0) (and (and (=> (= (ControlFlow 0 13) 3) anon21_Else_correct) (=> (= (ControlFlow 0 13) 12) anon22_Then_correct)) (=> (= (ControlFlow 0 13) 8) anon22_Else_correct)))))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((i_1 Int) (i_1_1 Int) ) (!  (=> (and (and (and (and (not (= i_1 i_1_1)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1) (loc a_2@@1 i_1_1))))
 :qid |stdinbpl.967:15|
 :skolemid |133|
))) (=> (forall ((i_1@@0 Int) (i_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= i_1@@0 i_1_1@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1@@0)) (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (loc a_2@@1 i_1@@0) (loc a_2@@1 i_1_1@@0))))
 :qid |stdinbpl.967:15|
 :skolemid |133|
)) (=> (and (and (forall ((i_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1@@1) (< NoPerm FullPerm)) (and (qpRange2 (loc a_2@@1 i_1@@1)) (= (invRecv2 (loc a_2@@1 i_1@@1)) i_1@@1)))
 :qid |stdinbpl.973:22|
 :skolemid |134|
 :pattern ( (loc a_2@@1 i_1@@1))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@21) (loc a_2@@1 i_1@@1) val))
)) (forall ((o_9@@13 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv2 o_9@@13)) (< NoPerm FullPerm)) (qpRange2 o_9@@13)) (= (loc a_2@@1 (invRecv2 o_9@@13)) o_9@@13))
 :qid |stdinbpl.977:22|
 :skolemid |135|
 :pattern ( (invRecv2 o_9@@13))
))) (and (forall ((i_1@@2 Int) ) (!  (=> (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) i_1@@2) (not (= (loc a_2@@1 i_1@@2) null)))
 :qid |stdinbpl.983:22|
 :skolemid |136|
 :pattern ( (loc a_2@@1 i_1@@2))
 :pattern ( (select (|PolymorphicMapType_12499_8623_5262#PolymorphicMapType_12499| Heap@@21) (loc a_2@@1 i_1@@2) val))
)) (forall ((o_9@@14 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14)) (and (=> (< NoPerm FullPerm) (= (loc a_2@@1 (invRecv2 o_9@@14)) o_9@@14)) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@14 val) (+ (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@14 val) FullPerm)))) (=> (not (and (and (|Seq#Contains_3035| (|Seq#Range| 0 (length_2 a_2@@1)) (invRecv2 o_9@@14)) (< NoPerm FullPerm)) (qpRange2 o_9@@14))) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@14 val) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@14 val))))
 :qid |stdinbpl.989:22|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@14 val))
)))) (=> (and (and (and (and (and (forall ((o_9@@15 T@Ref) (f_5@@9 T@Field_12559_53) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_9@@15 f_5@@9) (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@0) o_9@@15 f_5@@9)))
 :qid |stdinbpl.993:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| ZeroMask) o_9@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_12520_8623_53#PolymorphicMapType_12520| QPMask@0) o_9@@15 f_5@@9))
)) (forall ((o_9@@16 T@Ref) (f_5@@10 T@Field_12572_12573) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_9@@16 f_5@@10) (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@0) o_9@@16 f_5@@10)))
 :qid |stdinbpl.993:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| ZeroMask) o_9@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_12520_8623_12573#PolymorphicMapType_12520| QPMask@0) o_9@@16 f_5@@10))
))) (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_21542_5262) ) (!  (=> (not (= f_5@@11 val)) (= (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@17 f_5@@11) (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@17 f_5@@11)))
 :qid |stdinbpl.993:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| ZeroMask) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_12520_8623_5262#PolymorphicMapType_12520| QPMask@0) o_9@@17 f_5@@11))
))) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_8623_30964) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_9@@18 f_5@@12) (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@0) o_9@@18 f_5@@12)))
 :qid |stdinbpl.993:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| ZeroMask) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_12520_8623_30964#PolymorphicMapType_12520| QPMask@0) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_8623_31097) ) (!  (=> true (= (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_9@@19 f_5@@13) (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@0) o_9@@19 f_5@@13)))
 :qid |stdinbpl.993:29|
 :skolemid |138|
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| ZeroMask) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_12520_8623_35219#PolymorphicMapType_12520| QPMask@0) o_9@@19 f_5@@13))
))) (and (and (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0)) (and (<= 0 x@@2) (< x@@2 (length_2 a_2@@1)))) (and (and (state Heap@@21 QPMask@0) (<= 0 y@@0)) (and (< y@@0 (length_2 a_2@@1)) (state Heap@@21 QPMask@0))))) (and (=> (= (ControlFlow 0 25) 24) anon17_Then_correct) (=> (= (ControlFlow 0 25) 13) anon17_Else_correct))))))))
(let ((anon16_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 27) 1) anon16_Then_correct) (=> (= (ControlFlow 0 27) 25) anon16_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 28) 27) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 3) (- 2))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
