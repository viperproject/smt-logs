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
(declare-sort T@Field_18662_53 0)
(declare-sort T@Field_18675_18676 0)
(declare-sort T@Field_24931_24932 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_24834_3219 0)
(declare-sort T@Field_24944_24949 0)
(declare-sort T@Field_10273_10278 0)
(declare-sort T@Field_10273_24949 0)
(declare-sort T@Field_10277_10274 0)
(declare-sort T@Field_10277_3219 0)
(declare-sort T@Field_10277_53 0)
(declare-datatypes ((T@PolymorphicMapType_18623 0)) (((PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| (Array T@Ref T@Field_24834_3219 Real)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| (Array T@Ref T@Field_18675_18676 Real)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| (Array T@Ref T@Field_24931_24932 Real)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| (Array T@Ref T@Field_10273_10278 Real)) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| (Array T@Ref T@Field_18662_53 Real)) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| (Array T@Ref T@Field_10273_24949 Real)) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| (Array T@Ref T@Field_10277_3219 Real)) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| (Array T@Ref T@Field_10277_10274 Real)) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| (Array T@Ref T@Field_10277_53 Real)) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| (Array T@Ref T@Field_24944_24949 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_19151 0)) (((PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (Array T@Ref T@Field_24834_3219 Bool)) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (Array T@Ref T@Field_18675_18676 Bool)) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (Array T@Ref T@Field_18662_53 Bool)) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (Array T@Ref T@Field_10273_10278 Bool)) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (Array T@Ref T@Field_10273_24949 Bool)) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (Array T@Ref T@Field_10277_3219 Bool)) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (Array T@Ref T@Field_10277_10274 Bool)) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (Array T@Ref T@Field_10277_53 Bool)) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (Array T@Ref T@Field_24931_24932 Bool)) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (Array T@Ref T@Field_24944_24949 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_18602 0)) (((PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| (Array T@Ref T@Field_18662_53 Bool)) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| (Array T@Ref T@Field_18675_18676 T@Ref)) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| (Array T@Ref T@Field_24931_24932 T@FrameType)) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| (Array T@Ref T@Field_24834_3219 Int)) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| (Array T@Ref T@Field_24944_24949 T@PolymorphicMapType_19151)) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| (Array T@Ref T@Field_10273_10278 T@FrameType)) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| (Array T@Ref T@Field_10273_24949 T@PolymorphicMapType_19151)) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| (Array T@Ref T@Field_10277_10274 T@Ref)) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| (Array T@Ref T@Field_10277_3219 Int)) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| (Array T@Ref T@Field_10277_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_18662_53)
(declare-fun val () T@Field_24834_3219)
(declare-fun next () T@Field_18675_18676)
(declare-fun succHeap (T@PolymorphicMapType_18602 T@PolymorphicMapType_18602) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_18602 T@PolymorphicMapType_18602) Bool)
(declare-fun state (T@PolymorphicMapType_18602 T@PolymorphicMapType_18623) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_18623) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_19151)
(declare-fun list (T@Ref Int) T@Field_24931_24932)
(declare-fun IsPredicateField_10277_10278 (T@Field_24931_24932) Bool)
(declare-fun |list#trigger_10277| (T@PolymorphicMapType_18602 T@Field_24931_24932) Bool)
(declare-fun |list#everUsed_10277| (T@Field_24931_24932) Bool)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_10334| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_10334| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_10334| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_10334| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_18602 T@PolymorphicMapType_18602 T@PolymorphicMapType_18623) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10277 (T@Field_24931_24932) T@Field_24944_24949)
(declare-fun HasDirectPerm_10277_10278 (T@PolymorphicMapType_18623 T@Ref T@Field_24931_24932) Bool)
(declare-fun IsPredicateField_10273_63108 (T@Field_10273_10278) Bool)
(declare-fun PredicateMaskField_10273 (T@Field_10273_10278) T@Field_10273_24949)
(declare-fun HasDirectPerm_10273_10278 (T@PolymorphicMapType_18623 T@Ref T@Field_10273_10278) Bool)
(declare-fun IsWandField_10277_66778 (T@Field_24931_24932) Bool)
(declare-fun WandMaskField_10277 (T@Field_24931_24932) T@Field_24944_24949)
(declare-fun IsWandField_10273_66421 (T@Field_10273_10278) Bool)
(declare-fun WandMaskField_10273 (T@Field_10273_10278) T@Field_10273_24949)
(declare-fun |list#sm| (T@Ref Int) T@Field_24944_24949)
(declare-fun dummyHeap () T@PolymorphicMapType_18602)
(declare-fun ZeroMask () T@PolymorphicMapType_18623)
(declare-fun InsidePredicate_18662_18662 (T@Field_10273_10278 T@FrameType T@Field_10273_10278 T@FrameType) Bool)
(declare-fun InsidePredicate_10277_10277 (T@Field_24931_24932 T@FrameType T@Field_24931_24932 T@FrameType) Bool)
(declare-fun IsPredicateField_10271_3219 (T@Field_24834_3219) Bool)
(declare-fun IsWandField_10271_3219 (T@Field_24834_3219) Bool)
(declare-fun IsPredicateField_10273_10274 (T@Field_18675_18676) Bool)
(declare-fun IsWandField_10273_10274 (T@Field_18675_18676) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_10277_73681 (T@Field_24944_24949) Bool)
(declare-fun IsWandField_10277_73697 (T@Field_24944_24949) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_10277_53 (T@Field_10277_53) Bool)
(declare-fun IsWandField_10277_53 (T@Field_10277_53) Bool)
(declare-fun IsPredicateField_10277_10274 (T@Field_10277_10274) Bool)
(declare-fun IsWandField_10277_10274 (T@Field_10277_10274) Bool)
(declare-fun IsPredicateField_10277_3219 (T@Field_10277_3219) Bool)
(declare-fun IsWandField_10277_3219 (T@Field_10277_3219) Bool)
(declare-fun IsPredicateField_10271_72850 (T@Field_10273_24949) Bool)
(declare-fun IsWandField_10271_72866 (T@Field_10273_24949) Bool)
(declare-fun IsPredicateField_10271_53 (T@Field_18662_53) Bool)
(declare-fun IsWandField_10271_53 (T@Field_18662_53) Bool)
(declare-fun HasDirectPerm_10277_62863 (T@PolymorphicMapType_18623 T@Ref T@Field_24944_24949) Bool)
(declare-fun HasDirectPerm_10277_53 (T@PolymorphicMapType_18623 T@Ref T@Field_10277_53) Bool)
(declare-fun HasDirectPerm_10277_3219 (T@PolymorphicMapType_18623 T@Ref T@Field_10277_3219) Bool)
(declare-fun HasDirectPerm_10277_10274 (T@PolymorphicMapType_18623 T@Ref T@Field_10277_10274) Bool)
(declare-fun HasDirectPerm_10273_61722 (T@PolymorphicMapType_18623 T@Ref T@Field_10273_24949) Bool)
(declare-fun HasDirectPerm_10273_53 (T@PolymorphicMapType_18623 T@Ref T@Field_18662_53) Bool)
(declare-fun HasDirectPerm_10271_3219 (T@PolymorphicMapType_18623 T@Ref T@Field_24834_3219) Bool)
(declare-fun HasDirectPerm_10273_10274 (T@PolymorphicMapType_18623 T@Ref T@Field_18675_18676) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_18623 T@PolymorphicMapType_18623 T@PolymorphicMapType_18623) Bool)
(declare-fun |Set#Difference_10334| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_10334| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_10277_10278 (T@Field_24931_24932) Int)
(declare-fun |Set#Empty_10334| () (Array T@Ref Bool))
(declare-fun InsidePredicate_18662_10277 (T@Field_10273_10278 T@FrameType T@Field_24931_24932 T@FrameType) Bool)
(declare-fun InsidePredicate_10277_18662 (T@Field_24931_24932 T@FrameType T@Field_10273_10278 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_18602) (Heap1 T@PolymorphicMapType_18602) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_18602) (Mask T@PolymorphicMapType_18623) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_18602) (Heap1@@0 T@PolymorphicMapType_18602) (Heap2 T@PolymorphicMapType_18602) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_24944_24949) ) (!  (not (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_24931_24932) ) (!  (not (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10277_53) ) (!  (not (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10277_10274) ) (!  (not (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_10277_3219) ) (!  (not (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_10273_24949) ) (!  (not (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_10273_10278) ) (!  (not (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_18662_53) ) (!  (not (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_18675_18676) ) (!  (not (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_24834_3219) ) (!  (not (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((r_1 T@Ref) (i Int) ) (! (IsPredicateField_10277_10278 (list r_1 i))
 :qid |stdinbpl.404:15|
 :skolemid |83|
 :pattern ( (list r_1 i))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_18602) (r_1@@0 T@Ref) (i@@0 Int) ) (! (|list#everUsed_10277| (list r_1@@0 i@@0))
 :qid |stdinbpl.423:15|
 :skolemid |87|
 :pattern ( (|list#trigger_10277| Heap@@0 (list r_1@@0 i@@0)))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.288:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_10334| (|Set#Union_10334| a@@0 b@@0) b@@0) (|Set#Union_10334| a@@0 b@@0))
 :qid |stdinbpl.240:18|
 :skolemid |38|
 :pattern ( (|Set#Union_10334| (|Set#Union_10334| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10334| (|Set#Intersection_10334| a@@1 b@@1) b@@1) (|Set#Intersection_10334| a@@1 b@@1))
 :qid |stdinbpl.244:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_10334| (|Set#Intersection_10334| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_10334| r) o) (= r o))
 :qid |stdinbpl.209:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_10334| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_10334| (|Set#Union_10334| a@@2 b@@2)) (|Set#Card_10334| (|Set#Intersection_10334| a@@2 b@@2))) (+ (|Set#Card_10334| a@@2) (|Set#Card_10334| b@@2)))
 :qid |stdinbpl.248:18|
 :skolemid |42|
 :pattern ( (|Set#Card_10334| (|Set#Union_10334| a@@2 b@@2)))
 :pattern ( (|Set#Card_10334| (|Set#Intersection_10334| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.291:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_18602) (ExhaleHeap T@PolymorphicMapType_18602) (Mask@@0 T@PolymorphicMapType_18623) (pm_f_25 T@Field_24931_24932) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10277_10278 Mask@@0 null pm_f_25) (IsPredicateField_10277_10278 pm_f_25)) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@1) null (PredicateMaskField_10277 pm_f_25)) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap) null (PredicateMaskField_10277 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_10277_10278 pm_f_25) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap) null (PredicateMaskField_10277 pm_f_25)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_18602) (ExhaleHeap@@0 T@PolymorphicMapType_18602) (Mask@@1 T@PolymorphicMapType_18623) (pm_f_25@@0 T@Field_10273_10278) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10273_10278 Mask@@1 null pm_f_25@@0) (IsPredicateField_10273_63108 pm_f_25@@0)) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@2) null (PredicateMaskField_10273 pm_f_25@@0)) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@0) null (PredicateMaskField_10273 pm_f_25@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_10273_63108 pm_f_25@@0) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@0) null (PredicateMaskField_10273 pm_f_25@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_18602) (ExhaleHeap@@1 T@PolymorphicMapType_18602) (Mask@@2 T@PolymorphicMapType_18623) (pm_f_25@@1 T@Field_24931_24932) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10277_10278 Mask@@2 null pm_f_25@@1) (IsWandField_10277_66778 pm_f_25@@1)) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@3) null (WandMaskField_10277 pm_f_25@@1)) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@1) null (WandMaskField_10277 pm_f_25@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_10277_66778 pm_f_25@@1) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@1) null (WandMaskField_10277 pm_f_25@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_18602) (ExhaleHeap@@2 T@PolymorphicMapType_18602) (Mask@@3 T@PolymorphicMapType_18623) (pm_f_25@@2 T@Field_10273_10278) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10273_10278 Mask@@3 null pm_f_25@@2) (IsWandField_10273_66421 pm_f_25@@2)) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@4) null (WandMaskField_10273 pm_f_25@@2)) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@2) null (WandMaskField_10273 pm_f_25@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_10273_66421 pm_f_25@@2) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@2) null (WandMaskField_10273 pm_f_25@@2)))
)))
(assert (forall ((r_1@@1 T@Ref) (i@@1 Int) (r2 T@Ref) (i2 Int) ) (!  (=> (= (list r_1@@1 i@@1) (list r2 i2)) (and (= r_1@@1 r2) (= i@@1 i2)))
 :qid |stdinbpl.414:15|
 :skolemid |85|
 :pattern ( (list r_1@@1 i@@1) (list r2 i2))
)))
(assert (forall ((r_1@@2 T@Ref) (i@@2 Int) (r2@@0 T@Ref) (i2@@0 Int) ) (!  (=> (= (|list#sm| r_1@@2 i@@2) (|list#sm| r2@@0 i2@@0)) (and (= r_1@@2 r2@@0) (= i@@2 i2@@0)))
 :qid |stdinbpl.418:15|
 :skolemid |86|
 :pattern ( (|list#sm| r_1@@2 i@@2) (|list#sm| r2@@0 i2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_18602) (ExhaleHeap@@3 T@PolymorphicMapType_18602) (Mask@@4 T@PolymorphicMapType_18623) (pm_f_25@@3 T@Field_24931_24932) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_10277_10278 Mask@@4 null pm_f_25@@3) (IsPredicateField_10277_10278 pm_f_25@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_25 T@Ref) (f_67 T@Field_24834_3219) ) (!  (=> (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25 f_67) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@5) o2_25 f_67) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25 f_67)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25 f_67))
)) (forall ((o2_25@@0 T@Ref) (f_67@@0 T@Field_18675_18676) ) (!  (=> (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@0 f_67@@0) (= (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@5) o2_25@@0 f_67@@0) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@0 f_67@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@0 f_67@@0))
))) (forall ((o2_25@@1 T@Ref) (f_67@@1 T@Field_18662_53) ) (!  (=> (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@1 f_67@@1) (= (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@5) o2_25@@1 f_67@@1) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@1 f_67@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@1 f_67@@1))
))) (forall ((o2_25@@2 T@Ref) (f_67@@2 T@Field_10273_10278) ) (!  (=> (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@2 f_67@@2) (= (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@5) o2_25@@2 f_67@@2) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@2 f_67@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@2 f_67@@2))
))) (forall ((o2_25@@3 T@Ref) (f_67@@3 T@Field_10273_24949) ) (!  (=> (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@3 f_67@@3) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@5) o2_25@@3 f_67@@3) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@3 f_67@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@3 f_67@@3))
))) (forall ((o2_25@@4 T@Ref) (f_67@@4 T@Field_10277_3219) ) (!  (=> (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@4 f_67@@4) (= (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@5) o2_25@@4 f_67@@4) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@4 f_67@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@4 f_67@@4))
))) (forall ((o2_25@@5 T@Ref) (f_67@@5 T@Field_10277_10274) ) (!  (=> (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@5 f_67@@5) (= (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@5) o2_25@@5 f_67@@5) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@5 f_67@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@5 f_67@@5))
))) (forall ((o2_25@@6 T@Ref) (f_67@@6 T@Field_10277_53) ) (!  (=> (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@6 f_67@@6) (= (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@5) o2_25@@6 f_67@@6) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@6 f_67@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@6 f_67@@6))
))) (forall ((o2_25@@7 T@Ref) (f_67@@7 T@Field_24931_24932) ) (!  (=> (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@7 f_67@@7) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@5) o2_25@@7 f_67@@7) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@7 f_67@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@7 f_67@@7))
))) (forall ((o2_25@@8 T@Ref) (f_67@@8 T@Field_24944_24949) ) (!  (=> (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) null (PredicateMaskField_10277 pm_f_25@@3))) o2_25@@8 f_67@@8) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@5) o2_25@@8 f_67@@8) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@8 f_67@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@3) o2_25@@8 f_67@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_10277_10278 pm_f_25@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_18602) (ExhaleHeap@@4 T@PolymorphicMapType_18602) (Mask@@5 T@PolymorphicMapType_18623) (pm_f_25@@4 T@Field_10273_10278) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_10273_10278 Mask@@5 null pm_f_25@@4) (IsPredicateField_10273_63108 pm_f_25@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@9 T@Ref) (f_67@@9 T@Field_24834_3219) ) (!  (=> (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@9 f_67@@9) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@6) o2_25@@9 f_67@@9) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@9 f_67@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@9 f_67@@9))
)) (forall ((o2_25@@10 T@Ref) (f_67@@10 T@Field_18675_18676) ) (!  (=> (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@10 f_67@@10) (= (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@6) o2_25@@10 f_67@@10) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@10 f_67@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@10 f_67@@10))
))) (forall ((o2_25@@11 T@Ref) (f_67@@11 T@Field_18662_53) ) (!  (=> (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@11 f_67@@11) (= (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@6) o2_25@@11 f_67@@11) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@11 f_67@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@11 f_67@@11))
))) (forall ((o2_25@@12 T@Ref) (f_67@@12 T@Field_10273_10278) ) (!  (=> (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@12 f_67@@12) (= (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@6) o2_25@@12 f_67@@12) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@12 f_67@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@12 f_67@@12))
))) (forall ((o2_25@@13 T@Ref) (f_67@@13 T@Field_10273_24949) ) (!  (=> (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@13 f_67@@13) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) o2_25@@13 f_67@@13) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@13 f_67@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@13 f_67@@13))
))) (forall ((o2_25@@14 T@Ref) (f_67@@14 T@Field_10277_3219) ) (!  (=> (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@14 f_67@@14) (= (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@6) o2_25@@14 f_67@@14) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@14 f_67@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@14 f_67@@14))
))) (forall ((o2_25@@15 T@Ref) (f_67@@15 T@Field_10277_10274) ) (!  (=> (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@15 f_67@@15) (= (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@6) o2_25@@15 f_67@@15) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@15 f_67@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@15 f_67@@15))
))) (forall ((o2_25@@16 T@Ref) (f_67@@16 T@Field_10277_53) ) (!  (=> (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@16 f_67@@16) (= (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@6) o2_25@@16 f_67@@16) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@16 f_67@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@16 f_67@@16))
))) (forall ((o2_25@@17 T@Ref) (f_67@@17 T@Field_24931_24932) ) (!  (=> (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@17 f_67@@17) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@6) o2_25@@17 f_67@@17) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@17 f_67@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@17 f_67@@17))
))) (forall ((o2_25@@18 T@Ref) (f_67@@18 T@Field_24944_24949) ) (!  (=> (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@6) null (PredicateMaskField_10273 pm_f_25@@4))) o2_25@@18 f_67@@18) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@6) o2_25@@18 f_67@@18) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@18 f_67@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@4) o2_25@@18 f_67@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_10273_63108 pm_f_25@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_18602) (ExhaleHeap@@5 T@PolymorphicMapType_18602) (Mask@@6 T@PolymorphicMapType_18623) (pm_f_25@@5 T@Field_24931_24932) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_10277_10278 Mask@@6 null pm_f_25@@5) (IsWandField_10277_66778 pm_f_25@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@19 T@Ref) (f_67@@19 T@Field_24834_3219) ) (!  (=> (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@19 f_67@@19) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@7) o2_25@@19 f_67@@19) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@19 f_67@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@19 f_67@@19))
)) (forall ((o2_25@@20 T@Ref) (f_67@@20 T@Field_18675_18676) ) (!  (=> (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@20 f_67@@20) (= (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@7) o2_25@@20 f_67@@20) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@20 f_67@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@20 f_67@@20))
))) (forall ((o2_25@@21 T@Ref) (f_67@@21 T@Field_18662_53) ) (!  (=> (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@21 f_67@@21) (= (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@7) o2_25@@21 f_67@@21) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@21 f_67@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@21 f_67@@21))
))) (forall ((o2_25@@22 T@Ref) (f_67@@22 T@Field_10273_10278) ) (!  (=> (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@22 f_67@@22) (= (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@7) o2_25@@22 f_67@@22) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@22 f_67@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@22 f_67@@22))
))) (forall ((o2_25@@23 T@Ref) (f_67@@23 T@Field_10273_24949) ) (!  (=> (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@23 f_67@@23) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@7) o2_25@@23 f_67@@23) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@23 f_67@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@23 f_67@@23))
))) (forall ((o2_25@@24 T@Ref) (f_67@@24 T@Field_10277_3219) ) (!  (=> (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@24 f_67@@24) (= (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@7) o2_25@@24 f_67@@24) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@24 f_67@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@24 f_67@@24))
))) (forall ((o2_25@@25 T@Ref) (f_67@@25 T@Field_10277_10274) ) (!  (=> (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@25 f_67@@25) (= (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@7) o2_25@@25 f_67@@25) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@25 f_67@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@25 f_67@@25))
))) (forall ((o2_25@@26 T@Ref) (f_67@@26 T@Field_10277_53) ) (!  (=> (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@26 f_67@@26) (= (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@7) o2_25@@26 f_67@@26) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@26 f_67@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@26 f_67@@26))
))) (forall ((o2_25@@27 T@Ref) (f_67@@27 T@Field_24931_24932) ) (!  (=> (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@27 f_67@@27) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@7) o2_25@@27 f_67@@27) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@27 f_67@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@27 f_67@@27))
))) (forall ((o2_25@@28 T@Ref) (f_67@@28 T@Field_24944_24949) ) (!  (=> (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) null (WandMaskField_10277 pm_f_25@@5))) o2_25@@28 f_67@@28) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@7) o2_25@@28 f_67@@28) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@28 f_67@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@5) o2_25@@28 f_67@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_10277_66778 pm_f_25@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_18602) (ExhaleHeap@@6 T@PolymorphicMapType_18602) (Mask@@7 T@PolymorphicMapType_18623) (pm_f_25@@6 T@Field_10273_10278) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_10273_10278 Mask@@7 null pm_f_25@@6) (IsWandField_10273_66421 pm_f_25@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_25@@29 T@Ref) (f_67@@29 T@Field_24834_3219) ) (!  (=> (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@29 f_67@@29) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@8) o2_25@@29 f_67@@29) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@29 f_67@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@29 f_67@@29))
)) (forall ((o2_25@@30 T@Ref) (f_67@@30 T@Field_18675_18676) ) (!  (=> (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@30 f_67@@30) (= (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@8) o2_25@@30 f_67@@30) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@30 f_67@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@30 f_67@@30))
))) (forall ((o2_25@@31 T@Ref) (f_67@@31 T@Field_18662_53) ) (!  (=> (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@31 f_67@@31) (= (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@8) o2_25@@31 f_67@@31) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@31 f_67@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@31 f_67@@31))
))) (forall ((o2_25@@32 T@Ref) (f_67@@32 T@Field_10273_10278) ) (!  (=> (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@32 f_67@@32) (= (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@8) o2_25@@32 f_67@@32) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@32 f_67@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@32 f_67@@32))
))) (forall ((o2_25@@33 T@Ref) (f_67@@33 T@Field_10273_24949) ) (!  (=> (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@33 f_67@@33) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) o2_25@@33 f_67@@33) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@33 f_67@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@33 f_67@@33))
))) (forall ((o2_25@@34 T@Ref) (f_67@@34 T@Field_10277_3219) ) (!  (=> (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@34 f_67@@34) (= (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@8) o2_25@@34 f_67@@34) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@34 f_67@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@34 f_67@@34))
))) (forall ((o2_25@@35 T@Ref) (f_67@@35 T@Field_10277_10274) ) (!  (=> (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@35 f_67@@35) (= (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@8) o2_25@@35 f_67@@35) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@35 f_67@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@35 f_67@@35))
))) (forall ((o2_25@@36 T@Ref) (f_67@@36 T@Field_10277_53) ) (!  (=> (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@36 f_67@@36) (= (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@8) o2_25@@36 f_67@@36) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@36 f_67@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@36 f_67@@36))
))) (forall ((o2_25@@37 T@Ref) (f_67@@37 T@Field_24931_24932) ) (!  (=> (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@37 f_67@@37) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@8) o2_25@@37 f_67@@37) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@37 f_67@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@37 f_67@@37))
))) (forall ((o2_25@@38 T@Ref) (f_67@@38 T@Field_24944_24949) ) (!  (=> (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@8) null (WandMaskField_10273 pm_f_25@@6))) o2_25@@38 f_67@@38) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@8) o2_25@@38 f_67@@38) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@38 f_67@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@6) o2_25@@38 f_67@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_10273_66421 pm_f_25@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_18602) (ExhaleHeap@@7 T@PolymorphicMapType_18602) (Mask@@8 T@PolymorphicMapType_18623) (o_53 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@9) o_53 $allocated) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@7) o_53 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@7) o_53 $allocated))
)))
(assert (forall ((p T@Field_10273_10278) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_18662_18662 p v_1 p w))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_18662_18662 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_24931_24932) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_10277_10277 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.186:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10277_10277 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_10271_3219 val)))
(assert  (not (IsWandField_10271_3219 val)))
(assert  (not (IsPredicateField_10273_10274 next)))
(assert  (not (IsWandField_10273_10274 next)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_18602) (ExhaleHeap@@8 T@PolymorphicMapType_18602) (Mask@@9 T@PolymorphicMapType_18623) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_18623) (o_2@@9 T@Ref) (f_4@@9 T@Field_24944_24949) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_10277_73681 f_4@@9))) (not (IsWandField_10277_73697 f_4@@9))) (<= (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_18623) (o_2@@10 T@Ref) (f_4@@10 T@Field_10277_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_10277_53 f_4@@10))) (not (IsWandField_10277_53 f_4@@10))) (<= (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_18623) (o_2@@11 T@Ref) (f_4@@11 T@Field_24931_24932) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_10277_10278 f_4@@11))) (not (IsWandField_10277_66778 f_4@@11))) (<= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_18623) (o_2@@12 T@Ref) (f_4@@12 T@Field_10277_10274) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_10277_10274 f_4@@12))) (not (IsWandField_10277_10274 f_4@@12))) (<= (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_18623) (o_2@@13 T@Ref) (f_4@@13 T@Field_10277_3219) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_10277_3219 f_4@@13))) (not (IsWandField_10277_3219 f_4@@13))) (<= (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_18623) (o_2@@14 T@Ref) (f_4@@14 T@Field_10273_24949) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_10271_72850 f_4@@14))) (not (IsWandField_10271_72866 f_4@@14))) (<= (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_18623) (o_2@@15 T@Ref) (f_4@@15 T@Field_18662_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_10271_53 f_4@@15))) (not (IsWandField_10271_53 f_4@@15))) (<= (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_18623) (o_2@@16 T@Ref) (f_4@@16 T@Field_10273_10278) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_10273_63108 f_4@@16))) (not (IsWandField_10273_66421 f_4@@16))) (<= (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_18623) (o_2@@17 T@Ref) (f_4@@17 T@Field_18675_18676) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_10273_10274 f_4@@17))) (not (IsWandField_10273_10274 f_4@@17))) (<= (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_18623) (o_2@@18 T@Ref) (f_4@@18 T@Field_24834_3219) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_10271_3219 f_4@@18))) (not (IsWandField_10271_3219 f_4@@18))) (<= (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_18623) (o_2@@19 T@Ref) (f_4@@19 T@Field_24944_24949) ) (! (= (HasDirectPerm_10277_62863 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10277_62863 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_18623) (o_2@@20 T@Ref) (f_4@@20 T@Field_10277_53) ) (! (= (HasDirectPerm_10277_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10277_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_18623) (o_2@@21 T@Ref) (f_4@@21 T@Field_24931_24932) ) (! (= (HasDirectPerm_10277_10278 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10277_10278 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_18623) (o_2@@22 T@Ref) (f_4@@22 T@Field_10277_3219) ) (! (= (HasDirectPerm_10277_3219 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10277_3219 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_18623) (o_2@@23 T@Ref) (f_4@@23 T@Field_10277_10274) ) (! (= (HasDirectPerm_10277_10274 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10277_10274 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_18623) (o_2@@24 T@Ref) (f_4@@24 T@Field_10273_24949) ) (! (= (HasDirectPerm_10273_61722 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10273_61722 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_18623) (o_2@@25 T@Ref) (f_4@@25 T@Field_18662_53) ) (! (= (HasDirectPerm_10273_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10273_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_18623) (o_2@@26 T@Ref) (f_4@@26 T@Field_10273_10278) ) (! (= (HasDirectPerm_10273_10278 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10273_10278 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_18623) (o_2@@27 T@Ref) (f_4@@27 T@Field_24834_3219) ) (! (= (HasDirectPerm_10271_3219 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10271_3219 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_18623) (o_2@@28 T@Ref) (f_4@@28 T@Field_18675_18676) ) (! (= (HasDirectPerm_10273_10274 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10273_10274 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.174:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_18602) (ExhaleHeap@@9 T@PolymorphicMapType_18602) (Mask@@30 T@PolymorphicMapType_18623) (o_53@@0 T@Ref) (f_67@@39 T@Field_24944_24949) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_10277_62863 Mask@@30 o_53@@0 f_67@@39) (= (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@11) o_53@@0 f_67@@39) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@9) o_53@@0 f_67@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@@9) o_53@@0 f_67@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_18602) (ExhaleHeap@@10 T@PolymorphicMapType_18602) (Mask@@31 T@PolymorphicMapType_18623) (o_53@@1 T@Ref) (f_67@@40 T@Field_10277_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_10277_53 Mask@@31 o_53@@1 f_67@@40) (= (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@12) o_53@@1 f_67@@40) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@10) o_53@@1 f_67@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@@10) o_53@@1 f_67@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_18602) (ExhaleHeap@@11 T@PolymorphicMapType_18602) (Mask@@32 T@PolymorphicMapType_18623) (o_53@@2 T@Ref) (f_67@@41 T@Field_24931_24932) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_10277_10278 Mask@@32 o_53@@2 f_67@@41) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@13) o_53@@2 f_67@@41) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@11) o_53@@2 f_67@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@@11) o_53@@2 f_67@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_18602) (ExhaleHeap@@12 T@PolymorphicMapType_18602) (Mask@@33 T@PolymorphicMapType_18623) (o_53@@3 T@Ref) (f_67@@42 T@Field_10277_3219) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_10277_3219 Mask@@33 o_53@@3 f_67@@42) (= (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@14) o_53@@3 f_67@@42) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@12) o_53@@3 f_67@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@@12) o_53@@3 f_67@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_18602) (ExhaleHeap@@13 T@PolymorphicMapType_18602) (Mask@@34 T@PolymorphicMapType_18623) (o_53@@4 T@Ref) (f_67@@43 T@Field_10277_10274) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_10277_10274 Mask@@34 o_53@@4 f_67@@43) (= (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@15) o_53@@4 f_67@@43) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@13) o_53@@4 f_67@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@@13) o_53@@4 f_67@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_18602) (ExhaleHeap@@14 T@PolymorphicMapType_18602) (Mask@@35 T@PolymorphicMapType_18623) (o_53@@5 T@Ref) (f_67@@44 T@Field_10273_24949) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_10273_61722 Mask@@35 o_53@@5 f_67@@44) (= (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@16) o_53@@5 f_67@@44) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@14) o_53@@5 f_67@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@@14) o_53@@5 f_67@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_18602) (ExhaleHeap@@15 T@PolymorphicMapType_18602) (Mask@@36 T@PolymorphicMapType_18623) (o_53@@6 T@Ref) (f_67@@45 T@Field_18662_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_10273_53 Mask@@36 o_53@@6 f_67@@45) (= (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@17) o_53@@6 f_67@@45) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@15) o_53@@6 f_67@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@@15) o_53@@6 f_67@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_18602) (ExhaleHeap@@16 T@PolymorphicMapType_18602) (Mask@@37 T@PolymorphicMapType_18623) (o_53@@7 T@Ref) (f_67@@46 T@Field_10273_10278) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_10273_10278 Mask@@37 o_53@@7 f_67@@46) (= (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@18) o_53@@7 f_67@@46) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@16) o_53@@7 f_67@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@@16) o_53@@7 f_67@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_18602) (ExhaleHeap@@17 T@PolymorphicMapType_18602) (Mask@@38 T@PolymorphicMapType_18623) (o_53@@8 T@Ref) (f_67@@47 T@Field_24834_3219) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_10271_3219 Mask@@38 o_53@@8 f_67@@47) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@19) o_53@@8 f_67@@47) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@17) o_53@@8 f_67@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@@17) o_53@@8 f_67@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_18602) (ExhaleHeap@@18 T@PolymorphicMapType_18602) (Mask@@39 T@PolymorphicMapType_18623) (o_53@@9 T@Ref) (f_67@@48 T@Field_18675_18676) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_10273_10274 Mask@@39 o_53@@9 f_67@@48) (= (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@20) o_53@@9 f_67@@48) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@18) o_53@@9 f_67@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@@18) o_53@@9 f_67@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_24944_24949) ) (! (= (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_10277_53) ) (! (= (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_24931_24932) ) (! (= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_10277_10274) ) (! (= (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_10277_3219) ) (! (= (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_10273_24949) ) (! (= (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_18662_53) ) (! (= (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_10273_10278) ) (! (= (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_18675_18676) ) (! (= (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_24834_3219) ) (! (= (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_18623) (SummandMask1 T@PolymorphicMapType_18623) (SummandMask2 T@PolymorphicMapType_18623) (o_2@@39 T@Ref) (f_4@@39 T@Field_24944_24949) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_18623) (SummandMask1@@0 T@PolymorphicMapType_18623) (SummandMask2@@0 T@PolymorphicMapType_18623) (o_2@@40 T@Ref) (f_4@@40 T@Field_10277_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_18623) (SummandMask1@@1 T@PolymorphicMapType_18623) (SummandMask2@@1 T@PolymorphicMapType_18623) (o_2@@41 T@Ref) (f_4@@41 T@Field_24931_24932) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_18623) (SummandMask1@@2 T@PolymorphicMapType_18623) (SummandMask2@@2 T@PolymorphicMapType_18623) (o_2@@42 T@Ref) (f_4@@42 T@Field_10277_10274) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_18623) (SummandMask1@@3 T@PolymorphicMapType_18623) (SummandMask2@@3 T@PolymorphicMapType_18623) (o_2@@43 T@Ref) (f_4@@43 T@Field_10277_3219) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_18623) (SummandMask1@@4 T@PolymorphicMapType_18623) (SummandMask2@@4 T@PolymorphicMapType_18623) (o_2@@44 T@Ref) (f_4@@44 T@Field_10273_24949) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_18623) (SummandMask1@@5 T@PolymorphicMapType_18623) (SummandMask2@@5 T@PolymorphicMapType_18623) (o_2@@45 T@Ref) (f_4@@45 T@Field_18662_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_18623) (SummandMask1@@6 T@PolymorphicMapType_18623) (SummandMask2@@6 T@PolymorphicMapType_18623) (o_2@@46 T@Ref) (f_4@@46 T@Field_10273_10278) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_18623) (SummandMask1@@7 T@PolymorphicMapType_18623) (SummandMask2@@7 T@PolymorphicMapType_18623) (o_2@@47 T@Ref) (f_4@@47 T@Field_18675_18676) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_18623) (SummandMask1@@8 T@PolymorphicMapType_18623) (SummandMask2@@8 T@PolymorphicMapType_18623) (o_2@@48 T@Ref) (f_4@@48 T@Field_24834_3219) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_10334| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.237:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_10334| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_10334| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_10334| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_10334| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.252:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_10334| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_10334| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_10334| a@@6 x) y))
 :qid |stdinbpl.217:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_10334| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_10334| a@@7 b@@5) y@@0))
 :qid |stdinbpl.227:18|
 :skolemid |35|
 :pattern ( (|Set#Union_10334| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_10334| a@@8 b@@6) y@@1))
 :qid |stdinbpl.229:18|
 :skolemid |36|
 :pattern ( (|Set#Union_10334| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_10334| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.213:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_10334| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_10334| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_10334| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_10334| (|Set#Difference_10334| a@@11 b@@8)) (|Set#Card_10334| (|Set#Difference_10334| b@@8 a@@11))) (|Set#Card_10334| (|Set#Intersection_10334| a@@11 b@@8))) (|Set#Card_10334| (|Set#Union_10334| a@@11 b@@8))) (= (|Set#Card_10334| (|Set#Difference_10334| a@@11 b@@8)) (- (|Set#Card_10334| a@@11) (|Set#Card_10334| (|Set#Intersection_10334| a@@11 b@@8)))))
 :qid |stdinbpl.256:18|
 :skolemid |45|
 :pattern ( (|Set#Card_10334| (|Set#Difference_10334| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_10334| s))
 :qid |stdinbpl.199:18|
 :skolemid |22|
 :pattern ( (|Set#Card_10334| s))
)))
(assert (forall ((r_1@@3 T@Ref) (i@@3 Int) ) (! (= (getPredWandId_10277_10278 (list r_1@@3 i@@3)) 0)
 :qid |stdinbpl.408:15|
 :skolemid |84|
 :pattern ( (list r_1@@3 i@@3))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_10334| a@@12 x@@1) x@@1)
 :qid |stdinbpl.215:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_10334| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_10334| (|Set#UnionOne_10334| a@@13 x@@2)) (|Set#Card_10334| a@@13)))
 :qid |stdinbpl.219:18|
 :skolemid |32|
 :pattern ( (|Set#Card_10334| (|Set#UnionOne_10334| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_10334| (|Set#Singleton_10334| r@@0)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |28|
 :pattern ( (|Set#Card_10334| (|Set#Singleton_10334| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_10334| r@@1) r@@1)
 :qid |stdinbpl.208:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_10334| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_10334| a@@14 (|Set#Union_10334| a@@14 b@@9)) (|Set#Union_10334| a@@14 b@@9))
 :qid |stdinbpl.242:18|
 :skolemid |39|
 :pattern ( (|Set#Union_10334| a@@14 (|Set#Union_10334| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_10334| a@@15 (|Set#Intersection_10334| a@@15 b@@10)) (|Set#Intersection_10334| a@@15 b@@10))
 :qid |stdinbpl.246:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_10334| a@@15 (|Set#Intersection_10334| a@@15 b@@10)))
)))
(assert (forall ((r_1@@4 T@Ref) (i@@4 Int) ) (! (= (PredicateMaskField_10277 (list r_1@@4 i@@4)) (|list#sm| r_1@@4 i@@4))
 :qid |stdinbpl.400:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_10277 (list r_1@@4 i@@4)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_10334| o@@3))
 :qid |stdinbpl.202:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_10334| o@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_18602) (o_8 T@Ref) (f_63 T@Field_24944_24949) (v T@PolymorphicMapType_19151) ) (! (succHeap Heap@@21 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@21) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@21) o_8 f_63 v) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@21) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@21) o_8 f_63 v) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@21) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_18602) (o_8@@0 T@Ref) (f_63@@0 T@Field_10277_3219) (v@@0 Int) ) (! (succHeap Heap@@22 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@22) (store (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@22) o_8@@0 f_63@@0 v@@0) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@22) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@22) (store (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@22) o_8@@0 f_63@@0 v@@0) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_18602) (o_8@@1 T@Ref) (f_63@@1 T@Field_24931_24932) (v@@1 T@FrameType) ) (! (succHeap Heap@@23 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@23) (store (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@23) o_8@@1 f_63@@1 v@@1) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@23) (store (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@23) o_8@@1 f_63@@1 v@@1) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@23) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_18602) (o_8@@2 T@Ref) (f_63@@2 T@Field_10277_10274) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@24) (store (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@24) o_8@@2 f_63@@2 v@@2) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@24) (store (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@24) o_8@@2 f_63@@2 v@@2) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@24) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_18602) (o_8@@3 T@Ref) (f_63@@3 T@Field_10277_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@25) (store (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@25) o_8@@3 f_63@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@25) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@25) (store (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@25) o_8@@3 f_63@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_18602) (o_8@@4 T@Ref) (f_63@@4 T@Field_10273_24949) (v@@4 T@PolymorphicMapType_19151) ) (! (succHeap Heap@@26 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@26) (store (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@26) o_8@@4 f_63@@4 v@@4) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@26) (store (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@26) o_8@@4 f_63@@4 v@@4) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@26) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_18602) (o_8@@5 T@Ref) (f_63@@5 T@Field_24834_3219) (v@@5 Int) ) (! (succHeap Heap@@27 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@27) (store (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@27) o_8@@5 f_63@@5 v@@5) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@27) (store (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@27) o_8@@5 f_63@@5 v@@5) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@27) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_18602) (o_8@@6 T@Ref) (f_63@@6 T@Field_10273_10278) (v@@6 T@FrameType) ) (! (succHeap Heap@@28 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@28) (store (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@28) o_8@@6 f_63@@6 v@@6) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@28) (store (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@28) o_8@@6 f_63@@6 v@@6) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@28) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_18602) (o_8@@7 T@Ref) (f_63@@7 T@Field_18675_18676) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@29) (store (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@29) o_8@@7 f_63@@7 v@@7) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@29) (store (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@29) o_8@@7 f_63@@7 v@@7) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@29) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_18602) (o_8@@8 T@Ref) (f_63@@8 T@Field_18662_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_18602 (store (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@30) o_8@@8 f_63@@8 v@@8) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_18602 (store (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@30) o_8@@8 f_63@@8 v@@8) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@30) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@30)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.286:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.287:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_10334| s@@0) 0) (= s@@0 |Set#Empty_10334|)) (=> (not (= (|Set#Card_10334| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.205:33|
 :skolemid |24|
))))
 :qid |stdinbpl.203:18|
 :skolemid |25|
 :pattern ( (|Set#Card_10334| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_10334| (|Set#UnionOne_10334| a@@18 x@@4)) (+ (|Set#Card_10334| a@@18) 1)))
 :qid |stdinbpl.221:18|
 :skolemid |33|
 :pattern ( (|Set#Card_10334| (|Set#UnionOne_10334| a@@18 x@@4)))
)))
(assert (forall ((o_8@@9 T@Ref) (f_14 T@Field_18675_18676) (Heap@@31 T@PolymorphicMapType_18602) ) (!  (=> (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@31) o_8@@9 $allocated) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@31) (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@31) o_8@@9 f_14) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@31) o_8@@9 f_14))
)))
(assert (forall ((p@@2 T@Field_10273_10278) (v_1@@1 T@FrameType) (q T@Field_10273_10278) (w@@1 T@FrameType) (r@@2 T@Field_10273_10278) (u T@FrameType) ) (!  (=> (and (InsidePredicate_18662_18662 p@@2 v_1@@1 q w@@1) (InsidePredicate_18662_18662 q w@@1 r@@2 u)) (InsidePredicate_18662_18662 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18662_18662 p@@2 v_1@@1 q w@@1) (InsidePredicate_18662_18662 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_10273_10278) (v_1@@2 T@FrameType) (q@@0 T@Field_10273_10278) (w@@2 T@FrameType) (r@@3 T@Field_24931_24932) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_18662_18662 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18662_10277 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_18662_10277 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18662_18662 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_18662_10277 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_10273_10278) (v_1@@3 T@FrameType) (q@@1 T@Field_24931_24932) (w@@3 T@FrameType) (r@@4 T@Field_10273_10278) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_18662_10277 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10277_18662 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_18662_18662 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18662_10277 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_10277_18662 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_10273_10278) (v_1@@4 T@FrameType) (q@@2 T@Field_24931_24932) (w@@4 T@FrameType) (r@@5 T@Field_24931_24932) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_18662_10277 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10277_10277 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_18662_10277 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_18662_10277 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_10277_10277 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_24931_24932) (v_1@@5 T@FrameType) (q@@3 T@Field_10273_10278) (w@@5 T@FrameType) (r@@6 T@Field_10273_10278) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_10277_18662 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18662_18662 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_10277_18662 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10277_18662 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_18662_18662 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_24931_24932) (v_1@@6 T@FrameType) (q@@4 T@Field_10273_10278) (w@@6 T@FrameType) (r@@7 T@Field_24931_24932) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_10277_18662 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18662_10277 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_10277_10277 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10277_18662 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_18662_10277 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_24931_24932) (v_1@@7 T@FrameType) (q@@5 T@Field_24931_24932) (w@@7 T@FrameType) (r@@8 T@Field_10273_10278) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_10277_10277 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10277_18662 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_10277_18662 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10277_10277 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_10277_18662 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_24931_24932) (v_1@@8 T@FrameType) (q@@6 T@Field_24931_24932) (w@@8 T@FrameType) (r@@9 T@Field_24931_24932) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_10277_10277 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10277_10277 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_10277_10277 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.181:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10277_10277 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_10277_10277 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.292:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_10334| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.225:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_10334| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i@@5 () Int)
(declare-fun Mask@3 () T@PolymorphicMapType_18623)
(declare-fun r_1@@5 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_18623)
(declare-fun Heap@@32 () T@PolymorphicMapType_18602)
(declare-fun Mask@1 () T@PolymorphicMapType_18623)
(declare-fun Mask@2 () T@PolymorphicMapType_18623)
(set-info :boogie-vc-id |list#definedness|)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon2_correct true))
(let ((anon3_Else_correct  (=> (>= 0 i@@5) (=> (and (= Mask@3 ZeroMask) (= (ControlFlow 0 4) 1)) anon2_correct))))
(let ((anon3_Then_correct  (=> (> i@@5 0) (=> (and (not (= r_1@@5 null)) (= Mask@0 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) r_1@@5 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) r_1@@5 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask)))) (=> (and (and (state Heap@@32 Mask@0) (not (= r_1@@5 null))) (and (= Mask@1 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@0) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@0) r_1@@5 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@0) r_1@@5 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@0))) (state Heap@@32 Mask@1))) (and (=> (= (ControlFlow 0 2) (- 0 3)) (HasDirectPerm_10273_10274 Mask@1 r_1@@5 next)) (=> (HasDirectPerm_10273_10274 Mask@1 r_1@@5 next) (=> (and (and (= Mask@2 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@1) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@1) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@32) r_1@@5 next) (- i@@5 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@1) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@32) r_1@@5 next) (- i@@5 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@1))) (state Heap@@32 Mask@2)) (and (= Mask@3 Mask@2) (= (ControlFlow 0 2) 1))) anon2_correct))))))))
(let ((anon0_correct  (=> (state Heap@@32 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@32) r_1@@5 $allocated)) (and (=> (= (ControlFlow 0 5) 2) anon3_Then_correct) (=> (= (ControlFlow 0 5) 4) anon3_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 5) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
