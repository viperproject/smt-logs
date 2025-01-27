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
(assert (forall ((Heap@@1 T@PolymorphicMapType_28265) (s_1 (Array T@Ref Bool)) ) (! (dummyFunction_18917 (|get#triggerStateless| s_1))
 :qid |stdinbpl.826:15|
 :skolemid |115|
 :pattern ( (|get'| Heap@@1 s_1))
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
(assert (forall ((Heap@@2 T@PolymorphicMapType_28265) (Mask@@0 T@PolymorphicMapType_28286) (refs@@0 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@2 Mask@@0) (or (< AssumeFunctionsAbove 0) (|$$#trigger| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@2 refs@@0)) (FrameFragment_5097 (|$$#condqp2| Heap@@2 refs@@0))) refs@@0))) (forall ((p_1 T@Ref) (s_1@@0 T@Ref) ) (! (=  (and (select refs@@0 p_1) (and (select refs@@0 s_1@@0) (or (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@2) p_1 car) s_1@@0) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@2) p_1 cdr) s_1@@0)))) (select (|$$'| Heap@@2 refs@@0) (create_edge p_1 s_1@@0)))
 :qid |stdinbpl.685:176|
 :skolemid |99|
 :pattern ( (select (|$$'| Heap@@2 refs@@0) (create_edge p_1 s_1@@0)))
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
(assert (forall ((Heap@@4 T@PolymorphicMapType_28265) (s_1@@1 (Array T@Ref Bool)) ) (!  (and (= (get Heap@@4 s_1@@1) (|get'| Heap@@4 s_1@@1)) (dummyFunction_18917 (|get#triggerStateless| s_1@@1)))
 :qid |stdinbpl.822:15|
 :skolemid |114|
 :pattern ( (get Heap@@4 s_1@@1))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.418:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_28265) (ExhaleHeap T@PolymorphicMapType_28265) (Mask@@1 T@PolymorphicMapType_28286) (pm_f_17 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_18763_90774 Mask@@1 null pm_f_17) (IsPredicateField_18763_90801 pm_f_17)) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@5) null (PredicateMaskField_18763 pm_f_17)) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap) null (PredicateMaskField_18763 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@1) (IsPredicateField_18763_90801 pm_f_17) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap) null (PredicateMaskField_18763 pm_f_17)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_28265) (ExhaleHeap@@0 T@PolymorphicMapType_28265) (Mask@@2 T@PolymorphicMapType_28286) (pm_f_17@@0 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_18763_90774 Mask@@2 null pm_f_17@@0) (IsWandField_18763_92350 pm_f_17@@0)) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@6) null (WandMaskField_18763 pm_f_17@@0)) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@0) null (WandMaskField_18763 pm_f_17@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@2) (IsWandField_18763_92350 pm_f_17@@0) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@0) null (WandMaskField_18763 pm_f_17@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_28265) (ExhaleHeap@@1 T@PolymorphicMapType_28265) (Mask@@3 T@PolymorphicMapType_28286) (pm_f_17@@1 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (=> (and (HasDirectPerm_18763_90774 Mask@@3 null pm_f_17@@1) (IsPredicateField_18763_90801 pm_f_17@@1)) (and (and (and (forall ((o2_17 T@Ref) (f_18 T@Field_28325_53) ) (!  (=> (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_17@@1))) o2_17 f_18) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@7) o2_17 f_18) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17 f_18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17 f_18))
)) (forall ((o2_17@@0 T@Ref) (f_18@@0 T@Field_28338_28339) ) (!  (=> (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_17@@1))) o2_17@@0 f_18@@0) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@7) o2_17@@0 f_18@@0) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@0 f_18@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@0 f_18@@0))
))) (forall ((o2_17@@1 T@Ref) (f_18@@1 T@Field_18763_90710) ) (!  (=> (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_17@@1))) o2_17@@1 f_18@@1) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@7) o2_17@@1 f_18@@1) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@1 f_18@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@1 f_18@@1))
))) (forall ((o2_17@@2 T@Ref) (f_18@@2 T@Field_18763_90843) ) (!  (=> (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) null (PredicateMaskField_18763 pm_f_17@@1))) o2_17@@2 f_18@@2) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@7) o2_17@@2 f_18@@2) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@2 f_18@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@1) o2_17@@2 f_18@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@3) (IsPredicateField_18763_90801 pm_f_17@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_28265) (ExhaleHeap@@2 T@PolymorphicMapType_28265) (Mask@@4 T@PolymorphicMapType_28286) (pm_f_17@@2 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (=> (and (HasDirectPerm_18763_90774 Mask@@4 null pm_f_17@@2) (IsWandField_18763_92350 pm_f_17@@2)) (and (and (and (forall ((o2_17@@3 T@Ref) (f_18@@3 T@Field_28325_53) ) (!  (=> (select (|PolymorphicMapType_28814_28325_53#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_17@@2))) o2_17@@3 f_18@@3) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@8) o2_17@@3 f_18@@3) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@3 f_18@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@3 f_18@@3))
)) (forall ((o2_17@@4 T@Ref) (f_18@@4 T@Field_28338_28339) ) (!  (=> (select (|PolymorphicMapType_28814_28325_28339#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_17@@2))) o2_17@@4 f_18@@4) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@8) o2_17@@4 f_18@@4) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@4 f_18@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@4 f_18@@4))
))) (forall ((o2_17@@5 T@Ref) (f_18@@5 T@Field_18763_90710) ) (!  (=> (select (|PolymorphicMapType_28814_28325_90710#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_17@@2))) o2_17@@5 f_18@@5) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@8) o2_17@@5 f_18@@5) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@5 f_18@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@5 f_18@@5))
))) (forall ((o2_17@@6 T@Ref) (f_18@@6 T@Field_18763_90843) ) (!  (=> (select (|PolymorphicMapType_28814_28325_91823#PolymorphicMapType_28814| (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) null (WandMaskField_18763 pm_f_17@@2))) o2_17@@6 f_18@@6) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@8) o2_17@@6 f_18@@6) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@6 f_18@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@2) o2_17@@6 f_18@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@4) (IsWandField_18763_92350 pm_f_17@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((EG_1 (Array T@EdgeDomainType Bool)) (u_1 T@Ref) (v_2 T@Ref) (w_2 T@Ref) ) (!  (=> (and (exists_path_ EG_1 u_1 w_2) (exists_path_ EG_1 w_2 v_2)) (exists_path_ EG_1 u_1 v_2))
 :qid |stdinbpl.614:15|
 :skolemid |91|
 :pattern ( (exists_path EG_1 u_1 w_2) (exists_path EG_1 w_2 v_2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_28265) (Mask@@5 T@PolymorphicMapType_28286) (refs@@2 (Array T@Ref Bool)) ) (!  (=> (state Heap@@9 Mask@@5) (= (|$$'| Heap@@9 refs@@2) (|$$#frame| (CombineFrames (FrameFragment_5097 (|$$#condqp1| Heap@@9 refs@@2)) (FrameFragment_5097 (|$$#condqp2| Heap@@9 refs@@2))) refs@@2)))
 :qid |stdinbpl.657:15|
 :skolemid |96|
 :pattern ( (state Heap@@9 Mask@@5) (|$$'| Heap@@9 refs@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_28265) (ExhaleHeap@@3 T@PolymorphicMapType_28265) (Mask@@6 T@PolymorphicMapType_28286) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (=> (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@10) o_37 $allocated) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@3) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@3 Mask@@6) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@3) o_37 $allocated))
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
(assert (forall ((Heap@@12 T@PolymorphicMapType_28265) (ExhaleHeap@@5 T@PolymorphicMapType_28265) (Mask@@16 T@PolymorphicMapType_28286) (o_37@@0 T@Ref) (f_18@@7 T@Field_18763_90843) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_18763_95655 Mask@@16 o_37@@0 f_18@@7) (= (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@12) o_37@@0 f_18@@7) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@5) o_37@@0 f_18@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| ExhaleHeap@@5) o_37@@0 f_18@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_28265) (ExhaleHeap@@6 T@PolymorphicMapType_28265) (Mask@@17 T@PolymorphicMapType_28286) (o_37@@1 T@Ref) (f_18@@8 T@Field_18763_90710) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_18763_90774 Mask@@17 o_37@@1 f_18@@8) (= (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@13) o_37@@1 f_18@@8) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@6) o_37@@1 f_18@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| ExhaleHeap@@6) o_37@@1 f_18@@8))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_28265) (ExhaleHeap@@7 T@PolymorphicMapType_28265) (Mask@@18 T@PolymorphicMapType_28286) (o_37@@2 T@Ref) (f_18@@9 T@Field_28325_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_18763_53 Mask@@18 o_37@@2 f_18@@9) (= (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@14) o_37@@2 f_18@@9) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@7) o_37@@2 f_18@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| ExhaleHeap@@7) o_37@@2 f_18@@9))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_28265) (ExhaleHeap@@8 T@PolymorphicMapType_28265) (Mask@@19 T@PolymorphicMapType_28286) (o_37@@3 T@Ref) (f_18@@10 T@Field_28338_28339) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_18763_18764 Mask@@19 o_37@@3 f_18@@10) (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@15) o_37@@3 f_18@@10) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@8) o_37@@3 f_18@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| ExhaleHeap@@8) o_37@@3 f_18@@10))
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
(assert (forall ((EG_1@@0 (Array T@EdgeDomainType Bool)) (from_1 (Array T@Ref Bool)) (to_1 T@Ref) ) (! (= (exists_spath EG_1@@0 from_1 to_1) (exists ((f_38 T@Ref) ) (!  (and (select from_1 f_38) (exists_path EG_1@@0 f_38 to_1))
 :qid |stdinbpl.622:55|
 :skolemid |92|
 :pattern ( (select from_1 f_38))
 :pattern ( (exists_path EG_1@@0 f_38 to_1))
)))
 :qid |stdinbpl.620:15|
 :skolemid |93|
 :pattern ( (exists_spath EG_1@@0 from_1 to_1))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_18959| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.379:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_18959| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_18959| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_28265) (Mask@@20 T@PolymorphicMapType_28286) (s_1@@2 (Array T@Ref Bool)) ) (!  (=> (and (state Heap@@16 Mask@@20) (or (< AssumeFunctionsAbove 1) (|get#trigger| EmptyFrame s_1@@2))) (=> (> (|Set#Card_18907| s_1@@2) 0) (select s_1@@2 (|get'| Heap@@16 s_1@@2))))
 :qid |stdinbpl.839:15|
 :skolemid |117|
 :pattern ( (state Heap@@16 Mask@@20) (|get'| Heap@@16 s_1@@2))
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
(assert (forall ((EG_1@@1 (Array T@EdgeDomainType Bool)) (start_1 T@Ref) (end_1 T@Ref) ) (! (= (exists_path_ EG_1@@1 start_1 end_1)  (or (= start_1 end_1) (exists ((w_2@@0 T@Ref) ) (!  (and (select EG_1@@1 (create_edge start_1 w_2@@0)) (exists_path_ EG_1@@1 w_2@@0 end_1))
 :qid |stdinbpl.607:78|
 :skolemid |89|
 :pattern ( (select EG_1@@1 (create_edge start_1 w_2@@0)))
 :pattern ( (exists_path_ EG_1@@1 w_2@@0 end_1))
))))
 :qid |stdinbpl.605:15|
 :skolemid |90|
 :pattern ( (exists_path EG_1@@1 start_1 end_1))
 :pattern ( (select EG_1@@1 (create_edge start_1 end_1)))
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
(assert (forall ((Heap@@17 T@PolymorphicMapType_28265) (Mask@@21 T@PolymorphicMapType_28286) (s_1@@3 (Array T@Ref Bool)) ) (!  (=> (state Heap@@17 Mask@@21) (= (|get'| Heap@@17 s_1@@3) (|get#frame| EmptyFrame s_1@@3)))
 :qid |stdinbpl.833:15|
 :skolemid |116|
 :pattern ( (state Heap@@17 Mask@@21) (|get'| Heap@@17 s_1@@3))
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
(assert (forall ((EG_1@@2 (Array T@EdgeDomainType Bool)) (U_1 (Array T@Ref Bool)) (M_1 (Array T@Ref Bool)) ) (!  (=> (apply_noExit EG_1@@2 U_1 M_1) (=> (forall ((u_1@@0 T@Ref) (v_2@@0 T@Ref) ) (!  (=> (and (select M_1 u_1@@0) (and (select U_1 v_2@@0) (not (select M_1 v_2@@0)))) (not (select EG_1@@2 (create_edge u_1@@0 v_2@@0))))
 :qid |stdinbpl.577:52|
 :skolemid |83|
 :pattern ( (select EG_1@@2 (create_edge u_1@@0 v_2@@0)))
 :pattern ( (select M_1 u_1@@0) (select M_1 v_2@@0))
)) (forall ((u_1_1 T@Ref) (v_1_1 T@Ref) ) (!  (=> (and (select M_1 u_1_1) (and (select U_1 v_1_1) (not (select M_1 v_1_1)))) (not (exists_path EG_1@@2 u_1_1 v_1_1)))
 :qid |stdinbpl.580:17|
 :skolemid |84|
 :pattern ( (exists_path EG_1@@2 u_1_1 v_1_1))
 :pattern ( (select M_1 u_1_1) (select M_1 v_1_1))
))))
 :qid |stdinbpl.575:15|
 :skolemid |85|
 :pattern ( (apply_noExit EG_1@@2 U_1 M_1))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_19035| o@@3))
 :qid |stdinbpl.329:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_19035| o@@3))
)))
(assert (forall ((p_1@@0 T@Ref) (s_1@@4 T@Ref) ) (!  (and (= (edge_pred (create_edge p_1@@0 s_1@@4)) p_1@@0) (= (edge_succ (create_edge p_1@@0 s_1@@4)) s_1@@4))
 :qid |stdinbpl.526:15|
 :skolemid |82|
 :pattern ( (create_edge p_1@@0 s_1@@4))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_28265) (o_36 T@Ref) (f_29 T@Field_18763_90710) (v T@FrameType) ) (! (succHeap Heap@@18 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@18) (store (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@18) o_36 f_29 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@18) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@18) (store (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@18) o_36 f_29 v)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_28265) (o_36@@0 T@Ref) (f_29@@0 T@Field_18763_90843) (v@@0 T@PolymorphicMapType_28814) ) (! (succHeap Heap@@19 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@19) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@19) (store (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@19) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@19) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@19) (store (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@19) o_36@@0 f_29@@0 v@@0) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_28265) (o_36@@1 T@Ref) (f_29@@1 T@Field_28338_28339) (v@@1 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@20) (store (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@20) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@20) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@20) (store (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@20) o_36@@1 f_29@@1 v@@1) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@20) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_28265) (o_36@@2 T@Ref) (f_29@@2 T@Field_28325_53) (v@@2 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_28265 (store (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@21) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_28265 (store (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@21) o_36@@2 f_29@@2 v@@2) (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_18763_90887#PolymorphicMapType_28265| Heap@@21) (|PolymorphicMapType_28265_28325_90710#PolymorphicMapType_28265| Heap@@21)))
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
(assert (forall ((o_36@@3 T@Ref) (f_50 T@Field_28338_28339) (Heap@@22 T@PolymorphicMapType_28265) ) (!  (=> (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@22) o_36@@3 $allocated) (select (|PolymorphicMapType_28265_18149_53#PolymorphicMapType_28265| Heap@@22) (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@22) o_36@@3 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@22) o_36@@3 f_50))
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
(assert (forall ((EG_1@@4 (Array T@EdgeDomainType Bool)) (start_1@@0 T@Ref) (mid T@Ref) (end_1@@0 T@Ref) ) (! (= (is_on_path EG_1@@4 start_1@@0 mid end_1@@0)  (and (select EG_1@@4 (create_edge start_1@@0 mid)) (exists_path_ EG_1@@4 mid end_1@@0)))
 :qid |stdinbpl.599:15|
 :skolemid |88|
 :pattern ( (is_on_path EG_1@@4 start_1@@0 mid end_1@@0))
 :pattern ( (select EG_1@@4 (create_edge start_1@@0 mid)) (exists_path_ EG_1@@4 mid end_1@@0))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@21 (Array T@Ref Bool)) (b@@14 (Array T@Ref Bool)) (o@@5 T@Ref) ) (! (= (select (|Set#Union_18941| a@@21 b@@14) o@@5)  (or (select a@@21 o@@5) (select b@@14 o@@5)))
 :qid |stdinbpl.352:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_18941| a@@21 b@@14) o@@5))
)))
(assert (forall ((EG_1@@5 (Array T@EdgeDomainType Bool)) (start_1@@1 T@Ref) (end_1@@1 T@Ref) ) (! (= (exists_path EG_1@@5 start_1@@1 end_1@@1) (exists_path_ EG_1@@5 start_1@@1 end_1@@1))
 :qid |stdinbpl.593:15|
 :skolemid |87|
 :pattern ( (exists_path EG_1@@5 start_1@@1 end_1@@1))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@23 () T@PolymorphicMapType_28265)
(declare-fun p_7 () T@Ref)
(declare-fun s_5 () T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_28286)
(declare-fun refs@@5 () (Array T@Ref Bool))
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_28286)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(set-info :boogie-vc-id |$$#definedness|)
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
 (=> (= (ControlFlow 0 0) 18) (let ((anon9_correct true))
(let ((anon16_Else_correct  (=> (and (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) p_7 car) s_5) (= (ControlFlow 0 9) 4)) anon9_correct)))
(let ((anon16_Then_correct  (=> (not (= (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) p_7 car) s_5)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (HasDirectPerm_18763_18764 QPMask@1 p_7 cdr)) (=> (HasDirectPerm_18763_18764 QPMask@1 p_7 cdr) (=> (= (ControlFlow 0 7) 4) anon9_correct))))))
(let ((anon15_Then_correct  (=> (select refs@@5 s_5) (and (=> (= (ControlFlow 0 10) (- 0 11)) (HasDirectPerm_18763_18764 QPMask@1 p_7 car)) (=> (HasDirectPerm_18763_18764 QPMask@1 p_7 car) (and (=> (= (ControlFlow 0 10) 7) anon16_Then_correct) (=> (= (ControlFlow 0 10) 9) anon16_Else_correct)))))))
(let ((anon15_Else_correct  (=> (and (not (select refs@@5 s_5)) (= (ControlFlow 0 6) 4)) anon9_correct)))
(let ((anon14_Then_correct  (=> (select refs@@5 p_7) (and (=> (= (ControlFlow 0 12) 10) anon15_Then_correct) (=> (= (ControlFlow 0 12) 6) anon15_Else_correct)))))
(let ((anon14_Else_correct  (=> (and (not (select refs@@5 p_7)) (= (ControlFlow 0 5) 4)) anon9_correct)))
(let ((anon13_Else_correct true))
(let ((anon12_Else_correct  (and (=> (= (ControlFlow 0 13) (- 0 14)) (forall ((n$0_3 T@Ref) (n$0_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3 n$0_3_1)) (select refs@@5 n$0_3)) (select refs@@5 n$0_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3 n$0_3_1)))
 :qid |stdinbpl.758:15|
 :skolemid |107|
))) (=> (forall ((n$0_3@@0 T@Ref) (n$0_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n$0_3@@0 n$0_3_1@@0)) (select refs@@5 n$0_3@@0)) (select refs@@5 n$0_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n$0_3@@0 n$0_3_1@@0)))
 :qid |stdinbpl.758:15|
 :skolemid |107|
)) (=> (and (and (forall ((n$0_3@@1 T@Ref) ) (!  (=> (and (select refs@@5 n$0_3@@1) (< NoPerm FullPerm)) (and (qpRange2 n$0_3@@1) (= (invRecv2 n$0_3@@1) n$0_3@@1)))
 :qid |stdinbpl.764:22|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_3@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$0_3@@1 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_3@@1 cdr))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (select refs@@5 (invRecv2 o_9)) (< NoPerm FullPerm)) (qpRange2 o_9)) (= (invRecv2 o_9) o_9))
 :qid |stdinbpl.768:22|
 :skolemid |109|
 :pattern ( (invRecv2 o_9))
))) (and (forall ((n$0_3@@2 T@Ref) ) (!  (=> (select refs@@5 n$0_3@@2) (not (= n$0_3@@2 null)))
 :qid |stdinbpl.774:22|
 :skolemid |110|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_3@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) n$0_3@@2 cdr))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n$0_3@@2 cdr))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (select refs@@5 (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv2 o_9@@0) o_9@@0)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_9@@0 cdr) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@0 cdr) FullPerm)))) (=> (not (and (and (select refs@@5 (invRecv2 o_9@@0)) (< NoPerm FullPerm)) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_9@@0 cdr) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@0 cdr))))
 :qid |stdinbpl.780:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_9@@0 cdr))
)))) (=> (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_9@@1 f_5) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@1) o_9@@1 f_5)))
 :qid |stdinbpl.784:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@1) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_28338_28339) ) (!  (=> (not (= f_5@@0 cdr)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@2 f_5@@0) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_9@@2 f_5@@0)))
 :qid |stdinbpl.784:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@1) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_9@@3 f_5@@1) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@1) o_9@@3 f_5@@1)))
 :qid |stdinbpl.784:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@1) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_9@@4 f_5@@2) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@1) o_9@@4 f_5@@2)))
 :qid |stdinbpl.784:29|
 :skolemid |112|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@1) o_9@@4 f_5@@2))
))) (and (state Heap@@23 QPMask@1) (state Heap@@23 QPMask@1))) (and (and (=> (= (ControlFlow 0 13) 3) anon13_Else_correct) (=> (= (ControlFlow 0 13) 12) anon14_Then_correct)) (=> (= (ControlFlow 0 13) 5) anon14_Else_correct))))))))
(let ((anon12_Then_correct true))
(let ((anon11_Else_correct  (and (=> (= (ControlFlow 0 15) (- 0 16)) (forall ((n_3 T@Ref) (n_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3 n_3_1)) (select refs@@5 n_3)) (select refs@@5 n_3_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3 n_3_1)))
 :qid |stdinbpl.719:15|
 :skolemid |101|
))) (=> (forall ((n_3@@0 T@Ref) (n_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= n_3@@0 n_3_1@@0)) (select refs@@5 n_3@@0)) (select refs@@5 n_3_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= n_3@@0 n_3_1@@0)))
 :qid |stdinbpl.719:15|
 :skolemid |101|
)) (=> (and (and (forall ((n_3@@1 T@Ref) ) (!  (=> (and (select refs@@5 n_3@@1) (< NoPerm FullPerm)) (and (qpRange1 n_3@@1) (= (invRecv1 n_3@@1) n_3@@1)))
 :qid |stdinbpl.725:22|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) n_3@@1 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_3@@1 car))
)) (forall ((o_9@@5 T@Ref) ) (!  (=> (and (and (select refs@@5 (invRecv1 o_9@@5)) (< NoPerm FullPerm)) (qpRange1 o_9@@5)) (= (invRecv1 o_9@@5) o_9@@5))
 :qid |stdinbpl.729:22|
 :skolemid |103|
 :pattern ( (invRecv1 o_9@@5))
))) (and (forall ((n_3@@2 T@Ref) ) (!  (=> (select refs@@5 n_3@@2) (not (= n_3@@2 null)))
 :qid |stdinbpl.735:22|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) n_3@@2 car))
 :pattern ( (select (|PolymorphicMapType_28265_18152_18153#PolymorphicMapType_28265| Heap@@23) n_3@@2 car))
)) (forall ((o_9@@6 T@Ref) ) (!  (and (=> (and (and (select refs@@5 (invRecv1 o_9@@6)) (< NoPerm FullPerm)) (qpRange1 o_9@@6)) (and (=> (< NoPerm FullPerm) (= (invRecv1 o_9@@6) o_9@@6)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@6 car) (+ (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_9@@6 car) FullPerm)))) (=> (not (and (and (select refs@@5 (invRecv1 o_9@@6)) (< NoPerm FullPerm)) (qpRange1 o_9@@6))) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@6 car) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_9@@6 car))))
 :qid |stdinbpl.741:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@6 car))
)))) (=> (and (and (and (and (forall ((o_9@@7 T@Ref) (f_5@@3 T@Field_28325_53) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_9@@7 f_5@@3) (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_9@@7 f_5@@3)))
 :qid |stdinbpl.745:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| ZeroMask) o_9@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_28286_18763_53#PolymorphicMapType_28286| QPMask@0) o_9@@7 f_5@@3))
)) (forall ((o_9@@8 T@Ref) (f_5@@4 T@Field_28338_28339) ) (!  (=> (not (= f_5@@4 car)) (= (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_9@@8 f_5@@4) (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@8 f_5@@4)))
 :qid |stdinbpl.745:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| ZeroMask) o_9@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_28286_18763_18764#PolymorphicMapType_28286| QPMask@0) o_9@@8 f_5@@4))
))) (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_18763_90710) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_9@@9 f_5@@5) (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_9@@9 f_5@@5)))
 :qid |stdinbpl.745:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| ZeroMask) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_28286_18763_90710#PolymorphicMapType_28286| QPMask@0) o_9@@9 f_5@@5))
))) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_18763_90843) ) (!  (=> true (= (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_9@@10 f_5@@6) (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_9@@10 f_5@@6)))
 :qid |stdinbpl.745:29|
 :skolemid |106|
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| ZeroMask) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_28286_18763_94389#PolymorphicMapType_28286| QPMask@0) o_9@@10 f_5@@6))
))) (state Heap@@23 QPMask@0)) (and (=> (= (ControlFlow 0 15) 2) anon12_Then_correct) (=> (= (ControlFlow 0 15) 13) anon12_Else_correct))))))))
(let ((anon11_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (not AssumePermUpperBound) (= AssumeFunctionsAbove 0)) (and (=> (= (ControlFlow 0 17) 1) anon11_Then_correct) (=> (= (ControlFlow 0 17) 15) anon11_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 18) 17) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
