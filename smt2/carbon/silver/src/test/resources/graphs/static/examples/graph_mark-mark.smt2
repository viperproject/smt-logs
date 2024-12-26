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
(declare-sort T@Field_28325_53 0)
(declare-sort T@Field_28338_28339 0)
(declare-sort T@Field_18763_90843 0)
(declare-sort T@Field_18763_90710 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_28286 0)) (((PolymorphicMapType_28286 (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| (Array T@Ref T@Field_28338_28339 Real)) (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| (Array T@Ref T@Field_28325_53 Real)) (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| (Array T@Ref T@Field_18763_90710 Real)) (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| (Array T@Ref T@Field_18763_90843 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28814 0)) (((PolymorphicMapType_28814 (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| (Array T@Ref T@Field_28325_53 Bool)) (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| (Array T@Ref T@Field_28338_28339 Bool)) (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| (Array T@Ref T@Field_18763_90710 Bool)) (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| (Array T@Ref T@Field_18763_90843 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_28265 0)) (((PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| (Array T@Ref T@Field_28325_53 Bool)) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| (Array T@Ref T@Field_28338_28339 T@Ref)) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| (Array T@Ref T@Field_18763_90843 T@PolymorphicMapType_28814)) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| (Array T@Ref T@Field_18763_90710 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_28325_53)
(declare-fun car () T@Field_28338_28339)
(declare-fun cdr () T@Field_28338_28339)
(declare-fun succHeap (T@PolymorphicMapType_28265 T@PolymorphicMapType_28265) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_28265 T@PolymorphicMapType_28265) Bool)
(declare-fun state (T@PolymorphicMapType_28265 T@PolymorphicMapType_28286) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_28286) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_28814)
(declare-fun |Math#min| (Int Int) Int)
(declare-sort T@EdgeDomainType 0)
(declare-fun |$$'| (T@PolymorphicMapType_28265 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun dummyFunction_35984 ((Array T@EdgeDomainType Bool)) Bool)
(declare-fun |$$#triggerStateless| ((Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun |get'| (T@PolymorphicMapType_28265 (Array T@Ref Bool)) T@Ref)
(declare-fun dummyFunction_18917 (T@Ref) Bool)
(declare-fun |get#triggerStateless| ((Array T@Ref Bool)) T@Ref)
(declare-fun |Set#Union_18941| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_18907| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_18958| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_18907| ((Array T@Ref Bool)) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |$$#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_5097 (Int) T@FrameType)
(declare-fun |$$#condqp1| (T@PolymorphicMapType_28265 (Array T@Ref Bool)) Int)
(declare-fun |$$#condqp2| (T@PolymorphicMapType_28265 (Array T@Ref Bool)) Int)
(declare-fun create_edge (T@Ref T@Ref) T@EdgeDomainType)
(declare-fun $$ (T@PolymorphicMapType_28265 (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun get (T@PolymorphicMapType_28265 (Array T@Ref Bool)) T@Ref)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_28265 T@PolymorphicMapType_28265 T@PolymorphicMapType_28286) Bool)
(declare-fun IsPredicateField_18763_90801 (T@Field_18763_90710) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_18763 (T@Field_18763_90710) T@Field_18763_90843)
(declare-fun HasDirectPerm_18763_90774 (T@PolymorphicMapType_28286 T@Ref T@Field_18763_90710) Bool)
(declare-fun IsWandField_18763_92350 (T@Field_18763_90710) Bool)
(declare-fun WandMaskField_18763 (T@Field_18763_90710) T@Field_18763_90843)
(declare-fun dummyHeap () T@PolymorphicMapType_28265)
(declare-fun ZeroMask () T@PolymorphicMapType_28286)
(declare-fun exists_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun exists_path_ ((Array T@EdgeDomainType Bool) T@Ref T@Ref) Bool)
(declare-fun |$$#frame| (T@FrameType (Array T@Ref Bool)) (Array T@EdgeDomainType Bool))
(declare-fun InsidePredicate_28325_28325 (T@Field_18763_90710 T@FrameType T@Field_18763_90710 T@FrameType) Bool)
(declare-fun IsPredicateField_18763_18764 (T@Field_28338_28339) Bool)
(declare-fun IsWandField_18763_18764 (T@Field_28338_28339) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_18763_95284 (T@Field_18763_90843) Bool)
(declare-fun IsWandField_18763_95300 (T@Field_18763_90843) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_18763_53 (T@Field_28325_53) Bool)
(declare-fun IsWandField_18763_53 (T@Field_28325_53) Bool)
(declare-fun HasDirectPerm_18763_95655 (T@PolymorphicMapType_28286 T@Ref T@Field_18763_90843) Bool)
(declare-fun HasDirectPerm_18763_53 (T@PolymorphicMapType_28286 T@Ref T@Field_28325_53) Bool)
(declare-fun HasDirectPerm_18763_18764 (T@PolymorphicMapType_28286 T@Ref T@Field_28338_28339) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_28286 T@PolymorphicMapType_28286 T@PolymorphicMapType_28286) Bool)
(declare-fun exists_spath ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) T@Ref) Bool)
(declare-fun |Set#Difference_18959| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |get#trigger| (T@FrameType (Array T@Ref Bool)) Bool)
(declare-fun |Set#UnionOne_18907| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |get#frame| (T@FrameType (Array T@Ref Bool)) T@Ref)
(declare-fun apply_noExit ((Array T@EdgeDomainType Bool) (Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |Set#Empty_19035| () (Array T@Ref Bool))
(declare-fun edge_pred (T@EdgeDomainType) T@Ref)
(declare-fun edge_succ (T@EdgeDomainType) T@Ref)
(declare-fun |Set#Subset_18938| ((Array T@Ref Bool) (Array T@Ref Bool)) Bool)
(declare-fun |sk_$$#condqp1| (Int Int) T@Ref)
(declare-fun |sk_$$#condqp2| (Int Int) T@Ref)
(declare-fun inst_uReach ((Array T@EdgeDomainType Bool) T@Ref) (Array T@Ref Bool))
(declare-fun is_on_path ((Array T@EdgeDomainType Bool) T@Ref T@Ref T@Ref) Bool)
(assert (distinct car cdr)
)
(assert (forall ((Heap0 T@PolymorphicMapType_28265) (Heap1 T@PolymorphicMapType_28265) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_28265) (Mask T@PolymorphicMapType_28286) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_28265) (Heap1@@0 T@PolymorphicMapType_28265) (Heap2 T@PolymorphicMapType_28265) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_18763_90843) ) (!  (not (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_18763_90710) ) (!  (not (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_28338_28339) ) (!  (not (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_28325_53) ) (!  (not (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.415:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_28265) (refs (Array T@Ref Bool)) ) (! (dummyFunction_35984 (|$$#triggerStateless| refs))
 :qid |stdinbpl.650:15|
 :skolemid |95|
 :pattern ( (|$$'| Heap@@0 refs))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_28265) (s_2 (Array T@Ref Bool)) ) (! (dummyFunction_18917 (|get#triggerStateless| s_2))
 :qid |stdinbpl.826:15|
 :skolemid |115|
 :pattern ( (|get'| Heap@@1 s_2))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_18941| (|Set#Union_18941| a@@0 b@@0) b@@0) (|Set#Union_18941| a@@0 b@@0))
 :qid |stdinbpl.367:18|
 :skolemid |38|
 :pattern ( (|Set#Union_18941| (|Set#Union_18941| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_18907| (|Set#Intersection_18907| a@@1 b@@1) b@@1) (|Set#Intersection_18907| a@@1 b@@1))
 :qid |stdinbpl.371:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_18907| (|Set#Intersection_18907| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_18958| r) o) (= r o))
 :qid |stdinbpl.336:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_18958| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_18907| (|Set#Union_18941| a@@2 b@@2)) (|Set#Card_18907| (|Set#Intersection_18907| a@@2 b@@2))) (+ (|Set#Card_18907| a@@2) (|Set#Card_18907| b@@2)))
 :qid |stdinbpl.375:18|
 :skolemid |42|
 :pattern ( (|Set#Card_18907| (|Set#Union_18941| a@@2 b@@2)))
 :pattern ( (|Set#Card_18907| (|Set#Intersection_18907| a@@2 b@@2)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_28265) (Mask@@0 T@PolymorphicMapType_28286) (refs@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@2 refs@@0)) (FrameFragment_5097 (|$$#condqp2| Heap@@2 refs@@0))) refs@@0))) (forall ((p_1 T@Ref) (s_2@@0 T@Ref) ) (! (=  (and (select refs@@0 p_1) (and (select refs@@0 s_2@@0) (or (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@2) p_1 car) s_2@@0) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@2) p_1 cdr) s_2@@0)))) (select (|$$'| Heap@@2 refs@@0) (create_edge p_1 s_2@@0)))
 :qid |stdinbpl.685:176|
 :skolemid |99|
 :pattern ( (select (|$$'| Heap@@2 refs@@0) (create_edge p_1 s_2@@0)))
)))
 :qid |stdinbpl.683:15|
 :skolemid |100|
 :pattern ( (state Heap@@2 Mask@@0) (|$$'| Heap@@2 refs@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_28265) (refs@@1 (Array T@Ref Bool)) ) (!  (and (= ($$ Heap@@3 refs@@1) (|$$'| Heap@@3 refs@@1)) (dummyFunction_35984 (|$$#triggerStateless| refs@@1)))
 :qid |stdinbpl.646:15|
 :skolemid |94|
 :pattern ( ($$ Heap@@3 refs@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_28265) (s_2@@1 (Array T@Ref Bool)) ) (!  (and (= (get Heap@@4 s_2@@1) (|get'| Heap@@4 s_2@@1)) (dummyFunction_18917 (|get#triggerStateless| s_2@@1)))
 :qid |stdinbpl.822:15|
 :skolemid |114|
 :pattern ( (get Heap@@4 s_2@@1))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.418:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28265) (ExhaleHeap T@PolymorphicMapType_28265) (Mask@@1 T@PolymorphicMapType_28286) (pm_f_25 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_18763_90774 Mask@@1 null pm_f_25) (IsPredicateField_18763_90801 pm_f_25)) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@5) null (PredicateMaskField_18763 pm_f_25)) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap) null (PredicateMaskField_18763 pm_f_25)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_18763_90801 pm_f_25) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap) null (PredicateMaskField_18763 pm_f_25)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28265) (ExhaleHeap@@0 T@PolymorphicMapType_28265) (Mask@@2 T@PolymorphicMapType_28286) (pm_f_25@@0 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_18763_90774 Mask@@2 null pm_f_25@@0) (IsWandField_18763_92350 pm_f_25@@0)) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@6) null (WandMaskField_18763 pm_f_25@@0)) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@0) null (WandMaskField_18763 pm_f_25@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_18763_92350 pm_f_25@@0) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@0) null (WandMaskField_18763 pm_f_25@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28265) (ExhaleHeap@@1 T@PolymorphicMapType_28265) (Mask@@3 T@PolymorphicMapType_28286) (pm_f_25@@1 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_18763_90774 Mask@@3 null pm_f_25@@1) (IsPredicateField_18763_90801 pm_f_25@@1)) (and (and (and (forall ((o2_25 T@Ref) (f_51 T@Field_28325_53) ) (!  (=> (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_25@@1))) o2_25 f_51) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@7) o2_25 f_51) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25 f_51))
)) (forall ((o2_25@@0 T@Ref) (f_51@@0 T@Field_28338_28339) ) (!  (=> (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_25@@1))) o2_25@@0 f_51@@0) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@7) o2_25@@0 f_51@@0) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@0 f_51@@0))
))) (forall ((o2_25@@1 T@Ref) (f_51@@1 T@Field_18763_90710) ) (!  (=> (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_25@@1))) o2_25@@1 f_51@@1) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@7) o2_25@@1 f_51@@1) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@1 f_51@@1))
))) (forall ((o2_25@@2 T@Ref) (f_51@@2 T@Field_18763_90843) ) (!  (=> (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_25@@1))) o2_25@@2 f_51@@2) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) o2_25@@2 f_51@@2) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@1) o2_25@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsPredicateField_18763_90801 pm_f_25@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_28265) (ExhaleHeap@@2 T@PolymorphicMapType_28265) (Mask@@4 T@PolymorphicMapType_28286) (pm_f_25@@2 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_18763_90774 Mask@@4 null pm_f_25@@2) (IsWandField_18763_92350 pm_f_25@@2)) (and (and (and (forall ((o2_25@@3 T@Ref) (f_51@@3 T@Field_28325_53) ) (!  (=> (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_25@@2))) o2_25@@3 f_51@@3) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@8) o2_25@@3 f_51@@3) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@3 f_51@@3))
)) (forall ((o2_25@@4 T@Ref) (f_51@@4 T@Field_28338_28339) ) (!  (=> (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_25@@2))) o2_25@@4 f_51@@4) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@8) o2_25@@4 f_51@@4) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@4 f_51@@4))
))) (forall ((o2_25@@5 T@Ref) (f_51@@5 T@Field_18763_90710) ) (!  (=> (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_25@@2))) o2_25@@5 f_51@@5) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@8) o2_25@@5 f_51@@5) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@5 f_51@@5))
))) (forall ((o2_25@@6 T@Ref) (f_51@@6 T@Field_18763_90843) ) (!  (=> (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_25@@2))) o2_25@@6 f_51@@6) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) o2_25@@6 f_51@@6) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@2) o2_25@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_18763_92350 pm_f_25@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (u_3 T@Ref) (v_2 T@Ref) (w_2 T@Ref) ) (!  (=> (and (exists_path_ EG_1 u_3 w_2) (exists_path_ EG_1 w_2 v_2)) (exists_path_ EG_1 u_3 v_2))
 :qid |stdinbpl.614:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 u_3 w_2) (exists_path EG_1 w_2 v_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_28265) (Mask@@5 T@PolymorphicMapType_28286) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@9 Mask@@5) (= (|$$'| Heap@@9 refs@@2) (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@9 refs@@2)) (FrameFragment_5097 (|$$#condqp2| Heap@@9 refs@@2))) refs@@2)))
 :qid |stdinbpl.657:15|
 :skolemid |96|
 :pattern ( (state Heap@@9 Mask@@5) (|$$'| Heap@@9 refs@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28265) (ExhaleHeap@@3 T@PolymorphicMapType_28265) (Mask@@6 T@PolymorphicMapType_28286) (o_50 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@10) o_50 $allocated) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@3) o_50 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@3) o_50 $allocated))
)))
(assert (forall ((p T@Field_18763_90710) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_28325_28325 p v_1 p w))
 :qid |stdinbpl.313:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_28325_28325 p v_1 p w))
)))
(assert  (not (IsPredicateField_18763_18764 car)))
(assert  (not (IsWandField_18763_18764 car)))
(assert  (not (IsPredicateField_18763_18764 cdr)))
(assert  (not (IsWandField_18763_18764 cdr)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_28265) (ExhaleHeap@@4 T@PolymorphicMapType_28265) (Mask@@7 T@PolymorphicMapType_28286) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7) (succHeap Heap@@11 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@4 Mask@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_28286) (o_2@@3 T@Ref) (f_4@@3 T@Field_18763_90843) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| Mask@@8) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_18763_95284 f_4@@3))) (not (IsWandField_18763_95300 f_4@@3))) (<= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| Mask@@8) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| Mask@@8) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_28286) (o_2@@4 T@Ref) (f_4@@4 T@Field_18763_90710) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| Mask@@9) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_18763_90801 f_4@@4))) (not (IsWandField_18763_92350 f_4@@4))) (<= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| Mask@@9) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| Mask@@9) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_28286) (o_2@@5 T@Ref) (f_4@@5 T@Field_28325_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| Mask@@10) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_18763_53 f_4@@5))) (not (IsWandField_18763_53 f_4@@5))) (<= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| Mask@@10) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| Mask@@10) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_28286) (o_2@@6 T@Ref) (f_4@@6 T@Field_28338_28339) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| Mask@@11) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_18763_18764 f_4@@6))) (not (IsWandField_18763_18764 f_4@@6))) (<= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| Mask@@11) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| Mask@@11) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_28286) (o_2@@7 T@Ref) (f_4@@7 T@Field_18763_90843) ) (! (= (HasDirectPerm_18763_95655 Mask@@12 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| Mask@@12) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18763_95655 Mask@@12 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_28286) (o_2@@8 T@Ref) (f_4@@8 T@Field_18763_90710) ) (! (= (HasDirectPerm_18763_90774 Mask@@13 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| Mask@@13) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18763_90774 Mask@@13 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_28286) (o_2@@9 T@Ref) (f_4@@9 T@Field_28325_53) ) (! (= (HasDirectPerm_18763_53 Mask@@14 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| Mask@@14) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18763_53 Mask@@14 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_28286) (o_2@@10 T@Ref) (f_4@@10 T@Field_28338_28339) ) (! (= (HasDirectPerm_18763_18764 Mask@@15 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| Mask@@15) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_18763_18764 Mask@@15 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.301:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_28265) (ExhaleHeap@@5 T@PolymorphicMapType_28265) (Mask@@16 T@PolymorphicMapType_28286) (o_50@@0 T@Ref) (f_51@@7 T@Field_18763_90843) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_18763_95655 Mask@@16 o_50@@0 f_51@@7) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@12) o_50@@0 f_51@@7) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@5) o_50@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@5) o_50@@0 f_51@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_28265) (ExhaleHeap@@6 T@PolymorphicMapType_28265) (Mask@@17 T@PolymorphicMapType_28286) (o_50@@1 T@Ref) (f_51@@8 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_18763_90774 Mask@@17 o_50@@1 f_51@@8) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@13) o_50@@1 f_51@@8) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@6) o_50@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@6) o_50@@1 f_51@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_28265) (ExhaleHeap@@7 T@PolymorphicMapType_28265) (Mask@@18 T@PolymorphicMapType_28286) (o_50@@2 T@Ref) (f_51@@9 T@Field_28325_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_18763_53 Mask@@18 o_50@@2 f_51@@9) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@14) o_50@@2 f_51@@9) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@7) o_50@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@7) o_50@@2 f_51@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_28265) (ExhaleHeap@@8 T@PolymorphicMapType_28265) (Mask@@19 T@PolymorphicMapType_28286) (o_50@@3 T@Ref) (f_51@@10 T@Field_28338_28339) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_18763_18764 Mask@@19 o_50@@3 f_51@@10) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@15) o_50@@3 f_51@@10) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@8) o_50@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@8) o_50@@3 f_51@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_18763_90843) ) (! (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_18763_90710) ) (! (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_28325_53) ) (! (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_28338_28339) ) (! (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_28286) (SummandMask1 T@PolymorphicMapType_28286) (SummandMask2 T@PolymorphicMapType_28286) (o_2@@15 T@Ref) (f_4@@15 T@Field_18763_90843) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_28286) (SummandMask1@@0 T@PolymorphicMapType_28286) (SummandMask2@@0 T@PolymorphicMapType_28286) (o_2@@16 T@Ref) (f_4@@16 T@Field_18763_90710) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_28286) (SummandMask1@@1 T@PolymorphicMapType_28286) (SummandMask2@@1 T@PolymorphicMapType_28286) (o_2@@17 T@Ref) (f_4@@17 T@Field_28325_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_28286) (SummandMask1@@2 T@PolymorphicMapType_28286) (SummandMask2@@2 T@PolymorphicMapType_28286) (o_2@@18 T@Ref) (f_4@@18 T@Field_28338_28339) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_18907| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.364:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_18907| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_18907| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_18907| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (from (Array T@Ref Bool)) (to T@Ref) ) (! (= (exists_spath EG_1@@0 from to) (exists ((f_69 T@Ref) ) (!  (and (select from f_69) (exists_path EG_1@@0 f_69 to))
 :qid |stdinbpl.622:51|
 :skolemid |92|
 :pattern ( (select from f_69))
 :pattern ( (exists_path EG_1@@0 f_69 to))
)))
 :qid |stdinbpl.620:15|
 :skolemid |93|
 :pattern ( (exists_spath EG_1@@0 from to))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_18959| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.379:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_18959| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_18959| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_28265) (Mask@@20 T@PolymorphicMapType_28286) (s_2@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@16 Mask@@20) (or (< AssumeFunctionsAbove 1) (|get#trigger| EmptyFrame s_2@@2))) (=> (> (|Set#Card_18907| s_2@@2) 0) (select s_2@@2 (|get'| Heap@@16 s_2@@2))))
 :qid |stdinbpl.839:15|
 :skolemid |117|
 :pattern ( (state Heap@@16 Mask@@20) (|get'| Heap@@16 s_2@@2))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_18907| a@@6 x) y))
 :qid |stdinbpl.344:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_18907| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_18941| a@@7 b@@5) y@@0))
 :qid |stdinbpl.354:18|
 :skolemid |35|
 :pattern ( (|Set#Union_18941| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_18941| a@@8 b@@6) y@@1))
 :qid |stdinbpl.356:18|
 :skolemid |36|
 :pattern ( (|Set#Union_18941| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_18907| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.340:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_18907| a@@9 x@@0) o@@2))
)))
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) (start T@Ref) (end T@Ref) ) (! (= (exists_path_ EG_1@@1 start end)  (or (= start end) (exists ((w_2@@0 T@Ref) ) (!  (and (select EG_1@@1 (create_edge start w_2@@0)) (exists_path_ EG_1@@1 w_2@@0 end))
 :qid |stdinbpl.607:70|
 :skolemid |89|
 :pattern ( (select EG_1@@1 (create_edge start w_2@@0)))
 :pattern ( (exists_path_ EG_1@@1 w_2@@0 end))
))))
 :qid |stdinbpl.605:15|
 :skolemid |90|
 :pattern ( (exists_path EG_1@@1 start end))
 :pattern ( (select EG_1@@1 (create_edge start end)))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_18959| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.381:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_18959| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_18907| (|Set#Difference_18959| a@@11 b@@8)) (|Set#Card_18907| (|Set#Difference_18959| b@@8 a@@11))) (|Set#Card_18907| (|Set#Intersection_18907| a@@11 b@@8))) (|Set#Card_18907| (|Set#Union_18941| a@@11 b@@8))) (= (|Set#Card_18907| (|Set#Difference_18959| a@@11 b@@8)) (- (|Set#Card_18907| a@@11) (|Set#Card_18907| (|Set#Intersection_18907| a@@11 b@@8)))))
 :qid |stdinbpl.383:18|
 :skolemid |45|
 :pattern ( (|Set#Card_18907| (|Set#Difference_18959| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_18907| s))
 :qid |stdinbpl.326:18|
 :skolemid |22|
 :pattern ( (|Set#Card_18907| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_18907| a@@12 x@@1) x@@1)
 :qid |stdinbpl.342:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_18907| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_18907| (|Set#UnionOne_18907| a@@13 x@@2)) (|Set#Card_18907| a@@13)))
 :qid |stdinbpl.346:18|
 :skolemid |32|
 :pattern ( (|Set#Card_18907| (|Set#UnionOne_18907| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_18907| (|Set#Singleton_18958| r@@0)) 1)
 :qid |stdinbpl.337:18|
 :skolemid |28|
 :pattern ( (|Set#Card_18907| (|Set#Singleton_18958| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_18958| r@@1) r@@1)
 :qid |stdinbpl.335:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_18958| r@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_28265) (Mask@@21 T@PolymorphicMapType_28286) (s_2@@3 (Array T@Ref Bool)) ) (!  (=> (state Heap@@17 Mask@@21) (= (|get'| Heap@@17 s_2@@3) (|get#frame| EmptyFrame s_2@@3)))
 :qid |stdinbpl.833:15|
 :skolemid |116|
 :pattern ( (state Heap@@17 Mask@@21) (|get'| Heap@@17 s_2@@3))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_18941| a@@14 (|Set#Union_18941| a@@14 b@@9)) (|Set#Union_18941| a@@14 b@@9))
 :qid |stdinbpl.369:18|
 :skolemid |39|
 :pattern ( (|Set#Union_18941| a@@14 (|Set#Union_18941| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_18907| a@@15 (|Set#Intersection_18907| a@@15 b@@10)) (|Set#Intersection_18907| a@@15 b@@10))
 :qid |stdinbpl.373:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_18907| a@@15 (|Set#Intersection_18907| a@@15 b@@10)))
)))
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@2 U_1 M) (=> (forall ((u_3@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M u_3@@0) (and (select U_1 v_2@@0) (not (select M v_2@@0)))) (not (select EG_1@@2 (create_edge u_3@@0 v_2@@0))))
 :qid |stdinbpl.577:50|
 :skolemid |83|
 :pattern ( (select EG_1@@2 (create_edge u_3@@0 v_2@@0)))
 :pattern ( (select M u_3@@0) (select M v_2@@0))
)) (forall ((u_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M u_1) (and (select U_1 v_1_1) (not (select M v_1_1)))) (not (exists_path EG_1@@2 u_1 v_1_1)))
 :qid |stdinbpl.580:17|
 :skolemid |84|
 :pattern ( (exists_path EG_1@@2 u_1 v_1_1))
 :pattern ( (select M u_1) (select M v_1_1))
))))
 :qid |stdinbpl.575:15|
 :skolemid |85|
 :pattern ( (apply_noExit EG_1@@2 U_1 M))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_19035| o@@3))
 :qid |stdinbpl.329:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_19035| o@@3))
)))
(assert (forall ((p_1@@0 T@Ref) (s_2@@4 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@0 s_2@@4)) p_1@@0) (= (edge_succ (create_edge p_1@@0 s_2@@4)) s_2@@4))
 :qid |stdinbpl.526:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@0 s_2@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28265) (o_39 T@Ref) (f_18 T@Field_18763_90710) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@18) (store (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@18) o_39 f_18 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@18) (store (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@18) o_39 f_18 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28265) (o_39@@0 T@Ref) (f_18@@0 T@Field_18763_90843) (v@@0 T@PolymorphicMapType_28814) ) (! (succHeap Heap@@19 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@19) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@19) (store (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@19) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@19) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@19) (store (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@19) o_39@@0 f_18@@0 v@@0) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_28265) (o_39@@1 T@Ref) (f_18@@1 T@Field_28338_28339) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@20) (store (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@20) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@20) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@20) (store (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@20) o_39@@1 f_18@@1 v@@1) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@20) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_28265) (o_39@@2 T@Ref) (f_18@@2 T@Field_28325_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_28265 (store (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@21) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (store (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@21) o_39@@2 f_18@@2 v@@2) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@21)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.413:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.414:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_18907| s@@0) 0) (= s@@0 |Set#Empty_19035|)) (=> (not (= (|Set#Card_18907| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.332:33|
 :skolemid |24|
))))
 :qid |stdinbpl.330:18|
 :skolemid |25|
 :pattern ( (|Set#Card_18907| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) ) (! (= (|Set#Subset_18938| a@@18 b@@13) (forall ((o@@4 T@Ref) ) (!  (=> (select a@@18 o@@4) (select b@@13 o@@4))
 :qid |stdinbpl.392:32|
 :skolemid |46|
 :pattern ( (select a@@18 o@@4))
 :pattern ( (select b@@13 o@@4))
)))
 :qid |stdinbpl.391:17|
 :skolemid |47|
 :pattern ( (|Set#Subset_18938| a@@18 b@@13))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_28265) (Heap1Heap T@PolymorphicMapType_28265) (refs@@3 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm))  (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm))) (=> (and (select refs@@3 (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap2Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap1Heap) (|sk_$$#condqp1| (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)) car)))) (= (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3)))
 :qid |stdinbpl.667:15|
 :skolemid |97|
 :pattern ( (|$$#condqp1| Heap2Heap refs@@3) (|$$#condqp1| Heap1Heap refs@@3) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_28265) (Heap1Heap@@0 T@PolymorphicMapType_28265) (refs@@4 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm FullPerm))  (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm FullPerm))) (=> (and (select refs@@4 (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap2Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap1Heap@@0) (|sk_$$#condqp2| (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)) cdr)))) (= (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4)))
 :qid |stdinbpl.677:15|
 :skolemid |98|
 :pattern ( (|$$#condqp2| Heap2Heap@@0 refs@@4) (|$$#condqp2| Heap1Heap@@0 refs@@4) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((a@@19 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@19 x@@4)) (= (|Set#Card_18907| (|Set#UnionOne_18907| a@@19 x@@4)) (+ (|Set#Card_18907| a@@19) 1)))
 :qid |stdinbpl.348:18|
 :skolemid |33|
 :pattern ( (|Set#Card_18907| (|Set#UnionOne_18907| a@@19 x@@4)))
)))
(assert (forall ((o_39@@3 T@Ref) (f_45 T@Field_28338_28339) (Heap@@22 T@PolymorphicMapType_28265) ) (!  (=> (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@22) o_39@@3 $allocated) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@22) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@22) o_39@@3 f_45) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@22) o_39@@3 f_45))
)))
(assert (forall ((p@@1 T@Field_18763_90710) (v_1@@0 T@FrameType) (q T@Field_18763_90710) (w@@0 T@FrameType) (r@@2 T@Field_18763_90710) (u T@FrameType) ) (!  (=> (and (InsidePredicate_28325_28325 p@@1 v_1@@0 q w@@0) (InsidePredicate_28325_28325 q w@@0 r@@2 u)) (InsidePredicate_28325_28325 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.308:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_28325_28325 p@@1 v_1@@0 q w@@0) (InsidePredicate_28325_28325 q w@@0 r@@2 u))
)))
(assert (forall ((a@@20 Int) ) (!  (=> (< a@@20 0) (= (|Math#clip| a@@20) 0))
 :qid |stdinbpl.419:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@20))
)))
(assert (forall ((EG_1@@3 (Array T@EdgeDomainType Bool)) (x@@5 T@Ref) (v_2@@1 T@Ref) ) (! (= (select (inst_uReach EG_1@@3 x@@5) v_2@@1) (exists_path EG_1@@3 x@@5 v_2@@1))
 :qid |stdinbpl.587:15|
 :skolemid |86|
 :pattern ( (select (inst_uReach EG_1@@3 x@@5) v_2@@1))
 :pattern ( (exists_path EG_1@@3 x@@5 v_2@@1))
)))
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (start@@0 T@Ref) (mid T@Ref) (end@@0 T@Ref) ) (! (= (is_on_path EG_1@@4 start@@0 mid end@@0)  (and (select EG_1@@4 (create_edge start@@0 mid)) (exists_path_ EG_1@@4 mid end@@0)))
 :qid |stdinbpl.599:15|
 :skolemid |88|
 :pattern ( (is_on_path EG_1@@4 start@@0 mid end@@0))
 :pattern ( (select EG_1@@4 (create_edge start@@0 mid)) (exists_path_ EG_1@@4 mid end@@0))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@21 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_18941| a@@21 b@@14) o@@5)  (or (select a@@21 o@@5) (select b@@14 o@@5)))
 :qid |stdinbpl.352:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_18941| a@@21 b@@14) o@@5))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (start@@1 T@Ref) (end@@1 T@Ref) ) (! (= (exists_path EG_1@@5 start@@1 end@@1) (exists_path_ EG_1@@5 start@@1 end@@1))
 :qid |stdinbpl.593:15|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@5 start@@1 end@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun neverTriggered9 (T@Ref) Bool)
