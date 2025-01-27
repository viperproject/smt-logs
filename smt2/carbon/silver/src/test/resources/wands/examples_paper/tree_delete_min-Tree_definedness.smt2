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
(declare-sort T@Field_37749_53 0)
(declare-sort T@Field_37762_37763 0)
(declare-sort T@Field_44815_3561 0)
(declare-sort T@Field_45250_45251 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_47989_47994 0)
(declare-sort T@Field_43796_43801 0)
(declare-sort T@Field_20369_20450 0)
(declare-sort T@Field_20369_43801 0)
(declare-sort T@Field_20449_3561 0)
(declare-sort T@Field_20449_20372 0)
(declare-sort T@Field_20449_53 0)
(declare-sort T@Field_43776_3024 0)
(declare-sort T@Field_43776_20372 0)
(declare-sort T@Field_43819_43820 0)
(declare-sort T@Field_43776_53 0)
(declare-datatypes ((T@PolymorphicMapType_37710 0)) (((PolymorphicMapType_37710 (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| (Array T@Ref T@Field_45250_45251 Real)) (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| (Array T@Ref T@Field_44815_3561 Real)) (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| (Array T@Ref T@Field_37762_37763 Real)) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| (Array T@Ref T@Field_43776_3024 Real)) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| (Array T@Ref T@Field_20449_3561 Real)) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| (Array T@Ref T@Field_20449_20372 Real)) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| (Array T@Ref T@Field_20449_53 Real)) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| (Array T@Ref T@Field_47989_47994 Real)) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| (Array T@Ref T@Field_20369_20450 Real)) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| (Array T@Ref T@Field_37749_53 Real)) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| (Array T@Ref T@Field_20369_43801 Real)) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| (Array T@Ref T@Field_43819_43820 Real)) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| (Array T@Ref T@Field_43776_20372 Real)) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| (Array T@Ref T@Field_43776_53 Real)) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| (Array T@Ref T@Field_43796_43801 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_38238 0)) (((PolymorphicMapType_38238 (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (Array T@Ref T@Field_44815_3561 Bool)) (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (Array T@Ref T@Field_37762_37763 Bool)) (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (Array T@Ref T@Field_37749_53 Bool)) (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (Array T@Ref T@Field_20369_43801 Bool)) (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (Array T@Ref T@Field_20369_20450 Bool)) (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (Array T@Ref T@Field_43776_3024 Bool)) (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (Array T@Ref T@Field_43776_20372 Bool)) (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (Array T@Ref T@Field_43776_53 Bool)) (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (Array T@Ref T@Field_43796_43801 Bool)) (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (Array T@Ref T@Field_43819_43820 Bool)) (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (Array T@Ref T@Field_20449_3561 Bool)) (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (Array T@Ref T@Field_20449_20372 Bool)) (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (Array T@Ref T@Field_20449_53 Bool)) (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (Array T@Ref T@Field_47989_47994 Bool)) (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (Array T@Ref T@Field_45250_45251 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_37689 0)) (((PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| (Array T@Ref T@Field_37749_53 Bool)) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| (Array T@Ref T@Field_37762_37763 T@Ref)) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| (Array T@Ref T@Field_44815_3561 Int)) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| (Array T@Ref T@Field_45250_45251 T@FrameType)) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| (Array T@Ref T@Field_47989_47994 T@PolymorphicMapType_38238)) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| (Array T@Ref T@Field_43796_43801 T@PolymorphicMapType_38238)) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| (Array T@Ref T@Field_20369_20450 T@FrameType)) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| (Array T@Ref T@Field_20369_43801 T@PolymorphicMapType_38238)) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| (Array T@Ref T@Field_20449_3561 Int)) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| (Array T@Ref T@Field_20449_20372 T@Ref)) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| (Array T@Ref T@Field_20449_53 Bool)) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| (Array T@Ref T@Field_43776_3024 Int)) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| (Array T@Ref T@Field_43776_20372 T@Ref)) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| (Array T@Ref T@Field_43819_43820 T@FrameType)) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| (Array T@Ref T@Field_43776_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_37749_53)
(declare-fun v_35 () T@Field_44815_3561)
(declare-fun l () T@Field_37762_37763)
(declare-fun r_11 () T@Field_37762_37763)
(declare-sort T@Seq_2867 0)
(declare-fun |Seq#Length_2867| (T@Seq_2867) Int)
(declare-fun |Seq#Drop_4420| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun WandMaskField_20302 (T@Field_43819_43820) T@Field_43796_43801)
(declare-fun |wand#ft| (T@Ref Real T@Ref T@Ref T@Seq_2867 T@Ref T@Ref T@Seq_2867) T@Field_43819_43820)
(declare-fun |wand#sm| (T@Ref Real T@Ref T@Ref T@Seq_2867 T@Ref T@Ref T@Seq_2867) T@Field_43796_43801)
(declare-fun succHeap (T@PolymorphicMapType_37689 T@PolymorphicMapType_37689) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_37689 T@PolymorphicMapType_37689) Bool)
(declare-fun state (T@PolymorphicMapType_37689 T@PolymorphicMapType_37710) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_37710) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_38238)
(declare-fun |Seq#Index_2867| (T@Seq_2867 Int) Int)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Empty_4539| () T@Seq_2867)
(declare-fun Tree (T@Ref) T@Field_45250_45251)
(declare-fun IsPredicateField_20449_20450 (T@Field_45250_45251) Bool)
(declare-fun |val'| (T@PolymorphicMapType_37689 T@Ref) Int)
(declare-fun dummyFunction_3798 (Int) Bool)
(declare-fun |val#triggerStateless| (T@Ref) Int)
(declare-fun |vals'| (T@PolymorphicMapType_37689 T@Ref) T@Seq_2867)
(declare-fun dummyFunction_49522 (T@Seq_2867) Bool)
(declare-fun |vals#triggerStateless| (T@Ref) T@Seq_2867)
(declare-fun |Tree#trigger_20449| (T@PolymorphicMapType_37689 T@Field_45250_45251) Bool)
(declare-fun |Tree#everUsed_20449| (T@Field_45250_45251) Bool)
(declare-fun |Seq#Update_2867| (T@Seq_2867 Int Int) T@Seq_2867)
(declare-fun |Seq#Take_2867| (T@Seq_2867 Int) T@Seq_2867)
(declare-fun |Seq#Contains_2867| (T@Seq_2867 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2867)
(declare-fun |Seq#Skolem_2867| (T@Seq_2867 Int) Int)
(declare-fun val_3 (T@PolymorphicMapType_37689 T@Ref) Int)
(declare-fun vals_1 (T@PolymorphicMapType_37689 T@Ref) T@Seq_2867)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_37689 T@PolymorphicMapType_37689 T@PolymorphicMapType_37710) Bool)
(declare-fun IsPredicateField_20302_20303 (T@Field_43819_43820) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_43776 (T@Field_43819_43820) T@Field_43796_43801)
(declare-fun HasDirectPerm_43776_20450 (T@PolymorphicMapType_37710 T@Ref T@Field_43819_43820) Bool)
(declare-fun PredicateMaskField_20449 (T@Field_45250_45251) T@Field_47989_47994)
(declare-fun HasDirectPerm_20449_20450 (T@PolymorphicMapType_37710 T@Ref T@Field_45250_45251) Bool)
(declare-fun IsPredicateField_20369_130072 (T@Field_20369_20450) Bool)
(declare-fun PredicateMaskField_20369 (T@Field_20369_20450) T@Field_20369_43801)
(declare-fun HasDirectPerm_20369_20450 (T@PolymorphicMapType_37710 T@Ref T@Field_20369_20450) Bool)
(declare-fun IsWandField_20302_20303 (T@Field_43819_43820) Bool)
(declare-fun IsWandField_20449_135421 (T@Field_45250_45251) Bool)
(declare-fun WandMaskField_20449 (T@Field_45250_45251) T@Field_47989_47994)
(declare-fun IsWandField_20369_135064 (T@Field_20369_20450) Bool)
(declare-fun WandMaskField_20369 (T@Field_20369_20450) T@Field_20369_43801)
(declare-fun |Seq#Singleton_3561| (Int) T@Seq_2867)
(declare-fun |Tree#sm| (T@Ref) T@Field_47989_47994)
(declare-fun |Seq#Append_4433| (T@Seq_2867 T@Seq_2867) T@Seq_2867)
(declare-fun wand (T@Ref Real T@Ref T@Ref T@Seq_2867 T@Ref T@Ref T@Seq_2867) T@Field_43776_3024)
(declare-fun IsWandField_20281_3024 (T@Field_43776_3024) Bool)
(declare-fun IsPredicateField_20281_3024 (T@Field_43776_3024) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_37689)
(declare-fun ZeroMask () T@PolymorphicMapType_37710)
(declare-fun InsidePredicate_43776_43776 (T@Field_43819_43820 T@FrameType T@Field_43819_43820 T@FrameType) Bool)
(declare-fun InsidePredicate_37749_37749 (T@Field_20369_20450 T@FrameType T@Field_20369_20450 T@FrameType) Bool)
(declare-fun InsidePredicate_20449_20449 (T@Field_45250_45251 T@FrameType T@Field_45250_45251 T@FrameType) Bool)
(declare-fun IsPredicateField_20369_3561 (T@Field_44815_3561) Bool)
(declare-fun IsWandField_20369_3561 (T@Field_44815_3561) Bool)
(declare-fun IsPredicateField_20371_20372 (T@Field_37762_37763) Bool)
(declare-fun IsWandField_20371_20372 (T@Field_37762_37763) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_20281_146024 (T@Field_43796_43801) Bool)
(declare-fun IsWandField_20281_146040 (T@Field_43796_43801) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_20281_53 (T@Field_43776_53) Bool)
(declare-fun IsWandField_20281_53 (T@Field_43776_53) Bool)
(declare-fun IsPredicateField_20281_20372 (T@Field_43776_20372) Bool)
(declare-fun IsWandField_20281_20372 (T@Field_43776_20372) Bool)
(declare-fun IsPredicateField_20369_145207 (T@Field_20369_43801) Bool)
(declare-fun IsWandField_20369_145223 (T@Field_20369_43801) Bool)
(declare-fun IsPredicateField_20369_53 (T@Field_37749_53) Bool)
(declare-fun IsWandField_20369_53 (T@Field_37749_53) Bool)
(declare-fun IsPredicateField_20449_144404 (T@Field_47989_47994) Bool)
(declare-fun IsWandField_20449_144420 (T@Field_47989_47994) Bool)
(declare-fun IsPredicateField_20449_53 (T@Field_20449_53) Bool)
(declare-fun IsWandField_20449_53 (T@Field_20449_53) Bool)
(declare-fun IsPredicateField_20449_20372 (T@Field_20449_20372) Bool)
(declare-fun IsWandField_20449_20372 (T@Field_20449_20372) Bool)
(declare-fun IsPredicateField_20449_3561 (T@Field_20449_3561) Bool)
(declare-fun IsWandField_20449_3561 (T@Field_20449_3561) Bool)
(declare-fun HasDirectPerm_43776_129827 (T@PolymorphicMapType_37710 T@Ref T@Field_43796_43801) Bool)
(declare-fun HasDirectPerm_43776_53 (T@PolymorphicMapType_37710 T@Ref T@Field_43776_53) Bool)
(declare-fun HasDirectPerm_43776_20372 (T@PolymorphicMapType_37710 T@Ref T@Field_43776_20372) Bool)
(declare-fun HasDirectPerm_43776_3561 (T@PolymorphicMapType_37710 T@Ref T@Field_43776_3024) Bool)
(declare-fun HasDirectPerm_20449_128693 (T@PolymorphicMapType_37710 T@Ref T@Field_47989_47994) Bool)
(declare-fun HasDirectPerm_20449_53 (T@PolymorphicMapType_37710 T@Ref T@Field_20449_53) Bool)
(declare-fun HasDirectPerm_20449_20372 (T@PolymorphicMapType_37710 T@Ref T@Field_20449_20372) Bool)
(declare-fun HasDirectPerm_20449_3561 (T@PolymorphicMapType_37710 T@Ref T@Field_20449_3561) Bool)
(declare-fun HasDirectPerm_20369_127552 (T@PolymorphicMapType_37710 T@Ref T@Field_20369_43801) Bool)
(declare-fun HasDirectPerm_20369_53 (T@PolymorphicMapType_37710 T@Ref T@Field_37749_53) Bool)
(declare-fun HasDirectPerm_20371_20372 (T@PolymorphicMapType_37710 T@Ref T@Field_37762_37763) Bool)
(declare-fun HasDirectPerm_20369_3561 (T@PolymorphicMapType_37710 T@Ref T@Field_44815_3561) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_37710 T@PolymorphicMapType_37710 T@PolymorphicMapType_37710) Bool)
(declare-fun |Seq#Equal_4420| (T@Seq_2867 T@Seq_2867) Bool)
(declare-fun |Seq#ContainsTrigger_2867| (T@Seq_2867 Int) Bool)
(declare-fun getPredWandId_20281_3024 (T@Field_43776_3024) Int)
(declare-fun |val#frame| (T@FrameType T@Ref) Int)
(declare-fun |vals#frame| (T@FrameType T@Ref) T@Seq_2867)
(declare-fun getPredWandId_20449_20450 (T@Field_45250_45251) Int)
(declare-fun |Seq#SkolemDiff_2867| (T@Seq_2867 T@Seq_2867) Int)
(declare-fun InsidePredicate_43776_37749 (T@Field_43819_43820 T@FrameType T@Field_20369_20450 T@FrameType) Bool)
(declare-fun InsidePredicate_43776_20449 (T@Field_43819_43820 T@FrameType T@Field_45250_45251 T@FrameType) Bool)
(declare-fun InsidePredicate_37749_43776 (T@Field_20369_20450 T@FrameType T@Field_43819_43820 T@FrameType) Bool)
(declare-fun InsidePredicate_37749_20449 (T@Field_20369_20450 T@FrameType T@Field_45250_45251 T@FrameType) Bool)
(declare-fun InsidePredicate_20449_43776 (T@Field_45250_45251 T@FrameType T@Field_43819_43820 T@FrameType) Bool)
(declare-fun InsidePredicate_20449_37749 (T@Field_45250_45251 T@FrameType T@Field_20369_20450 T@FrameType) Bool)
(assert (distinct l r_11)
)
(assert (forall ((s T@Seq_2867) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_2867| s)) (= (|Seq#Length_2867| (|Seq#Drop_4420| s n)) (- (|Seq#Length_2867| s) n))) (=> (< (|Seq#Length_2867| s) n) (= (|Seq#Length_2867| (|Seq#Drop_4420| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_2867| (|Seq#Drop_4420| s n)) (|Seq#Length_2867| s))))
 :qid |stdinbpl.277:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2867| (|Seq#Drop_4420| s n)))
 :pattern ( (|Seq#Length_2867| s) (|Seq#Drop_4420| s n))
)))
(assert (forall ((arg1 T@Ref) (arg2 Real) (arg3 T@Ref) (arg4 T@Ref) (arg5 T@Seq_2867) (arg6 T@Ref) (arg7 T@Ref) (arg8 T@Seq_2867) ) (! (= (|wand#sm| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8) (WandMaskField_20302 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
 :qid |stdinbpl.568:15|
 :skolemid |62|
 :pattern ( (WandMaskField_20302 (|wand#ft| arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8)))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_37689) (Heap1 T@PolymorphicMapType_37689) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_37689) (Mask T@PolymorphicMapType_37710) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_37689) (Heap1@@0 T@PolymorphicMapType_37689) (Heap2 T@PolymorphicMapType_37689) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_45250_45251) ) (!  (not (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_47989_47994) ) (!  (not (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_20449_53) ) (!  (not (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_20449_20372) ) (!  (not (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_20449_3561) ) (!  (not (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_43819_43820) ) (!  (not (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_43796_43801) ) (!  (not (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_43776_53) ) (!  (not (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_43776_20372) ) (!  (not (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_43776_3024) ) (!  (not (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((o_2@@9 T@Ref) (f_4@@9 T@Field_20369_20450) ) (!  (not (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| ZeroPMask) o_2@@9 f_4@@9))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| ZeroPMask) o_2@@9 f_4@@9))
)))
(assert (forall ((o_2@@10 T@Ref) (f_4@@10 T@Field_20369_43801) ) (!  (not (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| ZeroPMask) o_2@@10 f_4@@10))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| ZeroPMask) o_2@@10 f_4@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_37749_53) ) (!  (not (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| ZeroPMask) o_2@@11 f_4@@11))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| ZeroPMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_37762_37763) ) (!  (not (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@12 f_4@@12))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| ZeroPMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_44815_3561) ) (!  (not (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@13 f_4@@13))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| ZeroPMask) o_2@@13 f_4@@13))
)))
(assert (forall ((s@@0 T@Seq_2867) (n@@0 Int) (j Int) ) (!  (=> (and (and (< 0 n@@0) (<= 0 j)) (< j (- (|Seq#Length_2867| s@@0) n@@0))) (and (= (|Seq#Sub| (|Seq#Add| j n@@0) n@@0) j) (= (|Seq#Index_2867| (|Seq#Drop_4420| s@@0 n@@0) j) (|Seq#Index_2867| s@@0 (|Seq#Add| j n@@0)))))
 :qid |stdinbpl.298:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2867| (|Seq#Drop_4420| s@@0 n@@0) j))
)))
(assert (= (|Seq#Length_2867| |Seq#Empty_4539|) 0))
(assert (forall ((x T@Ref) ) (! (IsPredicateField_20449_20450 (Tree x))
 :qid |stdinbpl.903:15|
 :skolemid |78|
 :pattern ( (Tree x))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_37689) (x@@0 T@Ref) ) (! (dummyFunction_3798 (|val#triggerStateless| x@@0))
 :qid |stdinbpl.606:15|
 :skolemid |66|
 :pattern ( (|val'| Heap@@0 x@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_37689) (x@@1 T@Ref) ) (! (dummyFunction_49522 (|vals#triggerStateless| x@@1))
 :qid |stdinbpl.734:15|
 :skolemid |72|
 :pattern ( (|vals'| Heap@@1 x@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_37689) (x@@2 T@Ref) ) (! (|Tree#everUsed_20449| (Tree x@@2))
 :qid |stdinbpl.922:15|
 :skolemid |82|
 :pattern ( (|Tree#trigger_20449| Heap@@2 (Tree x@@2)))
)))
(assert (forall ((s@@1 T@Seq_2867) (i Int) (v Int) (n@@1 Int) ) (!  (=> (and (<= 0 n@@1) (< n@@1 (|Seq#Length_2867| s@@1))) (and (=> (= i n@@1) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) v)) (=> (not (= i n@@1)) (= (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1) (|Seq#Index_2867| s@@1 n@@1)))))
 :qid |stdinbpl.253:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2867| (|Seq#Update_2867| s@@1 i v) n@@1))
 :pattern ( (|Seq#Index_2867| s@@1 n@@1) (|Seq#Update_2867| s@@1 i v))
)))
(assert (forall ((s@@2 T@Seq_2867) (n@@2 Int) ) (!  (and (=> (<= 0 n@@2) (and (=> (<= n@@2 (|Seq#Length_2867| s@@2)) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) n@@2)) (=> (< (|Seq#Length_2867| s@@2) n@@2) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) (|Seq#Length_2867| s@@2))))) (=> (< n@@2 0) (= (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)) 0)))
 :qid |stdinbpl.264:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2867| (|Seq#Take_2867| s@@2 n@@2)))
 :pattern ( (|Seq#Take_2867| s@@2 n@@2) (|Seq#Length_2867| s@@2))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@0 Int) ) (! (= (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0)  (and (<= q@min v@@0) (< v@@0 q@max)))
 :qid |stdinbpl.538:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2867| (|Seq#Range| q@min q@max) v@@0))
)))
(assert (forall ((s@@3 T@Seq_2867) (x@@3 Int) ) (!  (=> (|Seq#Contains_2867| s@@3 x@@3) (and (and (<= 0 (|Seq#Skolem_2867| s@@3 x@@3)) (< (|Seq#Skolem_2867| s@@3 x@@3) (|Seq#Length_2867| s@@3))) (= (|Seq#Index_2867| s@@3 (|Seq#Skolem_2867| s@@3 x@@3)) x@@3)))
 :qid |stdinbpl.396:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2867| s@@3 x@@3))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_37689) (x@@4 T@Ref) ) (!  (and (= (val_3 Heap@@3 x@@4) (|val'| Heap@@3 x@@4)) (dummyFunction_3798 (|val#triggerStateless| x@@4)))
 :qid |stdinbpl.602:15|
 :skolemid |65|
 :pattern ( (val_3 Heap@@3 x@@4))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_37689) (x@@5 T@Ref) ) (!  (and (= (vals_1 Heap@@4 x@@5) (|vals'| Heap@@4 x@@5)) (dummyFunction_49522 (|vals#triggerStateless| x@@5)))
 :qid |stdinbpl.730:15|
 :skolemid |71|
 :pattern ( (vals_1 Heap@@4 x@@5))
)))
(assert (forall ((s@@4 T@Seq_2867) (n@@3 Int) ) (!  (=> (<= n@@3 0) (= (|Seq#Drop_4420| s@@4 n@@3) s@@4))
 :qid |stdinbpl.380:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_4420| s@@4 n@@3))
)))
(assert (forall ((i@@0 Int) (j@@0 Int) ) (! (= (|Seq#Sub| i@@0 j@@0) (- i@@0 j@@0))
 :qid |stdinbpl.233:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@0 j@@0))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Add| i@@1 j@@1) (+ i@@1 j@@1))
 :qid |stdinbpl.231:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@1 j@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_37689) (ExhaleHeap T@PolymorphicMapType_37689) (Mask@@0 T@PolymorphicMapType_37710) (pm_f_21 T@Field_43819_43820) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_43776_20450 Mask@@0 null pm_f_21) (IsPredicateField_20302_20303 pm_f_21)) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@5) null (PredicateMaskField_43776 pm_f_21)) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap) null (PredicateMaskField_43776 pm_f_21)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap Mask@@0) (IsPredicateField_20302_20303 pm_f_21) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap) null (PredicateMaskField_43776 pm_f_21)))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_37689) (ExhaleHeap@@0 T@PolymorphicMapType_37689) (Mask@@1 T@PolymorphicMapType_37710) (pm_f_21@@0 T@Field_45250_45251) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_20449_20450 Mask@@1 null pm_f_21@@0) (IsPredicateField_20449_20450 pm_f_21@@0)) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@6) null (PredicateMaskField_20449 pm_f_21@@0)) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@0) null (PredicateMaskField_20449 pm_f_21@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@0 Mask@@1) (IsPredicateField_20449_20450 pm_f_21@@0) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@0) null (PredicateMaskField_20449 pm_f_21@@0)))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_37689) (ExhaleHeap@@1 T@PolymorphicMapType_37689) (Mask@@2 T@PolymorphicMapType_37710) (pm_f_21@@1 T@Field_20369_20450) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_20369_20450 Mask@@2 null pm_f_21@@1) (IsPredicateField_20369_130072 pm_f_21@@1)) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@7) null (PredicateMaskField_20369 pm_f_21@@1)) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@1) null (PredicateMaskField_20369 pm_f_21@@1)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@1 Mask@@2) (IsPredicateField_20369_130072 pm_f_21@@1) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@1) null (PredicateMaskField_20369 pm_f_21@@1)))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_37689) (ExhaleHeap@@2 T@PolymorphicMapType_37689) (Mask@@3 T@PolymorphicMapType_37710) (pm_f_21@@2 T@Field_43819_43820) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_43776_20450 Mask@@3 null pm_f_21@@2) (IsWandField_20302_20303 pm_f_21@@2)) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@8) null (WandMaskField_20302 pm_f_21@@2)) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@2) null (WandMaskField_20302 pm_f_21@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@2 Mask@@3) (IsWandField_20302_20303 pm_f_21@@2) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@2) null (WandMaskField_20302 pm_f_21@@2)))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_37689) (ExhaleHeap@@3 T@PolymorphicMapType_37689) (Mask@@4 T@PolymorphicMapType_37710) (pm_f_21@@3 T@Field_45250_45251) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_20449_20450 Mask@@4 null pm_f_21@@3) (IsWandField_20449_135421 pm_f_21@@3)) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@9) null (WandMaskField_20449 pm_f_21@@3)) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@3) null (WandMaskField_20449 pm_f_21@@3)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@3 Mask@@4) (IsWandField_20449_135421 pm_f_21@@3) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@3) null (WandMaskField_20449 pm_f_21@@3)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_37689) (ExhaleHeap@@4 T@PolymorphicMapType_37689) (Mask@@5 T@PolymorphicMapType_37710) (pm_f_21@@4 T@Field_20369_20450) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_20369_20450 Mask@@5 null pm_f_21@@4) (IsWandField_20369_135064 pm_f_21@@4)) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@10) null (WandMaskField_20369 pm_f_21@@4)) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@4) null (WandMaskField_20369 pm_f_21@@4)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@4 Mask@@5) (IsWandField_20369_135064 pm_f_21@@4) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@4) null (WandMaskField_20369 pm_f_21@@4)))
)))
(assert (forall ((x@@6 Int) (y Int) ) (! (= (|Seq#Contains_2867| (|Seq#Singleton_3561| x@@6) y) (= x@@6 y))
 :qid |stdinbpl.521:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2867| (|Seq#Singleton_3561| x@@6) y))
)))
(assert (forall ((s@@5 T@Seq_2867) (n@@4 Int) (j@@2 Int) ) (!  (=> (and (and (<= 0 j@@2) (< j@@2 n@@4)) (< j@@2 (|Seq#Length_2867| s@@5))) (= (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2) (|Seq#Index_2867| s@@5 j@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2867| (|Seq#Take_2867| s@@5 n@@4) j@@2))
 :pattern ( (|Seq#Index_2867| s@@5 j@@2) (|Seq#Take_2867| s@@5 n@@4))
)))
(assert (forall ((x@@7 T@Ref) (x2 T@Ref) ) (!  (=> (= (Tree x@@7) (Tree x2)) (= x@@7 x2))
 :qid |stdinbpl.913:15|
 :skolemid |80|
 :pattern ( (Tree x@@7) (Tree x2))
)))
(assert (forall ((x@@8 T@Ref) (x2@@0 T@Ref) ) (!  (=> (= (|Tree#sm| x@@8) (|Tree#sm| x2@@0)) (= x@@8 x2@@0))
 :qid |stdinbpl.917:15|
 :skolemid |81|
 :pattern ( (|Tree#sm| x@@8) (|Tree#sm| x2@@0))
)))
(assert (forall ((s@@6 T@Seq_2867) (t T@Seq_2867) (n@@5 Int) ) (!  (=> (and (and (> n@@5 0) (> n@@5 (|Seq#Length_2867| s@@6))) (< n@@5 (|Seq#Length_2867| (|Seq#Append_4433| s@@6 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)) (|Seq#Length_2867| s@@6)) n@@5) (= (|Seq#Take_2867| (|Seq#Append_4433| s@@6 t) n@@5) (|Seq#Append_4433| s@@6 (|Seq#Take_2867| t (|Seq#Sub| n@@5 (|Seq#Length_2867| s@@6)))))))
 :qid |stdinbpl.357:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4433| s@@6 t) n@@5))
)))
(assert (forall ((arg1@@0 T@Ref) (arg2@@0 Real) (arg3@@0 T@Ref) (arg4@@0 T@Ref) (arg5@@0 T@Seq_2867) (arg6@@0 T@Ref) (arg7@@0 T@Ref) (arg8@@0 T@Seq_2867) ) (! (IsWandField_20281_3024 (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
 :qid |stdinbpl.552:15|
 :skolemid |58|
 :pattern ( (wand arg1@@0 arg2@@0 arg3@@0 arg4@@0 arg5@@0 arg6@@0 arg7@@0 arg8@@0))
)))
(assert (forall ((arg1@@1 T@Ref) (arg2@@1 Real) (arg3@@1 T@Ref) (arg4@@1 T@Ref) (arg5@@1 T@Seq_2867) (arg6@@1 T@Ref) (arg7@@1 T@Ref) (arg8@@1 T@Seq_2867) ) (! (IsWandField_20302_20303 (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
 :qid |stdinbpl.556:15|
 :skolemid |59|
 :pattern ( (|wand#ft| arg1@@1 arg2@@1 arg3@@1 arg4@@1 arg5@@1 arg6@@1 arg7@@1 arg8@@1))
)))
(assert (forall ((arg1@@2 T@Ref) (arg2@@2 Real) (arg3@@2 T@Ref) (arg4@@2 T@Ref) (arg5@@2 T@Seq_2867) (arg6@@2 T@Ref) (arg7@@2 T@Ref) (arg8@@2 T@Seq_2867) ) (!  (not (IsPredicateField_20281_3024 (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2)))
 :qid |stdinbpl.560:15|
 :skolemid |60|
 :pattern ( (wand arg1@@2 arg2@@2 arg3@@2 arg4@@2 arg5@@2 arg6@@2 arg7@@2 arg8@@2))
)))
(assert (forall ((arg1@@3 T@Ref) (arg2@@3 Real) (arg3@@3 T@Ref) (arg4@@3 T@Ref) (arg5@@3 T@Seq_2867) (arg6@@3 T@Ref) (arg7@@3 T@Ref) (arg8@@3 T@Seq_2867) ) (!  (not (IsPredicateField_20302_20303 (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3)))
 :qid |stdinbpl.564:15|
 :skolemid |61|
 :pattern ( (|wand#ft| arg1@@3 arg2@@3 arg3@@3 arg4@@3 arg5@@3 arg6@@3 arg7@@3 arg8@@3))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@11 T@PolymorphicMapType_37689) (ExhaleHeap@@5 T@PolymorphicMapType_37689) (Mask@@6 T@PolymorphicMapType_37710) (o_43 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (=> (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@11) o_43 $allocated) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@5) o_43 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@5 Mask@@6) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@5) o_43 $allocated))
)))
(assert (forall ((p T@Field_43819_43820) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43776_43776 p v_1 p w))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43776_43776 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_20369_20450) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_37749_37749 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_37749_37749 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert (forall ((p@@1 T@Field_45250_45251) (v_1@@1 T@FrameType) (w@@1 T@FrameType) ) (!  (not (InsidePredicate_20449_20449 p@@1 v_1@@1 p@@1 w@@1))
 :qid |stdinbpl.175:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20449_20449 p@@1 v_1@@1 p@@1 w@@1))
)))
(assert (forall ((s0 T@Seq_2867) (s1 T@Seq_2867) (n@@6 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_4539|)) (not (= s1 |Seq#Empty_4539|))) (<= (|Seq#Length_2867| s0) n@@6)) (< n@@6 (|Seq#Length_2867| (|Seq#Append_4433| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@6 (|Seq#Length_2867| s0)) (|Seq#Length_2867| s0)) n@@6) (= (|Seq#Index_2867| (|Seq#Append_4433| s0 s1) n@@6) (|Seq#Index_2867| s1 (|Seq#Sub| n@@6 (|Seq#Length_2867| s0))))))
 :qid |stdinbpl.244:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4433| s0 s1) n@@6))
)))
(assert  (not (IsPredicateField_20369_3561 v_35)))
(assert  (not (IsWandField_20369_3561 v_35)))
(assert  (not (IsPredicateField_20371_20372 l)))
(assert  (not (IsWandField_20371_20372 l)))
(assert  (not (IsPredicateField_20371_20372 r_11)))
(assert  (not (IsWandField_20371_20372 r_11)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_37689) (ExhaleHeap@@6 T@PolymorphicMapType_37689) (Mask@@7 T@PolymorphicMapType_37710) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7) (succHeap Heap@@12 ExhaleHeap@@6))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@6 Mask@@7))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_37689) (Mask@@8 T@PolymorphicMapType_37710) (x@@9 T@Ref) ) (!  (=> (and (state Heap@@13 Mask@@8) (< AssumeFunctionsAbove 1)) (= (vals_1 Heap@@13 x@@9) (ite (= x@@9 null) |Seq#Empty_4539| (|Seq#Append_4433| (|Seq#Append_4433| (|vals'| Heap@@13 (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@13) x@@9 l)) (|Seq#Singleton_3561| (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@13) x@@9 v_35))) (|vals'| Heap@@13 (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@13) x@@9 r_11))))))
 :qid |stdinbpl.740:15|
 :skolemid |73|
 :pattern ( (state Heap@@13 Mask@@8) (vals_1 Heap@@13 x@@9))
 :pattern ( (state Heap@@13 Mask@@8) (|vals#triggerStateless| x@@9) (|Tree#trigger_20449| Heap@@13 (Tree x@@9)) (|Tree#trigger_20449| Heap@@13 (Tree x@@9)))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_37710) (o_2@@14 T@Ref) (f_4@@14 T@Field_43796_43801) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@@9) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_20281_146024 f_4@@14))) (not (IsWandField_20281_146040 f_4@@14))) (<= (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@@9) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@@9) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_37710) (o_2@@15 T@Ref) (f_4@@15 T@Field_43776_53) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@@10) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_20281_53 f_4@@15))) (not (IsWandField_20281_53 f_4@@15))) (<= (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@@10) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@@10) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_37710) (o_2@@16 T@Ref) (f_4@@16 T@Field_43776_20372) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@@11) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_20281_20372 f_4@@16))) (not (IsWandField_20281_20372 f_4@@16))) (<= (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@@11) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@@11) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_37710) (o_2@@17 T@Ref) (f_4@@17 T@Field_43776_3024) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@@12) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_20281_3024 f_4@@17))) (not (IsWandField_20281_3024 f_4@@17))) (<= (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@@12) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@@12) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_37710) (o_2@@18 T@Ref) (f_4@@18 T@Field_43819_43820) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@@13) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_20302_20303 f_4@@18))) (not (IsWandField_20302_20303 f_4@@18))) (<= (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@@13) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@@13) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_37710) (o_2@@19 T@Ref) (f_4@@19 T@Field_20369_43801) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@@14) o_2@@19 f_4@@19) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_20369_145207 f_4@@19))) (not (IsWandField_20369_145223 f_4@@19))) (<= (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@@14) o_2@@19 f_4@@19) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@@14) o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_37710) (o_2@@20 T@Ref) (f_4@@20 T@Field_37749_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@@15) o_2@@20 f_4@@20) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_20369_53 f_4@@20))) (not (IsWandField_20369_53 f_4@@20))) (<= (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@@15) o_2@@20 f_4@@20) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@@15) o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_37710) (o_2@@21 T@Ref) (f_4@@21 T@Field_37762_37763) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@@16) o_2@@21 f_4@@21) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_20371_20372 f_4@@21))) (not (IsWandField_20371_20372 f_4@@21))) (<= (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@@16) o_2@@21 f_4@@21) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@@16) o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_37710) (o_2@@22 T@Ref) (f_4@@22 T@Field_44815_3561) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@@17) o_2@@22 f_4@@22) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_20369_3561 f_4@@22))) (not (IsWandField_20369_3561 f_4@@22))) (<= (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@@17) o_2@@22 f_4@@22) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@@17) o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_37710) (o_2@@23 T@Ref) (f_4@@23 T@Field_20369_20450) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@@18) o_2@@23 f_4@@23) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_20369_130072 f_4@@23))) (not (IsWandField_20369_135064 f_4@@23))) (<= (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@@18) o_2@@23 f_4@@23) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@@18) o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_37710) (o_2@@24 T@Ref) (f_4@@24 T@Field_47989_47994) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@@19) o_2@@24 f_4@@24) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_20449_144404 f_4@@24))) (not (IsWandField_20449_144420 f_4@@24))) (<= (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@@19) o_2@@24 f_4@@24) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@@19) o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_37710) (o_2@@25 T@Ref) (f_4@@25 T@Field_20449_53) ) (!  (=> (GoodMask Mask@@20) (and (>= (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@@20) o_2@@25 f_4@@25) NoPerm) (=> (and (and (and (GoodMask Mask@@20) AssumePermUpperBound) (not (IsPredicateField_20449_53 f_4@@25))) (not (IsWandField_20449_53 f_4@@25))) (<= (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@@20) o_2@@25 f_4@@25) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@20) (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@@20) o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_37710) (o_2@@26 T@Ref) (f_4@@26 T@Field_20449_20372) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@@21) o_2@@26 f_4@@26) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_20449_20372 f_4@@26))) (not (IsWandField_20449_20372 f_4@@26))) (<= (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@@21) o_2@@26 f_4@@26) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@@21) o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_37710) (o_2@@27 T@Ref) (f_4@@27 T@Field_20449_3561) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@@22) o_2@@27 f_4@@27) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_20449_3561 f_4@@27))) (not (IsWandField_20449_3561 f_4@@27))) (<= (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@@22) o_2@@27 f_4@@27) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@@22) o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_37710) (o_2@@28 T@Ref) (f_4@@28 T@Field_45250_45251) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@@23) o_2@@28 f_4@@28) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_20449_20450 f_4@@28))) (not (IsWandField_20449_135421 f_4@@28))) (<= (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@@23) o_2@@28 f_4@@28) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@@23) o_2@@28 f_4@@28))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_37710) (o_2@@29 T@Ref) (f_4@@29 T@Field_43796_43801) ) (! (= (HasDirectPerm_43776_129827 Mask@@24 o_2@@29 f_4@@29) (> (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@@24) o_2@@29 f_4@@29) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43776_129827 Mask@@24 o_2@@29 f_4@@29))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_37710) (o_2@@30 T@Ref) (f_4@@30 T@Field_43776_53) ) (! (= (HasDirectPerm_43776_53 Mask@@25 o_2@@30 f_4@@30) (> (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@@25) o_2@@30 f_4@@30) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43776_53 Mask@@25 o_2@@30 f_4@@30))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_37710) (o_2@@31 T@Ref) (f_4@@31 T@Field_43819_43820) ) (! (= (HasDirectPerm_43776_20450 Mask@@26 o_2@@31 f_4@@31) (> (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@@26) o_2@@31 f_4@@31) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43776_20450 Mask@@26 o_2@@31 f_4@@31))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_37710) (o_2@@32 T@Ref) (f_4@@32 T@Field_43776_20372) ) (! (= (HasDirectPerm_43776_20372 Mask@@27 o_2@@32 f_4@@32) (> (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@@27) o_2@@32 f_4@@32) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43776_20372 Mask@@27 o_2@@32 f_4@@32))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_37710) (o_2@@33 T@Ref) (f_4@@33 T@Field_43776_3024) ) (! (= (HasDirectPerm_43776_3561 Mask@@28 o_2@@33 f_4@@33) (> (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@@28) o_2@@33 f_4@@33) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_43776_3561 Mask@@28 o_2@@33 f_4@@33))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_37710) (o_2@@34 T@Ref) (f_4@@34 T@Field_47989_47994) ) (! (= (HasDirectPerm_20449_128693 Mask@@29 o_2@@34 f_4@@34) (> (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@@29) o_2@@34 f_4@@34) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20449_128693 Mask@@29 o_2@@34 f_4@@34))
)))
(assert (forall ((Mask@@30 T@PolymorphicMapType_37710) (o_2@@35 T@Ref) (f_4@@35 T@Field_20449_53) ) (! (= (HasDirectPerm_20449_53 Mask@@30 o_2@@35 f_4@@35) (> (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@@30) o_2@@35 f_4@@35) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20449_53 Mask@@30 o_2@@35 f_4@@35))
)))
(assert (forall ((Mask@@31 T@PolymorphicMapType_37710) (o_2@@36 T@Ref) (f_4@@36 T@Field_45250_45251) ) (! (= (HasDirectPerm_20449_20450 Mask@@31 o_2@@36 f_4@@36) (> (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@@31) o_2@@36 f_4@@36) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20449_20450 Mask@@31 o_2@@36 f_4@@36))
)))
(assert (forall ((Mask@@32 T@PolymorphicMapType_37710) (o_2@@37 T@Ref) (f_4@@37 T@Field_20449_20372) ) (! (= (HasDirectPerm_20449_20372 Mask@@32 o_2@@37 f_4@@37) (> (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@@32) o_2@@37 f_4@@37) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20449_20372 Mask@@32 o_2@@37 f_4@@37))
)))
(assert (forall ((Mask@@33 T@PolymorphicMapType_37710) (o_2@@38 T@Ref) (f_4@@38 T@Field_20449_3561) ) (! (= (HasDirectPerm_20449_3561 Mask@@33 o_2@@38 f_4@@38) (> (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@@33) o_2@@38 f_4@@38) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20449_3561 Mask@@33 o_2@@38 f_4@@38))
)))
(assert (forall ((Mask@@34 T@PolymorphicMapType_37710) (o_2@@39 T@Ref) (f_4@@39 T@Field_20369_43801) ) (! (= (HasDirectPerm_20369_127552 Mask@@34 o_2@@39 f_4@@39) (> (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@@34) o_2@@39 f_4@@39) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20369_127552 Mask@@34 o_2@@39 f_4@@39))
)))
(assert (forall ((Mask@@35 T@PolymorphicMapType_37710) (o_2@@40 T@Ref) (f_4@@40 T@Field_37749_53) ) (! (= (HasDirectPerm_20369_53 Mask@@35 o_2@@40 f_4@@40) (> (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@@35) o_2@@40 f_4@@40) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20369_53 Mask@@35 o_2@@40 f_4@@40))
)))
(assert (forall ((Mask@@36 T@PolymorphicMapType_37710) (o_2@@41 T@Ref) (f_4@@41 T@Field_20369_20450) ) (! (= (HasDirectPerm_20369_20450 Mask@@36 o_2@@41 f_4@@41) (> (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@@36) o_2@@41 f_4@@41) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20369_20450 Mask@@36 o_2@@41 f_4@@41))
)))
(assert (forall ((Mask@@37 T@PolymorphicMapType_37710) (o_2@@42 T@Ref) (f_4@@42 T@Field_37762_37763) ) (! (= (HasDirectPerm_20371_20372 Mask@@37 o_2@@42 f_4@@42) (> (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@@37) o_2@@42 f_4@@42) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20371_20372 Mask@@37 o_2@@42 f_4@@42))
)))
(assert (forall ((Mask@@38 T@PolymorphicMapType_37710) (o_2@@43 T@Ref) (f_4@@43 T@Field_44815_3561) ) (! (= (HasDirectPerm_20369_3561 Mask@@38 o_2@@43 f_4@@43) (> (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@@38) o_2@@43 f_4@@43) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_20369_3561 Mask@@38 o_2@@43 f_4@@43))
)))
(assert (forall ((p@@2 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@2 f_6) (ite (> p@@2 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.163:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@2 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@3 Int) ) (!  (=> (and (<= 0 j@@3) (< j@@3 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3) (+ q@min@@0 j@@3)))
 :qid |stdinbpl.536:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2867| (|Seq#Range| q@min@@0 q@max@@0) j@@3))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_37689) (ExhaleHeap@@7 T@PolymorphicMapType_37689) (Mask@@39 T@PolymorphicMapType_37710) (o_43@@0 T@Ref) (f_56 T@Field_43796_43801) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@39) (=> (HasDirectPerm_43776_129827 Mask@@39 o_43@@0 f_56) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@14) o_43@@0 f_56) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@7) o_43@@0 f_56))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@7 Mask@@39) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@7) o_43@@0 f_56))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_37689) (ExhaleHeap@@8 T@PolymorphicMapType_37689) (Mask@@40 T@PolymorphicMapType_37710) (o_43@@1 T@Ref) (f_56@@0 T@Field_43776_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@40) (=> (HasDirectPerm_43776_53 Mask@@40 o_43@@1 f_56@@0) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@15) o_43@@1 f_56@@0) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@8) o_43@@1 f_56@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@8 Mask@@40) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@8) o_43@@1 f_56@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_37689) (ExhaleHeap@@9 T@PolymorphicMapType_37689) (Mask@@41 T@PolymorphicMapType_37710) (o_43@@2 T@Ref) (f_56@@1 T@Field_43819_43820) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@41) (=> (HasDirectPerm_43776_20450 Mask@@41 o_43@@2 f_56@@1) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@16) o_43@@2 f_56@@1) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@9) o_43@@2 f_56@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@9 Mask@@41) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@9) o_43@@2 f_56@@1))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_37689) (ExhaleHeap@@10 T@PolymorphicMapType_37689) (Mask@@42 T@PolymorphicMapType_37710) (o_43@@3 T@Ref) (f_56@@2 T@Field_43776_20372) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@42) (=> (HasDirectPerm_43776_20372 Mask@@42 o_43@@3 f_56@@2) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@17) o_43@@3 f_56@@2) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@10) o_43@@3 f_56@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@10 Mask@@42) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@10) o_43@@3 f_56@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_37689) (ExhaleHeap@@11 T@PolymorphicMapType_37689) (Mask@@43 T@PolymorphicMapType_37710) (o_43@@4 T@Ref) (f_56@@3 T@Field_43776_3024) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@43) (=> (HasDirectPerm_43776_3561 Mask@@43 o_43@@4 f_56@@3) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@18) o_43@@4 f_56@@3) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@11) o_43@@4 f_56@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@11 Mask@@43) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@11) o_43@@4 f_56@@3))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_37689) (ExhaleHeap@@12 T@PolymorphicMapType_37689) (Mask@@44 T@PolymorphicMapType_37710) (o_43@@5 T@Ref) (f_56@@4 T@Field_47989_47994) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@44) (=> (HasDirectPerm_20449_128693 Mask@@44 o_43@@5 f_56@@4) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@19) o_43@@5 f_56@@4) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@12) o_43@@5 f_56@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@12 Mask@@44) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@12) o_43@@5 f_56@@4))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_37689) (ExhaleHeap@@13 T@PolymorphicMapType_37689) (Mask@@45 T@PolymorphicMapType_37710) (o_43@@6 T@Ref) (f_56@@5 T@Field_20449_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@45) (=> (HasDirectPerm_20449_53 Mask@@45 o_43@@6 f_56@@5) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@20) o_43@@6 f_56@@5) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@13) o_43@@6 f_56@@5))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@13 Mask@@45) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@13) o_43@@6 f_56@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_37689) (ExhaleHeap@@14 T@PolymorphicMapType_37689) (Mask@@46 T@PolymorphicMapType_37710) (o_43@@7 T@Ref) (f_56@@6 T@Field_45250_45251) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@46) (=> (HasDirectPerm_20449_20450 Mask@@46 o_43@@7 f_56@@6) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@21) o_43@@7 f_56@@6) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@14) o_43@@7 f_56@@6))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@14 Mask@@46) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@14) o_43@@7 f_56@@6))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_37689) (ExhaleHeap@@15 T@PolymorphicMapType_37689) (Mask@@47 T@PolymorphicMapType_37710) (o_43@@8 T@Ref) (f_56@@7 T@Field_20449_20372) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@47) (=> (HasDirectPerm_20449_20372 Mask@@47 o_43@@8 f_56@@7) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@22) o_43@@8 f_56@@7) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@15) o_43@@8 f_56@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@15 Mask@@47) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@15) o_43@@8 f_56@@7))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_37689) (ExhaleHeap@@16 T@PolymorphicMapType_37689) (Mask@@48 T@PolymorphicMapType_37710) (o_43@@9 T@Ref) (f_56@@8 T@Field_20449_3561) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@48) (=> (HasDirectPerm_20449_3561 Mask@@48 o_43@@9 f_56@@8) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@23) o_43@@9 f_56@@8) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@16) o_43@@9 f_56@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@16 Mask@@48) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@16) o_43@@9 f_56@@8))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_37689) (ExhaleHeap@@17 T@PolymorphicMapType_37689) (Mask@@49 T@PolymorphicMapType_37710) (o_43@@10 T@Ref) (f_56@@9 T@Field_20369_43801) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@49) (=> (HasDirectPerm_20369_127552 Mask@@49 o_43@@10 f_56@@9) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@24) o_43@@10 f_56@@9) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@17) o_43@@10 f_56@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@17 Mask@@49) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@17) o_43@@10 f_56@@9))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_37689) (ExhaleHeap@@18 T@PolymorphicMapType_37689) (Mask@@50 T@PolymorphicMapType_37710) (o_43@@11 T@Ref) (f_56@@10 T@Field_37749_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@50) (=> (HasDirectPerm_20369_53 Mask@@50 o_43@@11 f_56@@10) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@25) o_43@@11 f_56@@10) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@18) o_43@@11 f_56@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@18 Mask@@50) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@18) o_43@@11 f_56@@10))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_37689) (ExhaleHeap@@19 T@PolymorphicMapType_37689) (Mask@@51 T@PolymorphicMapType_37710) (o_43@@12 T@Ref) (f_56@@11 T@Field_20369_20450) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@51) (=> (HasDirectPerm_20369_20450 Mask@@51 o_43@@12 f_56@@11) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@26) o_43@@12 f_56@@11) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@19) o_43@@12 f_56@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@19 Mask@@51) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@19) o_43@@12 f_56@@11))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_37689) (ExhaleHeap@@20 T@PolymorphicMapType_37689) (Mask@@52 T@PolymorphicMapType_37710) (o_43@@13 T@Ref) (f_56@@12 T@Field_37762_37763) ) (!  (=> (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@52) (=> (HasDirectPerm_20371_20372 Mask@@52 o_43@@13 f_56@@12) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@27) o_43@@13 f_56@@12) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@20) o_43@@13 f_56@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@27 ExhaleHeap@@20 Mask@@52) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@20) o_43@@13 f_56@@12))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_37689) (ExhaleHeap@@21 T@PolymorphicMapType_37689) (Mask@@53 T@PolymorphicMapType_37710) (o_43@@14 T@Ref) (f_56@@13 T@Field_44815_3561) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@53) (=> (HasDirectPerm_20369_3561 Mask@@53 o_43@@14 f_56@@13) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@28) o_43@@14 f_56@@13) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@21) o_43@@14 f_56@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@21 Mask@@53) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@21) o_43@@14 f_56@@13))
)))
(assert (forall ((s0@@0 T@Seq_2867) (s1@@0 T@Seq_2867) ) (!  (=> (and (not (= s0@@0 |Seq#Empty_4539|)) (not (= s1@@0 |Seq#Empty_4539|))) (= (|Seq#Length_2867| (|Seq#Append_4433| s0@@0 s1@@0)) (+ (|Seq#Length_2867| s0@@0) (|Seq#Length_2867| s1@@0))))
 :qid |stdinbpl.213:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2867| (|Seq#Append_4433| s0@@0 s1@@0)))
)))
(assert (forall ((o_2@@44 T@Ref) (f_4@@44 T@Field_43796_43801) ) (! (= (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| ZeroMask) o_2@@44 f_4@@44) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| ZeroMask) o_2@@44 f_4@@44))
)))
(assert (forall ((o_2@@45 T@Ref) (f_4@@45 T@Field_43776_53) ) (! (= (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| ZeroMask) o_2@@45 f_4@@45) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| ZeroMask) o_2@@45 f_4@@45))
)))
(assert (forall ((o_2@@46 T@Ref) (f_4@@46 T@Field_43776_20372) ) (! (= (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| ZeroMask) o_2@@46 f_4@@46) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| ZeroMask) o_2@@46 f_4@@46))
)))
(assert (forall ((o_2@@47 T@Ref) (f_4@@47 T@Field_43776_3024) ) (! (= (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| ZeroMask) o_2@@47 f_4@@47) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| ZeroMask) o_2@@47 f_4@@47))
)))
(assert (forall ((o_2@@48 T@Ref) (f_4@@48 T@Field_43819_43820) ) (! (= (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| ZeroMask) o_2@@48 f_4@@48) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| ZeroMask) o_2@@48 f_4@@48))
)))
(assert (forall ((o_2@@49 T@Ref) (f_4@@49 T@Field_20369_43801) ) (! (= (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| ZeroMask) o_2@@49 f_4@@49) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| ZeroMask) o_2@@49 f_4@@49))
)))
(assert (forall ((o_2@@50 T@Ref) (f_4@@50 T@Field_37749_53) ) (! (= (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| ZeroMask) o_2@@50 f_4@@50) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| ZeroMask) o_2@@50 f_4@@50))
)))
(assert (forall ((o_2@@51 T@Ref) (f_4@@51 T@Field_37762_37763) ) (! (= (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| ZeroMask) o_2@@51 f_4@@51) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| ZeroMask) o_2@@51 f_4@@51))
)))
(assert (forall ((o_2@@52 T@Ref) (f_4@@52 T@Field_44815_3561) ) (! (= (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ZeroMask) o_2@@52 f_4@@52) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ZeroMask) o_2@@52 f_4@@52))
)))
(assert (forall ((o_2@@53 T@Ref) (f_4@@53 T@Field_20369_20450) ) (! (= (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| ZeroMask) o_2@@53 f_4@@53) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| ZeroMask) o_2@@53 f_4@@53))
)))
(assert (forall ((o_2@@54 T@Ref) (f_4@@54 T@Field_47989_47994) ) (! (= (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| ZeroMask) o_2@@54 f_4@@54) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| ZeroMask) o_2@@54 f_4@@54))
)))
(assert (forall ((o_2@@55 T@Ref) (f_4@@55 T@Field_20449_53) ) (! (= (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| ZeroMask) o_2@@55 f_4@@55) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| ZeroMask) o_2@@55 f_4@@55))
)))
(assert (forall ((o_2@@56 T@Ref) (f_4@@56 T@Field_20449_20372) ) (! (= (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| ZeroMask) o_2@@56 f_4@@56) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| ZeroMask) o_2@@56 f_4@@56))
)))
(assert (forall ((o_2@@57 T@Ref) (f_4@@57 T@Field_20449_3561) ) (! (= (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| ZeroMask) o_2@@57 f_4@@57) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| ZeroMask) o_2@@57 f_4@@57))
)))
(assert (forall ((o_2@@58 T@Ref) (f_4@@58 T@Field_45250_45251) ) (! (= (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| ZeroMask) o_2@@58 f_4@@58) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| ZeroMask) o_2@@58 f_4@@58))
)))
(assert (forall ((s@@7 T@Seq_2867) (t@@0 T@Seq_2867) (n@@7 Int) ) (!  (=> (and (> n@@7 0) (> n@@7 (|Seq#Length_2867| s@@7))) (and (= (|Seq#Add| (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7)) (|Seq#Length_2867| s@@7)) n@@7) (= (|Seq#Drop_4420| (|Seq#Append_4433| s@@7 t@@0) n@@7) (|Seq#Drop_4420| t@@0 (|Seq#Sub| n@@7 (|Seq#Length_2867| s@@7))))))
 :qid |stdinbpl.370:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_4420| (|Seq#Append_4433| s@@7 t@@0) n@@7))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_37710) (SummandMask1 T@PolymorphicMapType_37710) (SummandMask2 T@PolymorphicMapType_37710) (o_2@@59 T@Ref) (f_4@@59 T@Field_43796_43801) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| ResultMask) o_2@@59 f_4@@59) (+ (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| SummandMask1) o_2@@59 f_4@@59) (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| SummandMask2) o_2@@59 f_4@@59))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| ResultMask) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| SummandMask1) o_2@@59 f_4@@59))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| SummandMask2) o_2@@59 f_4@@59))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_37710) (SummandMask1@@0 T@PolymorphicMapType_37710) (SummandMask2@@0 T@PolymorphicMapType_37710) (o_2@@60 T@Ref) (f_4@@60 T@Field_43776_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| ResultMask@@0) o_2@@60 f_4@@60) (+ (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| SummandMask1@@0) o_2@@60 f_4@@60) (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| SummandMask2@@0) o_2@@60 f_4@@60))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| ResultMask@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| SummandMask1@@0) o_2@@60 f_4@@60))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| SummandMask2@@0) o_2@@60 f_4@@60))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_37710) (SummandMask1@@1 T@PolymorphicMapType_37710) (SummandMask2@@1 T@PolymorphicMapType_37710) (o_2@@61 T@Ref) (f_4@@61 T@Field_43776_20372) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| ResultMask@@1) o_2@@61 f_4@@61) (+ (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| SummandMask1@@1) o_2@@61 f_4@@61) (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| SummandMask2@@1) o_2@@61 f_4@@61))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| ResultMask@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| SummandMask1@@1) o_2@@61 f_4@@61))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| SummandMask2@@1) o_2@@61 f_4@@61))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_37710) (SummandMask1@@2 T@PolymorphicMapType_37710) (SummandMask2@@2 T@PolymorphicMapType_37710) (o_2@@62 T@Ref) (f_4@@62 T@Field_43776_3024) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| ResultMask@@2) o_2@@62 f_4@@62) (+ (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| SummandMask1@@2) o_2@@62 f_4@@62) (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| SummandMask2@@2) o_2@@62 f_4@@62))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| ResultMask@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| SummandMask1@@2) o_2@@62 f_4@@62))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| SummandMask2@@2) o_2@@62 f_4@@62))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_37710) (SummandMask1@@3 T@PolymorphicMapType_37710) (SummandMask2@@3 T@PolymorphicMapType_37710) (o_2@@63 T@Ref) (f_4@@63 T@Field_43819_43820) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| ResultMask@@3) o_2@@63 f_4@@63) (+ (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| SummandMask1@@3) o_2@@63 f_4@@63) (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| SummandMask2@@3) o_2@@63 f_4@@63))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| ResultMask@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| SummandMask1@@3) o_2@@63 f_4@@63))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| SummandMask2@@3) o_2@@63 f_4@@63))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_37710) (SummandMask1@@4 T@PolymorphicMapType_37710) (SummandMask2@@4 T@PolymorphicMapType_37710) (o_2@@64 T@Ref) (f_4@@64 T@Field_20369_43801) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| ResultMask@@4) o_2@@64 f_4@@64) (+ (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| SummandMask1@@4) o_2@@64 f_4@@64) (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| SummandMask2@@4) o_2@@64 f_4@@64))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| ResultMask@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| SummandMask1@@4) o_2@@64 f_4@@64))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| SummandMask2@@4) o_2@@64 f_4@@64))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_37710) (SummandMask1@@5 T@PolymorphicMapType_37710) (SummandMask2@@5 T@PolymorphicMapType_37710) (o_2@@65 T@Ref) (f_4@@65 T@Field_37749_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| ResultMask@@5) o_2@@65 f_4@@65) (+ (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| SummandMask1@@5) o_2@@65 f_4@@65) (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| SummandMask2@@5) o_2@@65 f_4@@65))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| ResultMask@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| SummandMask1@@5) o_2@@65 f_4@@65))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| SummandMask2@@5) o_2@@65 f_4@@65))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_37710) (SummandMask1@@6 T@PolymorphicMapType_37710) (SummandMask2@@6 T@PolymorphicMapType_37710) (o_2@@66 T@Ref) (f_4@@66 T@Field_37762_37763) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| ResultMask@@6) o_2@@66 f_4@@66) (+ (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| SummandMask1@@6) o_2@@66 f_4@@66) (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| SummandMask2@@6) o_2@@66 f_4@@66))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| ResultMask@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| SummandMask1@@6) o_2@@66 f_4@@66))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| SummandMask2@@6) o_2@@66 f_4@@66))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_37710) (SummandMask1@@7 T@PolymorphicMapType_37710) (SummandMask2@@7 T@PolymorphicMapType_37710) (o_2@@67 T@Ref) (f_4@@67 T@Field_44815_3561) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ResultMask@@7) o_2@@67 f_4@@67) (+ (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| SummandMask1@@7) o_2@@67 f_4@@67) (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| SummandMask2@@7) o_2@@67 f_4@@67))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ResultMask@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| SummandMask1@@7) o_2@@67 f_4@@67))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| SummandMask2@@7) o_2@@67 f_4@@67))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_37710) (SummandMask1@@8 T@PolymorphicMapType_37710) (SummandMask2@@8 T@PolymorphicMapType_37710) (o_2@@68 T@Ref) (f_4@@68 T@Field_20369_20450) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| ResultMask@@8) o_2@@68 f_4@@68) (+ (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| SummandMask1@@8) o_2@@68 f_4@@68) (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| SummandMask2@@8) o_2@@68 f_4@@68))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| ResultMask@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| SummandMask1@@8) o_2@@68 f_4@@68))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| SummandMask2@@8) o_2@@68 f_4@@68))
)))
(assert (forall ((ResultMask@@9 T@PolymorphicMapType_37710) (SummandMask1@@9 T@PolymorphicMapType_37710) (SummandMask2@@9 T@PolymorphicMapType_37710) (o_2@@69 T@Ref) (f_4@@69 T@Field_47989_47994) ) (!  (=> (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (= (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| ResultMask@@9) o_2@@69 f_4@@69) (+ (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| SummandMask1@@9) o_2@@69 f_4@@69) (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| SummandMask2@@9) o_2@@69 f_4@@69))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| ResultMask@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| SummandMask1@@9) o_2@@69 f_4@@69))
 :pattern ( (sumMask ResultMask@@9 SummandMask1@@9 SummandMask2@@9) (select (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| SummandMask2@@9) o_2@@69 f_4@@69))
)))
(assert (forall ((ResultMask@@10 T@PolymorphicMapType_37710) (SummandMask1@@10 T@PolymorphicMapType_37710) (SummandMask2@@10 T@PolymorphicMapType_37710) (o_2@@70 T@Ref) (f_4@@70 T@Field_20449_53) ) (!  (=> (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (= (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| ResultMask@@10) o_2@@70 f_4@@70) (+ (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| SummandMask1@@10) o_2@@70 f_4@@70) (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| SummandMask2@@10) o_2@@70 f_4@@70))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| ResultMask@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| SummandMask1@@10) o_2@@70 f_4@@70))
 :pattern ( (sumMask ResultMask@@10 SummandMask1@@10 SummandMask2@@10) (select (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| SummandMask2@@10) o_2@@70 f_4@@70))
)))
(assert (forall ((ResultMask@@11 T@PolymorphicMapType_37710) (SummandMask1@@11 T@PolymorphicMapType_37710) (SummandMask2@@11 T@PolymorphicMapType_37710) (o_2@@71 T@Ref) (f_4@@71 T@Field_20449_20372) ) (!  (=> (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (= (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| ResultMask@@11) o_2@@71 f_4@@71) (+ (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| SummandMask1@@11) o_2@@71 f_4@@71) (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| SummandMask2@@11) o_2@@71 f_4@@71))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| ResultMask@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| SummandMask1@@11) o_2@@71 f_4@@71))
 :pattern ( (sumMask ResultMask@@11 SummandMask1@@11 SummandMask2@@11) (select (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| SummandMask2@@11) o_2@@71 f_4@@71))
)))
(assert (forall ((ResultMask@@12 T@PolymorphicMapType_37710) (SummandMask1@@12 T@PolymorphicMapType_37710) (SummandMask2@@12 T@PolymorphicMapType_37710) (o_2@@72 T@Ref) (f_4@@72 T@Field_20449_3561) ) (!  (=> (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (= (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| ResultMask@@12) o_2@@72 f_4@@72) (+ (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| SummandMask1@@12) o_2@@72 f_4@@72) (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| SummandMask2@@12) o_2@@72 f_4@@72))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| ResultMask@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| SummandMask1@@12) o_2@@72 f_4@@72))
 :pattern ( (sumMask ResultMask@@12 SummandMask1@@12 SummandMask2@@12) (select (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| SummandMask2@@12) o_2@@72 f_4@@72))
)))
(assert (forall ((ResultMask@@13 T@PolymorphicMapType_37710) (SummandMask1@@13 T@PolymorphicMapType_37710) (SummandMask2@@13 T@PolymorphicMapType_37710) (o_2@@73 T@Ref) (f_4@@73 T@Field_45250_45251) ) (!  (=> (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (= (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| ResultMask@@13) o_2@@73 f_4@@73) (+ (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| SummandMask1@@13) o_2@@73 f_4@@73) (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| SummandMask2@@13) o_2@@73 f_4@@73))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| ResultMask@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| SummandMask1@@13) o_2@@73 f_4@@73))
 :pattern ( (sumMask ResultMask@@13 SummandMask1@@13 SummandMask2@@13) (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| SummandMask2@@13) o_2@@73 f_4@@73))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_37689) (ExhaleHeap@@22 T@PolymorphicMapType_37689) (Mask@@54 T@PolymorphicMapType_37710) (pm_f_21@@5 T@Field_43819_43820) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@54) (=> (and (HasDirectPerm_43776_20450 Mask@@54 null pm_f_21@@5) (IsPredicateField_20302_20303 pm_f_21@@5)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21 T@Ref) (f_56@@14 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21 f_56@@14) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@29) o2_21 f_56@@14) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21 f_56@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21 f_56@@14))
)) (forall ((o2_21@@0 T@Ref) (f_56@@15 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@0 f_56@@15) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@29) o2_21@@0 f_56@@15) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@0 f_56@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@0 f_56@@15))
))) (forall ((o2_21@@1 T@Ref) (f_56@@16 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@1 f_56@@16) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@29) o2_21@@1 f_56@@16) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@1 f_56@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@1 f_56@@16))
))) (forall ((o2_21@@2 T@Ref) (f_56@@17 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@2 f_56@@17) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@29) o2_21@@2 f_56@@17) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@2 f_56@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@2 f_56@@17))
))) (forall ((o2_21@@3 T@Ref) (f_56@@18 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@3 f_56@@18) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@29) o2_21@@3 f_56@@18) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@3 f_56@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@3 f_56@@18))
))) (forall ((o2_21@@4 T@Ref) (f_56@@19 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@4 f_56@@19) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@29) o2_21@@4 f_56@@19) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@4 f_56@@19)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@4 f_56@@19))
))) (forall ((o2_21@@5 T@Ref) (f_56@@20 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@5 f_56@@20) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@29) o2_21@@5 f_56@@20) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@5 f_56@@20)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@5 f_56@@20))
))) (forall ((o2_21@@6 T@Ref) (f_56@@21 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@6 f_56@@21) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@29) o2_21@@6 f_56@@21) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@6 f_56@@21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@6 f_56@@21))
))) (forall ((o2_21@@7 T@Ref) (f_56@@22 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@7 f_56@@22) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) o2_21@@7 f_56@@22) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@7 f_56@@22)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@7 f_56@@22))
))) (forall ((o2_21@@8 T@Ref) (f_56@@23 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@8 f_56@@23) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@29) o2_21@@8 f_56@@23) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@8 f_56@@23)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@8 f_56@@23))
))) (forall ((o2_21@@9 T@Ref) (f_56@@24 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@9 f_56@@24) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@29) o2_21@@9 f_56@@24) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@9 f_56@@24)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@9 f_56@@24))
))) (forall ((o2_21@@10 T@Ref) (f_56@@25 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@10 f_56@@25) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@29) o2_21@@10 f_56@@25) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@10 f_56@@25)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@10 f_56@@25))
))) (forall ((o2_21@@11 T@Ref) (f_56@@26 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@11 f_56@@26) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@29) o2_21@@11 f_56@@26) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@11 f_56@@26)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@11 f_56@@26))
))) (forall ((o2_21@@12 T@Ref) (f_56@@27 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@12 f_56@@27) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@29) o2_21@@12 f_56@@27) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@12 f_56@@27)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@12 f_56@@27))
))) (forall ((o2_21@@13 T@Ref) (f_56@@28 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@29) null (PredicateMaskField_43776 pm_f_21@@5))) o2_21@@13 f_56@@28) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@29) o2_21@@13 f_56@@28) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@13 f_56@@28)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@22) o2_21@@13 f_56@@28))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@22 Mask@@54) (IsPredicateField_20302_20303 pm_f_21@@5))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_37689) (ExhaleHeap@@23 T@PolymorphicMapType_37689) (Mask@@55 T@PolymorphicMapType_37710) (pm_f_21@@6 T@Field_45250_45251) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@55) (=> (and (HasDirectPerm_20449_20450 Mask@@55 null pm_f_21@@6) (IsPredicateField_20449_20450 pm_f_21@@6)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21@@14 T@Ref) (f_56@@29 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@14 f_56@@29) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@30) o2_21@@14 f_56@@29) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@14 f_56@@29)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@14 f_56@@29))
)) (forall ((o2_21@@15 T@Ref) (f_56@@30 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@15 f_56@@30) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@30) o2_21@@15 f_56@@30) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@15 f_56@@30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@15 f_56@@30))
))) (forall ((o2_21@@16 T@Ref) (f_56@@31 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@16 f_56@@31) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@30) o2_21@@16 f_56@@31) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@16 f_56@@31)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@16 f_56@@31))
))) (forall ((o2_21@@17 T@Ref) (f_56@@32 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@17 f_56@@32) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@30) o2_21@@17 f_56@@32) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@17 f_56@@32)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@17 f_56@@32))
))) (forall ((o2_21@@18 T@Ref) (f_56@@33 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@18 f_56@@33) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@30) o2_21@@18 f_56@@33) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@18 f_56@@33)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@18 f_56@@33))
))) (forall ((o2_21@@19 T@Ref) (f_56@@34 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@19 f_56@@34) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@30) o2_21@@19 f_56@@34) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@19 f_56@@34)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@19 f_56@@34))
))) (forall ((o2_21@@20 T@Ref) (f_56@@35 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@20 f_56@@35) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@30) o2_21@@20 f_56@@35) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@20 f_56@@35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@20 f_56@@35))
))) (forall ((o2_21@@21 T@Ref) (f_56@@36 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@21 f_56@@36) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@30) o2_21@@21 f_56@@36) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@21 f_56@@36)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@21 f_56@@36))
))) (forall ((o2_21@@22 T@Ref) (f_56@@37 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@22 f_56@@37) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@30) o2_21@@22 f_56@@37) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@22 f_56@@37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@22 f_56@@37))
))) (forall ((o2_21@@23 T@Ref) (f_56@@38 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@23 f_56@@38) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@30) o2_21@@23 f_56@@38) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@23 f_56@@38)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@23 f_56@@38))
))) (forall ((o2_21@@24 T@Ref) (f_56@@39 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@24 f_56@@39) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@30) o2_21@@24 f_56@@39) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@24 f_56@@39)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@24 f_56@@39))
))) (forall ((o2_21@@25 T@Ref) (f_56@@40 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@25 f_56@@40) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@30) o2_21@@25 f_56@@40) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@25 f_56@@40)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@25 f_56@@40))
))) (forall ((o2_21@@26 T@Ref) (f_56@@41 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@26 f_56@@41) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@30) o2_21@@26 f_56@@41) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@26 f_56@@41)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@26 f_56@@41))
))) (forall ((o2_21@@27 T@Ref) (f_56@@42 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@27 f_56@@42) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) o2_21@@27 f_56@@42) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@27 f_56@@42)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@27 f_56@@42))
))) (forall ((o2_21@@28 T@Ref) (f_56@@43 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@30) null (PredicateMaskField_20449 pm_f_21@@6))) o2_21@@28 f_56@@43) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@30) o2_21@@28 f_56@@43) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@28 f_56@@43)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@23) o2_21@@28 f_56@@43))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@23 Mask@@55) (IsPredicateField_20449_20450 pm_f_21@@6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_37689) (ExhaleHeap@@24 T@PolymorphicMapType_37689) (Mask@@56 T@PolymorphicMapType_37710) (pm_f_21@@7 T@Field_20369_20450) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@56) (=> (and (HasDirectPerm_20369_20450 Mask@@56 null pm_f_21@@7) (IsPredicateField_20369_130072 pm_f_21@@7)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21@@29 T@Ref) (f_56@@44 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@29 f_56@@44) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@31) o2_21@@29 f_56@@44) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@29 f_56@@44)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@29 f_56@@44))
)) (forall ((o2_21@@30 T@Ref) (f_56@@45 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@30 f_56@@45) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@31) o2_21@@30 f_56@@45) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@30 f_56@@45)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@30 f_56@@45))
))) (forall ((o2_21@@31 T@Ref) (f_56@@46 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@31 f_56@@46) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@31) o2_21@@31 f_56@@46) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@31 f_56@@46)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@31 f_56@@46))
))) (forall ((o2_21@@32 T@Ref) (f_56@@47 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@32 f_56@@47) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) o2_21@@32 f_56@@47) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@32 f_56@@47)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@32 f_56@@47))
))) (forall ((o2_21@@33 T@Ref) (f_56@@48 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@33 f_56@@48) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@31) o2_21@@33 f_56@@48) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@33 f_56@@48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@33 f_56@@48))
))) (forall ((o2_21@@34 T@Ref) (f_56@@49 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@34 f_56@@49) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@31) o2_21@@34 f_56@@49) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@34 f_56@@49)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@34 f_56@@49))
))) (forall ((o2_21@@35 T@Ref) (f_56@@50 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@35 f_56@@50) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@31) o2_21@@35 f_56@@50) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@35 f_56@@50)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@35 f_56@@50))
))) (forall ((o2_21@@36 T@Ref) (f_56@@51 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@36 f_56@@51) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@31) o2_21@@36 f_56@@51) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@36 f_56@@51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@36 f_56@@51))
))) (forall ((o2_21@@37 T@Ref) (f_56@@52 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@37 f_56@@52) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@31) o2_21@@37 f_56@@52) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@37 f_56@@52)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@37 f_56@@52))
))) (forall ((o2_21@@38 T@Ref) (f_56@@53 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@38 f_56@@53) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@31) o2_21@@38 f_56@@53) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@38 f_56@@53)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@38 f_56@@53))
))) (forall ((o2_21@@39 T@Ref) (f_56@@54 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@39 f_56@@54) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@31) o2_21@@39 f_56@@54) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@39 f_56@@54)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@39 f_56@@54))
))) (forall ((o2_21@@40 T@Ref) (f_56@@55 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@40 f_56@@55) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@31) o2_21@@40 f_56@@55) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@40 f_56@@55)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@40 f_56@@55))
))) (forall ((o2_21@@41 T@Ref) (f_56@@56 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@41 f_56@@56) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@31) o2_21@@41 f_56@@56) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@41 f_56@@56)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@41 f_56@@56))
))) (forall ((o2_21@@42 T@Ref) (f_56@@57 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@42 f_56@@57) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@31) o2_21@@42 f_56@@57) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@42 f_56@@57)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@42 f_56@@57))
))) (forall ((o2_21@@43 T@Ref) (f_56@@58 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@31) null (PredicateMaskField_20369 pm_f_21@@7))) o2_21@@43 f_56@@58) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@31) o2_21@@43 f_56@@58) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@43 f_56@@58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@24) o2_21@@43 f_56@@58))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@24 Mask@@56) (IsPredicateField_20369_130072 pm_f_21@@7))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_37689) (ExhaleHeap@@25 T@PolymorphicMapType_37689) (Mask@@57 T@PolymorphicMapType_37710) (pm_f_21@@8 T@Field_43819_43820) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@57) (=> (and (HasDirectPerm_43776_20450 Mask@@57 null pm_f_21@@8) (IsWandField_20302_20303 pm_f_21@@8)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21@@44 T@Ref) (f_56@@59 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@44 f_56@@59) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@32) o2_21@@44 f_56@@59) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@44 f_56@@59)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@44 f_56@@59))
)) (forall ((o2_21@@45 T@Ref) (f_56@@60 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@45 f_56@@60) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@32) o2_21@@45 f_56@@60) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@45 f_56@@60)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@45 f_56@@60))
))) (forall ((o2_21@@46 T@Ref) (f_56@@61 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@46 f_56@@61) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@32) o2_21@@46 f_56@@61) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@46 f_56@@61)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@46 f_56@@61))
))) (forall ((o2_21@@47 T@Ref) (f_56@@62 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@47 f_56@@62) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@32) o2_21@@47 f_56@@62) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@47 f_56@@62)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@47 f_56@@62))
))) (forall ((o2_21@@48 T@Ref) (f_56@@63 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@48 f_56@@63) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@32) o2_21@@48 f_56@@63) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@48 f_56@@63)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@48 f_56@@63))
))) (forall ((o2_21@@49 T@Ref) (f_56@@64 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@49 f_56@@64) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@32) o2_21@@49 f_56@@64) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@49 f_56@@64)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@49 f_56@@64))
))) (forall ((o2_21@@50 T@Ref) (f_56@@65 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@50 f_56@@65) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@32) o2_21@@50 f_56@@65) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@50 f_56@@65)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@50 f_56@@65))
))) (forall ((o2_21@@51 T@Ref) (f_56@@66 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@51 f_56@@66) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@32) o2_21@@51 f_56@@66) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@51 f_56@@66)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@51 f_56@@66))
))) (forall ((o2_21@@52 T@Ref) (f_56@@67 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@52 f_56@@67) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) o2_21@@52 f_56@@67) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@52 f_56@@67)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@52 f_56@@67))
))) (forall ((o2_21@@53 T@Ref) (f_56@@68 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@53 f_56@@68) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@32) o2_21@@53 f_56@@68) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@53 f_56@@68)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@53 f_56@@68))
))) (forall ((o2_21@@54 T@Ref) (f_56@@69 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@54 f_56@@69) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@32) o2_21@@54 f_56@@69) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@54 f_56@@69)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@54 f_56@@69))
))) (forall ((o2_21@@55 T@Ref) (f_56@@70 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@55 f_56@@70) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@32) o2_21@@55 f_56@@70) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@55 f_56@@70)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@55 f_56@@70))
))) (forall ((o2_21@@56 T@Ref) (f_56@@71 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@56 f_56@@71) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@32) o2_21@@56 f_56@@71) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@56 f_56@@71)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@56 f_56@@71))
))) (forall ((o2_21@@57 T@Ref) (f_56@@72 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@57 f_56@@72) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@32) o2_21@@57 f_56@@72) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@57 f_56@@72)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@57 f_56@@72))
))) (forall ((o2_21@@58 T@Ref) (f_56@@73 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@32) null (WandMaskField_20302 pm_f_21@@8))) o2_21@@58 f_56@@73) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@32) o2_21@@58 f_56@@73) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@58 f_56@@73)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@25) o2_21@@58 f_56@@73))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@25 Mask@@57) (IsWandField_20302_20303 pm_f_21@@8))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_37689) (ExhaleHeap@@26 T@PolymorphicMapType_37689) (Mask@@58 T@PolymorphicMapType_37710) (pm_f_21@@9 T@Field_45250_45251) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@58) (=> (and (HasDirectPerm_20449_20450 Mask@@58 null pm_f_21@@9) (IsWandField_20449_135421 pm_f_21@@9)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21@@59 T@Ref) (f_56@@74 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@59 f_56@@74) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@33) o2_21@@59 f_56@@74) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@59 f_56@@74)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@59 f_56@@74))
)) (forall ((o2_21@@60 T@Ref) (f_56@@75 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@60 f_56@@75) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@33) o2_21@@60 f_56@@75) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@60 f_56@@75)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@60 f_56@@75))
))) (forall ((o2_21@@61 T@Ref) (f_56@@76 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@61 f_56@@76) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@33) o2_21@@61 f_56@@76) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@61 f_56@@76)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@61 f_56@@76))
))) (forall ((o2_21@@62 T@Ref) (f_56@@77 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@62 f_56@@77) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@33) o2_21@@62 f_56@@77) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@62 f_56@@77)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@62 f_56@@77))
))) (forall ((o2_21@@63 T@Ref) (f_56@@78 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@63 f_56@@78) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@33) o2_21@@63 f_56@@78) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@63 f_56@@78)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@63 f_56@@78))
))) (forall ((o2_21@@64 T@Ref) (f_56@@79 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@64 f_56@@79) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@33) o2_21@@64 f_56@@79) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@64 f_56@@79)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@64 f_56@@79))
))) (forall ((o2_21@@65 T@Ref) (f_56@@80 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@65 f_56@@80) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@33) o2_21@@65 f_56@@80) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@65 f_56@@80)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@65 f_56@@80))
))) (forall ((o2_21@@66 T@Ref) (f_56@@81 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@66 f_56@@81) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@33) o2_21@@66 f_56@@81) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@66 f_56@@81)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@66 f_56@@81))
))) (forall ((o2_21@@67 T@Ref) (f_56@@82 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@67 f_56@@82) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@33) o2_21@@67 f_56@@82) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@67 f_56@@82)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@67 f_56@@82))
))) (forall ((o2_21@@68 T@Ref) (f_56@@83 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@68 f_56@@83) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@33) o2_21@@68 f_56@@83) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@68 f_56@@83)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@68 f_56@@83))
))) (forall ((o2_21@@69 T@Ref) (f_56@@84 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@69 f_56@@84) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@33) o2_21@@69 f_56@@84) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@69 f_56@@84)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@69 f_56@@84))
))) (forall ((o2_21@@70 T@Ref) (f_56@@85 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@70 f_56@@85) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@33) o2_21@@70 f_56@@85) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@70 f_56@@85)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@70 f_56@@85))
))) (forall ((o2_21@@71 T@Ref) (f_56@@86 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@71 f_56@@86) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@33) o2_21@@71 f_56@@86) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@71 f_56@@86)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@71 f_56@@86))
))) (forall ((o2_21@@72 T@Ref) (f_56@@87 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@72 f_56@@87) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) o2_21@@72 f_56@@87) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@72 f_56@@87)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@72 f_56@@87))
))) (forall ((o2_21@@73 T@Ref) (f_56@@88 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@33) null (WandMaskField_20449 pm_f_21@@9))) o2_21@@73 f_56@@88) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@33) o2_21@@73 f_56@@88) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@73 f_56@@88)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@26) o2_21@@73 f_56@@88))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@26 Mask@@58) (IsWandField_20449_135421 pm_f_21@@9))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_37689) (ExhaleHeap@@27 T@PolymorphicMapType_37689) (Mask@@59 T@PolymorphicMapType_37710) (pm_f_21@@10 T@Field_20369_20450) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@59) (=> (and (HasDirectPerm_20369_20450 Mask@@59 null pm_f_21@@10) (IsWandField_20369_135064 pm_f_21@@10)) (and (and (and (and (and (and (and (and (and (and (and (and (and (and (forall ((o2_21@@74 T@Ref) (f_56@@89 T@Field_44815_3561) ) (!  (=> (select (|PolymorphicMapType_38238_20369_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@74 f_56@@89) (= (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@34) o2_21@@74 f_56@@89) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@74 f_56@@89)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@74 f_56@@89))
)) (forall ((o2_21@@75 T@Ref) (f_56@@90 T@Field_37762_37763) ) (!  (=> (select (|PolymorphicMapType_38238_20371_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@75 f_56@@90) (= (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@34) o2_21@@75 f_56@@90) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@75 f_56@@90)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@75 f_56@@90))
))) (forall ((o2_21@@76 T@Ref) (f_56@@91 T@Field_37749_53) ) (!  (=> (select (|PolymorphicMapType_38238_20369_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@76 f_56@@91) (= (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@34) o2_21@@76 f_56@@91) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@76 f_56@@91)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@76 f_56@@91))
))) (forall ((o2_21@@77 T@Ref) (f_56@@92 T@Field_20369_43801) ) (!  (=> (select (|PolymorphicMapType_38238_20369_131675#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@77 f_56@@92) (= (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) o2_21@@77 f_56@@92) (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@77 f_56@@92)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@77 f_56@@92))
))) (forall ((o2_21@@78 T@Ref) (f_56@@93 T@Field_20369_20450) ) (!  (=> (select (|PolymorphicMapType_38238_20369_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@78 f_56@@93) (= (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@34) o2_21@@78 f_56@@93) (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@78 f_56@@93)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@78 f_56@@93))
))) (forall ((o2_21@@79 T@Ref) (f_56@@94 T@Field_43776_3024) ) (!  (=> (select (|PolymorphicMapType_38238_43776_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@79 f_56@@94) (= (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@34) o2_21@@79 f_56@@94) (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@79 f_56@@94)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@79 f_56@@94))
))) (forall ((o2_21@@80 T@Ref) (f_56@@95 T@Field_43776_20372) ) (!  (=> (select (|PolymorphicMapType_38238_43776_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@80 f_56@@95) (= (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@34) o2_21@@80 f_56@@95) (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@80 f_56@@95)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@80 f_56@@95))
))) (forall ((o2_21@@81 T@Ref) (f_56@@96 T@Field_43776_53) ) (!  (=> (select (|PolymorphicMapType_38238_43776_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@81 f_56@@96) (= (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@34) o2_21@@81 f_56@@96) (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@81 f_56@@96)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@81 f_56@@96))
))) (forall ((o2_21@@82 T@Ref) (f_56@@97 T@Field_43796_43801) ) (!  (=> (select (|PolymorphicMapType_38238_43776_132723#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@82 f_56@@97) (= (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@34) o2_21@@82 f_56@@97) (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@82 f_56@@97)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@82 f_56@@97))
))) (forall ((o2_21@@83 T@Ref) (f_56@@98 T@Field_43819_43820) ) (!  (=> (select (|PolymorphicMapType_38238_43776_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@83 f_56@@98) (= (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@34) o2_21@@83 f_56@@98) (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@83 f_56@@98)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@83 f_56@@98))
))) (forall ((o2_21@@84 T@Ref) (f_56@@99 T@Field_20449_3561) ) (!  (=> (select (|PolymorphicMapType_38238_45250_3561#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@84 f_56@@99) (= (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@34) o2_21@@84 f_56@@99) (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@84 f_56@@99)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@84 f_56@@99))
))) (forall ((o2_21@@85 T@Ref) (f_56@@100 T@Field_20449_20372) ) (!  (=> (select (|PolymorphicMapType_38238_45250_20372#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@85 f_56@@100) (= (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@34) o2_21@@85 f_56@@100) (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@85 f_56@@100)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@85 f_56@@100))
))) (forall ((o2_21@@86 T@Ref) (f_56@@101 T@Field_20449_53) ) (!  (=> (select (|PolymorphicMapType_38238_45250_53#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@86 f_56@@101) (= (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@34) o2_21@@86 f_56@@101) (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@86 f_56@@101)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@86 f_56@@101))
))) (forall ((o2_21@@87 T@Ref) (f_56@@102 T@Field_47989_47994) ) (!  (=> (select (|PolymorphicMapType_38238_45250_133771#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@87 f_56@@102) (= (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@34) o2_21@@87 f_56@@102) (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@87 f_56@@102)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@87 f_56@@102))
))) (forall ((o2_21@@88 T@Ref) (f_56@@103 T@Field_45250_45251) ) (!  (=> (select (|PolymorphicMapType_38238_45250_43820#PolymorphicMapType_38238| (select (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@34) null (WandMaskField_20369 pm_f_21@@10))) o2_21@@88 f_56@@103) (= (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@34) o2_21@@88 f_56@@103) (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@88 f_56@@103)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| ExhaleHeap@@27) o2_21@@88 f_56@@103))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@27 Mask@@59) (IsWandField_20369_135064 pm_f_21@@10))
)))
(assert (forall ((arg1@@4 T@Ref) (arg2@@4 Real) (arg3@@4 T@Ref) (arg4@@4 T@Ref) (arg5@@4 T@Seq_2867) (arg6@@4 T@Ref) (arg7@@4 T@Ref) (arg8@@4 T@Seq_2867) (arg1_2 T@Ref) (arg2_2 Real) (arg3_2 T@Ref) (arg4_2 T@Ref) (arg5_2 T@Seq_2867) (arg6_2 T@Ref) (arg7_2 T@Ref) (arg8_2 T@Seq_2867) ) (!  (=> (= (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2)) (and (= arg1@@4 arg1_2) (and (= arg2@@4 arg2_2) (and (= arg3@@4 arg3_2) (and (= arg4@@4 arg4_2) (and (= arg5@@4 arg5_2) (and (= arg6@@4 arg6_2) (and (= arg7@@4 arg7_2) (= arg8@@4 arg8_2)))))))))
 :qid |stdinbpl.576:15|
 :skolemid |64|
 :pattern ( (wand arg1@@4 arg2@@4 arg3@@4 arg4@@4 arg5@@4 arg6@@4 arg7@@4 arg8@@4) (wand arg1_2 arg2_2 arg3_2 arg4_2 arg5_2 arg6_2 arg7_2 arg8_2))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.535:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2867| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_2867) (b T@Seq_2867) ) (!  (=> (|Seq#Equal_4420| a b) (= a b))
 :qid |stdinbpl.508:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_4420| a b))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_37689) (Mask@@60 T@PolymorphicMapType_37710) (x@@10 T@Ref) ) (!  (=> (and (state Heap@@35 Mask@@60) (< AssumeFunctionsAbove 0)) (=> (not (= x@@10 null)) (= (val_3 Heap@@35 x@@10) (select (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@35) x@@10 v_35))))
 :qid |stdinbpl.612:15|
 :skolemid |67|
 :pattern ( (state Heap@@35 Mask@@60) (val_3 Heap@@35 x@@10))
 :pattern ( (state Heap@@35 Mask@@60) (|val#triggerStateless| x@@10) (|Tree#trigger_20449| Heap@@35 (Tree x@@10)))
)))
(assert (forall ((s@@8 T@Seq_2867) (i@@2 Int) ) (!  (=> (and (<= 0 i@@2) (< i@@2 (|Seq#Length_2867| s@@8))) (|Seq#ContainsTrigger_2867| s@@8 (|Seq#Index_2867| s@@8 i@@2)))
 :qid |stdinbpl.401:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2867| s@@8 i@@2))
)))
(assert (forall ((s0@@1 T@Seq_2867) (s1@@1 T@Seq_2867) ) (!  (and (=> (= s0@@1 |Seq#Empty_4539|) (= (|Seq#Append_4433| s0@@1 s1@@1) s1@@1)) (=> (= s1@@1 |Seq#Empty_4539|) (= (|Seq#Append_4433| s0@@1 s1@@1) s0@@1)))
 :qid |stdinbpl.219:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_4433| s0@@1 s1@@1))
)))
(assert (forall ((t@@1 Int) ) (! (= (|Seq#Index_2867| (|Seq#Singleton_3561| t@@1) 0) t@@1)
 :qid |stdinbpl.223:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3561| t@@1))
)))
(assert (forall ((arg1@@5 T@Ref) (arg2@@5 Real) (arg3@@5 T@Ref) (arg4@@5 T@Ref) (arg5@@5 T@Seq_2867) (arg6@@5 T@Ref) (arg7@@5 T@Ref) (arg8@@5 T@Seq_2867) ) (! (= (getPredWandId_20281_3024 (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5)) 1)
 :qid |stdinbpl.572:15|
 :skolemid |63|
 :pattern ( (wand arg1@@5 arg2@@5 arg3@@5 arg4@@5 arg5@@5 arg6@@5 arg7@@5 arg8@@5))
)))
(assert (forall ((s@@9 T@Seq_2867) ) (! (<= 0 (|Seq#Length_2867| s@@9))
 :qid |stdinbpl.202:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2867| s@@9))
)))
(assert (forall ((s0@@2 T@Seq_2867) (s1@@2 T@Seq_2867) ) (!  (=> (|Seq#Equal_4420| s0@@2 s1@@2) (and (= (|Seq#Length_2867| s0@@2) (|Seq#Length_2867| s1@@2)) (forall ((j@@4 Int) ) (!  (=> (and (<= 0 j@@4) (< j@@4 (|Seq#Length_2867| s0@@2))) (= (|Seq#Index_2867| s0@@2 j@@4) (|Seq#Index_2867| s1@@2 j@@4)))
 :qid |stdinbpl.498:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2867| s0@@2 j@@4))
 :pattern ( (|Seq#Index_2867| s1@@2 j@@4))
))))
 :qid |stdinbpl.495:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_4420| s0@@2 s1@@2))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_37689) (Mask@@61 T@PolymorphicMapType_37710) (x@@11 T@Ref) ) (!  (=> (state Heap@@36 Mask@@61) (= (|val'| Heap@@36 x@@11) (|val#frame| (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@36) null (Tree x@@11)) x@@11)))
 :qid |stdinbpl.619:15|
 :skolemid |68|
 :pattern ( (state Heap@@36 Mask@@61) (|val'| Heap@@36 x@@11))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_37689) (Mask@@62 T@PolymorphicMapType_37710) (x@@12 T@Ref) ) (!  (=> (state Heap@@37 Mask@@62) (= (|vals'| Heap@@37 x@@12) (|vals#frame| (select (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@37) null (Tree x@@12)) x@@12)))
 :qid |stdinbpl.747:15|
 :skolemid |74|
 :pattern ( (state Heap@@37 Mask@@62) (|vals'| Heap@@37 x@@12))
 :pattern ( (state Heap@@37 Mask@@62) (|vals#triggerStateless| x@@12) (|Tree#trigger_20449| Heap@@37 (Tree x@@12)) (|Tree#trigger_20449| Heap@@37 (Tree x@@12)))
)))
(assert (forall ((x@@13 T@Ref) ) (! (= (getPredWandId_20449_20450 (Tree x@@13)) 0)
 :qid |stdinbpl.907:15|
 :skolemid |79|
 :pattern ( (Tree x@@13))
)))
(assert (forall ((t@@2 Int) ) (! (= (|Seq#Length_2867| (|Seq#Singleton_3561| t@@2)) 1)
 :qid |stdinbpl.210:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3561| t@@2))
)))
(assert (forall ((s@@10 T@Seq_2867) (t@@3 T@Seq_2867) (n@@8 Int) ) (!  (=> (and (< 0 n@@8) (<= n@@8 (|Seq#Length_2867| s@@10))) (= (|Seq#Take_2867| (|Seq#Append_4433| s@@10 t@@3) n@@8) (|Seq#Take_2867| s@@10 n@@8)))
 :qid |stdinbpl.352:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2867| (|Seq#Append_4433| s@@10 t@@3) n@@8))
)))
(assert (forall ((s@@11 T@Seq_2867) (i@@3 Int) (v@@1 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_2867| s@@11))) (= (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)) (|Seq#Length_2867| s@@11)))
 :qid |stdinbpl.251:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2867| (|Seq#Update_2867| s@@11 i@@3 v@@1)))
 :pattern ( (|Seq#Length_2867| s@@11) (|Seq#Update_2867| s@@11 i@@3 v@@1))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_37689) (o_11 T@Ref) (f_57 T@Field_43796_43801) (v@@2 T@PolymorphicMapType_38238) ) (! (succHeap Heap@@38 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@38) (store (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@38) o_11 f_57 v@@2) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@38)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@38) (store (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@38) o_11 f_57 v@@2) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@38) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@38)))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_37689) (o_11@@0 T@Ref) (f_57@@0 T@Field_43819_43820) (v@@3 T@FrameType) ) (! (succHeap Heap@@39 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@39) (store (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@39) o_11@@0 f_57@@0 v@@3) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@39)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@39) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@39) (store (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@39) o_11@@0 f_57@@0 v@@3) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@39)))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_37689) (o_11@@1 T@Ref) (f_57@@1 T@Field_43776_3024) (v@@4 Int) ) (! (succHeap Heap@@40 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@40) (store (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@40) o_11@@1 f_57@@1 v@@4) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@40)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@40) (store (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@40) o_11@@1 f_57@@1 v@@4) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@40) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@40)))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_37689) (o_11@@2 T@Ref) (f_57@@2 T@Field_43776_20372) (v@@5 T@Ref) ) (! (succHeap Heap@@41 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@41) (store (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@41) o_11@@2 f_57@@2 v@@5) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@41)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@41) (store (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@41) o_11@@2 f_57@@2 v@@5) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@41) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@41)))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_37689) (o_11@@3 T@Ref) (f_57@@3 T@Field_43776_53) (v@@6 Bool) ) (! (succHeap Heap@@42 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@42) (store (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@42) o_11@@3 f_57@@3 v@@6)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@42) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@42) (store (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@42) o_11@@3 f_57@@3 v@@6)))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_37689) (o_11@@4 T@Ref) (f_57@@4 T@Field_47989_47994) (v@@7 T@PolymorphicMapType_38238) ) (! (succHeap Heap@@43 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@43) (store (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@43) o_11@@4 f_57@@4 v@@7) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@43)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@43) (store (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@43) o_11@@4 f_57@@4 v@@7) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@43) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@43)))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_37689) (o_11@@5 T@Ref) (f_57@@5 T@Field_45250_45251) (v@@8 T@FrameType) ) (! (succHeap Heap@@44 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@44) (store (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@44) o_11@@5 f_57@@5 v@@8) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@44)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@44) (store (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@44) o_11@@5 f_57@@5 v@@8) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@44) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@44)))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_37689) (o_11@@6 T@Ref) (f_57@@6 T@Field_20449_3561) (v@@9 Int) ) (! (succHeap Heap@@45 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@45) (store (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@45) o_11@@6 f_57@@6 v@@9) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@45)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@45) (store (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@45) o_11@@6 f_57@@6 v@@9) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@45) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@45)))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_37689) (o_11@@7 T@Ref) (f_57@@7 T@Field_20449_20372) (v@@10 T@Ref) ) (! (succHeap Heap@@46 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@46) (store (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@46) o_11@@7 f_57@@7 v@@10) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@46)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@46) (store (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@46) o_11@@7 f_57@@7 v@@10) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@46) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@46)))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_37689) (o_11@@8 T@Ref) (f_57@@8 T@Field_20449_53) (v@@11 Bool) ) (! (succHeap Heap@@47 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@47) (store (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@47) o_11@@8 f_57@@8 v@@11) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@47)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@47) (store (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@47) o_11@@8 f_57@@8 v@@11) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@47) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@47)))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_37689) (o_11@@9 T@Ref) (f_57@@9 T@Field_20369_43801) (v@@12 T@PolymorphicMapType_38238) ) (! (succHeap Heap@@48 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@48) (store (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@48) o_11@@9 f_57@@9 v@@12) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@48)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@48) (store (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@48) o_11@@9 f_57@@9 v@@12) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@48) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@48)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_37689) (o_11@@10 T@Ref) (f_57@@10 T@Field_20369_20450) (v@@13 T@FrameType) ) (! (succHeap Heap@@49 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@49) (store (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@49) o_11@@10 f_57@@10 v@@13) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@49) (store (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@49) o_11@@10 f_57@@10 v@@13) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@49) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_37689) (o_11@@11 T@Ref) (f_57@@11 T@Field_44815_3561) (v@@14 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@50) (store (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@50) o_11@@11 f_57@@11 v@@14) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@50) (store (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@50) o_11@@11 f_57@@11 v@@14) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@50) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_37689) (o_11@@12 T@Ref) (f_57@@12 T@Field_37762_37763) (v@@15 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@51) (store (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@51) o_11@@12 f_57@@12 v@@15) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@51) (store (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@51) o_11@@12 f_57@@12 v@@15) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@51) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_37689) (o_11@@13 T@Ref) (f_57@@13 T@Field_37749_53) (v@@16 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_37689 (store (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@52) o_11@@13 f_57@@13 v@@16) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_37689 (store (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@52) o_11@@13 f_57@@13 v@@16) (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20453_48081#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20291_64287#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20369_127594#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_20372#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_20449_53#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_3561#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_20372#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_20450#PolymorphicMapType_37689| Heap@@52) (|PolymorphicMapType_37689_43776_53#PolymorphicMapType_37689| Heap@@52)))
)))
(assert (forall ((x@@14 T@Ref) ) (! (= (PredicateMaskField_20449 (Tree x@@14)) (|Tree#sm| x@@14))
 :qid |stdinbpl.899:15|
 :skolemid |77|
 :pattern ( (PredicateMaskField_20449 (Tree x@@14)))
)))
(assert (forall ((s@@12 T@Seq_2867) (t@@4 T@Seq_2867) (n@@9 Int) ) (!  (=> (and (< 0 n@@9) (<= n@@9 (|Seq#Length_2867| s@@12))) (= (|Seq#Drop_4420| (|Seq#Append_4433| s@@12 t@@4) n@@9) (|Seq#Append_4433| (|Seq#Drop_4420| s@@12 n@@9) t@@4)))
 :qid |stdinbpl.366:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_4420| (|Seq#Append_4433| s@@12 t@@4) n@@9))
)))
(assert (forall ((s@@13 T@Seq_2867) (n@@10 Int) (i@@4 Int) ) (!  (=> (and (and (< 0 n@@10) (<= n@@10 i@@4)) (< i@@4 (|Seq#Length_2867| s@@13))) (and (= (|Seq#Add| (|Seq#Sub| i@@4 n@@10) n@@10) i@@4) (= (|Seq#Index_2867| (|Seq#Drop_4420| s@@13 n@@10) (|Seq#Sub| i@@4 n@@10)) (|Seq#Index_2867| s@@13 i@@4))))
 :qid |stdinbpl.302:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_4420| s@@13 n@@10) (|Seq#Index_2867| s@@13 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_2867) (s1@@3 T@Seq_2867) (n@@11 Int) ) (!  (=> (and (and (and (not (= s0@@3 |Seq#Empty_4539|)) (not (= s1@@3 |Seq#Empty_4539|))) (<= 0 n@@11)) (< n@@11 (|Seq#Length_2867| s0@@3))) (= (|Seq#Index_2867| (|Seq#Append_4433| s0@@3 s1@@3) n@@11) (|Seq#Index_2867| s0@@3 n@@11)))
 :qid |stdinbpl.242:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2867| (|Seq#Append_4433| s0@@3 s1@@3) n@@11))
 :pattern ( (|Seq#Index_2867| s0@@3 n@@11) (|Seq#Append_4433| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2867) (s1@@4 T@Seq_2867) (m Int) ) (!  (=> (and (and (and (not (= s0@@4 |Seq#Empty_4539|)) (not (= s1@@4 |Seq#Empty_4539|))) (<= 0 m)) (< m (|Seq#Length_2867| s1@@4))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_2867| s0@@4)) (|Seq#Length_2867| s0@@4)) m) (= (|Seq#Index_2867| (|Seq#Append_4433| s0@@4 s1@@4) (|Seq#Add| m (|Seq#Length_2867| s0@@4))) (|Seq#Index_2867| s1@@4 m))))
 :qid |stdinbpl.247:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2867| s1@@4 m) (|Seq#Append_4433| s0@@4 s1@@4))
)))
(assert (forall ((o_11@@14 T@Ref) (f_17 T@Field_37762_37763) (Heap@@53 T@PolymorphicMapType_37689) ) (!  (=> (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@53) o_11@@14 $allocated) (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@53) (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@53) o_11@@14 f_17) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@53) o_11@@14 f_17))
)))
(assert (forall ((s@@14 T@Seq_2867) (x@@15 Int) (i@@5 Int) ) (!  (=> (and (and (<= 0 i@@5) (< i@@5 (|Seq#Length_2867| s@@14))) (= (|Seq#Index_2867| s@@14 i@@5) x@@15)) (|Seq#Contains_2867| s@@14 x@@15))
 :qid |stdinbpl.399:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2867| s@@14 x@@15) (|Seq#Index_2867| s@@14 i@@5))
)))
(assert (forall ((s0@@5 T@Seq_2867) (s1@@5 T@Seq_2867) ) (!  (or (or (and (= s0@@5 s1@@5) (|Seq#Equal_4420| s0@@5 s1@@5)) (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_4420| s0@@5 s1@@5))) (not (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))))) (and (and (and (and (and (and (not (= s0@@5 s1@@5)) (not (|Seq#Equal_4420| s0@@5 s1@@5))) (= (|Seq#Length_2867| s0@@5) (|Seq#Length_2867| s1@@5))) (= (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#SkolemDiff_2867| s1@@5 s0@@5))) (<= 0 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))) (< (|Seq#SkolemDiff_2867| s0@@5 s1@@5) (|Seq#Length_2867| s0@@5))) (not (= (|Seq#Index_2867| s0@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5)) (|Seq#Index_2867| s1@@5 (|Seq#SkolemDiff_2867| s0@@5 s1@@5))))))
 :qid |stdinbpl.503:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_4420| s0@@5 s1@@5))
)))
(assert (forall ((p@@3 T@Field_43819_43820) (v_1@@2 T@FrameType) (q T@Field_43819_43820) (w@@2 T@FrameType) (r T@Field_43819_43820) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43776_43776 p@@3 v_1@@2 q w@@2) (InsidePredicate_43776_43776 q w@@2 r u)) (InsidePredicate_43776_43776 p@@3 v_1@@2 r u))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_43776 p@@3 v_1@@2 q w@@2) (InsidePredicate_43776_43776 q w@@2 r u))
)))
(assert (forall ((p@@4 T@Field_43819_43820) (v_1@@3 T@FrameType) (q@@0 T@Field_43819_43820) (w@@3 T@FrameType) (r@@0 T@Field_20369_20450) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_43776 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_43776_37749 q@@0 w@@3 r@@0 u@@0)) (InsidePredicate_43776_37749 p@@4 v_1@@3 r@@0 u@@0))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_43776 p@@4 v_1@@3 q@@0 w@@3) (InsidePredicate_43776_37749 q@@0 w@@3 r@@0 u@@0))
)))
(assert (forall ((p@@5 T@Field_43819_43820) (v_1@@4 T@FrameType) (q@@1 T@Field_43819_43820) (w@@4 T@FrameType) (r@@1 T@Field_45250_45251) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_43776 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_43776_20449 q@@1 w@@4 r@@1 u@@1)) (InsidePredicate_43776_20449 p@@5 v_1@@4 r@@1 u@@1))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_43776 p@@5 v_1@@4 q@@1 w@@4) (InsidePredicate_43776_20449 q@@1 w@@4 r@@1 u@@1))
)))
(assert (forall ((p@@6 T@Field_43819_43820) (v_1@@5 T@FrameType) (q@@2 T@Field_20369_20450) (w@@5 T@FrameType) (r@@2 T@Field_43819_43820) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_37749 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_37749_43776 q@@2 w@@5 r@@2 u@@2)) (InsidePredicate_43776_43776 p@@6 v_1@@5 r@@2 u@@2))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_37749 p@@6 v_1@@5 q@@2 w@@5) (InsidePredicate_37749_43776 q@@2 w@@5 r@@2 u@@2))
)))
(assert (forall ((p@@7 T@Field_43819_43820) (v_1@@6 T@FrameType) (q@@3 T@Field_20369_20450) (w@@6 T@FrameType) (r@@3 T@Field_20369_20450) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_37749 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_37749_37749 q@@3 w@@6 r@@3 u@@3)) (InsidePredicate_43776_37749 p@@7 v_1@@6 r@@3 u@@3))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_37749 p@@7 v_1@@6 q@@3 w@@6) (InsidePredicate_37749_37749 q@@3 w@@6 r@@3 u@@3))
)))
(assert (forall ((p@@8 T@Field_43819_43820) (v_1@@7 T@FrameType) (q@@4 T@Field_20369_20450) (w@@7 T@FrameType) (r@@4 T@Field_45250_45251) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_37749 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_37749_20449 q@@4 w@@7 r@@4 u@@4)) (InsidePredicate_43776_20449 p@@8 v_1@@7 r@@4 u@@4))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_37749 p@@8 v_1@@7 q@@4 w@@7) (InsidePredicate_37749_20449 q@@4 w@@7 r@@4 u@@4))
)))
(assert (forall ((p@@9 T@Field_43819_43820) (v_1@@8 T@FrameType) (q@@5 T@Field_45250_45251) (w@@8 T@FrameType) (r@@5 T@Field_43819_43820) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_20449 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_20449_43776 q@@5 w@@8 r@@5 u@@5)) (InsidePredicate_43776_43776 p@@9 v_1@@8 r@@5 u@@5))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_20449 p@@9 v_1@@8 q@@5 w@@8) (InsidePredicate_20449_43776 q@@5 w@@8 r@@5 u@@5))
)))
(assert (forall ((p@@10 T@Field_43819_43820) (v_1@@9 T@FrameType) (q@@6 T@Field_45250_45251) (w@@9 T@FrameType) (r@@6 T@Field_20369_20450) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_20449 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_20449_37749 q@@6 w@@9 r@@6 u@@6)) (InsidePredicate_43776_37749 p@@10 v_1@@9 r@@6 u@@6))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_20449 p@@10 v_1@@9 q@@6 w@@9) (InsidePredicate_20449_37749 q@@6 w@@9 r@@6 u@@6))
)))
(assert (forall ((p@@11 T@Field_43819_43820) (v_1@@10 T@FrameType) (q@@7 T@Field_45250_45251) (w@@10 T@FrameType) (r@@7 T@Field_45250_45251) (u@@7 T@FrameType) ) (!  (=> (and (InsidePredicate_43776_20449 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_20449_20449 q@@7 w@@10 r@@7 u@@7)) (InsidePredicate_43776_20449 p@@11 v_1@@10 r@@7 u@@7))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43776_20449 p@@11 v_1@@10 q@@7 w@@10) (InsidePredicate_20449_20449 q@@7 w@@10 r@@7 u@@7))
)))
(assert (forall ((p@@12 T@Field_20369_20450) (v_1@@11 T@FrameType) (q@@8 T@Field_43819_43820) (w@@11 T@FrameType) (r@@8 T@Field_43819_43820) (u@@8 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_43776 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_43776_43776 q@@8 w@@11 r@@8 u@@8)) (InsidePredicate_37749_43776 p@@12 v_1@@11 r@@8 u@@8))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_43776 p@@12 v_1@@11 q@@8 w@@11) (InsidePredicate_43776_43776 q@@8 w@@11 r@@8 u@@8))
)))
(assert (forall ((p@@13 T@Field_20369_20450) (v_1@@12 T@FrameType) (q@@9 T@Field_43819_43820) (w@@12 T@FrameType) (r@@9 T@Field_20369_20450) (u@@9 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_43776 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_43776_37749 q@@9 w@@12 r@@9 u@@9)) (InsidePredicate_37749_37749 p@@13 v_1@@12 r@@9 u@@9))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_43776 p@@13 v_1@@12 q@@9 w@@12) (InsidePredicate_43776_37749 q@@9 w@@12 r@@9 u@@9))
)))
(assert (forall ((p@@14 T@Field_20369_20450) (v_1@@13 T@FrameType) (q@@10 T@Field_43819_43820) (w@@13 T@FrameType) (r@@10 T@Field_45250_45251) (u@@10 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_43776 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_43776_20449 q@@10 w@@13 r@@10 u@@10)) (InsidePredicate_37749_20449 p@@14 v_1@@13 r@@10 u@@10))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_43776 p@@14 v_1@@13 q@@10 w@@13) (InsidePredicate_43776_20449 q@@10 w@@13 r@@10 u@@10))
)))
(assert (forall ((p@@15 T@Field_20369_20450) (v_1@@14 T@FrameType) (q@@11 T@Field_20369_20450) (w@@14 T@FrameType) (r@@11 T@Field_43819_43820) (u@@11 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_37749 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_37749_43776 q@@11 w@@14 r@@11 u@@11)) (InsidePredicate_37749_43776 p@@15 v_1@@14 r@@11 u@@11))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_37749 p@@15 v_1@@14 q@@11 w@@14) (InsidePredicate_37749_43776 q@@11 w@@14 r@@11 u@@11))
)))
(assert (forall ((p@@16 T@Field_20369_20450) (v_1@@15 T@FrameType) (q@@12 T@Field_20369_20450) (w@@15 T@FrameType) (r@@12 T@Field_20369_20450) (u@@12 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_37749 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_37749_37749 q@@12 w@@15 r@@12 u@@12)) (InsidePredicate_37749_37749 p@@16 v_1@@15 r@@12 u@@12))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_37749 p@@16 v_1@@15 q@@12 w@@15) (InsidePredicate_37749_37749 q@@12 w@@15 r@@12 u@@12))
)))
(assert (forall ((p@@17 T@Field_20369_20450) (v_1@@16 T@FrameType) (q@@13 T@Field_20369_20450) (w@@16 T@FrameType) (r@@13 T@Field_45250_45251) (u@@13 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_37749 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_37749_20449 q@@13 w@@16 r@@13 u@@13)) (InsidePredicate_37749_20449 p@@17 v_1@@16 r@@13 u@@13))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_37749 p@@17 v_1@@16 q@@13 w@@16) (InsidePredicate_37749_20449 q@@13 w@@16 r@@13 u@@13))
)))
(assert (forall ((p@@18 T@Field_20369_20450) (v_1@@17 T@FrameType) (q@@14 T@Field_45250_45251) (w@@17 T@FrameType) (r@@14 T@Field_43819_43820) (u@@14 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_20449 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_20449_43776 q@@14 w@@17 r@@14 u@@14)) (InsidePredicate_37749_43776 p@@18 v_1@@17 r@@14 u@@14))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_20449 p@@18 v_1@@17 q@@14 w@@17) (InsidePredicate_20449_43776 q@@14 w@@17 r@@14 u@@14))
)))
(assert (forall ((p@@19 T@Field_20369_20450) (v_1@@18 T@FrameType) (q@@15 T@Field_45250_45251) (w@@18 T@FrameType) (r@@15 T@Field_20369_20450) (u@@15 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_20449 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_20449_37749 q@@15 w@@18 r@@15 u@@15)) (InsidePredicate_37749_37749 p@@19 v_1@@18 r@@15 u@@15))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_20449 p@@19 v_1@@18 q@@15 w@@18) (InsidePredicate_20449_37749 q@@15 w@@18 r@@15 u@@15))
)))
(assert (forall ((p@@20 T@Field_20369_20450) (v_1@@19 T@FrameType) (q@@16 T@Field_45250_45251) (w@@19 T@FrameType) (r@@16 T@Field_45250_45251) (u@@16 T@FrameType) ) (!  (=> (and (InsidePredicate_37749_20449 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_20449_20449 q@@16 w@@19 r@@16 u@@16)) (InsidePredicate_37749_20449 p@@20 v_1@@19 r@@16 u@@16))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_37749_20449 p@@20 v_1@@19 q@@16 w@@19) (InsidePredicate_20449_20449 q@@16 w@@19 r@@16 u@@16))
)))
(assert (forall ((p@@21 T@Field_45250_45251) (v_1@@20 T@FrameType) (q@@17 T@Field_43819_43820) (w@@20 T@FrameType) (r@@17 T@Field_43819_43820) (u@@17 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_43776 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_43776_43776 q@@17 w@@20 r@@17 u@@17)) (InsidePredicate_20449_43776 p@@21 v_1@@20 r@@17 u@@17))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_43776 p@@21 v_1@@20 q@@17 w@@20) (InsidePredicate_43776_43776 q@@17 w@@20 r@@17 u@@17))
)))
(assert (forall ((p@@22 T@Field_45250_45251) (v_1@@21 T@FrameType) (q@@18 T@Field_43819_43820) (w@@21 T@FrameType) (r@@18 T@Field_20369_20450) (u@@18 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_43776 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_43776_37749 q@@18 w@@21 r@@18 u@@18)) (InsidePredicate_20449_37749 p@@22 v_1@@21 r@@18 u@@18))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_43776 p@@22 v_1@@21 q@@18 w@@21) (InsidePredicate_43776_37749 q@@18 w@@21 r@@18 u@@18))
)))
(assert (forall ((p@@23 T@Field_45250_45251) (v_1@@22 T@FrameType) (q@@19 T@Field_43819_43820) (w@@22 T@FrameType) (r@@19 T@Field_45250_45251) (u@@19 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_43776 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_43776_20449 q@@19 w@@22 r@@19 u@@19)) (InsidePredicate_20449_20449 p@@23 v_1@@22 r@@19 u@@19))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_43776 p@@23 v_1@@22 q@@19 w@@22) (InsidePredicate_43776_20449 q@@19 w@@22 r@@19 u@@19))
)))
(assert (forall ((p@@24 T@Field_45250_45251) (v_1@@23 T@FrameType) (q@@20 T@Field_20369_20450) (w@@23 T@FrameType) (r@@20 T@Field_43819_43820) (u@@20 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_37749 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_37749_43776 q@@20 w@@23 r@@20 u@@20)) (InsidePredicate_20449_43776 p@@24 v_1@@23 r@@20 u@@20))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_37749 p@@24 v_1@@23 q@@20 w@@23) (InsidePredicate_37749_43776 q@@20 w@@23 r@@20 u@@20))
)))
(assert (forall ((p@@25 T@Field_45250_45251) (v_1@@24 T@FrameType) (q@@21 T@Field_20369_20450) (w@@24 T@FrameType) (r@@21 T@Field_20369_20450) (u@@21 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_37749 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_37749_37749 q@@21 w@@24 r@@21 u@@21)) (InsidePredicate_20449_37749 p@@25 v_1@@24 r@@21 u@@21))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_37749 p@@25 v_1@@24 q@@21 w@@24) (InsidePredicate_37749_37749 q@@21 w@@24 r@@21 u@@21))
)))
(assert (forall ((p@@26 T@Field_45250_45251) (v_1@@25 T@FrameType) (q@@22 T@Field_20369_20450) (w@@25 T@FrameType) (r@@22 T@Field_45250_45251) (u@@22 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_37749 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_37749_20449 q@@22 w@@25 r@@22 u@@22)) (InsidePredicate_20449_20449 p@@26 v_1@@25 r@@22 u@@22))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_37749 p@@26 v_1@@25 q@@22 w@@25) (InsidePredicate_37749_20449 q@@22 w@@25 r@@22 u@@22))
)))
(assert (forall ((p@@27 T@Field_45250_45251) (v_1@@26 T@FrameType) (q@@23 T@Field_45250_45251) (w@@26 T@FrameType) (r@@23 T@Field_43819_43820) (u@@23 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_20449 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_20449_43776 q@@23 w@@26 r@@23 u@@23)) (InsidePredicate_20449_43776 p@@27 v_1@@26 r@@23 u@@23))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_20449 p@@27 v_1@@26 q@@23 w@@26) (InsidePredicate_20449_43776 q@@23 w@@26 r@@23 u@@23))
)))
(assert (forall ((p@@28 T@Field_45250_45251) (v_1@@27 T@FrameType) (q@@24 T@Field_45250_45251) (w@@27 T@FrameType) (r@@24 T@Field_20369_20450) (u@@24 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_20449 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_20449_37749 q@@24 w@@27 r@@24 u@@24)) (InsidePredicate_20449_37749 p@@28 v_1@@27 r@@24 u@@24))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_20449 p@@28 v_1@@27 q@@24 w@@27) (InsidePredicate_20449_37749 q@@24 w@@27 r@@24 u@@24))
)))
(assert (forall ((p@@29 T@Field_45250_45251) (v_1@@28 T@FrameType) (q@@25 T@Field_45250_45251) (w@@28 T@FrameType) (r@@25 T@Field_45250_45251) (u@@25 T@FrameType) ) (!  (=> (and (InsidePredicate_20449_20449 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_20449_20449 q@@25 w@@28 r@@25 u@@25)) (InsidePredicate_20449_20449 p@@29 v_1@@28 r@@25 u@@25))
 :qid |stdinbpl.170:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20449_20449 p@@29 v_1@@28 q@@25 w@@28) (InsidePredicate_20449_20449 q@@25 w@@28 r@@25 u@@25))
)))
(assert (forall ((s@@15 T@Seq_2867) ) (!  (=> (= (|Seq#Length_2867| s@@15) 0) (= s@@15 |Seq#Empty_4539|))
 :qid |stdinbpl.206:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2867| s@@15))
)))
(assert (forall ((s@@16 T@Seq_2867) (n@@12 Int) ) (!  (=> (<= n@@12 0) (= (|Seq#Take_2867| s@@16 n@@12) |Seq#Empty_4539|))
 :qid |stdinbpl.382:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2867| s@@16 n@@12))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun x@@16 () T@Ref)
(declare-fun Mask@0 () T@PolymorphicMapType_37710)
(declare-fun Heap@@54 () T@PolymorphicMapType_37689)
(declare-fun Mask@1 () T@PolymorphicMapType_37710)
(declare-fun Mask@2 () T@PolymorphicMapType_37710)
(declare-fun Mask@3 () T@PolymorphicMapType_37710)
(declare-fun Mask@4 () T@PolymorphicMapType_37710)
(declare-fun Mask@5 () T@PolymorphicMapType_37710)
(set-info :boogie-vc-id |Tree#definedness|)
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
 (=> (= (ControlFlow 0 0) 7) (let ((anon3_correct true))
(let ((anon4_Else_correct  (=> (not (= x@@16 null)) (=> (and (not (= x@@16 null)) (= Mask@0 (PolymorphicMapType_37710 (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| ZeroMask) (store (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ZeroMask) x@@16 v_35 (+ (select (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| ZeroMask) x@@16 v_35) FullPerm)) (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| ZeroMask) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| ZeroMask)))) (=> (and (and (state Heap@@54 Mask@0) (not (= x@@16 null))) (and (= Mask@1 (PolymorphicMapType_37710 (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@0) (store (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@0) x@@16 l (+ (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@0) x@@16 l) FullPerm)) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@0) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@0))) (state Heap@@54 Mask@1))) (and (=> (= (ControlFlow 0 3) (- 0 5)) (HasDirectPerm_20371_20372 Mask@1 x@@16 l)) (=> (HasDirectPerm_20371_20372 Mask@1 x@@16 l) (=> (= Mask@2 (PolymorphicMapType_37710 (store (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@1) null (Tree (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@54) x@@16 l)) (+ (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@1) null (Tree (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@54) x@@16 l))) FullPerm)) (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@1) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@1))) (=> (and (and (state Heap@@54 Mask@2) (not (= x@@16 null))) (and (= Mask@3 (PolymorphicMapType_37710 (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@2) (store (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@2) x@@16 r_11 (+ (select (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@2) x@@16 r_11) FullPerm)) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@2) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@2))) (state Heap@@54 Mask@3))) (and (=> (= (ControlFlow 0 3) (- 0 4)) (HasDirectPerm_20371_20372 Mask@3 x@@16 r_11)) (=> (HasDirectPerm_20371_20372 Mask@3 x@@16 r_11) (=> (and (and (= Mask@4 (PolymorphicMapType_37710 (store (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@3) null (Tree (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@54) x@@16 r_11)) (+ (select (|PolymorphicMapType_37710_20449_20450#PolymorphicMapType_37710| Mask@3) null (Tree (select (|PolymorphicMapType_37689_20088_20089#PolymorphicMapType_37689| Heap@@54) x@@16 r_11))) FullPerm)) (|PolymorphicMapType_37710_20369_3561#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20371_20372#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20281_3024#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20449_3561#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20449_20372#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20449_53#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20449_141784#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20369_20450#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20369_53#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20369_142183#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20281_20450#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20281_20372#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20281_53#PolymorphicMapType_37710| Mask@3) (|PolymorphicMapType_37710_20281_142597#PolymorphicMapType_37710| Mask@3))) (state Heap@@54 Mask@4)) (and (= Mask@5 Mask@4) (= (ControlFlow 0 3) 1))) anon3_correct))))))))))))
(let ((anon4_Then_correct  (=> (= x@@16 null) (=> (and (= Mask@5 ZeroMask) (= (ControlFlow 0 2) 1)) anon3_correct))))
(let ((anon0_correct  (=> (and (and (state Heap@@54 ZeroMask) (= AssumeFunctionsAbove (- 0 1))) (and AssumePermUpperBound (select (|PolymorphicMapType_37689_20085_53#PolymorphicMapType_37689| Heap@@54) x@@16 $allocated))) (and (=> (= (ControlFlow 0 6) 2) anon4_Then_correct) (=> (= (ControlFlow 0 6) 3) anon4_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 7) 6) anon0_correct)))
PreconditionGeneratedEntry_correct))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
