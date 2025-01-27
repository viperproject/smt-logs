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
(declare-fun length_3 () Int)
(declare-fun UnfoldingMask@24 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@20 () T@PolymorphicMapType_18623)
(declare-fun l1_1 () T@Ref)
(declare-fun UnfoldingMask@21 () T@PolymorphicMapType_18623)
(declare-fun PostHeap@4 () T@PolymorphicMapType_18602)
(declare-fun UnfoldingMask@22 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@23 () T@PolymorphicMapType_18623)
(declare-fun PostMask@1 () T@PolymorphicMapType_18623)
(declare-fun FrameFragment_10088 (T@FrameType) T@FrameType)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3219 (Int) T@FrameType)
(declare-fun FrameFragment_10274 (T@Ref) T@FrameType)
(declare-fun PostHeap@0 () T@PolymorphicMapType_18602)
(declare-fun PostHeap@1 () T@PolymorphicMapType_18602)
(declare-fun PostHeap@2 () T@PolymorphicMapType_18602)
(declare-fun newPMask@4 () T@PolymorphicMapType_19151)
(declare-fun PostHeap@3 () T@PolymorphicMapType_18602)
(declare-fun UnfoldingMask@19 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@15 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@16 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@17 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@18 () T@PolymorphicMapType_18623)
(declare-fun PostMask@0 () T@PolymorphicMapType_18623)
(declare-fun l2 () T@Ref)
(declare-fun Heap@22 () T@PolymorphicMapType_18602)
(declare-fun Heap@18 () T@PolymorphicMapType_18602)
(declare-fun Heap@19 () T@PolymorphicMapType_18602)
(declare-fun Heap@20 () T@PolymorphicMapType_18602)
(declare-fun newPMask@3 () T@PolymorphicMapType_19151)
(declare-fun Heap@21 () T@PolymorphicMapType_18602)
(declare-fun UnfoldingMask@14 () T@PolymorphicMapType_18623)
(declare-fun v_2 () Int)
(declare-fun UnfoldingMask@10 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@11 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@12 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@13 () T@PolymorphicMapType_18623)
(declare-fun Mask@12 () T@PolymorphicMapType_18623)
(declare-fun Mask@14 () T@PolymorphicMapType_18623)
(declare-fun Mask@13 () T@PolymorphicMapType_18623)
(declare-fun Heap@14 () T@PolymorphicMapType_18602)
(declare-fun Heap@15 () T@PolymorphicMapType_18602)
(declare-fun Heap@16 () T@PolymorphicMapType_18602)
(declare-fun newPMask@2 () T@PolymorphicMapType_19151)
(declare-fun Heap@17 () T@PolymorphicMapType_18602)
(declare-fun Heap@11 () T@PolymorphicMapType_18602)
(declare-fun Heap@12 () T@PolymorphicMapType_18602)
(declare-fun Heap@13 () T@PolymorphicMapType_18602)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun Mask@11 () T@PolymorphicMapType_18623)
(declare-fun Mask@10 () T@PolymorphicMapType_18623)
(declare-fun Mask@9 () T@PolymorphicMapType_18623)
(declare-fun Mask@8 () T@PolymorphicMapType_18623)
(declare-fun Mask@7 () T@PolymorphicMapType_18623)
(declare-fun Heap@10 () T@PolymorphicMapType_18602)
(declare-fun Mask@6 () T@PolymorphicMapType_18623)
(declare-fun arg_length@0 () Int)
(declare-fun Heap@6 () T@PolymorphicMapType_18602)
(declare-fun Heap@7 () T@PolymorphicMapType_18602)
(declare-fun arg_r@0 () T@Ref)
(declare-fun Heap@8 () T@PolymorphicMapType_18602)
(declare-fun newPMask@1 () T@PolymorphicMapType_19151)
(declare-fun Heap@9 () T@PolymorphicMapType_18602)
(declare-fun UnfoldingMask@9 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@5 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@6 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@7 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@8 () T@PolymorphicMapType_18623)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_18602)
(declare-fun Heap@3 () T@PolymorphicMapType_18602)
(declare-fun Heap@4 () T@PolymorphicMapType_18602)
(declare-fun newPMask@0 () T@PolymorphicMapType_19151)
(declare-fun Heap@5 () T@PolymorphicMapType_18602)
(declare-fun UnfoldingMask@4 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@1 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@2 () T@PolymorphicMapType_18623)
(declare-fun UnfoldingMask@3 () T@PolymorphicMapType_18623)
(declare-fun Mask@5 () T@PolymorphicMapType_18623)
(declare-fun Mask@4 () T@PolymorphicMapType_18623)
(declare-fun Heap@2 () T@PolymorphicMapType_18602)
(declare-fun Heap@1 () T@PolymorphicMapType_18602)
(declare-fun Mask@0 () T@PolymorphicMapType_18623)
(declare-fun Mask@1 () T@PolymorphicMapType_18623)
(declare-fun Mask@2 () T@PolymorphicMapType_18623)
(declare-fun Mask@3 () T@PolymorphicMapType_18623)
(declare-fun Heap@@32 () T@PolymorphicMapType_18602)
(declare-fun Heap@0 () T@PolymorphicMapType_18602)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun QPMask@0 () T@PolymorphicMapType_18623)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref Int) T@Ref)
(declare-fun qpRange1 (T@Ref Int) Bool)
(declare-fun getPredWandId_10271_3219 (T@Field_24834_3219) Int)
(declare-fun getPredWandId_10271_10274 (T@Field_18675_18676) Int)
(declare-fun getPredWandId_10271_10278 (T@Field_10273_10278) Int)
(declare-fun getPredWandId_10271_53 (T@Field_18662_53) Int)
(declare-fun getPredWandId_10271_91729 (T@Field_10273_24949) Int)
(declare-fun getPredWandId_10277_3219 (T@Field_10277_3219) Int)
(declare-fun getPredWandId_10277_10274 (T@Field_10277_10274) Int)
(declare-fun getPredWandId_10277_53 (T@Field_10277_53) Int)
(declare-fun getPredWandId_10277_92538 (T@Field_24944_24949) Int)
(set-info :boogie-vc-id m2)
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
 (=> (= (ControlFlow 0 0) 95) (let ((anon11_correct true))
(let ((anon60_Else_correct  (=> (>= 0 length_3) (=> (and (= UnfoldingMask@24 UnfoldingMask@20) (= (ControlFlow 0 79) 77)) anon11_correct))))
(let ((anon60_Then_correct  (=> (and (and (> length_3 0) (not (= l1_1 null))) (and (= UnfoldingMask@21 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@20) l1_1 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@20) l1_1 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@20) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@20))) (state PostHeap@4 UnfoldingMask@21))) (=> (and (and (and (not (= l1_1 null)) (= UnfoldingMask@22 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@21) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@21) l1_1 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@21) l1_1 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@21) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@21)))) (and (state PostHeap@4 UnfoldingMask@22) (= UnfoldingMask@23 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@22) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@22) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next) (- length_3 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@22) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next) (- length_3 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@22) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@22))))) (and (and (InsidePredicate_10277_10277 (list l1_1 length_3) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@4) null (list l1_1 length_3)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next) (- length_3 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@4) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next) (- length_3 1)))) (state PostHeap@4 UnfoldingMask@23)) (and (= UnfoldingMask@24 UnfoldingMask@23) (= (ControlFlow 0 78) 77)))) anon11_correct))))
(let ((anon9_correct  (=> (and (and (state PostHeap@4 PostMask@1) (|list#trigger_10277| PostHeap@4 (list l1_1 length_3))) (and (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@4) null (list l1_1 length_3)) (FrameFragment_10088 (ite (> length_3 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| PostHeap@4) l1_1 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@4) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@4) l1_1 next) (- length_3 1))))) EmptyFrame))) (= UnfoldingMask@20 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| PostMask@1) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| PostMask@1))))) (and (=> (= (ControlFlow 0 80) 78) anon60_Then_correct) (=> (= (ControlFlow 0 80) 79) anon60_Else_correct)))))
(let ((anon59_Else_correct  (=> (>= 0 length_3) (=> (and (= PostHeap@4 PostHeap@0) (= (ControlFlow 0 82) 80)) anon9_correct))))
(let ((anon59_Then_correct  (=> (> length_3 0) (=> (and (= PostHeap@1 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| PostHeap@0) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (store (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) l1_1 val true) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@0) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| PostHeap@0) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| PostHeap@0))) (= PostHeap@2 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| PostHeap@1) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (store (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) l1_1 next true) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@1) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| PostHeap@1) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| PostHeap@1)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_56 T@Ref) (f T@Field_24834_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56 f) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56 f)) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@4) o_56 f))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@4) o_56 f))
)) (forall ((o_56@@0 T@Ref) (f@@0 T@Field_18675_18676) ) (!  (=> (or (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@0 f@@0) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@0 f@@0)) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@4) o_56@@0 f@@0))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@4) o_56@@0 f@@0))
))) (forall ((o_56@@1 T@Ref) (f@@1 T@Field_18662_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@1 f@@1) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@1 f@@1)) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@4) o_56@@1 f@@1))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@4) o_56@@1 f@@1))
))) (forall ((o_56@@2 T@Ref) (f@@2 T@Field_10273_10278) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@2 f@@2) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@2 f@@2)) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@4) o_56@@2 f@@2))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@4) o_56@@2 f@@2))
))) (forall ((o_56@@3 T@Ref) (f@@3 T@Field_10273_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@3 f@@3) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@3 f@@3)) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@4) o_56@@3 f@@3))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@4) o_56@@3 f@@3))
))) (forall ((o_56@@4 T@Ref) (f@@4 T@Field_10277_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@4 f@@4) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@4 f@@4)) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@4) o_56@@4 f@@4))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@4) o_56@@4 f@@4))
))) (forall ((o_56@@5 T@Ref) (f@@5 T@Field_10277_10274) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@5 f@@5) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@5 f@@5)) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@4) o_56@@5 f@@5))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@4) o_56@@5 f@@5))
))) (forall ((o_56@@6 T@Ref) (f@@6 T@Field_10277_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@6 f@@6) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@6 f@@6)) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@4) o_56@@6 f@@6))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@4) o_56@@6 f@@6))
))) (forall ((o_56@@7 T@Ref) (f@@7 T@Field_24931_24932) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@7 f@@7) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@7 f@@7)) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@4) o_56@@7 f@@7))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@4) o_56@@7 f@@7))
))) (forall ((o_56@@8 T@Ref) (f@@8 T@Field_24944_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3))) o_56@@8 f@@8) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) l1_1 next) (- length_3 1)))) o_56@@8 f@@8)) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@4) o_56@@8 f@@8))
 :qid |stdinbpl.1014:33|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@4) o_56@@8 f@@8))
))) (= PostHeap@3 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| PostHeap@2) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| PostHeap@2) null (|list#sm| l1_1 length_3) newPMask@4) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| PostHeap@2) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| PostHeap@2)))) (and (= PostHeap@4 PostHeap@3) (= (ControlFlow 0 81) 80))) anon9_correct)))))
(let ((anon7_correct  (=> (state PostHeap@0 UnfoldingMask@19) (and (=> (= (ControlFlow 0 83) (- 0 84)) (HasDirectPerm_10271_3219 UnfoldingMask@19 l1_1 val)) (=> (HasDirectPerm_10271_3219 UnfoldingMask@19 l1_1 val) (and (=> (= (ControlFlow 0 83) 81) anon59_Then_correct) (=> (= (ControlFlow 0 83) 82) anon59_Else_correct)))))))
(let ((anon58_Else_correct  (=> (>= 0 length_3) (=> (and (= UnfoldingMask@19 UnfoldingMask@15) (= (ControlFlow 0 86) 83)) anon7_correct))))
(let ((anon58_Then_correct  (=> (and (and (> length_3 0) (not (= l1_1 null))) (and (= UnfoldingMask@16 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@15) l1_1 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@15) l1_1 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@15) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@15))) (state PostHeap@0 UnfoldingMask@16))) (=> (and (and (and (not (= l1_1 null)) (= UnfoldingMask@17 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@16) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@16) l1_1 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@16) l1_1 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@16) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@16)))) (and (state PostHeap@0 UnfoldingMask@17) (= UnfoldingMask@18 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@17) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@17) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next) (- length_3 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@17) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next) (- length_3 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@17) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@17))))) (and (and (InsidePredicate_10277_10277 (list l1_1 length_3) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@0) null (list l1_1 length_3)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next) (- length_3 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@0) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next) (- length_3 1)))) (state PostHeap@0 UnfoldingMask@18)) (and (= UnfoldingMask@19 UnfoldingMask@18) (= (ControlFlow 0 85) 83)))) anon7_correct))))
(let ((anon5_correct  (=> (= UnfoldingMask@15 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| PostMask@1) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| PostMask@1) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| PostMask@1))) (and (=> (= (ControlFlow 0 87) 85) anon58_Then_correct) (=> (= (ControlFlow 0 87) 86) anon58_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 90) 87)) anon5_correct)))
(let ((anon57_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 88) (- 0 89)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@1) null (list l1_1 length_3))) (=> (= (ControlFlow 0 88) 87) anon5_correct))))))
(let ((anon56_Then_correct  (=> (state PostHeap@0 ZeroMask) (=> (and (and (and (= PostMask@0 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) null (list l1_1 length_3) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask))) (state PostHeap@0 PostMask@0)) (and (state PostHeap@0 PostMask@0) (= PostMask@1 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| PostMask@0) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@0) null (list l2 length_3) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| PostMask@0) null (list l2 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| PostMask@0) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| PostMask@0))))) (and (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1)) (and (|list#trigger_10277| PostHeap@0 (list l1_1 length_3)) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@0) null (list l1_1 length_3)) (FrameFragment_10088 (ite (> length_3 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| PostHeap@0) l1_1 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| PostHeap@0) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| PostHeap@0) l1_1 next) (- length_3 1))))) EmptyFrame)))))) (and (=> (= (ControlFlow 0 91) 88) anon57_Then_correct) (=> (= (ControlFlow 0 91) 90) anon57_Else_correct))))))
(let ((anon54_correct true))
(let ((anon81_Else_correct  (=> (>= 0 length_3) (=> (and (= Heap@22 Heap@18) (= (ControlFlow 0 4) 2)) anon54_correct))))
(let ((anon81_Then_correct  (=> (> length_3 0) (=> (and (= Heap@19 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@18) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (store (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) l1_1 val true) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@18) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@18) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@18))) (= Heap@20 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@19) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (store (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) l1_1 next true) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@19) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@19) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@19)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_54 T@Ref) (f_22 T@Field_24834_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54 f_22) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54 f_22)) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@3) o_54 f_22))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@3) o_54 f_22))
)) (forall ((o_54@@0 T@Ref) (f_22@@0 T@Field_18675_18676) ) (!  (=> (or (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@0 f_22@@0) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@0 f_22@@0)) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@3) o_54@@0 f_22@@0))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@3) o_54@@0 f_22@@0))
))) (forall ((o_54@@1 T@Ref) (f_22@@1 T@Field_18662_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@1 f_22@@1) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@1 f_22@@1)) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@3) o_54@@1 f_22@@1))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@3) o_54@@1 f_22@@1))
))) (forall ((o_54@@2 T@Ref) (f_22@@2 T@Field_10273_10278) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@2 f_22@@2) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@2 f_22@@2)) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@3) o_54@@2 f_22@@2))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@3) o_54@@2 f_22@@2))
))) (forall ((o_54@@3 T@Ref) (f_22@@3 T@Field_10273_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@3 f_22@@3) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@3 f_22@@3)) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@3) o_54@@3 f_22@@3))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@3) o_54@@3 f_22@@3))
))) (forall ((o_54@@4 T@Ref) (f_22@@4 T@Field_10277_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@4 f_22@@4) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@4 f_22@@4)) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@3) o_54@@4 f_22@@4))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@3) o_54@@4 f_22@@4))
))) (forall ((o_54@@5 T@Ref) (f_22@@5 T@Field_10277_10274) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@5 f_22@@5) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@5 f_22@@5)) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@3) o_54@@5 f_22@@5))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@3) o_54@@5 f_22@@5))
))) (forall ((o_54@@6 T@Ref) (f_22@@6 T@Field_10277_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@6 f_22@@6) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@6 f_22@@6)) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@3) o_54@@6 f_22@@6))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@3) o_54@@6 f_22@@6))
))) (forall ((o_54@@7 T@Ref) (f_22@@7 T@Field_24931_24932) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@7 f_22@@7) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@7 f_22@@7)) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@3) o_54@@7 f_22@@7))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@3) o_54@@7 f_22@@7))
))) (forall ((o_54@@8 T@Ref) (f_22@@8 T@Field_24944_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3))) o_54@@8 f_22@@8) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) l1_1 next) (- length_3 1)))) o_54@@8 f_22@@8)) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@3) o_54@@8 f_22@@8))
 :qid |stdinbpl.1323:31|
 :skolemid |103|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@3) o_54@@8 f_22@@8))
))) (= Heap@21 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@20) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@20) null (|list#sm| l1_1 length_3) newPMask@3) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@20) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@20)))) (and (= Heap@22 Heap@21) (= (ControlFlow 0 3) 2))) anon54_correct)))))
(let ((anon52_correct  (=> (state Heap@18 UnfoldingMask@14) (and (=> (= (ControlFlow 0 5) (- 0 6)) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@18) l1_1 val) v_2)) (=> (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@18) l1_1 val) v_2) (and (=> (= (ControlFlow 0 5) 3) anon81_Then_correct) (=> (= (ControlFlow 0 5) 4) anon81_Else_correct)))))))
(let ((anon80_Else_correct  (=> (>= 0 length_3) (=> (and (= UnfoldingMask@14 UnfoldingMask@10) (= (ControlFlow 0 8) 5)) anon52_correct))))
(let ((anon80_Then_correct  (=> (and (and (> length_3 0) (not (= l1_1 null))) (and (= UnfoldingMask@11 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@10) l1_1 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@10) l1_1 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@10) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@10))) (state Heap@18 UnfoldingMask@11))) (=> (and (and (and (not (= l1_1 null)) (= UnfoldingMask@12 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@11) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@11) l1_1 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@11) l1_1 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@11) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@11)))) (and (state Heap@18 UnfoldingMask@12) (= UnfoldingMask@13 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@12) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@12) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next) (- length_3 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@12) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next) (- length_3 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@12) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@12))))) (and (and (InsidePredicate_10277_10277 (list l1_1 length_3) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@18) null (list l1_1 length_3)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next) (- length_3 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@18) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next) (- length_3 1)))) (state Heap@18 UnfoldingMask@13)) (and (= UnfoldingMask@14 UnfoldingMask@13) (= (ControlFlow 0 7) 5)))) anon52_correct))))
(let ((anon50_correct  (=> (= UnfoldingMask@10 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@12) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@12))) (and (=> (= (ControlFlow 0 9) 7) anon80_Then_correct) (=> (= (ControlFlow 0 9) 8) anon80_Else_correct)))))
(let ((anon79_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 12) 9)) anon50_correct)))
(let ((anon79_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 10) (- 0 11)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3))) (=> (= (ControlFlow 0 10) 9) anon50_correct))))))
(let ((anon48_correct  (=> (= Mask@14 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@13) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@13) null (list l2 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@13) null (list l2 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@13) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@13))) (=> (and (|list#trigger_10277| Heap@18 (list l1_1 length_3)) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@18) null (list l1_1 length_3)) (FrameFragment_10088 (ite (> length_3 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@18) l1_1 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@18) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@18) l1_1 next) (- length_3 1))))) EmptyFrame)))) (and (=> (= (ControlFlow 0 13) 10) anon79_Then_correct) (=> (= (ControlFlow 0 13) 12) anon79_Else_correct))))))
(let ((anon78_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 16) 13)) anon48_correct)))
(let ((anon78_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@13) null (list l2 length_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@13) null (list l2 length_3))) (=> (= (ControlFlow 0 14) 13) anon48_correct))))))
(let ((anon46_correct  (=> (= Mask@13 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@12) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@12) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@12))) (and (=> (= (ControlFlow 0 17) 14) anon78_Then_correct) (=> (= (ControlFlow 0 17) 16) anon78_Else_correct)))))
(let ((anon77_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 20) 17)) anon46_correct)))
(let ((anon77_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 18) (- 0 19)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@12) null (list l1_1 length_3))) (=> (= (ControlFlow 0 18) 17) anon46_correct))))))
(let ((anon44_correct  (=> (and (state Heap@18 Mask@12) (state Heap@18 Mask@12)) (and (=> (= (ControlFlow 0 21) 18) anon77_Then_correct) (=> (= (ControlFlow 0 21) 20) anon77_Else_correct)))))
(let ((anon76_Else_correct  (=> (>= 0 length_3) (=> (and (= Heap@18 Heap@14) (= (ControlFlow 0 23) 21)) anon44_correct))))
(let ((anon76_Then_correct  (=> (> length_3 0) (=> (and (= Heap@15 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@14) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (store (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) l1_1 val true) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@14) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@14) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@14))) (= Heap@16 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@15) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3) (PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (store (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) l1_1 next true) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@15) null (|list#sm| l1_1 length_3))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@15) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@15)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_55 T@Ref) (f_23 T@Field_24834_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55 f_23) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55 f_23)) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@2) o_55 f_23))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@2) o_55 f_23))
)) (forall ((o_55@@0 T@Ref) (f_23@@0 T@Field_18675_18676) ) (!  (=> (or (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@0 f_23@@0) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@0 f_23@@0)) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@2) o_55@@0 f_23@@0))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@2) o_55@@0 f_23@@0))
))) (forall ((o_55@@1 T@Ref) (f_23@@1 T@Field_18662_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@1 f_23@@1) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@1 f_23@@1)) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@2) o_55@@1 f_23@@1))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@2) o_55@@1 f_23@@1))
))) (forall ((o_55@@2 T@Ref) (f_23@@2 T@Field_10273_10278) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@2 f_23@@2) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@2 f_23@@2)) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@2) o_55@@2 f_23@@2))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@2) o_55@@2 f_23@@2))
))) (forall ((o_55@@3 T@Ref) (f_23@@3 T@Field_10273_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@3 f_23@@3) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@3 f_23@@3)) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@2) o_55@@3 f_23@@3))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@2) o_55@@3 f_23@@3))
))) (forall ((o_55@@4 T@Ref) (f_23@@4 T@Field_10277_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@4 f_23@@4) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@4 f_23@@4)) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@2) o_55@@4 f_23@@4))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@2) o_55@@4 f_23@@4))
))) (forall ((o_55@@5 T@Ref) (f_23@@5 T@Field_10277_10274) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@5 f_23@@5) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@5 f_23@@5)) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@2) o_55@@5 f_23@@5))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@2) o_55@@5 f_23@@5))
))) (forall ((o_55@@6 T@Ref) (f_23@@6 T@Field_10277_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@6 f_23@@6) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@6 f_23@@6)) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@2) o_55@@6 f_23@@6))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@2) o_55@@6 f_23@@6))
))) (forall ((o_55@@7 T@Ref) (f_23@@7 T@Field_24931_24932) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@7 f_23@@7) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@7 f_23@@7)) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@2) o_55@@7 f_23@@7))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@2) o_55@@7 f_23@@7))
))) (forall ((o_55@@8 T@Ref) (f_23@@8 T@Field_24944_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3))) o_55@@8 f_23@@8) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) l1_1 next) (- length_3 1)))) o_55@@8 f_23@@8)) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@2) o_55@@8 f_23@@8))
 :qid |stdinbpl.1260:29|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@2) o_55@@8 f_23@@8))
))) (= Heap@17 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@16) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@16) null (|list#sm| l1_1 length_3) newPMask@2) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@16) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@16)))) (and (= Heap@18 Heap@17) (= (ControlFlow 0 22) 21))) anon44_correct)))))
(let ((anon75_Else_correct  (=> (and (HasDirectPerm_10277_10278 Mask@12 null (list l1_1 length_3)) (= Heap@14 Heap@11)) (and (=> (= (ControlFlow 0 25) 22) anon76_Then_correct) (=> (= (ControlFlow 0 25) 23) anon76_Else_correct)))))
(let ((anon75_Then_correct  (=> (and (and (not (HasDirectPerm_10277_10278 Mask@12 null (list l1_1 length_3))) (= Heap@12 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@11) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@11) null (|list#sm| l1_1 length_3) ZeroPMask) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@11) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@11)))) (and (= Heap@13 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@12) (store (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@12) null (list l1_1 length_3) freshVersion@0) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@12) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@12))) (= Heap@14 Heap@13))) (and (=> (= (ControlFlow 0 24) 22) anon76_Then_correct) (=> (= (ControlFlow 0 24) 23) anon76_Else_correct)))))
(let ((anon40_correct  (=> (= Mask@12 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@11) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@11) null (list l1_1 length_3) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@11) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@11) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@11))) (=> (and (and (state Heap@11 Mask@12) (state Heap@11 Mask@12)) (and (|list#trigger_10277| Heap@11 (list l1_1 length_3)) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@11) null (list l1_1 length_3)) (FrameFragment_10088 (ite (> length_3 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@11) l1_1 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@11) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1))))) EmptyFrame))))) (and (=> (= (ControlFlow 0 26) 24) anon75_Then_correct) (=> (= (ControlFlow 0 26) 25) anon75_Else_correct))))))
(let ((anon39_correct  (=> (and (and (= Mask@10 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@9) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@9) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1)) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@9) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@9) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@9))) (InsidePredicate_10277_10277 (list l1_1 length_3) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@11) null (list l1_1 length_3)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@11) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1))))) (and (= Mask@11 Mask@10) (= (ControlFlow 0 28) 26))) anon40_correct)))
(let ((anon74_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 31) 28)) anon39_correct)))
(let ((anon74_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 29) (- 0 30)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@9) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1))))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@9) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@11) l1_1 next) (- length_3 1)))) (=> (= (ControlFlow 0 29) 28) anon39_correct))))))
(let ((anon37_correct  (=> (= Mask@9 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@8) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@8) l1_1 next (- (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@8) l1_1 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@8) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@8))) (and (=> (= (ControlFlow 0 32) 29) anon74_Then_correct) (=> (= (ControlFlow 0 32) 31) anon74_Else_correct)))))
(let ((anon73_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 35) 32)) anon37_correct)))
(let ((anon73_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 33) (- 0 34)) (<= FullPerm (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@8) l1_1 next))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@8) l1_1 next)) (=> (= (ControlFlow 0 33) 32) anon37_correct))))))
(let ((anon35_correct  (=> (= Mask@8 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@7) l1_1 val (- (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@7) l1_1 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@7) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@7))) (and (=> (= (ControlFlow 0 36) 33) anon73_Then_correct) (=> (= (ControlFlow 0 36) 35) anon73_Else_correct)))))
(let ((anon72_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 39) 36)) anon35_correct)))
(let ((anon72_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 37) (- 0 38)) (<= FullPerm (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@7) l1_1 val))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@7) l1_1 val)) (=> (= (ControlFlow 0 37) 36) anon35_correct))))))
(let ((anon71_Then_correct  (=> (> length_3 0) (and (=> (= (ControlFlow 0 40) 37) anon72_Then_correct) (=> (= (ControlFlow 0 40) 39) anon72_Else_correct)))))
(let ((anon71_Else_correct  (=> (>= 0 length_3) (=> (and (= Mask@11 Mask@7) (= (ControlFlow 0 27) 26)) anon40_correct))))
(let ((anon32_correct  (=> (state Heap@11 Mask@7) (and (=> (= (ControlFlow 0 41) 40) anon71_Then_correct) (=> (= (ControlFlow 0 41) 27) anon71_Else_correct)))))
(let ((anon31_correct  (=> (state Heap@10 Mask@6) (=> (and (and (state Heap@10 Mask@6) (= Mask@7 Mask@6)) (and (= Heap@11 Heap@10) (= (ControlFlow 0 43) 41))) anon32_correct))))
(let ((anon70_Else_correct  (=> (>= 0 arg_length@0) (=> (and (= Heap@10 Heap@6) (= (ControlFlow 0 45) 43)) anon31_correct))))
(let ((anon70_Then_correct  (=> (> arg_length@0 0) (=> (and (= Heap@7 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@6) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0) (PolymorphicMapType_19151 (store (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) arg_r@0 val true) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@6) null (|list#sm| arg_r@0 arg_length@0))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@6) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@6))) (= Heap@8 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@7) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0) (PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (store (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) arg_r@0 next true) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@7) null (|list#sm| arg_r@0 arg_length@0))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@7) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@7)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_38 T@Ref) (f_2 T@Field_24834_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38 f_2) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38 f_2)) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@1) o_38 f_2))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@1) o_38 f_2))
)) (forall ((o_38@@0 T@Ref) (f_2@@0 T@Field_18675_18676) ) (!  (=> (or (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@0 f_2@@0) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@0 f_2@@0)) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@1) o_38@@0 f_2@@0))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@1) o_38@@0 f_2@@0))
))) (forall ((o_38@@1 T@Ref) (f_2@@1 T@Field_18662_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@1 f_2@@1) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@1 f_2@@1)) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@1) o_38@@1 f_2@@1))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@1) o_38@@1 f_2@@1))
))) (forall ((o_38@@2 T@Ref) (f_2@@2 T@Field_10273_10278) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@2 f_2@@2) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@2 f_2@@2)) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@1) o_38@@2 f_2@@2))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@1) o_38@@2 f_2@@2))
))) (forall ((o_38@@3 T@Ref) (f_2@@3 T@Field_10273_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@3 f_2@@3) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@3 f_2@@3)) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@1) o_38@@3 f_2@@3))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@1) o_38@@3 f_2@@3))
))) (forall ((o_38@@4 T@Ref) (f_2@@4 T@Field_10277_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@4 f_2@@4) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@4 f_2@@4)) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@1) o_38@@4 f_2@@4))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@1) o_38@@4 f_2@@4))
))) (forall ((o_38@@5 T@Ref) (f_2@@5 T@Field_10277_10274) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@5 f_2@@5) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@5 f_2@@5)) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@1) o_38@@5 f_2@@5))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@1) o_38@@5 f_2@@5))
))) (forall ((o_38@@6 T@Ref) (f_2@@6 T@Field_10277_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@6 f_2@@6) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@6 f_2@@6)) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@1) o_38@@6 f_2@@6))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@1) o_38@@6 f_2@@6))
))) (forall ((o_38@@7 T@Ref) (f_2@@7 T@Field_24931_24932) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@7 f_2@@7) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@7 f_2@@7)) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@1) o_38@@7 f_2@@7))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@1) o_38@@7 f_2@@7))
))) (forall ((o_38@@8 T@Ref) (f_2@@8 T@Field_24944_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0))) o_38@@8 f_2@@8) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) arg_r@0 next) (- arg_length@0 1)))) o_38@@8 f_2@@8)) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@1) o_38@@8 f_2@@8))
 :qid |stdinbpl.1208:39|
 :skolemid |101|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@1) o_38@@8 f_2@@8))
))) (= Heap@9 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@8) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@8) null (|list#sm| arg_r@0 arg_length@0) newPMask@1) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@8) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@8)))) (and (= Heap@10 Heap@9) (= (ControlFlow 0 44) 43))) anon31_correct)))))
(let ((anon29_correct  (=> (state Heap@6 UnfoldingMask@9) (and (=> (= (ControlFlow 0 46) 44) anon70_Then_correct) (=> (= (ControlFlow 0 46) 45) anon70_Else_correct)))))
(let ((anon69_Else_correct  (=> (>= 0 arg_length@0) (=> (and (= UnfoldingMask@9 UnfoldingMask@5) (= (ControlFlow 0 48) 46)) anon29_correct))))
(let ((anon69_Then_correct  (=> (and (and (> arg_length@0 0) (not (= arg_r@0 null))) (and (= UnfoldingMask@6 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@5) arg_r@0 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@5) arg_r@0 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@5) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@5))) (state Heap@6 UnfoldingMask@6))) (=> (and (and (and (not (= arg_r@0 null)) (= UnfoldingMask@7 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@6) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@6) arg_r@0 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@6) arg_r@0 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@6) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@6)))) (and (state Heap@6 UnfoldingMask@7) (= UnfoldingMask@8 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@7) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@7) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next) (- arg_length@0 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@7) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next) (- arg_length@0 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@7) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@7))))) (and (and (InsidePredicate_10277_10277 (list arg_r@0 arg_length@0) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@6) null (list arg_r@0 arg_length@0)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next) (- arg_length@0 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@6) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next) (- arg_length@0 1)))) (state Heap@6 UnfoldingMask@8)) (and (= UnfoldingMask@9 UnfoldingMask@8) (= (ControlFlow 0 47) 46)))) anon29_correct))))
(let ((anon27_correct  (=> (= UnfoldingMask@5 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@6) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@6))) (and (=> (= (ControlFlow 0 49) 47) anon69_Then_correct) (=> (= (ControlFlow 0 49) 48) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 52) 49)) anon27_correct)))
(let ((anon68_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0))) (=> (= (ControlFlow 0 50) 49) anon27_correct))))))
(let ((anon25_correct  (=> (and (and (state Heap@6 Mask@6) (state Heap@6 Mask@6)) (and (|list#trigger_10277| Heap@6 (list arg_r@0 arg_length@0)) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@6) null (list arg_r@0 arg_length@0)) (FrameFragment_10088 (ite (> arg_length@0 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@6) arg_r@0 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@6) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@6) arg_r@0 next) (- arg_length@0 1))))) EmptyFrame))))) (and (=> (= (ControlFlow 0 53) 50) anon68_Then_correct) (=> (= (ControlFlow 0 53) 52) anon68_Else_correct)))))
(let ((anon67_Else_correct  (=> (>= 0 arg_length@0) (=> (and (= Heap@6 ExhaleHeap@0) (= (ControlFlow 0 55) 53)) anon25_correct))))
(let ((anon67_Then_correct  (=> (> arg_length@0 0) (=> (and (= Heap@3 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@0) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0) (PolymorphicMapType_19151 (store (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) arg_r@0 val true) (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| ExhaleHeap@0) null (|list#sm| arg_r@0 arg_length@0))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| ExhaleHeap@0) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| ExhaleHeap@0))) (= Heap@4 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@3) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0) (PolymorphicMapType_19151 (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (store (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) arg_r@0 next true) (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))) (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@3) null (|list#sm| arg_r@0 arg_length@0))))) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@3) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@3)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_16 T@Ref) (f_8 T@Field_24834_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16 f_8) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16 f_8)) (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@0) o_16 f_8))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_10271_3219#PolymorphicMapType_19151| newPMask@0) o_16 f_8))
)) (forall ((o_16@@0 T@Ref) (f_8@@0 T@Field_18675_18676) ) (!  (=> (or (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@0 f_8@@0) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@0 f_8@@0)) (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@0) o_16@@0 f_8@@0))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_10273_10274#PolymorphicMapType_19151| newPMask@0) o_16@@0 f_8@@0))
))) (forall ((o_16@@1 T@Ref) (f_8@@1 T@Field_18662_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@1 f_8@@1) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@1 f_8@@1)) (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@0) o_16@@1 f_8@@1))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_10271_53#PolymorphicMapType_19151| newPMask@0) o_16@@1 f_8@@1))
))) (forall ((o_16@@2 T@Ref) (f_8@@2 T@Field_10273_10278) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@2 f_8@@2) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@2 f_8@@2)) (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@0) o_16@@2 f_8@@2))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_10271_24932#PolymorphicMapType_19151| newPMask@0) o_16@@2 f_8@@2))
))) (forall ((o_16@@3 T@Ref) (f_8@@3 T@Field_10273_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@3 f_8@@3) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@3 f_8@@3)) (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@0) o_16@@3 f_8@@3))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_10271_64565#PolymorphicMapType_19151| newPMask@0) o_16@@3 f_8@@3))
))) (forall ((o_16@@4 T@Ref) (f_8@@4 T@Field_10277_3219) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@4 f_8@@4) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@4 f_8@@4)) (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@0) o_16@@4 f_8@@4))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_24931_3219#PolymorphicMapType_19151| newPMask@0) o_16@@4 f_8@@4))
))) (forall ((o_16@@5 T@Ref) (f_8@@5 T@Field_10277_10274) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@5 f_8@@5) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@5 f_8@@5)) (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@0) o_16@@5 f_8@@5))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_24931_10274#PolymorphicMapType_19151| newPMask@0) o_16@@5 f_8@@5))
))) (forall ((o_16@@6 T@Ref) (f_8@@6 T@Field_10277_53) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@6 f_8@@6) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@6 f_8@@6)) (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@0) o_16@@6 f_8@@6))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_24931_53#PolymorphicMapType_19151| newPMask@0) o_16@@6 f_8@@6))
))) (forall ((o_16@@7 T@Ref) (f_8@@7 T@Field_24931_24932) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@7 f_8@@7) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@7 f_8@@7)) (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@0) o_16@@7 f_8@@7))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_24931_24932#PolymorphicMapType_19151| newPMask@0) o_16@@7 f_8@@7))
))) (forall ((o_16@@8 T@Ref) (f_8@@8 T@Field_24944_24949) ) (!  (=> (or (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0))) o_16@@8 f_8@@8) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| (select (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) arg_r@0 next) (- arg_length@0 1)))) o_16@@8 f_8@@8)) (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@0) o_16@@8 f_8@@8))
 :qid |stdinbpl.1163:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_19151_24931_65613#PolymorphicMapType_19151| newPMask@0) o_16@@8 f_8@@8))
))) (= Heap@5 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@4) (store (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@4) null (|list#sm| arg_r@0 arg_length@0) newPMask@0) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@4) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@4)))) (and (= Heap@6 Heap@5) (= (ControlFlow 0 54) 53))) anon25_correct)))))
(let ((anon23_correct  (=> (and (state ExhaleHeap@0 UnfoldingMask@4) (= (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 val) v_2)) (and (=> (= (ControlFlow 0 56) 54) anon67_Then_correct) (=> (= (ControlFlow 0 56) 55) anon67_Else_correct)))))
(let ((anon66_Else_correct  (=> (>= 0 arg_length@0) (=> (and (= UnfoldingMask@4 UnfoldingMask@0) (= (ControlFlow 0 58) 56)) anon23_correct))))
(let ((anon66_Then_correct  (=> (and (and (> arg_length@0 0) (not (= arg_r@0 null))) (and (= UnfoldingMask@1 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@0) arg_r@0 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@0) arg_r@0 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@0) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@0))) (state ExhaleHeap@0 UnfoldingMask@1))) (=> (and (and (and (not (= arg_r@0 null)) (= UnfoldingMask@2 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@1) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@1) arg_r@0 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@1) arg_r@0 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@1) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@1)))) (and (state ExhaleHeap@0 UnfoldingMask@2) (= UnfoldingMask@3 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| UnfoldingMask@2) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@2) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next) (- arg_length@0 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| UnfoldingMask@2) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next) (- arg_length@0 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| UnfoldingMask@2) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| UnfoldingMask@2))))) (and (and (InsidePredicate_10277_10277 (list arg_r@0 arg_length@0) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@0) null (list arg_r@0 arg_length@0)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next) (- arg_length@0 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@0) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next) (- arg_length@0 1)))) (state ExhaleHeap@0 UnfoldingMask@3)) (and (= UnfoldingMask@4 UnfoldingMask@3) (= (ControlFlow 0 57) 56)))) anon23_correct))))
(let ((anon21_correct  (=> (= Mask@5 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@4) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@4) null (list arg_r@0 arg_length@0) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@4) null (list arg_r@0 arg_length@0)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@4) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@4))) (=> (and (IdenticalOnKnownLocations Heap@2 ExhaleHeap@0 Mask@5) (= Mask@6 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@5) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@5) null (list arg_r@0 arg_length@0) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@5) null (list arg_r@0 arg_length@0)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@5) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@5)))) (=> (and (and (state ExhaleHeap@0 Mask@6) (|list#trigger_10277| ExhaleHeap@0 (list arg_r@0 arg_length@0))) (and (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@0) null (list arg_r@0 arg_length@0)) (FrameFragment_10088 (ite (> arg_length@0 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| ExhaleHeap@0) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| ExhaleHeap@0) arg_r@0 next) (- arg_length@0 1))))) EmptyFrame))) (= UnfoldingMask@0 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@6) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@6) null (list arg_r@0 arg_length@0)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@6) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@6))))) (and (=> (= (ControlFlow 0 59) 57) anon66_Then_correct) (=> (= (ControlFlow 0 59) 58) anon66_Else_correct)))))))
(let ((anon65_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 62) 59)) anon21_correct)))
(let ((anon65_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 60) (- 0 61)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@4) null (list arg_r@0 arg_length@0)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@4) null (list arg_r@0 arg_length@0))) (=> (= (ControlFlow 0 60) 59) anon21_correct))))))
(let ((anon64_Then_correct  (=> (> (- length_3 1) 0) (and (=> (= (ControlFlow 0 63) (- 0 65)) (HasDirectPerm_10273_10274 Mask@4 l1_1 next)) (=> (HasDirectPerm_10273_10274 Mask@4 l1_1 next) (=> (and (= arg_r@0 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@2) l1_1 next)) (= arg_length@0 (- length_3 1))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (> arg_length@0 0)) (=> (> arg_length@0 0) (and (=> (= (ControlFlow 0 63) 60) anon65_Then_correct) (=> (= (ControlFlow 0 63) 62) anon65_Else_correct))))))))))
(let ((anon64_Else_correct  (=> (and (and (>= 0 (- length_3 1)) (= Mask@7 Mask@4)) (and (= Heap@11 Heap@2) (= (ControlFlow 0 42) 41))) anon32_correct)))
(let ((anon18_correct  (=> (and (state Heap@1 Mask@4) (state Heap@1 Mask@4)) (and (=> (= (ControlFlow 0 66) (- 0 67)) (= FullPerm (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@4) l1_1 val))) (=> (= FullPerm (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@4) l1_1 val)) (=> (and (= Heap@2 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@1) (store (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@1) l1_1 val v_2) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@1) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@1))) (state Heap@2 Mask@4)) (and (=> (= (ControlFlow 0 66) 63) anon64_Then_correct) (=> (= (ControlFlow 0 66) 42) anon64_Else_correct))))))))
(let ((anon63_Else_correct  (=> (>= 0 length_3) (=> (and (= Mask@4 Mask@0) (= (ControlFlow 0 69) 66)) anon18_correct))))
(let ((anon63_Then_correct  (=> (and (and (> length_3 0) (not (= l1_1 null))) (and (= Mask@1 (PolymorphicMapType_18623 (store (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@0) l1_1 val (+ (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@0) l1_1 val) FullPerm)) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@0) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@0))) (state Heap@1 Mask@1))) (=> (and (and (and (not (= l1_1 null)) (= Mask@2 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@1) (store (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@1) l1_1 next (+ (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@1) l1_1 next) FullPerm)) (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@1) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@1)))) (and (state Heap@1 Mask@2) (= Mask@3 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| Mask@2) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@2) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@1) l1_1 next) (- length_3 1)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| Mask@2) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@1) l1_1 next) (- length_3 1))) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| Mask@2) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| Mask@2))))) (and (and (InsidePredicate_10277_10277 (list l1_1 length_3) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@1) null (list l1_1 length_3)) (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@1) l1_1 next) (- length_3 1)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@1) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@1) l1_1 next) (- length_3 1)))) (state Heap@1 Mask@3)) (and (= Mask@4 Mask@3) (= (ControlFlow 0 68) 66)))) anon18_correct))))
(let ((anon62_Else_correct  (=> (and (HasDirectPerm_10277_10278 Mask@0 null (list l1_1 length_3)) (= Heap@1 Heap@@32)) (and (=> (= (ControlFlow 0 71) 68) anon63_Then_correct) (=> (= (ControlFlow 0 71) 69) anon63_Else_correct)))))
(let ((anon62_Then_correct  (=> (not (HasDirectPerm_10277_10278 Mask@0 null (list l1_1 length_3))) (=> (and (= Heap@0 (PolymorphicMapType_18602 (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@32) (store (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@32) null (list l1_1 length_3) newVersion@0) (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10281_28838#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10273_10278#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10273_61764#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10277_10274#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10277_3219#PolymorphicMapType_18602| Heap@@32) (|PolymorphicMapType_18602_10277_53#PolymorphicMapType_18602| Heap@@32))) (= Heap@1 Heap@0)) (and (=> (= (ControlFlow 0 70) 68) anon63_Then_correct) (=> (= (ControlFlow 0 70) 69) anon63_Else_correct))))))
(let ((anon14_correct  (=> (= Mask@0 (PolymorphicMapType_18623 (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| QPMask@0) (store (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list l1_1 length_3) (- (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list l1_1 length_3)) FullPerm)) (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| QPMask@0) (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| QPMask@0))) (and (=> (= (ControlFlow 0 72) 70) anon62_Then_correct) (=> (= (ControlFlow 0 72) 71) anon62_Else_correct)))))
(let ((anon61_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 75) 72)) anon14_correct)))
(let ((anon61_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 73) (- 0 74)) (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list l1_1 length_3)))) (=> (<= FullPerm (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list l1_1 length_3))) (=> (= (ControlFlow 0 73) 72) anon14_correct))))))
(let ((anon56_Else_correct  (=> (and (|list#trigger_10277| Heap@@32 (list l1_1 length_3)) (= (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@32) null (list l1_1 length_3)) (FrameFragment_10088 (ite (> length_3 0) (CombineFrames (FrameFragment_3219 (select (|PolymorphicMapType_18602_10271_3219#PolymorphicMapType_18602| Heap@@32) l1_1 val)) (CombineFrames (FrameFragment_10274 (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@32) l1_1 next)) (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@32) null (list (select (|PolymorphicMapType_18602_9981_9982#PolymorphicMapType_18602| Heap@@32) l1_1 next) (- length_3 1))))) EmptyFrame)))) (and (=> (= (ControlFlow 0 76) 73) anon61_Then_correct) (=> (= (ControlFlow 0 76) 75) anon61_Else_correct)))))
(let ((anon55_Else_correct  (and (=> (= (ControlFlow 0 92) (- 0 93)) (forall ((l_1_2 T@Ref) (l_1_3 T@Ref) ) (!  (=> (and (and (and (and (not (= l_1_2 l_1_3)) (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_2)) (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= l_1_2 l_1_3)) (not (= length_3 length_3))))
 :qid |stdinbpl.923:17|
 :skolemid |93|
 :pattern ( (neverTriggered1 l_1_2) (neverTriggered1 l_1_3))
))) (=> (forall ((l_1_2@@0 T@Ref) (l_1_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l_1_2@@0 l_1_3@@0)) (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_2@@0)) (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (or (not (= l_1_2@@0 l_1_3@@0)) (not (= length_3 length_3))))
 :qid |stdinbpl.923:17|
 :skolemid |93|
 :pattern ( (neverTriggered1 l_1_2@@0) (neverTriggered1 l_1_3@@0))
)) (=> (forall ((l_1_2@@1 T@Ref) ) (!  (=> (and (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_2@@1) (< NoPerm FullPerm)) (and (= (invRecv1 l_1_2@@1 length_3) l_1_2@@1) (qpRange1 l_1_2@@1 length_3)))
 :qid |stdinbpl.929:22|
 :skolemid |94|
 :pattern ( (select (|PolymorphicMapType_18602_10277_10278#PolymorphicMapType_18602| Heap@@32) null (list l_1_2@@1 length_3)))
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) null (list l_1_2@@1 length_3)))
 :pattern ( (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) l_1_2@@1))
)) (=> (and (forall ((r_1@@5 T@Ref) (i@@5 Int) ) (!  (=> (and (and (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) (invRecv1 r_1@@5 i@@5)) (< NoPerm FullPerm)) (qpRange1 r_1@@5 i@@5)) (and (= (invRecv1 r_1@@5 i@@5) r_1@@5) (= length_3 i@@5)))
 :qid |stdinbpl.933:22|
 :skolemid |95|
 :pattern ( (invRecv1 r_1@@5 i@@5))
)) (forall ((r_1@@6 T@Ref) (i@@6 Int) ) (!  (=> (and (and (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) (invRecv1 r_1@@6 i@@6)) (< NoPerm FullPerm)) (qpRange1 r_1@@6 i@@6)) (and (=> (< NoPerm FullPerm) (and (= (invRecv1 r_1@@6 i@@6) r_1@@6) (= length_3 i@@6))) (= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list r_1@@6 i@@6)) (+ (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) null (list r_1@@6 i@@6)) FullPerm))))
 :qid |stdinbpl.939:22|
 :skolemid |96|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list r_1@@6 i@@6)))
))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_9 T@Ref) (f_5 T@Field_24834_3219) ) (!  (=> (or (or (not (= o_9 null)) (not (IsPredicateField_10271_3219 f_5))) (not (= (getPredWandId_10271_3219 f_5) 0))) (= (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) o_9 f_5) (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| QPMask@0) o_9 f_5)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| ZeroMask) o_9 f_5))
 :pattern ( (select (|PolymorphicMapType_18623_10271_3219#PolymorphicMapType_18623| QPMask@0) o_9 f_5))
)) (forall ((o_9@@0 T@Ref) (f_5@@0 T@Field_18675_18676) ) (!  (=> (or (or (not (= o_9@@0 null)) (not (IsPredicateField_10273_10274 f_5@@0))) (not (= (getPredWandId_10271_10274 f_5@@0) 0))) (= (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) o_9@@0 f_5@@0) (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| QPMask@0) o_9@@0 f_5@@0)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| ZeroMask) o_9@@0 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_18623_10273_10274#PolymorphicMapType_18623| QPMask@0) o_9@@0 f_5@@0))
))) (forall ((o_9@@1 T@Ref) (f_5@@1 T@Field_10273_10278) ) (!  (=> (or (or (not (= o_9@@1 null)) (not (IsPredicateField_10273_63108 f_5@@1))) (not (= (getPredWandId_10271_10278 f_5@@1) 0))) (= (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) o_9@@1 f_5@@1) (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| QPMask@0) o_9@@1 f_5@@1)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| ZeroMask) o_9@@1 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_18623_10271_10278#PolymorphicMapType_18623| QPMask@0) o_9@@1 f_5@@1))
))) (forall ((o_9@@2 T@Ref) (f_5@@2 T@Field_18662_53) ) (!  (=> (or (or (not (= o_9@@2 null)) (not (IsPredicateField_10271_53 f_5@@2))) (not (= (getPredWandId_10271_53 f_5@@2) 0))) (= (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) o_9@@2 f_5@@2) (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| QPMask@0) o_9@@2 f_5@@2)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| ZeroMask) o_9@@2 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_18623_10271_53#PolymorphicMapType_18623| QPMask@0) o_9@@2 f_5@@2))
))) (forall ((o_9@@3 T@Ref) (f_5@@3 T@Field_10273_24949) ) (!  (=> (or (or (not (= o_9@@3 null)) (not (IsPredicateField_10271_72850 f_5@@3))) (not (= (getPredWandId_10271_91729 f_5@@3) 0))) (= (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) o_9@@3 f_5@@3) (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| QPMask@0) o_9@@3 f_5@@3)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| ZeroMask) o_9@@3 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_18623_10271_70992#PolymorphicMapType_18623| QPMask@0) o_9@@3 f_5@@3))
))) (forall ((o_9@@4 T@Ref) (f_5@@4 T@Field_10277_3219) ) (!  (=> (or (or (not (= o_9@@4 null)) (not (IsPredicateField_10277_3219 f_5@@4))) (not (= (getPredWandId_10277_3219 f_5@@4) 0))) (= (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) o_9@@4 f_5@@4) (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| QPMask@0) o_9@@4 f_5@@4)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| ZeroMask) o_9@@4 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_18623_10277_3219#PolymorphicMapType_18623| QPMask@0) o_9@@4 f_5@@4))
))) (forall ((o_9@@5 T@Ref) (f_5@@5 T@Field_10277_10274) ) (!  (=> (or (or (not (= o_9@@5 null)) (not (IsPredicateField_10277_10274 f_5@@5))) (not (= (getPredWandId_10277_10274 f_5@@5) 0))) (= (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) o_9@@5 f_5@@5) (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| QPMask@0) o_9@@5 f_5@@5)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| ZeroMask) o_9@@5 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_18623_10277_10274#PolymorphicMapType_18623| QPMask@0) o_9@@5 f_5@@5))
))) (forall ((o_9@@6 T@Ref) (f_5@@6 T@Field_24931_24932) ) (!  (=> (or (or (not (= o_9@@6 null)) (not (IsPredicateField_10277_10278 f_5@@6))) (not (= (getPredWandId_10277_10278 f_5@@6) 0))) (= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) o_9@@6 f_5@@6) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) o_9@@6 f_5@@6)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) o_9@@6 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) o_9@@6 f_5@@6))
))) (forall ((o_9@@7 T@Ref) (f_5@@7 T@Field_10277_53) ) (!  (=> (or (or (not (= o_9@@7 null)) (not (IsPredicateField_10277_53 f_5@@7))) (not (= (getPredWandId_10277_53 f_5@@7) 0))) (= (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) o_9@@7 f_5@@7) (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| QPMask@0) o_9@@7 f_5@@7)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| ZeroMask) o_9@@7 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_18623_10277_53#PolymorphicMapType_18623| QPMask@0) o_9@@7 f_5@@7))
))) (forall ((o_9@@8 T@Ref) (f_5@@8 T@Field_24944_24949) ) (!  (=> (or (or (not (= o_9@@8 null)) (not (IsPredicateField_10277_73681 f_5@@8))) (not (= (getPredWandId_10277_92538 f_5@@8) 0))) (= (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask) o_9@@8 f_5@@8) (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| QPMask@0) o_9@@8 f_5@@8)))
 :qid |stdinbpl.945:29|
 :skolemid |97|
 :pattern ( (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| ZeroMask) o_9@@8 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_18623_10277_71403#PolymorphicMapType_18623| QPMask@0) o_9@@8 f_5@@8))
))) (forall ((r_1@@7 T@Ref) (i@@7 Int) ) (!  (=> (not (and (and (select (|Set#UnionOne_10334| (|Set#Singleton_10334| l2) l1_1) (invRecv1 r_1@@7 i@@7)) (< NoPerm FullPerm)) (qpRange1 r_1@@7 i@@7))) (= (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list r_1@@7 i@@7)) (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| ZeroMask) null (list r_1@@7 i@@7))))
 :qid |stdinbpl.949:22|
 :skolemid |98|
 :pattern ( (select (|PolymorphicMapType_18623_10277_10278#PolymorphicMapType_18623| QPMask@0) null (list r_1@@7 i@@7)))
))) (and (state Heap@@32 QPMask@0) (state Heap@@32 QPMask@0))) (and (=> (= (ControlFlow 0 92) 91) anon56_Then_correct) (=> (= (ControlFlow 0 92) 76) anon56_Else_correct)))))))))
(let ((anon55_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@32) l1_1 $allocated) (select (|PolymorphicMapType_18602_9978_53#PolymorphicMapType_18602| Heap@@32) l2 $allocated))) (and (and (> length_3 0) (state Heap@@32 ZeroMask)) (and (not (= l1_1 l2)) (state Heap@@32 ZeroMask)))) (and (=> (= (ControlFlow 0 94) 1) anon55_Then_correct) (=> (= (ControlFlow 0 94) 92) anon55_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 95) 94) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