(declare-fun g_1 () (Array T@Ref Bool))
(declare-fun PostHeap@0 () T@PolymorphicMapType_28265)
(declare-fun QPMask@36 () T@PolymorphicMapType_28286)
(declare-fun QPMask@35 () T@PolymorphicMapType_28286)
(declare-fun qpRange9 (T@Ref) Bool)
(declare-fun invRecv9 (T@Ref) T@Ref)
(declare-fun neverTriggered10 (T@Ref) Bool)
(declare-fun QPMask@37 () T@PolymorphicMapType_28286)
(declare-fun v_22 () T@Ref)
(declare-fun marked () (Array T@Ref Bool))
(declare-fun roots () (Array T@Ref Bool))
(declare-fun neverTriggered7 (T@Ref) Bool)
(declare-fun QPMask@38 () T@PolymorphicMapType_28286)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun neverTriggered8 (T@Ref) Bool)
(declare-fun QPMask@39 () T@PolymorphicMapType_28286)
(declare-fun v_21 () T@Ref)
(declare-fun n$4_14 () T@Ref)
(declare-fun n$3_8 () T@Ref)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun QPMask@34 () T@PolymorphicMapType_28286)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun neverTriggered21 (T@Ref) Bool)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_28265)
(declare-fun QPMask@20 () T@PolymorphicMapType_28286)
(declare-fun QPMask@15 () T@PolymorphicMapType_28286)
(declare-fun qpRange21 (T@Ref) Bool)
(declare-fun invRecv21 (T@Ref) T@Ref)
(declare-fun neverTriggered22 (T@Ref) Bool)
(declare-fun QPMask@21 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered23 (T@Ref) Bool)
(declare-fun QPMask@22 () T@PolymorphicMapType_28286)
(declare-fun qpRange23 (T@Ref) Bool)
(declare-fun invRecv23 (T@Ref) T@Ref)
(declare-fun neverTriggered24 (T@Ref) Bool)
(declare-fun QPMask@23 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered19 (T@Ref) Bool)
(declare-fun QPMask@18 () T@PolymorphicMapType_28286)
(declare-fun qpRange19 (T@Ref) Bool)
(declare-fun invRecv19 (T@Ref) T@Ref)
(declare-fun neverTriggered20 (T@Ref) Bool)
(declare-fun QPMask@19 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered27 (T@Ref) Bool)
(declare-fun QPMask@26 () T@PolymorphicMapType_28286)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) T@Ref)
(declare-fun neverTriggered28 (T@Ref) Bool)
(declare-fun QPMask@27 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered29 (T@Ref) Bool)
(declare-fun QPMask@28 () T@PolymorphicMapType_28286)
(declare-fun qpRange29 (T@Ref) Bool)
(declare-fun invRecv29 (T@Ref) T@Ref)
(declare-fun neverTriggered30 (T@Ref) Bool)
(declare-fun QPMask@29 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered25 (T@Ref) Bool)
(declare-fun QPMask@24 () T@PolymorphicMapType_28286)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) T@Ref)
(declare-fun neverTriggered26 (T@Ref) Bool)
(declare-fun QPMask@25 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered33 (T@Ref) Bool)
(declare-fun QPMask@30 () T@PolymorphicMapType_28286)
(declare-fun qpRange33 (T@Ref) Bool)
(declare-fun invRecv33 (T@Ref) T@Ref)
(declare-fun neverTriggered34 (T@Ref) Bool)
(declare-fun QPMask@31 () T@PolymorphicMapType_28286)
(declare-fun marked@1 () (Array T@Ref Bool))
(declare-fun n1_2 () T@Ref)
(declare-fun n2_1 () T@Ref)
(declare-fun pending@0 () (Array T@Ref Bool))
(declare-fun neverTriggered31 (T@Ref) Bool)
(declare-fun QPMask@32 () T@PolymorphicMapType_28286)
(declare-fun qpRange31 (T@Ref) Bool)
(declare-fun invRecv31 (T@Ref) T@Ref)
(declare-fun neverTriggered32 (T@Ref) Bool)
(declare-fun QPMask@33 () T@PolymorphicMapType_28286)
(declare-fun n_46 () T@Ref)
(declare-fun x@1 () T@Ref)
(declare-fun neverTriggered17 (T@Ref) Bool)
(declare-fun QPMask@16 () T@PolymorphicMapType_28286)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) T@Ref)
(declare-fun neverTriggered18 (T@Ref) Bool)
(declare-fun QPMask@17 () T@PolymorphicMapType_28286)
(declare-fun n$8_2 () T@Ref)
(declare-fun n$7_5 () T@Ref)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) T@Ref)
(declare-fun QPMask@14 () T@PolymorphicMapType_28286)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_28286)
(declare-fun pending@5 () (Array T@Ref Bool))
(declare-fun marked@2 () (Array T@Ref Bool))
(declare-fun x@2 () T@Ref)
(declare-fun n$8_5 () T@Ref)
(declare-fun n$7_5_1 () T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered37 (T@Ref) Bool)
(declare-fun QPMask@12 () T@PolymorphicMapType_28286)
(declare-fun qpRange37 (T@Ref) Bool)
(declare-fun invRecv37 (T@Ref) T@Ref)
(declare-fun neverTriggered38 (T@Ref) Bool)
(declare-fun QPMask@13 () T@PolymorphicMapType_28286)
(declare-fun qpRange38 (T@Ref) Bool)
(declare-fun invRecv38 (T@Ref) T@Ref)
(declare-fun pending@3 () (Array T@Ref Bool))
(declare-fun pending@4 () (Array T@Ref Bool))
(declare-fun pending@1 () (Array T@Ref Bool))
(declare-fun pending@2 () (Array T@Ref Bool))
(declare-fun QPMask@4 () T@PolymorphicMapType_28286)
(declare-fun qpRange35 (T@Ref) Bool)
(declare-fun invRecv35 (T@Ref) T@Ref)
(declare-fun qpRange36 (T@Ref) Bool)
(declare-fun invRecv36 (T@Ref) T@Ref)
(declare-fun v_6_1 () T@Ref)
(declare-fun v_4_1 () T@Ref)
(declare-fun n$4_2_1 () T@Ref)
(declare-fun n$3_2 () T@Ref)
(declare-fun QPMask@7 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered11 (T@Ref) Bool)
(declare-fun QPMask@10 () T@PolymorphicMapType_28286)
(declare-fun qpRange11 (T@Ref) Bool)
(declare-fun invRecv11 (T@Ref) T@Ref)
(declare-fun neverTriggered12 (T@Ref) Bool)
(declare-fun QPMask@11 () T@PolymorphicMapType_28286)
(declare-fun qpRange12 (T@Ref) Bool)
(declare-fun invRecv12 (T@Ref) T@Ref)
(declare-fun neverTriggered41 (T@Ref) Bool)
(declare-fun QPMask@8 () T@PolymorphicMapType_28286)
(declare-fun qpRange41 (T@Ref) Bool)
(declare-fun invRecv41 (T@Ref) T@Ref)
(declare-fun neverTriggered42 (T@Ref) Bool)
(declare-fun QPMask@9 () T@PolymorphicMapType_28286)
(declare-fun QPMask@6 () T@PolymorphicMapType_28286)
(declare-fun qpRange39 (T@Ref) Bool)
(declare-fun invRecv39 (T@Ref) T@Ref)
(declare-fun qpRange40 (T@Ref) Bool)
(declare-fun invRecv40 (T@Ref) T@Ref)
(declare-fun marked@0 () (Array T@Ref Bool))
(declare-fun Heap@@23 () T@PolymorphicMapType_28265)
(declare-fun x@0 () T@Ref)
(declare-fun n$8 () T@Ref)
(declare-fun n$7_4 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_28286)
(declare-fun neverTriggered13 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_28286)
(declare-fun qpRange13 (T@Ref) Bool)
(declare-fun invRecv13 (T@Ref) T@Ref)
(declare-fun neverTriggered14 (T@Ref) Bool)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) T@Ref)
(declare-fun x@@6 () T@Ref)
(declare-fun n$0_25 () T@Ref)
(declare-fun n_45 () T@Ref)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_28286)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(set-info :boogie-vc-id mark)
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
 (=> (= (ControlFlow 0 0) 313) (let ((anon192_Then_correct  (and (=> (= (ControlFlow 0 293) (- 0 296)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select g_1 n_3)) (select g_1 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.1245:25|
 :skolemid |155|
 :pattern ( (neverTriggered9 n_3) (neverTriggered9 n_3_1))
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select g_1 n_3@@0)) (select g_1 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.1245:25|
 :skolemid |155|
 :pattern ( (neverTriggered9 n_3@@0) (neverTriggered9 n_3_1@@0))
)) (and (=> (= (ControlFlow 0 293) (- 0 295)) (forall ((n_3@@1 T@Ref) ) (!  (=> (select g_1 n_3@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n_3@@1 car) NoPerm)))
 :qid |stdinbpl.1252:25|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@36) n_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@1 car))
))) (=> (forall ((n_3@@2 T@Ref) ) (!  (=> (select g_1 n_3@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n_3@@2 car) NoPerm)))
 :qid |stdinbpl.1252:25|
 :skolemid |156|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@36) n_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@2 car))
)) (=> (and (forall ((n_3@@3 T@Ref) ) (!  (=> (and (select g_1 n_3@@3) (< NoPerm FullPerm)) (and (qpRange9 n_3@@3) (= (invRecv9 n_3@@3) n_3@@3)))
 :qid |stdinbpl.1258:30|
 :skolemid |157|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@36) n_3@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_3@@3 car))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select g_1 (invRecv9 o_4)) (and (< NoPerm FullPerm) (qpRange9 o_4))) (= (invRecv9 o_4) o_4))
 :qid |stdinbpl.1262:30|
 :skolemid |158|
 :pattern ( (invRecv9 o_4))
))) (and (=> (= (ControlFlow 0 293) (- 0 294)) (forall ((n$0_3_2 T@Ref) (n$0_3_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2 n$0_3_3)) (select g_1 n$0_3_2)) (select g_1 n$0_3_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3_2 n$0_3_3)))
 :qid |stdinbpl.1273:25|
 :skolemid |159|
 :pattern ( (neverTriggered10 n$0_3_2) (neverTriggered10 n$0_3_3))
))) (=> (forall ((n$0_3_2@@0 T@Ref) (n$0_3_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3_2@@0 n$0_3_3@@0)) (select g_1 n$0_3_2@@0)) (select g_1 n$0_3_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3_2@@0 n$0_3_3@@0)))
 :qid |stdinbpl.1273:25|
 :skolemid |159|
 :pattern ( (neverTriggered10 n$0_3_2@@0) (neverTriggered10 n$0_3_3@@0))
)) (=> (= (ControlFlow 0 293) (- 0 292)) (forall ((n$0_3_2@@1 T@Ref) ) (!  (=> (select g_1 n$0_3_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n$0_3_2@@1 cdr) NoPerm)))
 :qid |stdinbpl.1280:25|
 :skolemid |160|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$0_3_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@37) n$0_3_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$0_3_2@@1 cdr))
))))))))))))
(let ((anon35_correct true))
(let ((anon191_Then_correct  (=> (select g_1 v_22) (and (=> (= (ControlFlow 0 297) 293) anon192_Then_correct) (=> (= (ControlFlow 0 297) 290) anon35_correct)))))
(let ((anon191_Else_correct  (=> (and (not (select g_1 v_22)) (= (ControlFlow 0 291) 290)) anon35_correct)))
(let ((anon190_Else_correct true))
(let ((anon186_Else_correct  (=> (forall ((v_1_1@@0 T@Ref) ) (!  (=> (select g_1 v_1_1@@0) (=> (select marked v_1_1@@0) (exists_spath ($$ PostHeap@0 g_1) roots v_1_1@@0)))
 :qid |stdinbpl.1224:20|
 :skolemid |154|
 :pattern ( (select marked v_1_1@@0))
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| PostHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| PostHeap@0 g_1))) g_1) roots v_1_1@@0))
)) (=> (and (state PostHeap@0 QPMask@35) (state PostHeap@0 QPMask@35)) (and (and (=> (= (ControlFlow 0 298) 289) anon190_Else_correct) (=> (= (ControlFlow 0 298) 297) anon191_Then_correct)) (=> (= (ControlFlow 0 298) 291) anon191_Else_correct))))))
(let ((anon189_Then_correct  (and (=> (= (ControlFlow 0 283) (- 0 286)) (forall ((n_2 T@Ref) (n_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2 n_2_1)) (select g_1 n_2)) (select g_1 n_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2 n_2_1)))
 :qid |stdinbpl.1164:27|
 :skolemid |146|
 :pattern ( (neverTriggered7 n_2) (neverTriggered7 n_2_1))
))) (=> (forall ((n_2@@0 T@Ref) (n_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_2@@0 n_2_1@@0)) (select g_1 n_2@@0)) (select g_1 n_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_2@@0 n_2_1@@0)))
 :qid |stdinbpl.1164:27|
 :skolemid |146|
 :pattern ( (neverTriggered7 n_2@@0) (neverTriggered7 n_2_1@@0))
)) (and (=> (= (ControlFlow 0 283) (- 0 285)) (forall ((n_2@@1 T@Ref) ) (!  (=> (select g_1 n_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n_2@@1 car) NoPerm)))
 :qid |stdinbpl.1171:27|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@38) n_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@1 car))
))) (=> (forall ((n_2@@2 T@Ref) ) (!  (=> (select g_1 n_2@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n_2@@2 car) NoPerm)))
 :qid |stdinbpl.1171:27|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@38) n_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@2 car))
)) (=> (and (forall ((n_2@@3 T@Ref) ) (!  (=> (and (select g_1 n_2@@3) (< NoPerm FullPerm)) (and (qpRange7 n_2@@3) (= (invRecv7 n_2@@3) n_2@@3)))
 :qid |stdinbpl.1177:32|
 :skolemid |148|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@38) n_2@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n_2@@3 car))
)) (forall ((o_4@@0 T@Ref) ) (!  (=> (and (select g_1 (invRecv7 o_4@@0)) (and (< NoPerm FullPerm) (qpRange7 o_4@@0))) (= (invRecv7 o_4@@0) o_4@@0))
 :qid |stdinbpl.1181:32|
 :skolemid |149|
 :pattern ( (invRecv7 o_4@@0))
))) (and (=> (= (ControlFlow 0 283) (- 0 284)) (forall ((n$0_2_1 T@Ref) (n$0_2_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1 n$0_2_2)) (select g_1 n$0_2_1)) (select g_1 n$0_2_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2_1 n$0_2_2)))
 :qid |stdinbpl.1192:27|
 :skolemid |150|
 :pattern ( (neverTriggered8 n$0_2_1) (neverTriggered8 n$0_2_2))
))) (=> (forall ((n$0_2_1@@0 T@Ref) (n$0_2_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_2_1@@0 n$0_2_2@@0)) (select g_1 n$0_2_1@@0)) (select g_1 n$0_2_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_2_1@@0 n$0_2_2@@0)))
 :qid |stdinbpl.1192:27|
 :skolemid |150|
 :pattern ( (neverTriggered8 n$0_2_1@@0) (neverTriggered8 n$0_2_2@@0))
)) (=> (= (ControlFlow 0 283) (- 0 282)) (forall ((n$0_2_1@@1 T@Ref) ) (!  (=> (select g_1 n$0_2_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n$0_2_1@@1 cdr) NoPerm)))
 :qid |stdinbpl.1199:27|
 :skolemid |151|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$0_2_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@39) n$0_2_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$0_2_1@@1 cdr))
))))))))))))
(let ((anon30_correct true))
(let ((anon188_Then_correct  (=> (select marked v_21) (and (=> (= (ControlFlow 0 287) 283) anon189_Then_correct) (=> (= (ControlFlow 0 287) 279) anon30_correct)))))
(let ((anon188_Else_correct  (=> (and (not (select marked v_21)) (= (ControlFlow 0 281) 279)) anon30_correct)))
(let ((anon187_Then_correct  (=> (select g_1 v_21) (and (=> (= (ControlFlow 0 288) 287) anon188_Then_correct) (=> (= (ControlFlow 0 288) 281) anon188_Else_correct)))))
(let ((anon187_Else_correct  (=> (and (not (select g_1 v_21)) (= (ControlFlow 0 280) 279)) anon30_correct)))
(let ((anon184_Else_correct  (=> (forall ((n$4_1_2 T@Ref) ) (!  (=> (select g_1 n$4_1_2) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$4_1_2 cdr)))
 :qid |stdinbpl.1142:20|
 :skolemid |145|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$4_1_2 cdr)))
 :pattern ( (select g_1 n$4_1_2) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$4_1_2 cdr))
)) (=> (and (state PostHeap@0 QPMask@35) (state PostHeap@0 QPMask@35)) (and (and (=> (= (ControlFlow 0 299) 298) anon186_Else_correct) (=> (= (ControlFlow 0 299) 288) anon187_Then_correct)) (=> (= (ControlFlow 0 299) 280) anon187_Else_correct))))))
(let ((anon24_correct true))
(let ((anon185_Else_correct  (=> (and (not (select g_1 n$4_14)) (= (ControlFlow 0 278) 275)) anon24_correct)))
(let ((anon185_Then_correct  (=> (select g_1 n$4_14) (and (=> (= (ControlFlow 0 276) (- 0 277)) (HasDirectPerm_18763_18764 QPMask@35 n$4_14 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@35 n$4_14 cdr) (=> (= (ControlFlow 0 276) 275) anon24_correct))))))
(let ((anon182_Else_correct  (=> (forall ((n$3_1_2 T@Ref) ) (!  (=> (select g_1 n$3_1_2) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$3_1_2 car)))
 :qid |stdinbpl.1129:20|
 :skolemid |144|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$3_1_2 car)))
 :pattern ( (select g_1 n$3_1_2) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$3_1_2 car))
)) (and (and (=> (= (ControlFlow 0 300) 299) anon184_Else_correct) (=> (= (ControlFlow 0 300) 276) anon185_Then_correct)) (=> (= (ControlFlow 0 300) 278) anon185_Else_correct)))))
(let ((anon20_correct true))
(let ((anon183_Else_correct  (=> (and (not (select g_1 n$3_8)) (= (ControlFlow 0 274) 271)) anon20_correct)))
(let ((anon183_Then_correct  (=> (select g_1 n$3_8) (and (=> (= (ControlFlow 0 272) (- 0 273)) (HasDirectPerm_18763_18764 QPMask@35 n$3_8 car)) (=> (HasDirectPerm_18763_18764 QPMask@35 n$3_8 car) (=> (= (ControlFlow 0 272) 271) anon20_correct))))))
(let ((anon181_Else_correct  (and (=> (= (ControlFlow 0 301) (- 0 302)) (forall ((n$6_1 T@Ref) (n$6_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_1 n$6_1_1)) (select g_1 n$6_1)) (select g_1 n$6_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_1 n$6_1_1)))
 :qid |stdinbpl.1088:15|
 :skolemid |138|
))) (=> (forall ((n$6_1@@0 T@Ref) (n$6_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_1@@0 n$6_1_1@@0)) (select g_1 n$6_1@@0)) (select g_1 n$6_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_1@@0 n$6_1_1@@0)))
 :qid |stdinbpl.1088:15|
 :skolemid |138|
)) (=> (and (and (forall ((n$6_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$6_1@@1) (< NoPerm FullPerm)) (and (qpRange6 n$6_1@@1) (= (invRecv6 n$6_1@@1) n$6_1@@1)))
 :qid |stdinbpl.1094:22|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$6_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n$6_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$6_1@@1 cdr))
)) (forall ((o_4@@1 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv6 o_4@@1)) (< NoPerm FullPerm)) (qpRange6 o_4@@1)) (= (invRecv6 o_4@@1) o_4@@1))
 :qid |stdinbpl.1098:22|
 :skolemid |140|
 :pattern ( (invRecv6 o_4@@1))
))) (and (forall ((n$6_1@@2 T@Ref) ) (!  (=> (select g_1 n$6_1@@2) (not (= n$6_1@@2 null)))
 :qid |stdinbpl.1104:22|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$6_1@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) n$6_1@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$6_1@@2 cdr))
)) (forall ((o_4@@2 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv6 o_4@@2)) (< NoPerm FullPerm)) (qpRange6 o_4@@2)) (and (=> (< NoPerm FullPerm) (= (invRecv6 o_4@@2) o_4@@2)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) o_4@@2 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@2 cdr) FullPerm)))) (=> (not (and (and (select g_1 (invRecv6 o_4@@2)) (< NoPerm FullPerm)) (qpRange6 o_4@@2))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) o_4@@2 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@2 cdr))))
 :qid |stdinbpl.1110:22|
 :skolemid |142|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) o_4@@2 cdr))
)))) (=> (and (and (and (and (forall ((o_4@@3 T@Ref) (f_5 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@34) o_4@@3 f_5) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@35) o_4@@3 f_5)))
 :qid |stdinbpl.1114:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@34) o_4@@3 f_5))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@35) o_4@@3 f_5))
)) (forall ((o_4@@4 T@Ref) (f_5@@0 T@Field_28338_28339) ) (!  (=> (not (= f_5@@0 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@4 f_5@@0) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) o_4@@4 f_5@@0)))
 :qid |stdinbpl.1114:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@4 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@35) o_4@@4 f_5@@0))
))) (forall ((o_4@@5 T@Ref) (f_5@@1 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@34) o_4@@5 f_5@@1) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@35) o_4@@5 f_5@@1)))
 :qid |stdinbpl.1114:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@34) o_4@@5 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@35) o_4@@5 f_5@@1))
))) (forall ((o_4@@6 T@Ref) (f_5@@2 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@34) o_4@@6 f_5@@2) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@35) o_4@@6 f_5@@2)))
 :qid |stdinbpl.1114:29|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@34) o_4@@6 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@35) o_4@@6 f_5@@2))
))) (state PostHeap@0 QPMask@35)) (and (and (=> (= (ControlFlow 0 301) 300) anon182_Else_correct) (=> (= (ControlFlow 0 301) 272) anon183_Then_correct)) (=> (= (ControlFlow 0 301) 274) anon183_Else_correct))))))))
(let ((anon181_Then_correct true))
(let ((anon180_Else_correct  (and (=> (= (ControlFlow 0 303) (- 0 304)) (forall ((n$5_1 T@Ref) (n$5_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1 n$5_1_1)) (select g_1 n$5_1)) (select g_1 n$5_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1 n$5_1_1)))
 :qid |stdinbpl.1049:15|
 :skolemid |132|
))) (=> (forall ((n$5_1@@0 T@Ref) (n$5_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_1@@0 n$5_1_1@@0)) (select g_1 n$5_1@@0)) (select g_1 n$5_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_1@@0 n$5_1_1@@0)))
 :qid |stdinbpl.1049:15|
 :skolemid |132|
)) (=> (and (and (forall ((n$5_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$5_1@@1) (< NoPerm FullPerm)) (and (qpRange5 n$5_1@@1) (= (invRecv5 n$5_1@@1) n$5_1@@1)))
 :qid |stdinbpl.1055:22|
 :skolemid |133|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$5_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) n$5_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$5_1@@1 car))
)) (forall ((o_4@@7 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv5 o_4@@7)) (< NoPerm FullPerm)) (qpRange5 o_4@@7)) (= (invRecv5 o_4@@7) o_4@@7))
 :qid |stdinbpl.1059:22|
 :skolemid |134|
 :pattern ( (invRecv5 o_4@@7))
))) (and (forall ((n$5_1@@2 T@Ref) ) (!  (=> (select g_1 n$5_1@@2) (not (= n$5_1@@2 null)))
 :qid |stdinbpl.1065:22|
 :skolemid |135|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$5_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) n$5_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| PostHeap@0) n$5_1@@2 car))
)) (forall ((o_4@@8 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv5 o_4@@8)) (< NoPerm FullPerm)) (qpRange5 o_4@@8)) (and (=> (< NoPerm FullPerm) (= (invRecv5 o_4@@8) o_4@@8)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@8 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@8 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv5 o_4@@8)) (< NoPerm FullPerm)) (qpRange5 o_4@@8))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@8 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@8 car))))
 :qid |stdinbpl.1071:22|
 :skolemid |136|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@8 car))
)))) (=> (and (and (and (and (forall ((o_4@@9 T@Ref) (f_5@@3 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@9 f_5@@3) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@34) o_4@@9 f_5@@3)))
 :qid |stdinbpl.1075:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@9 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@34) o_4@@9 f_5@@3))
)) (forall ((o_4@@10 T@Ref) (f_5@@4 T@Field_28338_28339) ) (!  (=> (not (= f_5@@4 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@10 f_5@@4) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@10 f_5@@4)))
 :qid |stdinbpl.1075:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@10 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@34) o_4@@10 f_5@@4))
))) (forall ((o_4@@11 T@Ref) (f_5@@5 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@11 f_5@@5) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@34) o_4@@11 f_5@@5)))
 :qid |stdinbpl.1075:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@11 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@34) o_4@@11 f_5@@5))
))) (forall ((o_4@@12 T@Ref) (f_5@@6 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@12 f_5@@6) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@34) o_4@@12 f_5@@6)))
 :qid |stdinbpl.1075:29|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@12 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@34) o_4@@12 f_5@@6))
))) (state PostHeap@0 QPMask@34)) (and (=> (= (ControlFlow 0 303) 270) anon181_Then_correct) (=> (= (ControlFlow 0 303) 301) anon181_Else_correct))))))))
(let ((anon180_Then_correct true))
(let ((anon179_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (|Set#Subset_18938| roots marked)) (=> (and (and (state PostHeap@0 ZeroMask) (|Set#Subset_18938| marked g_1)) (and (state PostHeap@0 ZeroMask) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 305) 269) anon180_Then_correct) (=> (= (ControlFlow 0 305) 303) anon180_Else_correct))))))
(let ((anon213_Then_correct  (and (=> (= (ControlFlow 0 225) (- 0 228)) (forall ((n_11_1 T@Ref) (n_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1 n_11_2)) (select g_1 n_11_1)) (select g_1 n_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1 n_11_2)))
 :qid |stdinbpl.1774:29|
 :skolemid |214|
 :pattern ( (neverTriggered21 n_11_1) (neverTriggered21 n_11_2))
))) (=> (forall ((n_11_1@@0 T@Ref) (n_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_11_1@@0 n_11_2@@0)) (select g_1 n_11_1@@0)) (select g_1 n_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_11_1@@0 n_11_2@@0)))
 :qid |stdinbpl.1774:29|
 :skolemid |214|
 :pattern ( (neverTriggered21 n_11_1@@0) (neverTriggered21 n_11_2@@0))
)) (and (=> (= (ControlFlow 0 225) (- 0 227)) (forall ((n_11_1@@1 T@Ref) ) (!  (=> (select g_1 n_11_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_11_1@@1 car) NoPerm)))
 :qid |stdinbpl.1781:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@20) n_11_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@1 car))
))) (=> (forall ((n_11_1@@2 T@Ref) ) (!  (=> (select g_1 n_11_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_11_1@@2 car) NoPerm)))
 :qid |stdinbpl.1781:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@20) n_11_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@2 car))
)) (=> (and (forall ((n_11_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_11_1@@3) (< NoPerm FullPerm)) (and (qpRange21 n_11_1@@3) (= (invRecv21 n_11_1@@3) n_11_1@@3)))
 :qid |stdinbpl.1787:34|
 :skolemid |216|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@20) n_11_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_11_1@@3 car))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (select g_1 (invRecv21 o_4@@13)) (and (< NoPerm FullPerm) (qpRange21 o_4@@13))) (= (invRecv21 o_4@@13) o_4@@13))
 :qid |stdinbpl.1791:34|
 :skolemid |217|
 :pattern ( (invRecv21 o_4@@13))
))) (and (=> (= (ControlFlow 0 225) (- 0 226)) (forall ((n$0_6 T@Ref) (n$0_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6 n$0_6_1)) (select g_1 n$0_6)) (select g_1 n$0_6_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6 n$0_6_1)))
 :qid |stdinbpl.1802:29|
 :skolemid |218|
 :pattern ( (neverTriggered22 n$0_6) (neverTriggered22 n$0_6_1))
))) (=> (forall ((n$0_6@@0 T@Ref) (n$0_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_6@@0 n$0_6_1@@0)) (select g_1 n$0_6@@0)) (select g_1 n$0_6_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_6@@0 n$0_6_1@@0)))
 :qid |stdinbpl.1802:29|
 :skolemid |218|
 :pattern ( (neverTriggered22 n$0_6@@0) (neverTriggered22 n$0_6_1@@0))
)) (=> (= (ControlFlow 0 225) (- 0 224)) (forall ((n$0_6@@1 T@Ref) ) (!  (=> (select g_1 n$0_6@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_6@@1 cdr) NoPerm)))
 :qid |stdinbpl.1809:29|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_6@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@21) n$0_6@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_6@@1 cdr))
))))))))))))
(let ((anon215_Then_correct  (and (=> (= (ControlFlow 0 216) (- 0 219)) (forall ((n_12_1 T@Ref) (n_12_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1 n_12_2)) (select g_1 n_12_1)) (select g_1 n_12_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1 n_12_2)))
 :qid |stdinbpl.1850:29|
 :skolemid |222|
 :pattern ( (neverTriggered23 n_12_1) (neverTriggered23 n_12_2))
))) (=> (forall ((n_12_1@@0 T@Ref) (n_12_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_12_1@@0 n_12_2@@0)) (select g_1 n_12_1@@0)) (select g_1 n_12_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_12_1@@0 n_12_2@@0)))
 :qid |stdinbpl.1850:29|
 :skolemid |222|
 :pattern ( (neverTriggered23 n_12_1@@0) (neverTriggered23 n_12_2@@0))
)) (and (=> (= (ControlFlow 0 216) (- 0 218)) (forall ((n_12_1@@1 T@Ref) ) (!  (=> (select g_1 n_12_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_12_1@@1 car) NoPerm)))
 :qid |stdinbpl.1857:29|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@22) n_12_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@1 car))
))) (=> (forall ((n_12_1@@2 T@Ref) ) (!  (=> (select g_1 n_12_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_12_1@@2 car) NoPerm)))
 :qid |stdinbpl.1857:29|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@22) n_12_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@2 car))
)) (=> (and (forall ((n_12_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_12_1@@3) (< NoPerm FullPerm)) (and (qpRange23 n_12_1@@3) (= (invRecv23 n_12_1@@3) n_12_1@@3)))
 :qid |stdinbpl.1863:34|
 :skolemid |224|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@22) n_12_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_12_1@@3 car))
)) (forall ((o_4@@14 T@Ref) ) (!  (=> (and (select g_1 (invRecv23 o_4@@14)) (and (< NoPerm FullPerm) (qpRange23 o_4@@14))) (= (invRecv23 o_4@@14) o_4@@14))
 :qid |stdinbpl.1867:34|
 :skolemid |225|
 :pattern ( (invRecv23 o_4@@14))
))) (and (=> (= (ControlFlow 0 216) (- 0 217)) (forall ((n$0_7 T@Ref) (n$0_7_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7 n$0_7_2)) (select g_1 n$0_7)) (select g_1 n$0_7_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_7 n$0_7_2)))
 :qid |stdinbpl.1878:29|
 :skolemid |226|
 :pattern ( (neverTriggered24 n$0_7) (neverTriggered24 n$0_7_2))
))) (=> (forall ((n$0_7@@0 T@Ref) (n$0_7_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_7@@0 n$0_7_2@@0)) (select g_1 n$0_7@@0)) (select g_1 n$0_7_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_7@@0 n$0_7_2@@0)))
 :qid |stdinbpl.1878:29|
 :skolemid |226|
 :pattern ( (neverTriggered24 n$0_7@@0) (neverTriggered24 n$0_7_2@@0))
)) (=> (= (ControlFlow 0 216) (- 0 215)) (forall ((n$0_7@@1 T@Ref) ) (!  (=> (select g_1 n$0_7@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_7@@1 cdr) NoPerm)))
 :qid |stdinbpl.1885:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_7@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@23) n$0_7@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_7@@1 cdr))
))))))))))))
(let ((anon211_Then_correct  (and (=> (= (ControlFlow 0 210) (- 0 213)) (forall ((n_10_1 T@Ref) (n_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1 n_10_2)) (select g_1 n_10_1)) (select g_1 n_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1 n_10_2)))
 :qid |stdinbpl.1706:27|
 :skolemid |206|
 :pattern ( (neverTriggered19 n_10_1) (neverTriggered19 n_10_2))
))) (=> (forall ((n_10_1@@0 T@Ref) (n_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_10_1@@0 n_10_2@@0)) (select g_1 n_10_1@@0)) (select g_1 n_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_10_1@@0 n_10_2@@0)))
 :qid |stdinbpl.1706:27|
 :skolemid |206|
 :pattern ( (neverTriggered19 n_10_1@@0) (neverTriggered19 n_10_2@@0))
)) (and (=> (= (ControlFlow 0 210) (- 0 212)) (forall ((n_10_1@@1 T@Ref) ) (!  (=> (select g_1 n_10_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_10_1@@1 car) NoPerm)))
 :qid |stdinbpl.1713:27|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@18) n_10_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@1 car))
))) (=> (forall ((n_10_1@@2 T@Ref) ) (!  (=> (select g_1 n_10_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_10_1@@2 car) NoPerm)))
 :qid |stdinbpl.1713:27|
 :skolemid |207|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@18) n_10_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@2 car))
)) (=> (and (forall ((n_10_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_10_1@@3) (< NoPerm FullPerm)) (and (qpRange19 n_10_1@@3) (= (invRecv19 n_10_1@@3) n_10_1@@3)))
 :qid |stdinbpl.1719:32|
 :skolemid |208|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@18) n_10_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_10_1@@3 car))
)) (forall ((o_4@@15 T@Ref) ) (!  (=> (and (select g_1 (invRecv19 o_4@@15)) (and (< NoPerm FullPerm) (qpRange19 o_4@@15))) (= (invRecv19 o_4@@15) o_4@@15))
 :qid |stdinbpl.1723:32|
 :skolemid |209|
 :pattern ( (invRecv19 o_4@@15))
))) (and (=> (= (ControlFlow 0 210) (- 0 211)) (forall ((n$0_5 T@Ref) (n$0_5_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5 n$0_5_2)) (select g_1 n$0_5)) (select g_1 n$0_5_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_5 n$0_5_2)))
 :qid |stdinbpl.1734:27|
 :skolemid |210|
 :pattern ( (neverTriggered20 n$0_5) (neverTriggered20 n$0_5_2))
))) (=> (forall ((n$0_5@@0 T@Ref) (n$0_5_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_5@@0 n$0_5_2@@0)) (select g_1 n$0_5@@0)) (select g_1 n$0_5_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_5@@0 n$0_5_2@@0)))
 :qid |stdinbpl.1734:27|
 :skolemid |210|
 :pattern ( (neverTriggered20 n$0_5@@0) (neverTriggered20 n$0_5_2@@0))
)) (=> (= (ControlFlow 0 210) (- 0 209)) (forall ((n$0_5@@1 T@Ref) ) (!  (=> (select g_1 n$0_5@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_5@@1 cdr) NoPerm)))
 :qid |stdinbpl.1741:27|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_5@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@19) n$0_5@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_5@@1 cdr))
))))))))))))
(let ((anon219_Then_correct  (and (=> (= (ControlFlow 0 196) (- 0 199)) (forall ((n_14 T@Ref) (n_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14 n_14_1)) (select g_1 n_14)) (select g_1 n_14_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14 n_14_1)))
 :qid |stdinbpl.1999:29|
 :skolemid |238|
 :pattern ( (neverTriggered27 n_14) (neverTriggered27 n_14_1))
))) (=> (forall ((n_14@@0 T@Ref) (n_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_14@@0 n_14_1@@0)) (select g_1 n_14@@0)) (select g_1 n_14_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_14@@0 n_14_1@@0)))
 :qid |stdinbpl.1999:29|
 :skolemid |238|
 :pattern ( (neverTriggered27 n_14@@0) (neverTriggered27 n_14_1@@0))
)) (and (=> (= (ControlFlow 0 196) (- 0 198)) (forall ((n_14@@1 T@Ref) ) (!  (=> (select g_1 n_14@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_14@@1 car) NoPerm)))
 :qid |stdinbpl.2006:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@26) n_14@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@1 car))
))) (=> (forall ((n_14@@2 T@Ref) ) (!  (=> (select g_1 n_14@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_14@@2 car) NoPerm)))
 :qid |stdinbpl.2006:29|
 :skolemid |239|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@26) n_14@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@2 car))
)) (=> (and (forall ((n_14@@3 T@Ref) ) (!  (=> (and (select g_1 n_14@@3) (< NoPerm FullPerm)) (and (qpRange27 n_14@@3) (= (invRecv27 n_14@@3) n_14@@3)))
 :qid |stdinbpl.2012:34|
 :skolemid |240|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@26) n_14@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_14@@3 car))
)) (forall ((o_4@@16 T@Ref) ) (!  (=> (and (select g_1 (invRecv27 o_4@@16)) (and (< NoPerm FullPerm) (qpRange27 o_4@@16))) (= (invRecv27 o_4@@16) o_4@@16))
 :qid |stdinbpl.2016:34|
 :skolemid |241|
 :pattern ( (invRecv27 o_4@@16))
))) (and (=> (= (ControlFlow 0 196) (- 0 197)) (forall ((n$0_9 T@Ref) (n$0_9_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9 n$0_9_2)) (select g_1 n$0_9)) (select g_1 n$0_9_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_9 n$0_9_2)))
 :qid |stdinbpl.2027:29|
 :skolemid |242|
 :pattern ( (neverTriggered28 n$0_9) (neverTriggered28 n$0_9_2))
))) (=> (forall ((n$0_9@@0 T@Ref) (n$0_9_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_9@@0 n$0_9_2@@0)) (select g_1 n$0_9@@0)) (select g_1 n$0_9_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_9@@0 n$0_9_2@@0)))
 :qid |stdinbpl.2027:29|
 :skolemid |242|
 :pattern ( (neverTriggered28 n$0_9@@0) (neverTriggered28 n$0_9_2@@0))
)) (=> (= (ControlFlow 0 196) (- 0 195)) (forall ((n$0_9@@1 T@Ref) ) (!  (=> (select g_1 n$0_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_9@@1 cdr) NoPerm)))
 :qid |stdinbpl.2034:29|
 :skolemid |243|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_9@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@27) n$0_9@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_9@@1 cdr))
))))))))))))
(let ((anon221_Then_correct  (and (=> (= (ControlFlow 0 187) (- 0 190)) (forall ((n_15 T@Ref) (n_15_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15 n_15_1)) (select g_1 n_15)) (select g_1 n_15_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15 n_15_1)))
 :qid |stdinbpl.2075:29|
 :skolemid |246|
 :pattern ( (neverTriggered29 n_15) (neverTriggered29 n_15_1))
))) (=> (forall ((n_15@@0 T@Ref) (n_15_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_15@@0 n_15_1@@0)) (select g_1 n_15@@0)) (select g_1 n_15_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_15@@0 n_15_1@@0)))
 :qid |stdinbpl.2075:29|
 :skolemid |246|
 :pattern ( (neverTriggered29 n_15@@0) (neverTriggered29 n_15_1@@0))
)) (and (=> (= (ControlFlow 0 187) (- 0 189)) (forall ((n_15@@1 T@Ref) ) (!  (=> (select g_1 n_15@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_15@@1 car) NoPerm)))
 :qid |stdinbpl.2082:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@28) n_15@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@1 car))
))) (=> (forall ((n_15@@2 T@Ref) ) (!  (=> (select g_1 n_15@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_15@@2 car) NoPerm)))
 :qid |stdinbpl.2082:29|
 :skolemid |247|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@28) n_15@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@2 car))
)) (=> (and (forall ((n_15@@3 T@Ref) ) (!  (=> (and (select g_1 n_15@@3) (< NoPerm FullPerm)) (and (qpRange29 n_15@@3) (= (invRecv29 n_15@@3) n_15@@3)))
 :qid |stdinbpl.2088:34|
 :skolemid |248|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@28) n_15@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_15@@3 car))
)) (forall ((o_4@@17 T@Ref) ) (!  (=> (and (select g_1 (invRecv29 o_4@@17)) (and (< NoPerm FullPerm) (qpRange29 o_4@@17))) (= (invRecv29 o_4@@17) o_4@@17))
 :qid |stdinbpl.2092:34|
 :skolemid |249|
 :pattern ( (invRecv29 o_4@@17))
))) (and (=> (= (ControlFlow 0 187) (- 0 188)) (forall ((n$0_10 T@Ref) (n$0_10_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_10 n$0_10_2)) (select g_1 n$0_10)) (select g_1 n$0_10_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_10 n$0_10_2)))
 :qid |stdinbpl.2103:29|
 :skolemid |250|
 :pattern ( (neverTriggered30 n$0_10) (neverTriggered30 n$0_10_2))
))) (=> (forall ((n$0_10@@0 T@Ref) (n$0_10_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_10@@0 n$0_10_2@@0)) (select g_1 n$0_10@@0)) (select g_1 n$0_10_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_10@@0 n$0_10_2@@0)))
 :qid |stdinbpl.2103:29|
 :skolemid |250|
 :pattern ( (neverTriggered30 n$0_10@@0) (neverTriggered30 n$0_10_2@@0))
)) (=> (= (ControlFlow 0 187) (- 0 186)) (forall ((n$0_10@@1 T@Ref) ) (!  (=> (select g_1 n$0_10@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_10@@1 cdr) NoPerm)))
 :qid |stdinbpl.2110:29|
 :skolemid |251|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_10@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@29) n$0_10@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_10@@1 cdr))
))))))))))))
(let ((anon217_Then_correct  (and (=> (= (ControlFlow 0 181) (- 0 184)) (forall ((n_13 T@Ref) (n_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13 n_13_1)) (select g_1 n_13)) (select g_1 n_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13 n_13_1)))
 :qid |stdinbpl.1931:27|
 :skolemid |230|
 :pattern ( (neverTriggered25 n_13) (neverTriggered25 n_13_1))
))) (=> (forall ((n_13@@0 T@Ref) (n_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_13@@0 n_13_1@@0)) (select g_1 n_13@@0)) (select g_1 n_13_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_13@@0 n_13_1@@0)))
 :qid |stdinbpl.1931:27|
 :skolemid |230|
 :pattern ( (neverTriggered25 n_13@@0) (neverTriggered25 n_13_1@@0))
)) (and (=> (= (ControlFlow 0 181) (- 0 183)) (forall ((n_13@@1 T@Ref) ) (!  (=> (select g_1 n_13@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_13@@1 car) NoPerm)))
 :qid |stdinbpl.1938:27|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@24) n_13@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@1 car))
))) (=> (forall ((n_13@@2 T@Ref) ) (!  (=> (select g_1 n_13@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_13@@2 car) NoPerm)))
 :qid |stdinbpl.1938:27|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@24) n_13@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@2 car))
)) (=> (and (forall ((n_13@@3 T@Ref) ) (!  (=> (and (select g_1 n_13@@3) (< NoPerm FullPerm)) (and (qpRange25 n_13@@3) (= (invRecv25 n_13@@3) n_13@@3)))
 :qid |stdinbpl.1944:32|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@24) n_13@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_13@@3 car))
)) (forall ((o_4@@18 T@Ref) ) (!  (=> (and (select g_1 (invRecv25 o_4@@18)) (and (< NoPerm FullPerm) (qpRange25 o_4@@18))) (= (invRecv25 o_4@@18) o_4@@18))
 :qid |stdinbpl.1948:32|
 :skolemid |233|
 :pattern ( (invRecv25 o_4@@18))
))) (and (=> (= (ControlFlow 0 181) (- 0 182)) (forall ((n$0_8 T@Ref) (n$0_8_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8 n$0_8_1)) (select g_1 n$0_8)) (select g_1 n$0_8_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_8 n$0_8_1)))
 :qid |stdinbpl.1959:27|
 :skolemid |234|
 :pattern ( (neverTriggered26 n$0_8) (neverTriggered26 n$0_8_1))
))) (=> (forall ((n$0_8@@0 T@Ref) (n$0_8_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_8@@0 n$0_8_1@@0)) (select g_1 n$0_8@@0)) (select g_1 n$0_8_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_8@@0 n$0_8_1@@0)))
 :qid |stdinbpl.1959:27|
 :skolemid |234|
 :pattern ( (neverTriggered26 n$0_8@@0) (neverTriggered26 n$0_8_1@@0))
)) (=> (= (ControlFlow 0 181) (- 0 180)) (forall ((n$0_8@@1 T@Ref) ) (!  (=> (select g_1 n$0_8@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_8@@1 cdr) NoPerm)))
 :qid |stdinbpl.1966:27|
 :skolemid |235|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_8@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@25) n$0_8@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_8@@1 cdr))
))))))))))))
(let ((anon224_Then_correct true))
(let ((anon236_Then_correct  (and (=> (= (ControlFlow 0 166) (- 0 169)) (forall ((n_27_1 T@Ref) (n_27_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1 n_27_2)) (select g_1 n_27_1)) (select g_1 n_27_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1 n_27_2)))
 :qid |stdinbpl.2261:37|
 :skolemid |268|
 :pattern ( (neverTriggered33 n_27_1) (neverTriggered33 n_27_2))
))) (=> (forall ((n_27_1@@0 T@Ref) (n_27_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_27_1@@0 n_27_2@@0)) (select g_1 n_27_1@@0)) (select g_1 n_27_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_27_1@@0 n_27_2@@0)))
 :qid |stdinbpl.2261:37|
 :skolemid |268|
 :pattern ( (neverTriggered33 n_27_1@@0) (neverTriggered33 n_27_2@@0))
)) (and (=> (= (ControlFlow 0 166) (- 0 168)) (forall ((n_27_1@@1 T@Ref) ) (!  (=> (select g_1 n_27_1@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_27_1@@1 car) NoPerm)))
 :qid |stdinbpl.2268:37|
 :skolemid |269|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@30) n_27_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@1 car))
))) (=> (forall ((n_27_1@@2 T@Ref) ) (!  (=> (select g_1 n_27_1@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_27_1@@2 car) NoPerm)))
 :qid |stdinbpl.2268:37|
 :skolemid |269|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@30) n_27_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@2 car))
)) (=> (and (forall ((n_27_1@@3 T@Ref) ) (!  (=> (and (select g_1 n_27_1@@3) (< NoPerm FullPerm)) (and (qpRange33 n_27_1@@3) (= (invRecv33 n_27_1@@3) n_27_1@@3)))
 :qid |stdinbpl.2274:42|
 :skolemid |270|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@30) n_27_1@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_27_1@@3 car))
)) (forall ((o_4@@19 T@Ref) ) (!  (=> (and (select g_1 (invRecv33 o_4@@19)) (and (< NoPerm FullPerm) (qpRange33 o_4@@19))) (= (invRecv33 o_4@@19) o_4@@19))
 :qid |stdinbpl.2278:42|
 :skolemid |271|
 :pattern ( (invRecv33 o_4@@19))
))) (and (=> (= (ControlFlow 0 166) (- 0 167)) (forall ((n$0_13_2 T@Ref) (n$0_13_3 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13_2 n$0_13_3)) (select g_1 n$0_13_2)) (select g_1 n$0_13_3)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13_2 n$0_13_3)))
 :qid |stdinbpl.2289:37|
 :skolemid |272|
 :pattern ( (neverTriggered34 n$0_13_2) (neverTriggered34 n$0_13_3))
))) (=> (forall ((n$0_13_2@@0 T@Ref) (n$0_13_3@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_13_2@@0 n$0_13_3@@0)) (select g_1 n$0_13_2@@0)) (select g_1 n$0_13_3@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_13_2@@0 n$0_13_3@@0)))
 :qid |stdinbpl.2289:37|
 :skolemid |272|
 :pattern ( (neverTriggered34 n$0_13_2@@0) (neverTriggered34 n$0_13_3@@0))
)) (=> (= (ControlFlow 0 166) (- 0 165)) (forall ((n$0_13_2@@1 T@Ref) ) (!  (=> (select g_1 n$0_13_2@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_13_2@@1 cdr) NoPerm)))
 :qid |stdinbpl.2296:37|
 :skolemid |273|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_13_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@31) n$0_13_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_13_2@@1 cdr))
))))))))))))
(let ((anon112_correct true))
(let ((anon235_Then_correct  (=> (and (select marked@1 n1_2) (and (select g_1 n2_1) (and (not (select marked@1 n2_1)) (not (select pending@0 n2_1))))) (and (=> (= (ControlFlow 0 170) 166) anon236_Then_correct) (=> (= (ControlFlow 0 170) 163) anon112_correct)))))
(let ((anon235_Else_correct  (=> (and (not (and (select marked@1 n1_2) (and (select g_1 n2_1) (and (not (select marked@1 n2_1)) (not (select pending@0 n2_1)))))) (= (ControlFlow 0 164) 163)) anon112_correct)))
(let ((anon232_Then_correct  (and (=> (= (ControlFlow 0 158) (- 0 161)) (forall ((n$0_11 T@Ref) (n$0_11_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_11 n$0_11_2)) (select g_1 n$0_11)) (select g_1 n$0_11_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_11 n$0_11_2)))
 :qid |stdinbpl.2185:35|
 :skolemid |259|
 :pattern ( (neverTriggered31 n$0_11) (neverTriggered31 n$0_11_2))
))) (=> (forall ((n$0_11@@0 T@Ref) (n$0_11_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_11@@0 n$0_11_2@@0)) (select g_1 n$0_11@@0)) (select g_1 n$0_11_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_11@@0 n$0_11_2@@0)))
 :qid |stdinbpl.2185:35|
 :skolemid |259|
 :pattern ( (neverTriggered31 n$0_11@@0) (neverTriggered31 n$0_11_2@@0))
)) (and (=> (= (ControlFlow 0 158) (- 0 160)) (forall ((n$0_11@@1 T@Ref) ) (!  (=> (select g_1 n$0_11@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_11@@1 car) NoPerm)))
 :qid |stdinbpl.2192:35|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@32) n$0_11@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@1 car))
))) (=> (forall ((n$0_11@@2 T@Ref) ) (!  (=> (select g_1 n$0_11@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_11@@2 car) NoPerm)))
 :qid |stdinbpl.2192:35|
 :skolemid |260|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@32) n$0_11@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@2 car))
)) (=> (and (forall ((n$0_11@@3 T@Ref) ) (!  (=> (and (select g_1 n$0_11@@3) (< NoPerm FullPerm)) (and (qpRange31 n$0_11@@3) (= (invRecv31 n$0_11@@3) n$0_11@@3)))
 :qid |stdinbpl.2198:40|
 :skolemid |261|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@32) n$0_11@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_11@@3 car))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (select g_1 (invRecv31 o_4@@20)) (and (< NoPerm FullPerm) (qpRange31 o_4@@20))) (= (invRecv31 o_4@@20) o_4@@20))
 :qid |stdinbpl.2202:40|
 :skolemid |262|
 :pattern ( (invRecv31 o_4@@20))
))) (and (=> (= (ControlFlow 0 158) (- 0 159)) (forall ((n$0_12 T@Ref) (n$0_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_12 n$0_12_1)) (select g_1 n$0_12)) (select g_1 n$0_12_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_12 n$0_12_1)))
 :qid |stdinbpl.2213:35|
 :skolemid |263|
 :pattern ( (neverTriggered32 n$0_12) (neverTriggered32 n$0_12_1))
))) (=> (forall ((n$0_12@@0 T@Ref) (n$0_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_12@@0 n$0_12_1@@0)) (select g_1 n$0_12@@0)) (select g_1 n$0_12_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_12@@0 n$0_12_1@@0)))
 :qid |stdinbpl.2213:35|
 :skolemid |263|
 :pattern ( (neverTriggered32 n$0_12@@0) (neverTriggered32 n$0_12_1@@0))
)) (=> (= (ControlFlow 0 158) (- 0 157)) (forall ((n$0_12@@1 T@Ref) ) (!  (=> (select g_1 n$0_12@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_12@@1 cdr) NoPerm)))
 :qid |stdinbpl.2220:35|
 :skolemid |264|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_12@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@33) n$0_12@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_12@@1 cdr))
))))))))))))
(let ((anon106_correct true))
(let ((anon231_Then_correct  (=> (or (select pending@0 n_46) (select marked@1 n_46)) (and (=> (= (ControlFlow 0 162) 158) anon232_Then_correct) (=> (= (ControlFlow 0 162) 155) anon106_correct)))))
(let ((anon231_Else_correct  (=> (and (not (or (select pending@0 n_46) (select marked@1 n_46))) (= (ControlFlow 0 156) 155)) anon106_correct)))
(let ((anon228_Then_correct true))
(let ((anon226_Then_correct true))
(let ((anon113_correct true))
(let ((anon233_Then_correct  (=> (forall ((n_26_1 T@Ref) ) (!  (=> (or (select pending@0 n_26_1) (select marked@1 n_26_1)) (exists_spath ($$ ExhaleHeap@0 g_1) roots n_26_1))
 :qid |stdinbpl.2244:29|
 :skolemid |267|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots n_26_1))
)) (and (and (=> (= (ControlFlow 0 171) 148) anon113_correct) (=> (= (ControlFlow 0 171) 170) anon235_Then_correct)) (=> (= (ControlFlow 0 171) 164) anon235_Else_correct)))))
(let ((anon233_Else_correct  (=> (and (not (forall ((n_26_1@@0 T@Ref) ) (!  (=> (or (select pending@0 n_26_1@@0) (select marked@1 n_26_1@@0)) (exists_spath ($$ ExhaleHeap@0 g_1) roots n_26_1@@0))
 :qid |stdinbpl.2244:29|
 :skolemid |267|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots n_26_1@@0))
))) (= (ControlFlow 0 154) 148)) anon113_correct)))
(let ((anon229_Then_correct  (=> (forall ((n_24 T@Ref) ) (!  (=> (select g_1 n_24) (not (and (select marked@1 n_24) (select pending@0 n_24))))
 :qid |stdinbpl.2168:27|
 :skolemid |258|
 :pattern ( (select pending@0 n_24))
)) (and (and (and (=> (= (ControlFlow 0 172) 171) anon233_Then_correct) (=> (= (ControlFlow 0 172) 154) anon233_Else_correct)) (=> (= (ControlFlow 0 172) 162) anon231_Then_correct)) (=> (= (ControlFlow 0 172) 156) anon231_Else_correct)))))
(let ((anon229_Else_correct  (=> (and (not (forall ((n_24@@0 T@Ref) ) (!  (=> (select g_1 n_24@@0) (not (and (select marked@1 n_24@@0) (select pending@0 n_24@@0))))
 :qid |stdinbpl.2168:27|
 :skolemid |258|
 :pattern ( (select pending@0 n_24@@0))
))) (= (ControlFlow 0 153) 148)) anon113_correct)))
(let ((anon227_Then_correct  (=> (forall ((n_22 T@Ref) ) (!  (=> (select roots n_22) (or (select marked@1 n_22) (select pending@0 n_22)))
 :qid |stdinbpl.2161:25|
 :skolemid |257|
 :pattern ( (select pending@0 n_22))
 :pattern ( (select marked@1 n_22))
)) (and (and (=> (= (ControlFlow 0 173) 152) anon228_Then_correct) (=> (= (ControlFlow 0 173) 172) anon229_Then_correct)) (=> (= (ControlFlow 0 173) 153) anon229_Else_correct)))))
(let ((anon227_Else_correct  (=> (and (not (forall ((n_22@@0 T@Ref) ) (!  (=> (select roots n_22@@0) (or (select marked@1 n_22@@0) (select pending@0 n_22@@0)))
 :qid |stdinbpl.2161:25|
 :skolemid |257|
 :pattern ( (select pending@0 n_22@@0))
 :pattern ( (select marked@1 n_22@@0))
))) (= (ControlFlow 0 151) 148)) anon113_correct)))
(let ((anon225_Then_correct  (=> (not (and (forall ((n_19 T@Ref) ) (! (= (select roots n_19) (select pending@0 n_19))
 :qid |stdinbpl.2151:25|
 :skolemid |255|
 :pattern ( (select pending@0 n_19))
 :pattern ( (select roots n_19))
)) (forall ((n_20 T@Ref) ) (!  (=> (select g_1 n_20) (not (select marked@1 n_20)))
 :qid |stdinbpl.2154:24|
 :skolemid |256|
 :pattern ( (select marked@1 n_20))
)))) (and (and (=> (= (ControlFlow 0 174) 150) anon226_Then_correct) (=> (= (ControlFlow 0 174) 173) anon227_Then_correct)) (=> (= (ControlFlow 0 174) 151) anon227_Else_correct)))))
(let ((anon225_Else_correct  (=> (and (and (forall ((n_19@@0 T@Ref) ) (! (= (select roots n_19@@0) (select pending@0 n_19@@0))
 :qid |stdinbpl.2151:25|
 :skolemid |255|
 :pattern ( (select pending@0 n_19@@0))
 :pattern ( (select roots n_19@@0))
)) (forall ((n_20@@0 T@Ref) ) (!  (=> (select g_1 n_20@@0) (not (select marked@1 n_20@@0)))
 :qid |stdinbpl.2154:24|
 :skolemid |256|
 :pattern ( (select marked@1 n_20@@0))
))) (= (ControlFlow 0 149) 148)) anon113_correct)))
(let ((anon223_Then_correct  (=> (forall ((n_17 T@Ref) ) (! (= (select roots n_17) (select pending@0 n_17))
 :qid |stdinbpl.2143:23|
 :skolemid |254|
 :pattern ( (select pending@0 n_17))
 :pattern ( (select roots n_17))
)) (and (and (=> (= (ControlFlow 0 177) 176) anon224_Then_correct) (=> (= (ControlFlow 0 177) 174) anon225_Then_correct)) (=> (= (ControlFlow 0 177) 149) anon225_Else_correct)))))
(let ((anon223_Else_correct  (=> (not (forall ((n_17@@0 T@Ref) ) (! (= (select roots n_17@@0) (select pending@0 n_17@@0))
 :qid |stdinbpl.2143:23|
 :skolemid |254|
 :pattern ( (select pending@0 n_17@@0))
 :pattern ( (select roots n_17@@0))
))) (and (=> (= (ControlFlow 0 175) 174) anon225_Then_correct) (=> (= (ControlFlow 0 175) 149) anon225_Else_correct)))))
(let ((anon222_Then_correct true))
(let ((anon90_correct  (=> (and (state ExhaleHeap@0 QPMask@15) (state ExhaleHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 178) 147) anon222_Then_correct) (=> (= (ControlFlow 0 178) 177) anon223_Then_correct)) (=> (= (ControlFlow 0 178) 175) anon223_Else_correct)))))
(let ((anon221_Else_correct  (and (=> (= (ControlFlow 0 191) (- 0 192)) (HasDirectPerm_18763_18764 QPMask@15 x@1 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 car) (=> (and (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)) (= (ControlFlow 0 191) 178)) anon90_correct)))))
(let ((anon220_Then_correct  (=> (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (state ExhaleHeap@0 QPMask@15)) (and (=> (= (ControlFlow 0 193) 187) anon221_Then_correct) (=> (= (ControlFlow 0 193) 191) anon221_Else_correct)))))
(let ((anon220_Else_correct  (=> (and (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)))) (= (ControlFlow 0 185) 178)) anon90_correct)))
(let ((anon219_Else_correct  (and (=> (= (ControlFlow 0 200) (- 0 202)) (HasDirectPerm_18763_18764 QPMask@15 x@1 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 car) (and (=> (= (ControlFlow 0 200) (- 0 201)) (HasDirectPerm_18763_18764 QPMask@15 x@1 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 car) (and (=> (= (ControlFlow 0 200) 193) anon220_Then_correct) (=> (= (ControlFlow 0 200) 185) anon220_Else_correct))))))))
(let ((anon218_Then_correct  (=> (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (and (=> (= (ControlFlow 0 203) 196) anon219_Then_correct) (=> (= (ControlFlow 0 203) 200) anon219_Else_correct)))))
(let ((anon218_Else_correct  (=> (not (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)))) (and (=> (= (ControlFlow 0 194) 193) anon220_Then_correct) (=> (= (ControlFlow 0 194) 185) anon220_Else_correct)))))
(let ((anon216_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null)) (and (=> (= (ControlFlow 0 204) (- 0 205)) (HasDirectPerm_18763_18764 QPMask@15 x@1 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 car) (and (and (=> (= (ControlFlow 0 204) 181) anon217_Then_correct) (=> (= (ControlFlow 0 204) 203) anon218_Then_correct)) (=> (= (ControlFlow 0 204) 194) anon218_Else_correct)))))))
(let ((anon216_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null) (= (ControlFlow 0 179) 178)) anon90_correct)))
(let ((anon79_correct  (and (=> (= (ControlFlow 0 206) (- 0 207)) (HasDirectPerm_18763_18764 QPMask@15 x@1 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 car) (and (=> (= (ControlFlow 0 206) 204) anon216_Then_correct) (=> (= (ControlFlow 0 206) 179) anon216_Else_correct))))))
(let ((anon215_Else_correct  (and (=> (= (ControlFlow 0 220) (- 0 221)) (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr) (=> (and (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)) (= (ControlFlow 0 220) 206)) anon79_correct)))))
(let ((anon214_Then_correct  (=> (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (state ExhaleHeap@0 QPMask@15)) (and (=> (= (ControlFlow 0 222) 216) anon215_Then_correct) (=> (= (ControlFlow 0 222) 220) anon215_Else_correct)))))
(let ((anon214_Else_correct  (=> (and (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (= (ControlFlow 0 214) 206)) anon79_correct)))
(let ((anon213_Else_correct  (and (=> (= (ControlFlow 0 229) (- 0 231)) (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr) (and (=> (= (ControlFlow 0 229) (- 0 230)) (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr) (and (=> (= (ControlFlow 0 229) 222) anon214_Then_correct) (=> (= (ControlFlow 0 229) 214) anon214_Else_correct))))))))
(let ((anon212_Then_correct  (=> (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (and (=> (= (ControlFlow 0 232) 225) anon213_Then_correct) (=> (= (ControlFlow 0 232) 229) anon213_Else_correct)))))
(let ((anon212_Else_correct  (=> (not (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (and (=> (= (ControlFlow 0 223) 222) anon214_Then_correct) (=> (= (ControlFlow 0 223) 214) anon214_Else_correct)))))
(let ((anon210_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null)) (and (=> (= (ControlFlow 0 233) (- 0 234)) (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr) (and (and (=> (= (ControlFlow 0 233) 210) anon211_Then_correct) (=> (= (ControlFlow 0 233) 232) anon212_Then_correct)) (=> (= (ControlFlow 0 233) 223) anon212_Else_correct)))))))
(let ((anon210_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null) (= (ControlFlow 0 208) 206)) anon79_correct)))
(let ((anon209_Else_correct  (=> (exists_spath ($$ ExhaleHeap@0 g_1) roots x@1) (and (=> (= (ControlFlow 0 235) (- 0 236)) (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 x@1 cdr) (and (=> (= (ControlFlow 0 235) 233) anon210_Then_correct) (=> (= (ControlFlow 0 235) 208) anon210_Else_correct)))))))
(let ((anon209_Then_correct  (and (=> (= (ControlFlow 0 143) (- 0 146)) (forall ((n_9 T@Ref) (n_9_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9 n_9_1)) (select g_1 n_9)) (select g_1 n_9_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9 n_9_1)))
 :qid |stdinbpl.1629:25|
 :skolemid |198|
 :pattern ( (neverTriggered17 n_9) (neverTriggered17 n_9_1))
))) (=> (forall ((n_9@@0 T@Ref) (n_9_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_9@@0 n_9_1@@0)) (select g_1 n_9@@0)) (select g_1 n_9_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_9@@0 n_9_1@@0)))
 :qid |stdinbpl.1629:25|
 :skolemid |198|
 :pattern ( (neverTriggered17 n_9@@0) (neverTriggered17 n_9_1@@0))
)) (and (=> (= (ControlFlow 0 143) (- 0 145)) (forall ((n_9@@1 T@Ref) ) (!  (=> (select g_1 n_9@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_9@@1 car) NoPerm)))
 :qid |stdinbpl.1636:25|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@16) n_9@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@1 car))
))) (=> (forall ((n_9@@2 T@Ref) ) (!  (=> (select g_1 n_9@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n_9@@2 car) NoPerm)))
 :qid |stdinbpl.1636:25|
 :skolemid |199|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@16) n_9@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@2 car))
)) (=> (and (forall ((n_9@@3 T@Ref) ) (!  (=> (and (select g_1 n_9@@3) (< NoPerm FullPerm)) (and (qpRange17 n_9@@3) (= (invRecv17 n_9@@3) n_9@@3)))
 :qid |stdinbpl.1642:30|
 :skolemid |200|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@16) n_9@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_9@@3 car))
)) (forall ((o_4@@21 T@Ref) ) (!  (=> (and (select g_1 (invRecv17 o_4@@21)) (and (< NoPerm FullPerm) (qpRange17 o_4@@21))) (= (invRecv17 o_4@@21) o_4@@21))
 :qid |stdinbpl.1646:30|
 :skolemid |201|
 :pattern ( (invRecv17 o_4@@21))
))) (and (=> (= (ControlFlow 0 143) (- 0 144)) (forall ((n$0_4 T@Ref) (n$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4 n$0_4_1)) (select g_1 n$0_4)) (select g_1 n$0_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_4 n$0_4_1)))
 :qid |stdinbpl.1657:25|
 :skolemid |202|
 :pattern ( (neverTriggered18 n$0_4) (neverTriggered18 n$0_4_1))
))) (=> (forall ((n$0_4@@0 T@Ref) (n$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_4@@0 n$0_4_1@@0)) (select g_1 n$0_4@@0)) (select g_1 n$0_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_4@@0 n$0_4_1@@0)))
 :qid |stdinbpl.1657:25|
 :skolemid |202|
 :pattern ( (neverTriggered18 n$0_4@@0) (neverTriggered18 n$0_4_1@@0))
)) (=> (= (ControlFlow 0 143) (- 0 142)) (forall ((n$0_4@@1 T@Ref) ) (!  (=> (select g_1 n$0_4@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$0_4@@1 cdr) NoPerm)))
 :qid |stdinbpl.1664:25|
 :skolemid |203|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_4@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@17) n$0_4@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_4@@1 cdr))
))))))))))))
(let ((anon207_Else_correct  (=> (forall ((n$8_3 T@Ref) ) (!  (=> (select g_1 n$8_3) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_3 cdr)))
 :qid |stdinbpl.1604:24|
 :skolemid |197|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_3 cdr)))
 :pattern ( (select g_1 n$8_3) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_3 cdr))
)) (=> (and (and (and (state ExhaleHeap@0 QPMask@15) (select g_1 x@1)) (and (state ExhaleHeap@0 QPMask@15) (|Set#Subset_18938| pending@0 g_1))) (and (and (state ExhaleHeap@0 QPMask@15) (|Set#Subset_18938| marked@1 g_1)) (and (state ExhaleHeap@0 QPMask@15) (state ExhaleHeap@0 QPMask@15)))) (and (=> (= (ControlFlow 0 237) 143) anon209_Then_correct) (=> (= (ControlFlow 0 237) 235) anon209_Else_correct))))))
(let ((anon65_correct true))
(let ((anon208_Else_correct  (=> (and (not (select g_1 n$8_2)) (= (ControlFlow 0 141) 138)) anon65_correct)))
(let ((anon208_Then_correct  (=> (select g_1 n$8_2) (and (=> (= (ControlFlow 0 139) (- 0 140)) (HasDirectPerm_18763_18764 QPMask@15 n$8_2 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@15 n$8_2 cdr) (=> (= (ControlFlow 0 139) 138) anon65_correct))))))
(let ((anon205_Else_correct  (=> (forall ((n$7_3_2 T@Ref) ) (!  (=> (select g_1 n$7_3_2) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_3_2 car)))
 :qid |stdinbpl.1591:24|
 :skolemid |196|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_3_2 car)))
 :pattern ( (select g_1 n$7_3_2) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_3_2 car))
)) (and (and (=> (= (ControlFlow 0 238) 237) anon207_Else_correct) (=> (= (ControlFlow 0 238) 139) anon208_Then_correct)) (=> (= (ControlFlow 0 238) 141) anon208_Else_correct)))))
(let ((anon61_correct true))
(let ((anon206_Else_correct  (=> (and (not (select g_1 n$7_5)) (= (ControlFlow 0 137) 134)) anon61_correct)))
(let ((anon206_Then_correct  (=> (select g_1 n$7_5) (and (=> (= (ControlFlow 0 135) (- 0 136)) (HasDirectPerm_18763_18764 QPMask@15 n$7_5 car)) (=> (HasDirectPerm_18763_18764 QPMask@15 n$7_5 car) (=> (= (ControlFlow 0 135) 134) anon61_correct))))))
(let ((anon204_Else_correct  (and (=> (= (ControlFlow 0 239) (- 0 240)) (forall ((n$10_2 T@Ref) (n$10_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2 n$10_2_1)) (select g_1 n$10_2)) (select g_1 n$10_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2 n$10_2_1)))
 :qid |stdinbpl.1550:19|
 :skolemid |190|
))) (=> (forall ((n$10_2@@0 T@Ref) (n$10_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_2@@0 n$10_2_1@@0)) (select g_1 n$10_2@@0)) (select g_1 n$10_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_2@@0 n$10_2_1@@0)))
 :qid |stdinbpl.1550:19|
 :skolemid |190|
)) (=> (and (and (forall ((n$10_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$10_2@@1) (< NoPerm FullPerm)) (and (qpRange16 n$10_2@@1) (= (invRecv16 n$10_2@@1) n$10_2@@1)))
 :qid |stdinbpl.1556:26|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$10_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_2@@1 cdr))
)) (forall ((o_4@@22 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv16 o_4@@22)) (< NoPerm FullPerm)) (qpRange16 o_4@@22)) (= (invRecv16 o_4@@22) o_4@@22))
 :qid |stdinbpl.1560:26|
 :skolemid |192|
 :pattern ( (invRecv16 o_4@@22))
))) (and (forall ((n$10_2@@2 T@Ref) ) (!  (=> (select g_1 n$10_2@@2) (not (= n$10_2@@2 null)))
 :qid |stdinbpl.1566:26|
 :skolemid |193|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_2@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) n$10_2@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_2@@2 cdr))
)) (forall ((o_4@@23 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv16 o_4@@23)) (< NoPerm FullPerm)) (qpRange16 o_4@@23)) (and (=> (< NoPerm FullPerm) (= (invRecv16 o_4@@23) o_4@@23)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) o_4@@23 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@23 cdr) FullPerm)))) (=> (not (and (and (select g_1 (invRecv16 o_4@@23)) (< NoPerm FullPerm)) (qpRange16 o_4@@23))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) o_4@@23 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@23 cdr))))
 :qid |stdinbpl.1572:26|
 :skolemid |194|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) o_4@@23 cdr))
)))) (=> (and (and (and (and (forall ((o_4@@24 T@Ref) (f_5@@7 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@14) o_4@@24 f_5@@7) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@15) o_4@@24 f_5@@7)))
 :qid |stdinbpl.1576:33|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@14) o_4@@24 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@15) o_4@@24 f_5@@7))
)) (forall ((o_4@@25 T@Ref) (f_5@@8 T@Field_28338_28339) ) (!  (=> (not (= f_5@@8 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@25 f_5@@8) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) o_4@@25 f_5@@8)))
 :qid |stdinbpl.1576:33|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@25 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@15) o_4@@25 f_5@@8))
))) (forall ((o_4@@26 T@Ref) (f_5@@9 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@14) o_4@@26 f_5@@9) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@15) o_4@@26 f_5@@9)))
 :qid |stdinbpl.1576:33|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@14) o_4@@26 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@15) o_4@@26 f_5@@9))
))) (forall ((o_4@@27 T@Ref) (f_5@@10 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@14) o_4@@27 f_5@@10) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@15) o_4@@27 f_5@@10)))
 :qid |stdinbpl.1576:33|
 :skolemid |195|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@14) o_4@@27 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@15) o_4@@27 f_5@@10))
))) (state ExhaleHeap@0 QPMask@15)) (and (and (=> (= (ControlFlow 0 239) 238) anon205_Else_correct) (=> (= (ControlFlow 0 239) 135) anon206_Then_correct)) (=> (= (ControlFlow 0 239) 137) anon206_Else_correct))))))))
(let ((anon204_Then_correct true))
(let ((anon203_Else_correct  (and (=> (= (ControlFlow 0 241) (- 0 242)) (forall ((n$9_2 T@Ref) (n$9_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2 n$9_2_1)) (select g_1 n$9_2)) (select g_1 n$9_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2 n$9_2_1)))
 :qid |stdinbpl.1511:19|
 :skolemid |184|
))) (=> (forall ((n$9_2@@0 T@Ref) (n$9_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_2@@0 n$9_2_1@@0)) (select g_1 n$9_2@@0)) (select g_1 n$9_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_2@@0 n$9_2_1@@0)))
 :qid |stdinbpl.1511:19|
 :skolemid |184|
)) (=> (and (and (forall ((n$9_2@@1 T@Ref) ) (!  (=> (and (select g_1 n$9_2@@1) (< NoPerm FullPerm)) (and (qpRange15 n$9_2@@1) (= (invRecv15 n$9_2@@1) n$9_2@@1)))
 :qid |stdinbpl.1517:26|
 :skolemid |185|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) n$9_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_2@@1 car))
)) (forall ((o_4@@28 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv15 o_4@@28)) (< NoPerm FullPerm)) (qpRange15 o_4@@28)) (= (invRecv15 o_4@@28) o_4@@28))
 :qid |stdinbpl.1521:26|
 :skolemid |186|
 :pattern ( (invRecv15 o_4@@28))
))) (and (forall ((n$9_2@@2 T@Ref) ) (!  (=> (select g_1 n$9_2@@2) (not (= n$9_2@@2 null)))
 :qid |stdinbpl.1527:26|
 :skolemid |187|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) n$9_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_2@@2 car))
)) (forall ((o_4@@29 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv15 o_4@@29)) (< NoPerm FullPerm)) (qpRange15 o_4@@29)) (and (=> (< NoPerm FullPerm) (= (invRecv15 o_4@@29) o_4@@29)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@29 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@29 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv15 o_4@@29)) (< NoPerm FullPerm)) (qpRange15 o_4@@29))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@29 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@29 car))))
 :qid |stdinbpl.1533:26|
 :skolemid |188|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@29 car))
)))) (=> (and (and (and (and (forall ((o_4@@30 T@Ref) (f_5@@11 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@30 f_5@@11) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@14) o_4@@30 f_5@@11)))
 :qid |stdinbpl.1537:33|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@30 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@14) o_4@@30 f_5@@11))
)) (forall ((o_4@@31 T@Ref) (f_5@@12 T@Field_28338_28339) ) (!  (=> (not (= f_5@@12 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@31 f_5@@12) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@31 f_5@@12)))
 :qid |stdinbpl.1537:33|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@31 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@14) o_4@@31 f_5@@12))
))) (forall ((o_4@@32 T@Ref) (f_5@@13 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@32 f_5@@13) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@14) o_4@@32 f_5@@13)))
 :qid |stdinbpl.1537:33|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@32 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@14) o_4@@32 f_5@@13))
))) (forall ((o_4@@33 T@Ref) (f_5@@14 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@33 f_5@@14) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@14) o_4@@33 f_5@@14)))
 :qid |stdinbpl.1537:33|
 :skolemid |189|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@33 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@14) o_4@@33 f_5@@14))
))) (state ExhaleHeap@0 QPMask@14)) (and (=> (= (ControlFlow 0 241) 133) anon204_Then_correct) (=> (= (ControlFlow 0 241) 239) anon204_Else_correct))))))))
(let ((anon203_Then_correct true))
(let ((anon202_Then_correct  (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 243) 132) anon203_Then_correct) (=> (= (ControlFlow 0 243) 241) anon203_Else_correct)))))
(let ((anon145_correct  (=> (= (ControlFlow 0 81) (- 0 80)) (or (and (forall ((n_38_1 T@Ref) ) (! (= (select roots n_38_1) (select pending@5 n_38_1))
 :qid |stdinbpl.2670:20|
 :skolemid |316|
 :pattern ( (select pending@5 n_38_1))
 :pattern ( (select roots n_38_1))
)) (forall ((n_39_1 T@Ref) ) (!  (=> (select g_1 n_39_1) (not (select marked@2 n_39_1)))
 :qid |stdinbpl.2673:22|
 :skolemid |317|
 :pattern ( (select marked@2 n_39_1))
))) (and (forall ((n_40_1 T@Ref) ) (!  (=> (select roots n_40_1) (or (select marked@2 n_40_1) (select pending@5 n_40_1)))
 :qid |stdinbpl.2676:24|
 :skolemid |318|
 :pattern ( (select pending@5 n_40_1))
 :pattern ( (select marked@2 n_40_1))
)) (and (forall ((n_41_1 T@Ref) ) (!  (=> (select g_1 n_41_1) (not (and (select marked@2 n_41_1) (select pending@5 n_41_1))))
 :qid |stdinbpl.2679:23|
 :skolemid |319|
 :pattern ( (select pending@5 n_41_1))
)) (and (forall ((n_42_1 T@Ref) ) (!  (=> (or (select pending@5 n_42_1) (select marked@2 n_42_1)) (exists_spath ($$ ExhaleHeap@0 g_1) roots n_42_1))
 :qid |stdinbpl.2682:23|
 :skolemid |320|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots n_42_1))
)) (forall ((n1_4 T@Ref) (n2_4 T@Ref) ) (!  (=> (and (select marked@2 n1_4) (and (select g_1 n2_4) (and (not (select marked@2 n2_4)) (not (select pending@5 n2_4))))) (not (select ($$ ExhaleHeap@0 g_1) (create_edge n1_4 n2_4))))
 :qid |stdinbpl.2685:22|
 :skolemid |321|
 :pattern ( (select marked@2 n1_4) (select marked@2 n2_4))
)))))))))
(let ((anon254_Else_correct  (=> (and (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car)))) (= (ControlFlow 0 85) 81)) anon145_correct)))
(let ((anon254_Then_correct  (=> (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car))) (and (=> (= (ControlFlow 0 83) (- 0 84)) (exists_path ($$ ExhaleHeap@0 g_1) x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car))) (=> (exists_path ($$ ExhaleHeap@0 g_1) x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car)) (=> (= (ControlFlow 0 83) 81) anon145_correct))))))
(let ((anon253_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null)) (and (=> (= (ControlFlow 0 86) 83) anon254_Then_correct) (=> (= (ControlFlow 0 86) 85) anon254_Else_correct)))))
(let ((anon253_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null) (= (ControlFlow 0 82) 81)) anon145_correct)))
(let ((anon252_Else_correct  (=> (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr)))) (and (=> (= (ControlFlow 0 90) 86) anon253_Then_correct) (=> (= (ControlFlow 0 90) 82) anon253_Else_correct)))))
(let ((anon252_Then_correct  (=> (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr))) (and (=> (= (ControlFlow 0 88) (- 0 89)) (exists_path ($$ ExhaleHeap@0 g_1) x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr))) (=> (exists_path ($$ ExhaleHeap@0 g_1) x@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr)) (and (=> (= (ControlFlow 0 88) 86) anon253_Then_correct) (=> (= (ControlFlow 0 88) 82) anon253_Else_correct)))))))
(let ((anon251_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null)) (and (=> (= (ControlFlow 0 91) 88) anon252_Then_correct) (=> (= (ControlFlow 0 91) 90) anon252_Else_correct)))))
(let ((anon251_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null) (and (=> (= (ControlFlow 0 87) 86) anon253_Then_correct) (=> (= (ControlFlow 0 87) 82) anon253_Else_correct)))))
(let ((anon249_Else_correct  (=> (forall ((n$8_6_1 T@Ref) ) (!  (=> (select g_1 n$8_6_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_6_1 cdr)))
 :qid |stdinbpl.2645:24|
 :skolemid |315|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_6_1 cdr)))
 :pattern ( (select g_1 n$8_6_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_6_1 cdr))
)) (and (=> (= (ControlFlow 0 92) (- 0 96)) (select g_1 x@2)) (=> (select g_1 x@2) (and (=> (= (ControlFlow 0 92) (- 0 95)) (|Set#Subset_18938| pending@5 g_1)) (=> (|Set#Subset_18938| pending@5 g_1) (and (=> (= (ControlFlow 0 92) (- 0 94)) (|Set#Subset_18938| marked@2 g_1)) (=> (|Set#Subset_18938| marked@2 g_1) (and (=> (= (ControlFlow 0 92) (- 0 93)) (exists_spath ($$ ExhaleHeap@0 g_1) roots x@2)) (=> (exists_spath ($$ ExhaleHeap@0 g_1) roots x@2) (and (=> (= (ControlFlow 0 92) 91) anon251_Then_correct) (=> (= (ControlFlow 0 92) 87) anon251_Else_correct)))))))))))))
(let ((anon138_correct true))
(let ((anon250_Else_correct  (=> (and (not (select g_1 n$8_5)) (= (ControlFlow 0 79) 76)) anon138_correct)))
(let ((anon250_Then_correct  (=> (select g_1 n$8_5) (and (=> (= (ControlFlow 0 77) (- 0 78)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_5 cdr))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_5 cdr)) (=> (= (ControlFlow 0 77) 76) anon138_correct))))))
(let ((anon247_Else_correct  (=> (forall ((n$7_6_1 T@Ref) ) (!  (=> (select g_1 n$7_6_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_6_1 car)))
 :qid |stdinbpl.2634:24|
 :skolemid |314|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_6_1 car)))
 :pattern ( (select g_1 n$7_6_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_6_1 car))
)) (and (and (=> (= (ControlFlow 0 97) 92) anon249_Else_correct) (=> (= (ControlFlow 0 97) 77) anon250_Then_correct)) (=> (= (ControlFlow 0 97) 79) anon250_Else_correct)))))
(let ((anon134_correct true))
(let ((anon248_Else_correct  (=> (and (not (select g_1 n$7_5_1)) (= (ControlFlow 0 75) 72)) anon134_correct)))
(let ((anon248_Then_correct  (=> (select g_1 n$7_5_1) (and (=> (= (ControlFlow 0 73) (- 0 74)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_5_1 car))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_5_1 car)) (=> (= (ControlFlow 0 73) 72) anon134_correct))))))
(let ((anon131_correct  (=> (state ExhaleHeap@0 QPMask@5) (and (=> (= (ControlFlow 0 98) (- 0 103)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 98) (- 0 102)) (forall ((n$9_4 T@Ref) (n$9_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_4 n$9_4_1)) (select g_1 n$9_4)) (select g_1 n$9_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_4 n$9_4_1)))
 :qid |stdinbpl.2552:21|
 :skolemid |302|
 :pattern ( (neverTriggered37 n$9_4) (neverTriggered37 n$9_4_1))
))) (=> (forall ((n$9_4@@0 T@Ref) (n$9_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_4@@0 n$9_4_1@@0)) (select g_1 n$9_4@@0)) (select g_1 n$9_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_4@@0 n$9_4_1@@0)))
 :qid |stdinbpl.2552:21|
 :skolemid |302|
 :pattern ( (neverTriggered37 n$9_4@@0) (neverTriggered37 n$9_4_1@@0))
)) (and (=> (= (ControlFlow 0 98) (- 0 101)) (forall ((n$9_4@@1 T@Ref) ) (!  (=> (select g_1 n$9_4@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) n$9_4@@1 car) FullPerm))
 :qid |stdinbpl.2559:21|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) n$9_4@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@1 car))
))) (=> (forall ((n$9_4@@2 T@Ref) ) (!  (=> (select g_1 n$9_4@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) n$9_4@@2 car) FullPerm))
 :qid |stdinbpl.2559:21|
 :skolemid |303|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) n$9_4@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@2 car))
)) (=> (forall ((n$9_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$9_4@@3) (< NoPerm FullPerm)) (and (qpRange37 n$9_4@@3) (= (invRecv37 n$9_4@@3) n$9_4@@3)))
 :qid |stdinbpl.2565:26|
 :skolemid |304|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) n$9_4@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_4@@3 car))
)) (=> (and (forall ((o_4@@34 T@Ref) ) (!  (=> (and (select g_1 (invRecv37 o_4@@34)) (and (< NoPerm FullPerm) (qpRange37 o_4@@34))) (= (invRecv37 o_4@@34) o_4@@34))
 :qid |stdinbpl.2569:26|
 :skolemid |305|
 :pattern ( (invRecv37 o_4@@34))
)) (forall ((o_4@@35 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv37 o_4@@35)) (and (< NoPerm FullPerm) (qpRange37 o_4@@35))) (and (= (invRecv37 o_4@@35) o_4@@35) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@35 car) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@35 car) FullPerm)))) (=> (not (and (select g_1 (invRecv37 o_4@@35)) (and (< NoPerm FullPerm) (qpRange37 o_4@@35)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@35 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@35 car))))
 :qid |stdinbpl.2575:26|
 :skolemid |306|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@35 car))
))) (=> (and (and (and (forall ((o_4@@36 T@Ref) (f_5@@15 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@5) o_4@@36 f_5@@15) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@12) o_4@@36 f_5@@15)))
 :qid |stdinbpl.2581:33|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@12) o_4@@36 f_5@@15))
)) (forall ((o_4@@37 T@Ref) (f_5@@16 T@Field_28338_28339) ) (!  (=> (not (= f_5@@16 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@37 f_5@@16) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@37 f_5@@16)))
 :qid |stdinbpl.2581:33|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@37 f_5@@16))
))) (forall ((o_4@@38 T@Ref) (f_5@@17 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@5) o_4@@38 f_5@@17) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@12) o_4@@38 f_5@@17)))
 :qid |stdinbpl.2581:33|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@12) o_4@@38 f_5@@17))
))) (forall ((o_4@@39 T@Ref) (f_5@@18 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@5) o_4@@39 f_5@@18) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@12) o_4@@39 f_5@@18)))
 :qid |stdinbpl.2581:33|
 :skolemid |307|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@12) o_4@@39 f_5@@18))
))) (and (=> (= (ControlFlow 0 98) (- 0 100)) (forall ((n$10_4 T@Ref) (n$10_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_4 n$10_4_1)) (select g_1 n$10_4)) (select g_1 n$10_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_4 n$10_4_1)))
 :qid |stdinbpl.2593:21|
 :skolemid |308|
 :pattern ( (neverTriggered38 n$10_4) (neverTriggered38 n$10_4_1))
))) (=> (forall ((n$10_4@@0 T@Ref) (n$10_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_4@@0 n$10_4_1@@0)) (select g_1 n$10_4@@0)) (select g_1 n$10_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_4@@0 n$10_4_1@@0)))
 :qid |stdinbpl.2593:21|
 :skolemid |308|
 :pattern ( (neverTriggered38 n$10_4@@0) (neverTriggered38 n$10_4_1@@0))
)) (and (=> (= (ControlFlow 0 98) (- 0 99)) (forall ((n$10_4@@1 T@Ref) ) (!  (=> (select g_1 n$10_4@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) n$10_4@@1 cdr) FullPerm))
 :qid |stdinbpl.2600:21|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) n$10_4@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@1 cdr))
))) (=> (forall ((n$10_4@@2 T@Ref) ) (!  (=> (select g_1 n$10_4@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) n$10_4@@2 cdr) FullPerm))
 :qid |stdinbpl.2600:21|
 :skolemid |309|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) n$10_4@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@2 cdr))
)) (=> (forall ((n$10_4@@3 T@Ref) ) (!  (=> (and (select g_1 n$10_4@@3) (< NoPerm FullPerm)) (and (qpRange38 n$10_4@@3) (= (invRecv38 n$10_4@@3) n$10_4@@3)))
 :qid |stdinbpl.2606:26|
 :skolemid |310|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) n$10_4@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_4@@3 cdr))
)) (=> (and (forall ((o_4@@40 T@Ref) ) (!  (=> (and (select g_1 (invRecv38 o_4@@40)) (and (< NoPerm FullPerm) (qpRange38 o_4@@40))) (= (invRecv38 o_4@@40) o_4@@40))
 :qid |stdinbpl.2610:26|
 :skolemid |311|
 :pattern ( (invRecv38 o_4@@40))
)) (forall ((o_4@@41 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv38 o_4@@41)) (and (< NoPerm FullPerm) (qpRange38 o_4@@41))) (and (= (invRecv38 o_4@@41) o_4@@41) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) o_4@@41 cdr) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@41 cdr) FullPerm)))) (=> (not (and (select g_1 (invRecv38 o_4@@41)) (and (< NoPerm FullPerm) (qpRange38 o_4@@41)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) o_4@@41 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@41 cdr))))
 :qid |stdinbpl.2616:26|
 :skolemid |312|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) o_4@@41 cdr))
))) (=> (and (and (and (forall ((o_4@@42 T@Ref) (f_5@@19 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@12) o_4@@42 f_5@@19) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@13) o_4@@42 f_5@@19)))
 :qid |stdinbpl.2622:33|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@13) o_4@@42 f_5@@19))
)) (forall ((o_4@@43 T@Ref) (f_5@@20 T@Field_28338_28339) ) (!  (=> (not (= f_5@@20 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@12) o_4@@43 f_5@@20) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) o_4@@43 f_5@@20)))
 :qid |stdinbpl.2622:33|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@13) o_4@@43 f_5@@20))
))) (forall ((o_4@@44 T@Ref) (f_5@@21 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@12) o_4@@44 f_5@@21) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@13) o_4@@44 f_5@@21)))
 :qid |stdinbpl.2622:33|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@13) o_4@@44 f_5@@21))
))) (forall ((o_4@@45 T@Ref) (f_5@@22 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@12) o_4@@45 f_5@@22) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@13) o_4@@45 f_5@@22)))
 :qid |stdinbpl.2622:33|
 :skolemid |313|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@13) o_4@@45 f_5@@22))
))) (and (and (=> (= (ControlFlow 0 98) 97) anon247_Else_correct) (=> (= (ControlFlow 0 98) 73) anon248_Then_correct)) (=> (= (ControlFlow 0 98) 75) anon248_Else_correct)))))))))))))))))))))
(let ((anon246_Else_correct  (=> (not (and (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null)) (not (select marked@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr))))) (=> (and (= pending@5 pending@3) (= (ControlFlow 0 106) 98)) anon131_correct))))
(let ((anon246_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null)) (not (select marked@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr)))) (and (=> (= (ControlFlow 0 104) (- 0 105)) (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr) (=> (and (and (= pending@4 (|Set#Union_18941| pending@3 (|Set#Singleton_18958| (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr)))) (state ExhaleHeap@0 QPMask@5)) (and (= pending@5 pending@4) (= (ControlFlow 0 104) 98))) anon131_correct))))))
(let ((anon245_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null) (and (=> (= (ControlFlow 0 109) 104) anon246_Then_correct) (=> (= (ControlFlow 0 109) 106) anon246_Else_correct)))))
(let ((anon245_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 cdr) null)) (and (=> (= (ControlFlow 0 107) (- 0 108)) (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr) (and (=> (= (ControlFlow 0 107) 104) anon246_Then_correct) (=> (= (ControlFlow 0 107) 106) anon246_Else_correct)))))))
(let ((anon127_correct  (=> (state ExhaleHeap@0 QPMask@5) (and (=> (= (ControlFlow 0 110) (- 0 111)) (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 cdr) (and (=> (= (ControlFlow 0 110) 107) anon245_Then_correct) (=> (= (ControlFlow 0 110) 109) anon245_Else_correct)))))))
(let ((anon244_Else_correct  (=> (not (and (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null)) (not (select marked@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car))))) (=> (and (= pending@3 pending@1) (= (ControlFlow 0 114) 110)) anon127_correct))))
(let ((anon244_Then_correct  (=> (and (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null)) (not (select marked@2 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car)))) (and (=> (= (ControlFlow 0 112) (- 0 113)) (HasDirectPerm_18763_18764 QPMask@5 x@2 car)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 car) (=> (and (and (= pending@2 (|Set#Union_18941| pending@1 (|Set#Singleton_18958| (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car)))) (state ExhaleHeap@0 QPMask@5)) (and (= pending@3 pending@2) (= (ControlFlow 0 112) 110))) anon127_correct))))))
(let ((anon243_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null) (and (=> (= (ControlFlow 0 117) 112) anon244_Then_correct) (=> (= (ControlFlow 0 117) 114) anon244_Else_correct)))))
(let ((anon243_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@2 car) null)) (and (=> (= (ControlFlow 0 115) (- 0 116)) (HasDirectPerm_18763_18764 QPMask@5 x@2 car)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 car) (and (=> (= (ControlFlow 0 115) 112) anon244_Then_correct) (=> (= (ControlFlow 0 115) 114) anon244_Else_correct)))))))
(let ((anon242_Else_correct  (=> (and (= x@2 (get ExhaleHeap@0 pending@0)) (state ExhaleHeap@0 QPMask@5)) (=> (and (and (= pending@1 (|Set#Difference_18959| pending@0 (|Set#Singleton_18958| x@2))) (state ExhaleHeap@0 QPMask@5)) (and (= marked@2 (|Set#Union_18941| marked@1 (|Set#Singleton_18958| x@2))) (state ExhaleHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 118) (- 0 119)) (HasDirectPerm_18763_18764 QPMask@5 x@2 car)) (=> (HasDirectPerm_18763_18764 QPMask@5 x@2 car) (and (=> (= (ControlFlow 0 118) 115) anon243_Then_correct) (=> (= (ControlFlow 0 118) 117) anon243_Else_correct))))))))
(let ((anon242_Then_correct  (=> (= (ControlFlow 0 71) (- 0 70)) (> (|Set#Card_18907| pending@0) 0))))
(let ((anon121_correct  (=> (state ExhaleHeap@0 QPMask@5) (=> (and (and (or (and (forall ((n_33_1 T@Ref) ) (! (= (select roots n_33_1) (select pending@0 n_33_1))
 :qid |stdinbpl.2450:25|
 :skolemid |296|
 :pattern ( (select pending@0 n_33_1))
 :pattern ( (select roots n_33_1))
)) (forall ((n_34_1 T@Ref) ) (!  (=> (select g_1 n_34_1) (not (select marked@1 n_34_1)))
 :qid |stdinbpl.2453:22|
 :skolemid |297|
 :pattern ( (select marked@1 n_34_1))
))) (and (forall ((n_35_1 T@Ref) ) (!  (=> (select roots n_35_1) (or (select marked@1 n_35_1) (select pending@0 n_35_1)))
 :qid |stdinbpl.2456:24|
 :skolemid |298|
 :pattern ( (select pending@0 n_35_1))
 :pattern ( (select marked@1 n_35_1))
)) (and (forall ((n_36_1 T@Ref) ) (!  (=> (select g_1 n_36_1) (not (and (select marked@1 n_36_1) (select pending@0 n_36_1))))
 :qid |stdinbpl.2459:23|
 :skolemid |299|
 :pattern ( (select pending@0 n_36_1))
)) (and (forall ((n_37_1 T@Ref) ) (!  (=> (or (select pending@0 n_37_1) (select marked@1 n_37_1)) (exists_spath ($$ ExhaleHeap@0 g_1) roots n_37_1))
 :qid |stdinbpl.2462:23|
 :skolemid |300|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots n_37_1))
)) (forall ((n1_3 T@Ref) (n2_3 T@Ref) ) (!  (=> (and (select marked@1 n1_3) (and (select g_1 n2_3) (and (not (select marked@1 n2_3)) (not (select pending@0 n2_3))))) (not (select ($$ ExhaleHeap@0 g_1) (create_edge n1_3 n2_3))))
 :qid |stdinbpl.2465:22|
 :skolemid |301|
 :pattern ( (select marked@1 n1_3) (select marked@1 n2_3))
)))))) (state ExhaleHeap@0 QPMask@5)) (and (> (|Set#Card_18907| pending@0) 0) (state ExhaleHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 120) 71) anon242_Then_correct) (=> (= (ControlFlow 0 120) 118) anon242_Else_correct))))))
(let ((anon241_Else_correct  (=> (and (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)))) (= (ControlFlow 0 123) 120)) anon121_correct)))
(let ((anon241_Then_correct  (=> (and (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (state ExhaleHeap@0 QPMask@5)) (and (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)) (= (ControlFlow 0 122) 120))) anon121_correct)))
(let ((anon240_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null)) (and (=> (= (ControlFlow 0 124) 122) anon241_Then_correct) (=> (= (ControlFlow 0 124) 123) anon241_Else_correct)))))
(let ((anon240_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null) (= (ControlFlow 0 121) 120)) anon121_correct)))
(let ((anon239_Else_correct  (=> (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (and (=> (= (ControlFlow 0 127) 124) anon240_Then_correct) (=> (= (ControlFlow 0 127) 121) anon240_Else_correct)))))
(let ((anon239_Then_correct  (=> (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (and (state ExhaleHeap@0 QPMask@5) (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (and (=> (= (ControlFlow 0 126) 124) anon240_Then_correct) (=> (= (ControlFlow 0 126) 121) anon240_Else_correct)))))
(let ((anon238_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null)) (and (=> (= (ControlFlow 0 128) 126) anon239_Then_correct) (=> (= (ControlFlow 0 128) 127) anon239_Else_correct)))))
(let ((anon238_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null) (and (=> (= (ControlFlow 0 125) 124) anon240_Then_correct) (=> (= (ControlFlow 0 125) 121) anon240_Else_correct)))))
(let ((anon237_Then_correct  (=> (and (state ExhaleHeap@0 ZeroMask) (not (select g_1 null))) (and (=> (= (ControlFlow 0 129) (- 0 131)) (forall ((n$9_3 T@Ref) (n$9_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_3 n$9_3_1)) (select g_1 n$9_3)) (select g_1 n$9_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_3 n$9_3_1)))
 :qid |stdinbpl.2358:19|
 :skolemid |282|
))) (=> (forall ((n$9_3@@0 T@Ref) (n$9_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_3@@0 n$9_3_1@@0)) (select g_1 n$9_3@@0)) (select g_1 n$9_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_3@@0 n$9_3_1@@0)))
 :qid |stdinbpl.2358:19|
 :skolemid |282|
)) (=> (and (and (forall ((n$9_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$9_3@@1) (< NoPerm FullPerm)) (and (qpRange35 n$9_3@@1) (= (invRecv35 n$9_3@@1) n$9_3@@1)))
 :qid |stdinbpl.2364:26|
 :skolemid |283|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) n$9_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_3@@1 car))
)) (forall ((o_4@@46 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv35 o_4@@46)) (< NoPerm FullPerm)) (qpRange35 o_4@@46)) (= (invRecv35 o_4@@46) o_4@@46))
 :qid |stdinbpl.2368:26|
 :skolemid |284|
 :pattern ( (invRecv35 o_4@@46))
))) (and (forall ((n$9_3@@2 T@Ref) ) (!  (=> (select g_1 n$9_3@@2) (not (= n$9_3@@2 null)))
 :qid |stdinbpl.2374:26|
 :skolemid |285|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) n$9_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_3@@2 car))
)) (forall ((o_4@@47 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv35 o_4@@47)) (< NoPerm FullPerm)) (qpRange35 o_4@@47)) (and (=> (< NoPerm FullPerm) (= (invRecv35 o_4@@47) o_4@@47)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@47 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@47 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv35 o_4@@47)) (< NoPerm FullPerm)) (qpRange35 o_4@@47))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@47 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@47 car))))
 :qid |stdinbpl.2380:26|
 :skolemid |286|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@47 car))
)))) (=> (and (and (and (and (forall ((o_4@@48 T@Ref) (f_5@@23 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@48 f_5@@23) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@4) o_4@@48 f_5@@23)))
 :qid |stdinbpl.2384:33|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@48 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@4) o_4@@48 f_5@@23))
)) (forall ((o_4@@49 T@Ref) (f_5@@24 T@Field_28338_28339) ) (!  (=> (not (= f_5@@24 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@49 f_5@@24) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@49 f_5@@24)))
 :qid |stdinbpl.2384:33|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@49 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@49 f_5@@24))
))) (forall ((o_4@@50 T@Ref) (f_5@@25 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@50 f_5@@25) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@4) o_4@@50 f_5@@25)))
 :qid |stdinbpl.2384:33|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@50 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@4) o_4@@50 f_5@@25))
))) (forall ((o_4@@51 T@Ref) (f_5@@26 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@51 f_5@@26) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@4) o_4@@51 f_5@@26)))
 :qid |stdinbpl.2384:33|
 :skolemid |287|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@51 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@4) o_4@@51 f_5@@26))
))) (state ExhaleHeap@0 QPMask@4)) (and (=> (= (ControlFlow 0 129) (- 0 130)) (forall ((n$10_3 T@Ref) (n$10_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_3 n$10_3_1)) (select g_1 n$10_3)) (select g_1 n$10_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_3 n$10_3_1)))
 :qid |stdinbpl.2392:19|
 :skolemid |288|
))) (=> (forall ((n$10_3@@0 T@Ref) (n$10_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_3@@0 n$10_3_1@@0)) (select g_1 n$10_3@@0)) (select g_1 n$10_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_3@@0 n$10_3_1@@0)))
 :qid |stdinbpl.2392:19|
 :skolemid |288|
)) (=> (and (and (forall ((n$10_3@@1 T@Ref) ) (!  (=> (and (select g_1 n$10_3@@1) (< NoPerm FullPerm)) (and (qpRange36 n$10_3@@1) (= (invRecv36 n$10_3@@1) n$10_3@@1)))
 :qid |stdinbpl.2398:26|
 :skolemid |289|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_3@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) n$10_3@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_3@@1 cdr))
)) (forall ((o_4@@52 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv36 o_4@@52)) (< NoPerm FullPerm)) (qpRange36 o_4@@52)) (= (invRecv36 o_4@@52) o_4@@52))
 :qid |stdinbpl.2402:26|
 :skolemid |290|
 :pattern ( (invRecv36 o_4@@52))
))) (and (forall ((n$10_3@@2 T@Ref) ) (!  (=> (select g_1 n$10_3@@2) (not (= n$10_3@@2 null)))
 :qid |stdinbpl.2408:26|
 :skolemid |291|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_3@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) n$10_3@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_3@@2 cdr))
)) (forall ((o_4@@53 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv36 o_4@@53)) (< NoPerm FullPerm)) (qpRange36 o_4@@53)) (and (=> (< NoPerm FullPerm) (= (invRecv36 o_4@@53) o_4@@53)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@53 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@53 cdr) FullPerm)))) (=> (not (and (and (select g_1 (invRecv36 o_4@@53)) (< NoPerm FullPerm)) (qpRange36 o_4@@53))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@53 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@53 cdr))))
 :qid |stdinbpl.2414:26|
 :skolemid |292|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@53 cdr))
)))) (=> (and (and (and (and (forall ((o_4@@54 T@Ref) (f_5@@27 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@4) o_4@@54 f_5@@27) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@5) o_4@@54 f_5@@27)))
 :qid |stdinbpl.2418:33|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@4) o_4@@54 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@5) o_4@@54 f_5@@27))
)) (forall ((o_4@@55 T@Ref) (f_5@@28 T@Field_28338_28339) ) (!  (=> (not (= f_5@@28 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@55 f_5@@28) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@55 f_5@@28)))
 :qid |stdinbpl.2418:33|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@4) o_4@@55 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@5) o_4@@55 f_5@@28))
))) (forall ((o_4@@56 T@Ref) (f_5@@29 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@4) o_4@@56 f_5@@29) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@5) o_4@@56 f_5@@29)))
 :qid |stdinbpl.2418:33|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@4) o_4@@56 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@5) o_4@@56 f_5@@29))
))) (forall ((o_4@@57 T@Ref) (f_5@@30 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@4) o_4@@57 f_5@@30) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@5) o_4@@57 f_5@@30)))
 :qid |stdinbpl.2418:33|
 :skolemid |293|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@4) o_4@@57 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@5) o_4@@57 f_5@@30))
))) (and (and (and (state ExhaleHeap@0 QPMask@5) (forall ((n$7_4_1 T@Ref) ) (!  (=> (select g_1 n$7_4_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_4_1 car)))
 :qid |stdinbpl.2424:24|
 :skolemid |294|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_4_1 car)))
 :pattern ( (select g_1 n$7_4_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_4_1 car))
))) (and (forall ((n$8_4 T@Ref) ) (!  (=> (select g_1 n$8_4) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_4 cdr)))
 :qid |stdinbpl.2428:24|
 :skolemid |295|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_4 cdr)))
 :pattern ( (select g_1 n$8_4) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_4 cdr))
)) (select g_1 x@1))) (and (and (|Set#Subset_18938| pending@0 g_1) (|Set#Subset_18938| marked@1 g_1)) (and (state ExhaleHeap@0 QPMask@5) (exists_spath ($$ ExhaleHeap@0 g_1) roots x@1))))) (and (=> (= (ControlFlow 0 129) 128) anon238_Then_correct) (=> (= (ControlFlow 0 129) 125) anon238_Else_correct)))))))))))))
(let ((anon171_correct true))
(let ((anon269_Else_correct  (=> (and (not (exists_spath ($$ ExhaleHeap@0 g_1) roots v_6_1)) (= (ControlFlow 0 45) 41)) anon171_correct)))
(let ((anon269_Then_correct  (=> (exists_spath ($$ ExhaleHeap@0 g_1) roots v_6_1) (and (=> (= (ControlFlow 0 43) (- 0 44)) (select marked@1 v_6_1)) (=> (select marked@1 v_6_1) (=> (= (ControlFlow 0 43) 41) anon171_correct))))))
(let ((anon268_Then_correct  (=> (select g_1 v_6_1) (and (=> (= (ControlFlow 0 46) 43) anon269_Then_correct) (=> (= (ControlFlow 0 46) 45) anon269_Else_correct)))))
(let ((anon268_Else_correct  (=> (and (not (select g_1 v_6_1)) (= (ControlFlow 0 42) 41)) anon171_correct)))
(let ((anon267_Else_correct true))
(let ((anon264_Else_correct  (=> (forall ((v_5_1_1 T@Ref) ) (!  (=> (select g_1 v_5_1_1) (=> (select marked@1 v_5_1_1) (exists_spath ($$ ExhaleHeap@0 g_1) roots v_5_1_1)))
 :qid |stdinbpl.3014:20|
 :skolemid |364|
 :pattern ( (select marked@1 v_5_1_1))
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots v_5_1_1))
)) (and (and (=> (= (ControlFlow 0 47) 40) anon267_Else_correct) (=> (= (ControlFlow 0 47) 46) anon268_Then_correct)) (=> (= (ControlFlow 0 47) 42) anon268_Else_correct)))))
(let ((anon166_correct true))
(let ((anon266_Else_correct  (=> (and (not (select marked@1 v_4_1)) (= (ControlFlow 0 38) 34)) anon166_correct)))
(let ((anon266_Then_correct  (=> (select marked@1 v_4_1) (and (=> (= (ControlFlow 0 36) (- 0 37)) (exists_spath ($$ ExhaleHeap@0 g_1) roots v_4_1)) (=> (exists_spath ($$ ExhaleHeap@0 g_1) roots v_4_1) (=> (= (ControlFlow 0 36) 34) anon166_correct))))))
(let ((anon265_Then_correct  (=> (select g_1 v_4_1) (and (=> (= (ControlFlow 0 39) 36) anon266_Then_correct) (=> (= (ControlFlow 0 39) 38) anon266_Else_correct)))))
(let ((anon265_Else_correct  (=> (and (not (select g_1 v_4_1)) (= (ControlFlow 0 35) 34)) anon166_correct)))
(let ((anon262_Else_correct  (=> (forall ((n$4_3_1 T@Ref) ) (!  (=> (select g_1 n$4_3_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$4_3_1 cdr)))
 :qid |stdinbpl.3001:20|
 :skolemid |363|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$4_3_1 cdr)))
 :pattern ( (select g_1 n$4_3_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$4_3_1 cdr))
)) (and (and (=> (= (ControlFlow 0 48) 47) anon264_Else_correct) (=> (= (ControlFlow 0 48) 39) anon265_Then_correct)) (=> (= (ControlFlow 0 48) 35) anon265_Else_correct)))))
(let ((anon161_correct true))
(let ((anon263_Else_correct  (=> (and (not (select g_1 n$4_2_1)) (= (ControlFlow 0 33) 30)) anon161_correct)))
(let ((anon263_Then_correct  (=> (select g_1 n$4_2_1) (and (=> (= (ControlFlow 0 31) (- 0 32)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$4_2_1 cdr))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$4_2_1 cdr)) (=> (= (ControlFlow 0 31) 30) anon161_correct))))))
(let ((anon260_Else_correct  (=> (forall ((n$3_3_1_1 T@Ref) ) (!  (=> (select g_1 n$3_3_1_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$3_3_1_1 car)))
 :qid |stdinbpl.2990:20|
 :skolemid |362|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$3_3_1_1 car)))
 :pattern ( (select g_1 n$3_3_1_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$3_3_1_1 car))
)) (and (and (=> (= (ControlFlow 0 49) 48) anon262_Else_correct) (=> (= (ControlFlow 0 49) 31) anon263_Then_correct)) (=> (= (ControlFlow 0 49) 33) anon263_Else_correct)))))
(let ((anon157_correct true))
(let ((anon261_Else_correct  (=> (and (not (select g_1 n$3_2)) (= (ControlFlow 0 29) 26)) anon157_correct)))
(let ((anon261_Then_correct  (=> (select g_1 n$3_2) (and (=> (= (ControlFlow 0 27) (- 0 28)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$3_2 car))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$3_2 car)) (=> (= (ControlFlow 0 27) 26) anon157_correct))))))
(let ((anon259_Else_correct  (=> (apply_noExit ($$ ExhaleHeap@0 g_1) g_1 marked@1) (=> (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7)) (and (=> (= (ControlFlow 0 50) (- 0 57)) (|Set#Subset_18938| roots marked@1)) (=> (|Set#Subset_18938| roots marked@1) (and (=> (= (ControlFlow 0 50) (- 0 56)) (|Set#Subset_18938| marked@1 g_1)) (=> (|Set#Subset_18938| marked@1 g_1) (and (=> (= (ControlFlow 0 50) (- 0 55)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 50) (- 0 54)) (forall ((n$5_2 T@Ref) (n$5_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2 n$5_2_1)) (select g_1 n$5_2)) (select g_1 n$5_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2 n$5_2_1)))
 :qid |stdinbpl.2908:17|
 :skolemid |350|
 :pattern ( (neverTriggered11 n$5_2) (neverTriggered11 n$5_2_1))
))) (=> (forall ((n$5_2@@0 T@Ref) (n$5_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$5_2@@0 n$5_2_1@@0)) (select g_1 n$5_2@@0)) (select g_1 n$5_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$5_2@@0 n$5_2_1@@0)))
 :qid |stdinbpl.2908:17|
 :skolemid |350|
 :pattern ( (neverTriggered11 n$5_2@@0) (neverTriggered11 n$5_2_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 53)) (forall ((n$5_2@@1 T@Ref) ) (!  (=> (select g_1 n$5_2@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n$5_2@@1 car) FullPerm))
 :qid |stdinbpl.2915:17|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) n$5_2@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@1 car))
))) (=> (forall ((n$5_2@@2 T@Ref) ) (!  (=> (select g_1 n$5_2@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n$5_2@@2 car) FullPerm))
 :qid |stdinbpl.2915:17|
 :skolemid |351|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) n$5_2@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@2 car))
)) (=> (forall ((n$5_2@@3 T@Ref) ) (!  (=> (and (select g_1 n$5_2@@3) (< NoPerm FullPerm)) (and (qpRange11 n$5_2@@3) (= (invRecv11 n$5_2@@3) n$5_2@@3)))
 :qid |stdinbpl.2921:22|
 :skolemid |352|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) n$5_2@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$5_2@@3 car))
)) (=> (and (forall ((o_4@@58 T@Ref) ) (!  (=> (and (select g_1 (invRecv11 o_4@@58)) (and (< NoPerm FullPerm) (qpRange11 o_4@@58))) (= (invRecv11 o_4@@58) o_4@@58))
 :qid |stdinbpl.2925:22|
 :skolemid |353|
 :pattern ( (invRecv11 o_4@@58))
)) (forall ((o_4@@59 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv11 o_4@@59)) (and (< NoPerm FullPerm) (qpRange11 o_4@@59))) (and (= (invRecv11 o_4@@59) o_4@@59) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@59 car) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@59 car) FullPerm)))) (=> (not (and (select g_1 (invRecv11 o_4@@59)) (and (< NoPerm FullPerm) (qpRange11 o_4@@59)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@59 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@59 car))))
 :qid |stdinbpl.2931:22|
 :skolemid |354|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@59 car))
))) (=> (and (and (and (forall ((o_4@@60 T@Ref) (f_5@@31 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@7) o_4@@60 f_5@@31) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@10) o_4@@60 f_5@@31)))
 :qid |stdinbpl.2937:29|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@10) o_4@@60 f_5@@31))
)) (forall ((o_4@@61 T@Ref) (f_5@@32 T@Field_28338_28339) ) (!  (=> (not (= f_5@@32 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@61 f_5@@32) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@61 f_5@@32)))
 :qid |stdinbpl.2937:29|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@61 f_5@@32))
))) (forall ((o_4@@62 T@Ref) (f_5@@33 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@7) o_4@@62 f_5@@33) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@10) o_4@@62 f_5@@33)))
 :qid |stdinbpl.2937:29|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@10) o_4@@62 f_5@@33))
))) (forall ((o_4@@63 T@Ref) (f_5@@34 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@7) o_4@@63 f_5@@34) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@10) o_4@@63 f_5@@34)))
 :qid |stdinbpl.2937:29|
 :skolemid |355|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@10) o_4@@63 f_5@@34))
))) (and (=> (= (ControlFlow 0 50) (- 0 52)) (forall ((n$6_2 T@Ref) (n$6_2_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_2 n$6_2_1)) (select g_1 n$6_2)) (select g_1 n$6_2_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_2 n$6_2_1)))
 :qid |stdinbpl.2949:17|
 :skolemid |356|
 :pattern ( (neverTriggered12 n$6_2) (neverTriggered12 n$6_2_1))
))) (=> (forall ((n$6_2@@0 T@Ref) (n$6_2_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$6_2@@0 n$6_2_1@@0)) (select g_1 n$6_2@@0)) (select g_1 n$6_2_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$6_2@@0 n$6_2_1@@0)))
 :qid |stdinbpl.2949:17|
 :skolemid |356|
 :pattern ( (neverTriggered12 n$6_2@@0) (neverTriggered12 n$6_2_1@@0))
)) (and (=> (= (ControlFlow 0 50) (- 0 51)) (forall ((n$6_2@@1 T@Ref) ) (!  (=> (select g_1 n$6_2@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) n$6_2@@1 cdr) FullPerm))
 :qid |stdinbpl.2956:17|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) n$6_2@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@1 cdr))
))) (=> (forall ((n$6_2@@2 T@Ref) ) (!  (=> (select g_1 n$6_2@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) n$6_2@@2 cdr) FullPerm))
 :qid |stdinbpl.2956:17|
 :skolemid |357|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) n$6_2@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@2 cdr))
)) (=> (forall ((n$6_2@@3 T@Ref) ) (!  (=> (and (select g_1 n$6_2@@3) (< NoPerm FullPerm)) (and (qpRange12 n$6_2@@3) (= (invRecv12 n$6_2@@3) n$6_2@@3)))
 :qid |stdinbpl.2962:22|
 :skolemid |358|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) n$6_2@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$6_2@@3 cdr))
)) (=> (and (forall ((o_4@@64 T@Ref) ) (!  (=> (and (select g_1 (invRecv12 o_4@@64)) (and (< NoPerm FullPerm) (qpRange12 o_4@@64))) (= (invRecv12 o_4@@64) o_4@@64))
 :qid |stdinbpl.2966:22|
 :skolemid |359|
 :pattern ( (invRecv12 o_4@@64))
)) (forall ((o_4@@65 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv12 o_4@@65)) (and (< NoPerm FullPerm) (qpRange12 o_4@@65))) (and (= (invRecv12 o_4@@65) o_4@@65) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) o_4@@65 cdr) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@65 cdr) FullPerm)))) (=> (not (and (select g_1 (invRecv12 o_4@@65)) (and (< NoPerm FullPerm) (qpRange12 o_4@@65)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) o_4@@65 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@65 cdr))))
 :qid |stdinbpl.2972:22|
 :skolemid |360|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) o_4@@65 cdr))
))) (=> (and (and (and (forall ((o_4@@66 T@Ref) (f_5@@35 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@10) o_4@@66 f_5@@35) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@11) o_4@@66 f_5@@35)))
 :qid |stdinbpl.2978:29|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@11) o_4@@66 f_5@@35))
)) (forall ((o_4@@67 T@Ref) (f_5@@36 T@Field_28338_28339) ) (!  (=> (not (= f_5@@36 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@10) o_4@@67 f_5@@36) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) o_4@@67 f_5@@36)))
 :qid |stdinbpl.2978:29|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@11) o_4@@67 f_5@@36))
))) (forall ((o_4@@68 T@Ref) (f_5@@37 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@10) o_4@@68 f_5@@37) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@11) o_4@@68 f_5@@37)))
 :qid |stdinbpl.2978:29|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@11) o_4@@68 f_5@@37))
))) (forall ((o_4@@69 T@Ref) (f_5@@38 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@10) o_4@@69 f_5@@38) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@11) o_4@@69 f_5@@38)))
 :qid |stdinbpl.2978:29|
 :skolemid |361|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@11) o_4@@69 f_5@@38))
))) (and (and (=> (= (ControlFlow 0 50) 49) anon260_Else_correct) (=> (= (ControlFlow 0 50) 27) anon261_Then_correct)) (=> (= (ControlFlow 0 50) 29) anon261_Else_correct))))))))))))))))))))))))))
(let ((anon259_Then_correct  (and (=> (= (ControlFlow 0 22) (- 0 25)) (forall ((n_48 T@Ref) (n_48_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_48 n_48_1)) (select g_1 n_48)) (select g_1 n_48_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_48 n_48_1)))
 :qid |stdinbpl.2832:21|
 :skolemid |342|
 :pattern ( (neverTriggered41 n_48) (neverTriggered41 n_48_1))
))) (=> (forall ((n_48@@0 T@Ref) (n_48_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_48@@0 n_48_1@@0)) (select g_1 n_48@@0)) (select g_1 n_48_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_48@@0 n_48_1@@0)))
 :qid |stdinbpl.2832:21|
 :skolemid |342|
 :pattern ( (neverTriggered41 n_48@@0) (neverTriggered41 n_48_1@@0))
)) (and (=> (= (ControlFlow 0 22) (- 0 24)) (forall ((n_48@@1 T@Ref) ) (!  (=> (select g_1 n_48@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n_48@@1 car) NoPerm)))
 :qid |stdinbpl.2839:21|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@8) n_48@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@1 car))
))) (=> (forall ((n_48@@2 T@Ref) ) (!  (=> (select g_1 n_48@@2) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n_48@@2 car) NoPerm)))
 :qid |stdinbpl.2839:21|
 :skolemid |343|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@8) n_48@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@2 car))
)) (=> (and (forall ((n_48@@3 T@Ref) ) (!  (=> (and (select g_1 n_48@@3) (< NoPerm FullPerm)) (and (qpRange41 n_48@@3) (= (invRecv41 n_48@@3) n_48@@3)))
 :qid |stdinbpl.2845:26|
 :skolemid |344|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@8) n_48@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n_48@@3 car))
)) (forall ((o_4@@70 T@Ref) ) (!  (=> (and (select g_1 (invRecv41 o_4@@70)) (and (< NoPerm FullPerm) (qpRange41 o_4@@70))) (= (invRecv41 o_4@@70) o_4@@70))
 :qid |stdinbpl.2849:26|
 :skolemid |345|
 :pattern ( (invRecv41 o_4@@70))
))) (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((n$0_14 T@Ref) (n$0_14_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_14 n$0_14_1)) (select g_1 n$0_14)) (select g_1 n$0_14_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_14 n$0_14_1)))
 :qid |stdinbpl.2860:21|
 :skolemid |346|
 :pattern ( (neverTriggered42 n$0_14) (neverTriggered42 n$0_14_1))
))) (=> (forall ((n$0_14@@0 T@Ref) (n$0_14_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_14@@0 n$0_14_1@@0)) (select g_1 n$0_14@@0)) (select g_1 n$0_14_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_14@@0 n$0_14_1@@0)))
 :qid |stdinbpl.2860:21|
 :skolemid |346|
 :pattern ( (neverTriggered42 n$0_14@@0) (neverTriggered42 n$0_14_1@@0))
)) (=> (= (ControlFlow 0 22) (- 0 21)) (forall ((n$0_14@@1 T@Ref) ) (!  (=> (select g_1 n$0_14@@1) (=> (> FullPerm NoPerm) (> (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n$0_14@@1 cdr) NoPerm)))
 :qid |stdinbpl.2867:21|
 :skolemid |347|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_14@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@9) n$0_14@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$0_14@@1 cdr))
))))))))))))
(let ((anon152_correct  (=> (state ExhaleHeap@0 QPMask@7) (=> (and (and (or (and (forall ((n_43_1 T@Ref) ) (! (= (select roots n_43_1) (select pending@0 n_43_1))
 :qid |stdinbpl.2795:23|
 :skolemid |336|
 :pattern ( (select pending@0 n_43_1))
 :pattern ( (select roots n_43_1))
)) (forall ((n_44_1 T@Ref) ) (!  (=> (select g_1 n_44_1) (not (select marked@1 n_44_1)))
 :qid |stdinbpl.2798:20|
 :skolemid |337|
 :pattern ( (select marked@1 n_44_1))
))) (and (forall ((n_45_1 T@Ref) ) (!  (=> (select roots n_45_1) (or (select marked@1 n_45_1) (select pending@0 n_45_1)))
 :qid |stdinbpl.2801:22|
 :skolemid |338|
 :pattern ( (select pending@0 n_45_1))
 :pattern ( (select marked@1 n_45_1))
)) (and (forall ((n_46_1 T@Ref) ) (!  (=> (select g_1 n_46_1) (not (and (select marked@1 n_46_1) (select pending@0 n_46_1))))
 :qid |stdinbpl.2804:21|
 :skolemid |339|
 :pattern ( (select pending@0 n_46_1))
)) (and (forall ((n_47 T@Ref) ) (!  (=> (or (select pending@0 n_47) (select marked@1 n_47)) (exists_spath ($$ ExhaleHeap@0 g_1) roots n_47))
 :qid |stdinbpl.2807:21|
 :skolemid |340|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| ExhaleHeap@0 g_1)) (FrameFragment_5097 (|$$#condqp2| ExhaleHeap@0 g_1))) g_1) roots n_47))
)) (forall ((n1_5 T@Ref) (n2_5 T@Ref) ) (!  (=> (and (select marked@1 n1_5) (and (select g_1 n2_5) (and (not (select marked@1 n2_5)) (not (select pending@0 n2_5))))) (not (select ($$ ExhaleHeap@0 g_1) (create_edge n1_5 n2_5))))
 :qid |stdinbpl.2810:20|
 :skolemid |341|
 :pattern ( (select marked@1 n1_5) (select marked@1 n2_5))
)))))) (state ExhaleHeap@0 QPMask@7)) (and (state ExhaleHeap@0 QPMask@7) (state ExhaleHeap@0 QPMask@7))) (and (=> (= (ControlFlow 0 58) 22) anon259_Then_correct) (=> (= (ControlFlow 0 58) 50) anon259_Else_correct))))))
(let ((anon258_Else_correct  (=> (and (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)))) (= (ControlFlow 0 61) 58)) anon152_correct)))
(let ((anon258_Then_correct  (=> (and (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car))) (state ExhaleHeap@0 QPMask@7)) (and (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car)) (= (ControlFlow 0 60) 58))) anon152_correct)))
(let ((anon257_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null)) (and (=> (= (ControlFlow 0 62) 60) anon258_Then_correct) (=> (= (ControlFlow 0 62) 61) anon258_Else_correct)))))
(let ((anon257_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 car) null) (= (ControlFlow 0 59) 58)) anon152_correct)))
(let ((anon256_Else_correct  (=> (not (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (and (=> (= (ControlFlow 0 65) 62) anon257_Then_correct) (=> (= (ControlFlow 0 65) 59) anon257_Else_correct)))))
(let ((anon256_Then_correct  (=> (and (and (select ($$ ExhaleHeap@0 g_1) (create_edge x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (exists_path ($$ ExhaleHeap@0 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr))) (and (state ExhaleHeap@0 QPMask@7) (exists_path ($$ ExhaleHeap@0 g_1) x@1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr)))) (and (=> (= (ControlFlow 0 64) 62) anon257_Then_correct) (=> (= (ControlFlow 0 64) 59) anon257_Else_correct)))))
(let ((anon255_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null)) (and (=> (= (ControlFlow 0 66) 64) anon256_Then_correct) (=> (= (ControlFlow 0 66) 65) anon256_Else_correct)))))
(let ((anon255_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) x@1 cdr) null) (and (=> (= (ControlFlow 0 63) 62) anon257_Then_correct) (=> (= (ControlFlow 0 63) 59) anon257_Else_correct)))))
(let ((anon237_Else_correct  (=> (not (> (|Set#Card_18907| pending@0) 0)) (=> (and (state ExhaleHeap@0 QPMask@3) (not (select g_1 null))) (and (=> (= (ControlFlow 0 67) (- 0 69)) (forall ((n$9_5 T@Ref) (n$9_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_5 n$9_5_1)) (select g_1 n$9_5)) (select g_1 n$9_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_5 n$9_5_1)))
 :qid |stdinbpl.2703:17|
 :skolemid |322|
))) (=> (forall ((n$9_5@@0 T@Ref) (n$9_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9_5@@0 n$9_5_1@@0)) (select g_1 n$9_5@@0)) (select g_1 n$9_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9_5@@0 n$9_5_1@@0)))
 :qid |stdinbpl.2703:17|
 :skolemid |322|
)) (=> (and (and (forall ((n$9_5@@1 T@Ref) ) (!  (=> (and (select g_1 n$9_5@@1) (< NoPerm FullPerm)) (and (qpRange39 n$9_5@@1) (= (invRecv39 n$9_5@@1) n$9_5@@1)))
 :qid |stdinbpl.2709:24|
 :skolemid |323|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_5@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) n$9_5@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_5@@1 car))
)) (forall ((o_4@@71 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv39 o_4@@71)) (< NoPerm FullPerm)) (qpRange39 o_4@@71)) (= (invRecv39 o_4@@71) o_4@@71))
 :qid |stdinbpl.2713:24|
 :skolemid |324|
 :pattern ( (invRecv39 o_4@@71))
))) (and (forall ((n$9_5@@2 T@Ref) ) (!  (=> (select g_1 n$9_5@@2) (not (= n$9_5@@2 null)))
 :qid |stdinbpl.2719:24|
 :skolemid |325|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_5@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) n$9_5@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$9_5@@2 car))
)) (forall ((o_4@@72 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv39 o_4@@72)) (< NoPerm FullPerm)) (qpRange39 o_4@@72)) (and (=> (< NoPerm FullPerm) (= (invRecv39 o_4@@72) o_4@@72)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@72 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@72 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv39 o_4@@72)) (< NoPerm FullPerm)) (qpRange39 o_4@@72))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@72 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@72 car))))
 :qid |stdinbpl.2725:24|
 :skolemid |326|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@72 car))
)))) (=> (and (and (and (and (forall ((o_4@@73 T@Ref) (f_5@@39 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@73 f_5@@39) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@6) o_4@@73 f_5@@39)))
 :qid |stdinbpl.2729:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@73 f_5@@39))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@6) o_4@@73 f_5@@39))
)) (forall ((o_4@@74 T@Ref) (f_5@@40 T@Field_28338_28339) ) (!  (=> (not (= f_5@@40 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@74 f_5@@40) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@74 f_5@@40)))
 :qid |stdinbpl.2729:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@74 f_5@@40))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@74 f_5@@40))
))) (forall ((o_4@@75 T@Ref) (f_5@@41 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@75 f_5@@41) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@6) o_4@@75 f_5@@41)))
 :qid |stdinbpl.2729:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@75 f_5@@41))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@6) o_4@@75 f_5@@41))
))) (forall ((o_4@@76 T@Ref) (f_5@@42 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@76 f_5@@42) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@6) o_4@@76 f_5@@42)))
 :qid |stdinbpl.2729:31|
 :skolemid |327|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@76 f_5@@42))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@6) o_4@@76 f_5@@42))
))) (state ExhaleHeap@0 QPMask@6)) (and (=> (= (ControlFlow 0 67) (- 0 68)) (forall ((n$10_5 T@Ref) (n$10_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_5 n$10_5_1)) (select g_1 n$10_5)) (select g_1 n$10_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_5 n$10_5_1)))
 :qid |stdinbpl.2737:17|
 :skolemid |328|
))) (=> (forall ((n$10_5@@0 T@Ref) (n$10_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10_5@@0 n$10_5_1@@0)) (select g_1 n$10_5@@0)) (select g_1 n$10_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10_5@@0 n$10_5_1@@0)))
 :qid |stdinbpl.2737:17|
 :skolemid |328|
)) (=> (and (and (forall ((n$10_5@@1 T@Ref) ) (!  (=> (and (select g_1 n$10_5@@1) (< NoPerm FullPerm)) (and (qpRange40 n$10_5@@1) (= (invRecv40 n$10_5@@1) n$10_5@@1)))
 :qid |stdinbpl.2743:24|
 :skolemid |329|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_5@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n$10_5@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_5@@1 cdr))
)) (forall ((o_4@@77 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv40 o_4@@77)) (< NoPerm FullPerm)) (qpRange40 o_4@@77)) (= (invRecv40 o_4@@77) o_4@@77))
 :qid |stdinbpl.2747:24|
 :skolemid |330|
 :pattern ( (invRecv40 o_4@@77))
))) (and (forall ((n$10_5@@2 T@Ref) ) (!  (=> (select g_1 n$10_5@@2) (not (= n$10_5@@2 null)))
 :qid |stdinbpl.2753:24|
 :skolemid |331|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_5@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) n$10_5@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$10_5@@2 cdr))
)) (forall ((o_4@@78 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv40 o_4@@78)) (< NoPerm FullPerm)) (qpRange40 o_4@@78)) (and (=> (< NoPerm FullPerm) (= (invRecv40 o_4@@78) o_4@@78)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@78 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@78 cdr) FullPerm)))) (=> (not (and (and (select g_1 (invRecv40 o_4@@78)) (< NoPerm FullPerm)) (qpRange40 o_4@@78))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@78 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@78 cdr))))
 :qid |stdinbpl.2759:24|
 :skolemid |332|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@78 cdr))
)))) (=> (and (and (and (and (forall ((o_4@@79 T@Ref) (f_5@@43 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@6) o_4@@79 f_5@@43) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@7) o_4@@79 f_5@@43)))
 :qid |stdinbpl.2763:31|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@6) o_4@@79 f_5@@43))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@7) o_4@@79 f_5@@43))
)) (forall ((o_4@@80 T@Ref) (f_5@@44 T@Field_28338_28339) ) (!  (=> (not (= f_5@@44 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@80 f_5@@44) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@80 f_5@@44)))
 :qid |stdinbpl.2763:31|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@6) o_4@@80 f_5@@44))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@7) o_4@@80 f_5@@44))
))) (forall ((o_4@@81 T@Ref) (f_5@@45 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@6) o_4@@81 f_5@@45) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@7) o_4@@81 f_5@@45)))
 :qid |stdinbpl.2763:31|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@6) o_4@@81 f_5@@45))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@7) o_4@@81 f_5@@45))
))) (forall ((o_4@@82 T@Ref) (f_5@@46 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@6) o_4@@82 f_5@@46) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@7) o_4@@82 f_5@@46)))
 :qid |stdinbpl.2763:31|
 :skolemid |333|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@6) o_4@@82 f_5@@46))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@7) o_4@@82 f_5@@46))
))) (and (and (and (state ExhaleHeap@0 QPMask@7) (forall ((n$7_7 T@Ref) ) (!  (=> (select g_1 n$7_7) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_7 car)))
 :qid |stdinbpl.2769:22|
 :skolemid |334|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_7 car)))
 :pattern ( (select g_1 n$7_7) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$7_7 car))
))) (and (forall ((n$8_7 T@Ref) ) (!  (=> (select g_1 n$8_7) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_7 cdr)))
 :qid |stdinbpl.2773:22|
 :skolemid |335|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_7 cdr)))
 :pattern ( (select g_1 n$8_7) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@0) n$8_7 cdr))
)) (select g_1 x@1))) (and (and (|Set#Subset_18938| pending@0 g_1) (|Set#Subset_18938| marked@1 g_1)) (and (state ExhaleHeap@0 QPMask@7) (exists_spath ($$ ExhaleHeap@0 g_1) roots x@1))))) (and (=> (= (ControlFlow 0 67) 66) anon255_Then_correct) (=> (= (ControlFlow 0 67) 63) anon255_Else_correct))))))))))))))
(let ((anon53_correct  (and (=> (= (ControlFlow 0 244) (- 0 245)) (or (and (forall ((n_4_1 T@Ref) ) (! (= (select roots n_4_1) (select roots n_4_1))
 :qid |stdinbpl.1473:20|
 :skolemid |178|
 :pattern ( (select roots n_4_1))
 :pattern ( (select roots n_4_1))
)) (forall ((n_5 T@Ref) ) (!  (=> (select g_1 n_5) (not (select marked@0 n_5)))
 :qid |stdinbpl.1476:22|
 :skolemid |179|
 :pattern ( (select marked@0 n_5))
))) (and (forall ((n_6 T@Ref) ) (!  (=> (select roots n_6) (or (select marked@0 n_6) (select roots n_6)))
 :qid |stdinbpl.1479:24|
 :skolemid |180|
 :pattern ( (select roots n_6))
 :pattern ( (select marked@0 n_6))
)) (and (forall ((n_7 T@Ref) ) (!  (=> (select g_1 n_7) (not (and (select marked@0 n_7) (select roots n_7))))
 :qid |stdinbpl.1482:23|
 :skolemid |181|
 :pattern ( (select roots n_7))
)) (and (forall ((n_8 T@Ref) ) (!  (=> (or (select roots n_8) (select marked@0 n_8)) (exists_spath ($$ Heap@@23 g_1) roots n_8))
 :qid |stdinbpl.1485:23|
 :skolemid |182|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@23 g_1)) (FrameFragment_5097 (|$$#condqp2| Heap@@23 g_1))) g_1) roots n_8))
)) (forall ((n1_1 T@Ref) (n2 T@Ref) ) (!  (=> (and (select marked@0 n1_1) (and (select g_1 n2) (and (not (select marked@0 n2)) (not (select roots n2))))) (not (select ($$ Heap@@23 g_1) (create_edge n1_1 n2))))
 :qid |stdinbpl.1488:22|
 :skolemid |183|
 :pattern ( (select marked@0 n1_1) (select marked@0 n2))
))))))) (=> (or (and (forall ((n_4_1@@0 T@Ref) ) (! (= (select roots n_4_1@@0) (select roots n_4_1@@0))
 :qid |stdinbpl.1473:20|
 :skolemid |178|
 :pattern ( (select roots n_4_1@@0))
 :pattern ( (select roots n_4_1@@0))
)) (forall ((n_5@@0 T@Ref) ) (!  (=> (select g_1 n_5@@0) (not (select marked@0 n_5@@0)))
 :qid |stdinbpl.1476:22|
 :skolemid |179|
 :pattern ( (select marked@0 n_5@@0))
))) (and (forall ((n_6@@0 T@Ref) ) (!  (=> (select roots n_6@@0) (or (select marked@0 n_6@@0) (select roots n_6@@0)))
 :qid |stdinbpl.1479:24|
 :skolemid |180|
 :pattern ( (select roots n_6@@0))
 :pattern ( (select marked@0 n_6@@0))
)) (and (forall ((n_7@@0 T@Ref) ) (!  (=> (select g_1 n_7@@0) (not (and (select marked@0 n_7@@0) (select roots n_7@@0))))
 :qid |stdinbpl.1482:23|
 :skolemid |181|
 :pattern ( (select roots n_7@@0))
)) (and (forall ((n_8@@0 T@Ref) ) (!  (=> (or (select roots n_8@@0) (select marked@0 n_8@@0)) (exists_spath ($$ Heap@@23 g_1) roots n_8@@0))
 :qid |stdinbpl.1485:23|
 :skolemid |182|
 :pattern ( (exists_spath (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@23 g_1)) (FrameFragment_5097 (|$$#condqp2| Heap@@23 g_1))) g_1) roots n_8@@0))
)) (forall ((n1_1@@0 T@Ref) (n2@@0 T@Ref) ) (!  (=> (and (select marked@0 n1_1@@0) (and (select g_1 n2@@0) (and (not (select marked@0 n2@@0)) (not (select roots n2@@0))))) (not (select ($$ Heap@@23 g_1) (create_edge n1_1@@0 n2@@0))))
 :qid |stdinbpl.1488:22|
 :skolemid |183|
 :pattern ( (select marked@0 n1_1@@0) (select marked@0 n2@@0))
)))))) (=> (and (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@0 QPMask@3) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@0) x@1 $allocated)) (and (and (=> (= (ControlFlow 0 244) 243) anon202_Then_correct) (=> (= (ControlFlow 0 244) 129) anon237_Then_correct)) (=> (= (ControlFlow 0 244) 67) anon237_Else_correct)))))))
(let ((anon201_Else_correct  (=> (and (not (and (select ($$ Heap@@23 g_1) (create_edge x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car))) (exists_path ($$ Heap@@23 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car)))) (= (ControlFlow 0 249) 244)) anon53_correct)))
(let ((anon201_Then_correct  (=> (and (select ($$ Heap@@23 g_1) (create_edge x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car))) (exists_path ($$ Heap@@23 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car))) (and (=> (= (ControlFlow 0 247) (- 0 248)) (exists_path ($$ Heap@@23 g_1) x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car))) (=> (exists_path ($$ Heap@@23 g_1) x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car)) (=> (= (ControlFlow 0 247) 244) anon53_correct))))))
(let ((anon200_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car) null)) (and (=> (= (ControlFlow 0 250) 247) anon201_Then_correct) (=> (= (ControlFlow 0 250) 249) anon201_Else_correct)))))
(let ((anon200_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 car) null) (= (ControlFlow 0 246) 244)) anon53_correct)))
(let ((anon199_Else_correct  (=> (not (and (select ($$ Heap@@23 g_1) (create_edge x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr))) (exists_path ($$ Heap@@23 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr)))) (and (=> (= (ControlFlow 0 254) 250) anon200_Then_correct) (=> (= (ControlFlow 0 254) 246) anon200_Else_correct)))))
(let ((anon199_Then_correct  (=> (and (select ($$ Heap@@23 g_1) (create_edge x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr))) (exists_path ($$ Heap@@23 g_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr))) (and (=> (= (ControlFlow 0 252) (- 0 253)) (exists_path ($$ Heap@@23 g_1) x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr))) (=> (exists_path ($$ Heap@@23 g_1) x@0 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr)) (and (=> (= (ControlFlow 0 252) 250) anon200_Then_correct) (=> (= (ControlFlow 0 252) 246) anon200_Else_correct)))))))
(let ((anon198_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr) null)) (and (=> (= (ControlFlow 0 255) 252) anon199_Then_correct) (=> (= (ControlFlow 0 255) 254) anon199_Else_correct)))))
(let ((anon198_Else_correct  (=> (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) x@0 cdr) null) (and (=> (= (ControlFlow 0 251) 250) anon200_Then_correct) (=> (= (ControlFlow 0 251) 246) anon200_Else_correct)))))
(let ((anon196_Else_correct  (=> (forall ((n$8_1_1 T@Ref) ) (!  (=> (select g_1 n$8_1_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$8_1_1 cdr)))
 :qid |stdinbpl.1448:24|
 :skolemid |177|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$8_1_1 cdr)))
 :pattern ( (select g_1 n$8_1_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$8_1_1 cdr))
)) (and (=> (= (ControlFlow 0 256) (- 0 260)) (select g_1 x@0)) (=> (select g_1 x@0) (and (=> (= (ControlFlow 0 256) (- 0 259)) (|Set#Subset_18938| roots g_1)) (=> (|Set#Subset_18938| roots g_1) (and (=> (= (ControlFlow 0 256) (- 0 258)) (|Set#Subset_18938| marked@0 g_1)) (=> (|Set#Subset_18938| marked@0 g_1) (and (=> (= (ControlFlow 0 256) (- 0 257)) (exists_spath ($$ Heap@@23 g_1) roots x@0)) (=> (exists_spath ($$ Heap@@23 g_1) roots x@0) (and (=> (= (ControlFlow 0 256) 255) anon198_Then_correct) (=> (= (ControlFlow 0 256) 251) anon198_Else_correct)))))))))))))
(let ((anon46_correct true))
(let ((anon197_Else_correct  (=> (and (not (select g_1 n$8)) (= (ControlFlow 0 20) 17)) anon46_correct)))
(let ((anon197_Then_correct  (=> (select g_1 n$8) (and (=> (= (ControlFlow 0 18) (- 0 19)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$8 cdr))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$8 cdr)) (=> (= (ControlFlow 0 18) 17) anon46_correct))))))
(let ((anon194_Else_correct  (=> (forall ((n$7_1_1 T@Ref) ) (!  (=> (select g_1 n$7_1_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$7_1_1 car)))
 :qid |stdinbpl.1437:24|
 :skolemid |176|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$7_1_1 car)))
 :pattern ( (select g_1 n$7_1_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$7_1_1 car))
)) (and (and (=> (= (ControlFlow 0 261) 256) anon196_Else_correct) (=> (= (ControlFlow 0 261) 18) anon197_Then_correct)) (=> (= (ControlFlow 0 261) 20) anon197_Else_correct)))))
(let ((anon42_correct true))
(let ((anon195_Else_correct  (=> (and (not (select g_1 n$7_4)) (= (ControlFlow 0 16) 13)) anon42_correct)))
(let ((anon195_Then_correct  (=> (select g_1 n$7_4) (and (=> (= (ControlFlow 0 14) (- 0 15)) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$7_4 car))) (=> (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$7_4 car)) (=> (= (ControlFlow 0 14) 13) anon42_correct))))))
(let ((anon193_Else_correct  (=> (= x@0 (get Heap@@23 roots)) (=> (and (and (state Heap@@23 QPMask@1) (state Heap@@23 QPMask@1)) (and (= marked@0 |Set#Empty_19035|) (state Heap@@23 QPMask@1))) (and (=> (= (ControlFlow 0 262) (- 0 267)) (not (select g_1 null))) (=> (not (select g_1 null)) (and (=> (= (ControlFlow 0 262) (- 0 266)) (forall ((n$9 T@Ref) (n$9_6 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9 n$9_6)) (select g_1 n$9)) (select g_1 n$9_6)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9 n$9_6)))
 :qid |stdinbpl.1355:21|
 :skolemid |164|
 :pattern ( (neverTriggered13 n$9) (neverTriggered13 n$9_6))
))) (=> (forall ((n$9@@0 T@Ref) (n$9_6@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$9@@0 n$9_6@@0)) (select g_1 n$9@@0)) (select g_1 n$9_6@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$9@@0 n$9_6@@0)))
 :qid |stdinbpl.1355:21|
 :skolemid |164|
 :pattern ( (neverTriggered13 n$9@@0) (neverTriggered13 n$9_6@@0))
)) (and (=> (= (ControlFlow 0 262) (- 0 265)) (forall ((n$9@@1 T@Ref) ) (!  (=> (select g_1 n$9@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$9@@1 car) FullPerm))
 :qid |stdinbpl.1362:21|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) n$9@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@1 car))
))) (=> (forall ((n$9@@2 T@Ref) ) (!  (=> (select g_1 n$9@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$9@@2 car) FullPerm))
 :qid |stdinbpl.1362:21|
 :skolemid |165|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) n$9@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@2 car))
)) (=> (forall ((n$9@@3 T@Ref) ) (!  (=> (and (select g_1 n$9@@3) (< NoPerm FullPerm)) (and (qpRange13 n$9@@3) (= (invRecv13 n$9@@3) n$9@@3)))
 :qid |stdinbpl.1368:26|
 :skolemid |166|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@3 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) n$9@@3 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$9@@3 car))
)) (=> (and (forall ((o_4@@83 T@Ref) ) (!  (=> (and (select g_1 (invRecv13 o_4@@83)) (and (< NoPerm FullPerm) (qpRange13 o_4@@83))) (= (invRecv13 o_4@@83) o_4@@83))
 :qid |stdinbpl.1372:26|
 :skolemid |167|
 :pattern ( (invRecv13 o_4@@83))
)) (forall ((o_4@@84 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv13 o_4@@84)) (and (< NoPerm FullPerm) (qpRange13 o_4@@84))) (and (= (invRecv13 o_4@@84) o_4@@84) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@84 car) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@84 car) FullPerm)))) (=> (not (and (select g_1 (invRecv13 o_4@@84)) (and (< NoPerm FullPerm) (qpRange13 o_4@@84)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@84 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@84 car))))
 :qid |stdinbpl.1378:26|
 :skolemid |168|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@84 car))
))) (=> (and (and (and (forall ((o_4@@85 T@Ref) (f_5@@47 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@1) o_4@@85 f_5@@47) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@2) o_4@@85 f_5@@47)))
 :qid |stdinbpl.1384:33|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@2) o_4@@85 f_5@@47))
)) (forall ((o_4@@86 T@Ref) (f_5@@48 T@Field_28338_28339) ) (!  (=> (not (= f_5@@48 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@86 f_5@@48) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@86 f_5@@48)))
 :qid |stdinbpl.1384:33|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@86 f_5@@48))
))) (forall ((o_4@@87 T@Ref) (f_5@@49 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@1) o_4@@87 f_5@@49) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@2) o_4@@87 f_5@@49)))
 :qid |stdinbpl.1384:33|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@2) o_4@@87 f_5@@49))
))) (forall ((o_4@@88 T@Ref) (f_5@@50 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@1) o_4@@88 f_5@@50) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@2) o_4@@88 f_5@@50)))
 :qid |stdinbpl.1384:33|
 :skolemid |169|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@2) o_4@@88 f_5@@50))
))) (and (=> (= (ControlFlow 0 262) (- 0 264)) (forall ((n$10 T@Ref) (n$10_6 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10 n$10_6)) (select g_1 n$10)) (select g_1 n$10_6)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10 n$10_6)))
 :qid |stdinbpl.1396:21|
 :skolemid |170|
 :pattern ( (neverTriggered14 n$10) (neverTriggered14 n$10_6))
))) (=> (forall ((n$10@@0 T@Ref) (n$10_6@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$10@@0 n$10_6@@0)) (select g_1 n$10@@0)) (select g_1 n$10_6@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$10@@0 n$10_6@@0)))
 :qid |stdinbpl.1396:21|
 :skolemid |170|
 :pattern ( (neverTriggered14 n$10@@0) (neverTriggered14 n$10_6@@0))
)) (and (=> (= (ControlFlow 0 262) (- 0 263)) (forall ((n$10@@1 T@Ref) ) (!  (=> (select g_1 n$10@@1) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) n$10@@1 cdr) FullPerm))
 :qid |stdinbpl.1403:21|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) n$10@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@1 cdr))
))) (=> (forall ((n$10@@2 T@Ref) ) (!  (=> (select g_1 n$10@@2) (>= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) n$10@@2 cdr) FullPerm))
 :qid |stdinbpl.1403:21|
 :skolemid |171|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) n$10@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@2 cdr))
)) (=> (forall ((n$10@@3 T@Ref) ) (!  (=> (and (select g_1 n$10@@3) (< NoPerm FullPerm)) (and (qpRange14 n$10@@3) (= (invRecv14 n$10@@3) n$10@@3)))
 :qid |stdinbpl.1409:26|
 :skolemid |172|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) n$10@@3 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$10@@3 cdr))
)) (=> (and (forall ((o_4@@89 T@Ref) ) (!  (=> (and (select g_1 (invRecv14 o_4@@89)) (and (< NoPerm FullPerm) (qpRange14 o_4@@89))) (= (invRecv14 o_4@@89) o_4@@89))
 :qid |stdinbpl.1413:26|
 :skolemid |173|
 :pattern ( (invRecv14 o_4@@89))
)) (forall ((o_4@@90 T@Ref) ) (!  (and (=> (and (select g_1 (invRecv14 o_4@@90)) (and (< NoPerm FullPerm) (qpRange14 o_4@@90))) (and (= (invRecv14 o_4@@90) o_4@@90) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@90 cdr) (- (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@90 cdr) FullPerm)))) (=> (not (and (select g_1 (invRecv14 o_4@@90)) (and (< NoPerm FullPerm) (qpRange14 o_4@@90)))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@90 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@90 cdr))))
 :qid |stdinbpl.1419:26|
 :skolemid |174|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@90 cdr))
))) (=> (and (and (and (forall ((o_4@@91 T@Ref) (f_5@@51 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@2) o_4@@91 f_5@@51) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@91 f_5@@51)))
 :qid |stdinbpl.1425:33|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@3) o_4@@91 f_5@@51))
)) (forall ((o_4@@92 T@Ref) (f_5@@52 T@Field_28338_28339) ) (!  (=> (not (= f_5@@52 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@2) o_4@@92 f_5@@52) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@92 f_5@@52)))
 :qid |stdinbpl.1425:33|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@3) o_4@@92 f_5@@52))
))) (forall ((o_4@@93 T@Ref) (f_5@@53 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@2) o_4@@93 f_5@@53) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@93 f_5@@53)))
 :qid |stdinbpl.1425:33|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@3) o_4@@93 f_5@@53))
))) (forall ((o_4@@94 T@Ref) (f_5@@54 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@2) o_4@@94 f_5@@54) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@94 f_5@@54)))
 :qid |stdinbpl.1425:33|
 :skolemid |175|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@3) o_4@@94 f_5@@54))
))) (and (and (=> (= (ControlFlow 0 262) 261) anon194_Else_correct) (=> (= (ControlFlow 0 262) 14) anon195_Then_correct)) (=> (= (ControlFlow 0 262) 16) anon195_Else_correct))))))))))))))))))))))
(let ((anon193_Then_correct  (=> (= (ControlFlow 0 12) (- 0 11)) (> (|Set#Card_18907| roots) 0))))
(let ((anon179_Else_correct  (=> (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@23) x@@6 $allocated) (and (=> (= (ControlFlow 0 268) 12) anon193_Then_correct) (=> (= (ControlFlow 0 268) 262) anon193_Else_correct)))))
(let ((anon177_Else_correct  (=> (and (and (forall ((n$0_1 T@Ref) ) (!  (=> (select g_1 n$0_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_1 cdr)))
 :qid |stdinbpl.1019:20|
 :skolemid |131|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_1 cdr)))
 :pattern ( (select g_1 n$0_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_1 cdr))
)) (state Heap@@23 QPMask@1)) (and (|Set#Subset_18938| roots g_1) (state Heap@@23 QPMask@1))) (and (=> (= (ControlFlow 0 306) 305) anon179_Then_correct) (=> (= (ControlFlow 0 306) 268) anon179_Else_correct)))))
(let ((anon11_correct true))
(let ((anon178_Else_correct  (=> (and (not (select g_1 n$0_25)) (= (ControlFlow 0 10) 7)) anon11_correct)))
(let ((anon178_Then_correct  (=> (select g_1 n$0_25) (and (=> (= (ControlFlow 0 8) (- 0 9)) (HasDirectPerm_18763_18764 QPMask@1 n$0_25 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@1 n$0_25 cdr) (=> (= (ControlFlow 0 8) 7) anon11_correct))))))
(let ((anon175_Else_correct  (=> (forall ((n_1 T@Ref) ) (!  (=> (select g_1 n_1) (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_1 car)))
 :qid |stdinbpl.1006:20|
 :skolemid |130|
 :pattern ( (select g_1 (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_1 car)))
 :pattern ( (select g_1 n_1) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_1 car))
)) (and (and (=> (= (ControlFlow 0 307) 306) anon177_Else_correct) (=> (= (ControlFlow 0 307) 8) anon178_Then_correct)) (=> (= (ControlFlow 0 307) 10) anon178_Else_correct)))))
(let ((anon7_correct true))
(let ((anon176_Else_correct  (=> (and (not (select g_1 n_45)) (= (ControlFlow 0 6) 3)) anon7_correct)))
(let ((anon176_Then_correct  (=> (select g_1 n_45) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_18763_18764 QPMask@1 n_45 car)) (=> (HasDirectPerm_18763_18764 QPMask@1 n_45 car) (=> (= (ControlFlow 0 4) 3) anon7_correct))))))
(let ((anon174_Else_correct  (and (=> (= (ControlFlow 0 308) (- 0 309)) (forall ((n$2_1_1 T@Ref) (n$2_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_1_1 n$2_1_2)) (select g_1 n$2_1_1)) (select g_1 n$2_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_1_1 n$2_1_2)))
 :qid |stdinbpl.965:15|
 :skolemid |124|
))) (=> (forall ((n$2_1_1@@0 T@Ref) (n$2_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$2_1_1@@0 n$2_1_2@@0)) (select g_1 n$2_1_1@@0)) (select g_1 n$2_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$2_1_1@@0 n$2_1_2@@0)))
 :qid |stdinbpl.965:15|
 :skolemid |124|
)) (=> (and (and (forall ((n$2_1_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$2_1_1@@1) (< NoPerm FullPerm)) (and (qpRange4 n$2_1_1@@1) (= (invRecv4 n$2_1_1@@1) n$2_1_1@@1)))
 :qid |stdinbpl.971:22|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$2_1_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$2_1_1@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$2_1_1@@1 cdr))
)) (forall ((o_4@@95 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv4 o_4@@95)) (< NoPerm FullPerm)) (qpRange4 o_4@@95)) (= (invRecv4 o_4@@95) o_4@@95))
 :qid |stdinbpl.975:22|
 :skolemid |126|
 :pattern ( (invRecv4 o_4@@95))
))) (and (forall ((n$2_1_1@@2 T@Ref) ) (!  (=> (select g_1 n$2_1_1@@2) (not (= n$2_1_1@@2 null)))
 :qid |stdinbpl.981:22|
 :skolemid |127|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$2_1_1@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$2_1_1@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$2_1_1@@2 cdr))
)) (forall ((o_4@@96 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv4 o_4@@96)) (< NoPerm FullPerm)) (qpRange4 o_4@@96)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@96) o_4@@96)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@96 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@96 cdr) FullPerm)))) (=> (not (and (and (select g_1 (invRecv4 o_4@@96)) (< NoPerm FullPerm)) (qpRange4 o_4@@96))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@96 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@96 cdr))))
 :qid |stdinbpl.987:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@96 cdr))
)))) (=> (and (and (and (and (forall ((o_4@@97 T@Ref) (f_5@@55 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_4@@97 f_5@@55) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@1) o_4@@97 f_5@@55)))
 :qid |stdinbpl.991:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_4@@97 f_5@@55))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@1) o_4@@97 f_5@@55))
)) (forall ((o_4@@98 T@Ref) (f_5@@56 T@Field_28338_28339) ) (!  (=> (not (= f_5@@56 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@98 f_5@@56) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@98 f_5@@56)))
 :qid |stdinbpl.991:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@98 f_5@@56))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_4@@98 f_5@@56))
))) (forall ((o_4@@99 T@Ref) (f_5@@57 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_4@@99 f_5@@57) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@1) o_4@@99 f_5@@57)))
 :qid |stdinbpl.991:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_4@@99 f_5@@57))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@1) o_4@@99 f_5@@57))
))) (forall ((o_4@@100 T@Ref) (f_5@@58 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_4@@100 f_5@@58) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@1) o_4@@100 f_5@@58)))
 :qid |stdinbpl.991:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_4@@100 f_5@@58))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@1) o_4@@100 f_5@@58))
))) (state Heap@@23 QPMask@1)) (and (and (=> (= (ControlFlow 0 308) 307) anon175_Else_correct) (=> (= (ControlFlow 0 308) 4) anon176_Then_correct)) (=> (= (ControlFlow 0 308) 6) anon176_Else_correct))))))))
(let ((anon174_Then_correct true))
(let ((anon173_Else_correct  (and (=> (= (ControlFlow 0 310) (- 0 311)) (forall ((n$1_1 T@Ref) (n$1_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1 n$1_1_1)) (select g_1 n$1_1)) (select g_1 n$1_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1 n$1_1_1)))
 :qid |stdinbpl.926:15|
 :skolemid |118|
))) (=> (forall ((n$1_1@@0 T@Ref) (n$1_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$1_1@@0 n$1_1_1@@0)) (select g_1 n$1_1@@0)) (select g_1 n$1_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$1_1@@0 n$1_1_1@@0)))
 :qid |stdinbpl.926:15|
 :skolemid |118|
)) (=> (and (and (forall ((n$1_1@@1 T@Ref) ) (!  (=> (and (select g_1 n$1_1@@1) (< NoPerm FullPerm)) (and (qpRange3 n$1_1@@1) (= (invRecv3 n$1_1@@1) n$1_1@@1)))
 :qid |stdinbpl.932:22|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$1_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) n$1_1@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$1_1@@1 car))
)) (forall ((o_4@@101 T@Ref) ) (!  (=> (and (and (select g_1 (invRecv3 o_4@@101)) (< NoPerm FullPerm)) (qpRange3 o_4@@101)) (= (invRecv3 o_4@@101) o_4@@101))
 :qid |stdinbpl.936:22|
 :skolemid |120|
 :pattern ( (invRecv3 o_4@@101))
))) (and (forall ((n$1_1@@2 T@Ref) ) (!  (=> (select g_1 n$1_1@@2) (not (= n$1_1@@2 null)))
 :qid |stdinbpl.942:22|
 :skolemid |121|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$1_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) n$1_1@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$1_1@@2 car))
)) (forall ((o_4@@102 T@Ref) ) (!  (and (=> (and (and (select g_1 (invRecv3 o_4@@102)) (< NoPerm FullPerm)) (qpRange3 o_4@@102)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@102) o_4@@102)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@102 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@102 car) FullPerm)))) (=> (not (and (and (select g_1 (invRecv3 o_4@@102)) (< NoPerm FullPerm)) (qpRange3 o_4@@102))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@102 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@102 car))))
 :qid |stdinbpl.948:22|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@102 car))
)))) (=> (and (and (and (and (forall ((o_4@@103 T@Ref) (f_5@@59 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@103 f_5@@59) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_4@@103 f_5@@59)))
 :qid |stdinbpl.952:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_4@@103 f_5@@59))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_4@@103 f_5@@59))
)) (forall ((o_4@@104 T@Ref) (f_5@@60 T@Field_28338_28339) ) (!  (=> (not (= f_5@@60 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@104 f_5@@60) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@104 f_5@@60)))
 :qid |stdinbpl.952:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_4@@104 f_5@@60))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_4@@104 f_5@@60))
))) (forall ((o_4@@105 T@Ref) (f_5@@61 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@105 f_5@@61) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_4@@105 f_5@@61)))
 :qid |stdinbpl.952:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_4@@105 f_5@@61))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_4@@105 f_5@@61))
))) (forall ((o_4@@106 T@Ref) (f_5@@62 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@106 f_5@@62) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_4@@106 f_5@@62)))
 :qid |stdinbpl.952:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_4@@106 f_5@@62))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_4@@106 f_5@@62))
))) (state Heap@@23 QPMask@0)) (and (=> (= (ControlFlow 0 310) 2) anon174_Then_correct) (=> (= (ControlFlow 0 310) 308) anon174_Else_correct))))))))
(let ((anon173_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@23 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (=> (and (and AssumePermUpperBound (> (|Set#Card_18907| roots) 0)) (and (state Heap@@23 ZeroMask) (not (select g_1 null)))) (and (=> (= (ControlFlow 0 312) 1) anon173_Then_correct) (=> (= (ControlFlow 0 312) 310) anon173_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 313) 312) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
