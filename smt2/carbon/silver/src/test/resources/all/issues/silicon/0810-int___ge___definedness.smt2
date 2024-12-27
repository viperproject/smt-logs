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
(declare-sort T@Field_11835_53 0)
(declare-sort T@Field_11848_11849 0)
(declare-sort T@Field_18453_18458 0)
(declare-sort T@Seq_18456 0)
(declare-sort T@Field_7407_33056 0)
(declare-sort T@Field_7407_32923 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11796 0)) (((PolymorphicMapType_11796 (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| (Array T@Ref T@Field_18453_18458 Real)) (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| (Array T@Ref T@Field_11848_11849 Real)) (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| (Array T@Ref T@Field_11835_53 Real)) (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| (Array T@Ref T@Field_7407_32923 Real)) (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| (Array T@Ref T@Field_7407_33056 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12324 0)) (((PolymorphicMapType_12324 (|PolymorphicMapType_12324_11835_53#PolymorphicMapType_12324| (Array T@Ref T@Field_11835_53 Bool)) (|PolymorphicMapType_12324_11835_11849#PolymorphicMapType_12324| (Array T@Ref T@Field_11848_11849 Bool)) (|PolymorphicMapType_12324_11835_18458#PolymorphicMapType_12324| (Array T@Ref T@Field_18453_18458 Bool)) (|PolymorphicMapType_12324_11835_32923#PolymorphicMapType_12324| (Array T@Ref T@Field_7407_32923 Bool)) (|PolymorphicMapType_12324_11835_34240#PolymorphicMapType_12324| (Array T@Ref T@Field_7407_33056 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11775 0)) (((PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| (Array T@Ref T@Field_11835_53 Bool)) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| (Array T@Ref T@Field_11848_11849 T@Ref)) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| (Array T@Ref T@Field_18453_18458 T@Seq_18456)) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| (Array T@Ref T@Field_7407_33056 T@PolymorphicMapType_12324)) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| (Array T@Ref T@Field_7407_32923 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11835_53)
(declare-sort T@PyTypeDomainType 0)
(declare-fun object () T@PyTypeDomainType)
(declare-fun list_basic () T@PyTypeDomainType)
(declare-fun set_basic () T@PyTypeDomainType)
(declare-fun dict_basic () T@PyTypeDomainType)
(declare-fun vint () T@PyTypeDomainType)
(declare-fun float () T@PyTypeDomainType)
(declare-fun vbool () T@PyTypeDomainType)
(declare-fun NoneType () T@PyTypeDomainType)
(declare-fun Exception () T@PyTypeDomainType)
(declare-fun ConnectionRefusedError () T@PyTypeDomainType)
(declare-fun traceback () T@PyTypeDomainType)
(declare-fun str () T@PyTypeDomainType)
(declare-fun bytes () T@PyTypeDomainType)
(declare-fun __prim__perm () T@PyTypeDomainType)
(declare-fun PSeq_basic () T@PyTypeDomainType)
(declare-fun PSet_basic () T@PyTypeDomainType)
(declare-fun PMultiset_basic () T@PyTypeDomainType)
(declare-fun slice () T@PyTypeDomainType)
(declare-fun range_0 () T@PyTypeDomainType)
(declare-fun Iterator_basic () T@PyTypeDomainType)
(declare-fun Thread_0 () T@PyTypeDomainType)
(declare-fun LevelType () T@PyTypeDomainType)
(declare-fun vtype () T@PyTypeDomainType)
(declare-fun Place () T@PyTypeDomainType)
(declare-fun __prim__Seq_type () T@PyTypeDomainType)
(declare-fun Node_1 () T@PyTypeDomainType)
(declare-fun list_acc () T@Field_18453_18458)
(declare-fun Node_function_name () T@Field_11848_11849)
(declare-fun Node_children () T@Field_11848_11849)
(declare-fun state (T@PolymorphicMapType_11775 T@PolymorphicMapType_11796) Bool)
(declare-fun |int___unbox__'| (T@PolymorphicMapType_11775 T@Ref) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |int___unbox__#trigger| (T@FrameType T@Ref) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun issubtype (T@PyTypeDomainType T@PyTypeDomainType) Bool)
(declare-fun typeof (T@Ref) T@PyTypeDomainType)
(declare-fun |__prim__int___box__'| (T@PolymorphicMapType_11775 Int) T@Ref)
(declare-fun |Seq#Length_7408| (T@Seq_18456) Int)
(declare-fun |Seq#Drop_7408| (T@Seq_18456 Int) T@Seq_18456)
(declare-sort T@Seq_2891 0)
(declare-fun |Seq#Length_2891| (T@Seq_2891) Int)
(declare-fun |Seq#Drop_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun |int___ge__'| (T@PolymorphicMapType_11775 Int Int) Bool)
(declare-fun |int___ge__#frame| (T@FrameType Int Int) Bool)
(declare-fun |int___lt__'| (T@PolymorphicMapType_11775 Int Int) Bool)
(declare-fun |int___lt__#frame| (T@FrameType Int Int) Bool)
(declare-fun get_basic (T@PyTypeDomainType) T@PyTypeDomainType)
(declare-fun succHeap (T@PolymorphicMapType_11775 T@PolymorphicMapType_11775) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11775 T@PolymorphicMapType_11775) Bool)
(declare-fun extends_ (T@PyTypeDomainType T@PyTypeDomainType) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11796) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12324)
(declare-fun isnotsubtype (T@PyTypeDomainType T@PyTypeDomainType) Bool)
(declare-fun dummyFunction_4473 (Bool) Bool)
(declare-fun |int___ge__#triggerStateless| (Int Int) Bool)
(declare-fun |int___lt__#triggerStateless| (Int Int) Bool)
(declare-fun |list___getitem__'| (T@PolymorphicMapType_11775 T@Ref T@Ref) T@Ref)
(declare-fun dummyFunction_7433 (T@Ref) Bool)
(declare-fun |list___getitem__#triggerStateless| (T@Ref T@Ref) T@Ref)
(declare-fun |Seq#Index_7408| (T@Seq_18456 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2891| (T@Seq_2891 Int) Int)
(declare-fun |Seq#Empty_7408| () T@Seq_18456)
(declare-fun |Seq#Empty_2891| () T@Seq_2891)
(declare-fun |__prim__int___box__#triggerStateless| (Int) T@Ref)
(declare-fun dummyFunction_4155 (Int) Bool)
(declare-fun |int___unbox__#triggerStateless| (T@Ref) Int)
(declare-fun |list___len__'| (T@PolymorphicMapType_11775 T@Ref) Int)
(declare-fun |list___len__#triggerStateless| (T@Ref) Int)
(declare-fun |Seq#Update_7408| (T@Seq_18456 Int T@Ref) T@Seq_18456)
(declare-fun |Seq#Update_2891| (T@Seq_2891 Int Int) T@Seq_2891)
(declare-fun list___len__ (T@PolymorphicMapType_11775 T@Ref) Int)
(declare-fun |Seq#Take_7408| (T@Seq_18456 Int) T@Seq_18456)
(declare-fun |Seq#Take_2891| (T@Seq_2891 Int) T@Seq_2891)
(declare-fun |Seq#Contains_2891| (T@Seq_2891 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2891)
(declare-fun |Seq#Contains_18456| (T@Seq_18456 T@Ref) Bool)
(declare-fun |Seq#Skolem_18456| (T@Seq_18456 T@Ref) Int)
(declare-fun |Seq#Skolem_2891| (T@Seq_2891 Int) Int)
(declare-fun __prim__int___box__ (T@PolymorphicMapType_11775 Int) T@Ref)
(declare-fun int___unbox__ (T@PolymorphicMapType_11775 T@Ref) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11775 T@PolymorphicMapType_11775 T@PolymorphicMapType_11796) Bool)
(declare-fun IsPredicateField_7407_33014 (T@Field_7407_32923) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7407 (T@Field_7407_32923) T@Field_7407_33056)
(declare-fun HasDirectPerm_7407_32987 (T@PolymorphicMapType_11796 T@Ref T@Field_7407_32923) Bool)
(declare-fun IsWandField_7407_34767 (T@Field_7407_32923) Bool)
(declare-fun WandMaskField_7407 (T@Field_7407_32923) T@Field_7407_33056)
(declare-fun |__prim__int___box__#trigger| (T@FrameType Int) Bool)
(declare-fun |Seq#Singleton_7408| (T@Ref) T@Seq_18456)
(declare-fun |Seq#Singleton_2891| (Int) T@Seq_2891)
(declare-fun |Seq#Append_18456| (T@Seq_18456 T@Seq_18456) T@Seq_18456)
(declare-fun |Seq#Append_2891| (T@Seq_2891 T@Seq_2891) T@Seq_2891)
(declare-fun dummyHeap () T@PolymorphicMapType_11775)
(declare-fun ZeroMask () T@PolymorphicMapType_11796)
(declare-fun InsidePredicate_11835_11835 (T@Field_7407_32923 T@FrameType T@Field_7407_32923 T@FrameType) Bool)
(declare-fun IsPredicateField_7407_18480 (T@Field_18453_18458) Bool)
(declare-fun IsWandField_7407_18506 (T@Field_18453_18458) Bool)
(declare-fun IsPredicateField_7411_7412 (T@Field_11848_11849) Bool)
(declare-fun IsWandField_7411_7412 (T@Field_11848_11849) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7407_38289 (T@Field_7407_33056) Bool)
(declare-fun IsWandField_7407_38305 (T@Field_7407_33056) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7407_53 (T@Field_11835_53) Bool)
(declare-fun IsWandField_7407_53 (T@Field_11835_53) Bool)
(declare-fun HasDirectPerm_7407_38743 (T@PolymorphicMapType_11796 T@Ref T@Field_7407_33056) Bool)
(declare-fun HasDirectPerm_7407_53 (T@PolymorphicMapType_11796 T@Ref T@Field_11835_53) Bool)
(declare-fun HasDirectPerm_7414_7415 (T@PolymorphicMapType_11796 T@Ref T@Field_11848_11849) Bool)
(declare-fun HasDirectPerm_7407_22427 (T@PolymorphicMapType_11796 T@Ref T@Field_18453_18458) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun list___getitem__ (T@PolymorphicMapType_11775 T@Ref T@Ref) T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_11796 T@PolymorphicMapType_11796 T@PolymorphicMapType_11796) Bool)
(declare-fun |Seq#Equal_18456| (T@Seq_18456 T@Seq_18456) Bool)
(declare-fun |Seq#Equal_2891| (T@Seq_2891 T@Seq_2891) Bool)
(declare-fun |Seq#ContainsTrigger_7408| (T@Seq_18456 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2891| (T@Seq_2891 Int) Bool)
(declare-fun |list___len__#frame| (T@FrameType T@Ref) Int)
(declare-fun FrameFragment_21950 (T@Seq_18456) T@FrameType)
(declare-fun |__prim__int___box__#frame| (T@FrameType Int) T@Ref)
(declare-fun |int___unbox__#frame| (T@FrameType T@Ref) Int)
(declare-fun int___lt__ (T@PolymorphicMapType_11775 Int Int) Bool)
(declare-fun list_1 (T@PyTypeDomainType) T@PyTypeDomainType)
(declare-fun |list___getitem__#frame| (T@FrameType T@Ref T@Ref) T@Ref)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_7222 (T@FrameType) T@FrameType)
(declare-fun |Seq#SkolemDiff_18456| (T@Seq_18456 T@Seq_18456) Int)
(declare-fun |Seq#SkolemDiff_2891| (T@Seq_2891 T@Seq_2891) Int)
(declare-fun int___ge__ (T@PolymorphicMapType_11775 Int Int) Bool)
(assert (and (distinct object list_basic set_basic dict_basic vint float vbool NoneType Exception ConnectionRefusedError traceback str bytes __prim__perm PSeq_basic PSet_basic PMultiset_basic slice range_0 Iterator_basic Thread_0 LevelType vtype Place __prim__Seq_type Node_1)(distinct Node_function_name Node_children))
)
(assert (forall ((Heap T@PolymorphicMapType_11775) (Mask T@PolymorphicMapType_11796) (box_1 T@Ref) ) (!  (=> (and (state Heap Mask) (or (< AssumeFunctionsAbove 4) (|int___unbox__#trigger| EmptyFrame box_1))) (=> (issubtype (typeof box_1) vint) (=> (not (issubtype (typeof box_1) vbool)) (= (|__prim__int___box__'| Heap (|int___unbox__'| Heap box_1)) box_1))))
 :qid |stdinbpl.867:15|
 :skolemid |72|
 :pattern ( (state Heap Mask) (|int___unbox__'| Heap box_1))
)))
(assert (forall ((s T@Seq_18456) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7408| s)) (= (|Seq#Length_7408| (|Seq#Drop_7408| s n)) (- (|Seq#Length_7408| s) n))) (=> (< (|Seq#Length_7408| s) n) (= (|Seq#Length_7408| (|Seq#Drop_7408| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7408| (|Seq#Drop_7408| s n)) (|Seq#Length_7408| s))))
 :qid |stdinbpl.295:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7408| (|Seq#Drop_7408| s n)))
 :pattern ( (|Seq#Length_7408| s) (|Seq#Drop_7408| s n))
)))
(assert (forall ((s@@0 T@Seq_2891) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2891| s@@0)) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (- (|Seq#Length_2891| s@@0) n@@0))) (=> (< (|Seq#Length_2891| s@@0) n@@0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)) (|Seq#Length_2891| s@@0))))
 :qid |stdinbpl.295:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2891| (|Seq#Drop_2891| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2891| s@@0) (|Seq#Drop_2891| s@@0 n@@0))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11775) (Mask@@0 T@PolymorphicMapType_11796) (self Int) (other Int) ) (!  (=> (state Heap@@0 Mask@@0) (= (|int___ge__'| Heap@@0 self other) (|int___ge__#frame| EmptyFrame self other)))
 :qid |stdinbpl.932:15|
 :skolemid |76|
 :pattern ( (state Heap@@0 Mask@@0) (|int___ge__'| Heap@@0 self other))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11775) (Mask@@1 T@PolymorphicMapType_11796) (self@@0 Int) (other@@0 Int) ) (!  (=> (state Heap@@1 Mask@@1) (= (|int___lt__'| Heap@@1 self@@0 other@@0) (|int___lt__#frame| EmptyFrame self@@0 other@@0)))
 :qid |stdinbpl.982:15|
 :skolemid |80|
 :pattern ( (state Heap@@1 Mask@@1) (|int___lt__'| Heap@@1 self@@0 other@@0))
)))
(assert (= (get_basic vint) vint))
(assert (= (get_basic float) float))
(assert (forall ((Heap0 T@PolymorphicMapType_11775) (Heap1 T@PolymorphicMapType_11775) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((sub_1 T@PyTypeDomainType) (sub2 T@PyTypeDomainType) ) (!  (=> (extends_ sub_1 sub2) (issubtype sub_1 sub2))
 :qid |stdinbpl.726:15|
 :skolemid |60|
 :pattern ( (extends_ sub_1 sub2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11775) (Mask@@2 T@PolymorphicMapType_11796) ) (!  (=> (state Heap@@2 Mask@@2) (GoodMask Mask@@2))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@2 Mask@@2))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11775) (Heap1@@0 T@PolymorphicMapType_11775) (Heap2 T@PolymorphicMapType_11775) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((sub_1@@0 T@PyTypeDomainType) (middle T@PyTypeDomainType) (super_1 T@PyTypeDomainType) ) (!  (=> (and (issubtype sub_1@@0 middle) (issubtype middle super_1)) (issubtype sub_1@@0 super_1))
 :qid |stdinbpl.714:15|
 :skolemid |58|
 :pattern ( (issubtype sub_1@@0 middle) (issubtype middle super_1))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7407_33056) ) (!  (not (select (|PolymorphicMapType_12324_11835_34240#PolymorphicMapType_12324| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12324_11835_34240#PolymorphicMapType_12324| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7407_32923) ) (!  (not (select (|PolymorphicMapType_12324_11835_32923#PolymorphicMapType_12324| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12324_11835_32923#PolymorphicMapType_12324| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_18453_18458) ) (!  (not (select (|PolymorphicMapType_12324_11835_18458#PolymorphicMapType_12324| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12324_11835_18458#PolymorphicMapType_12324| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11848_11849) ) (!  (not (select (|PolymorphicMapType_12324_11835_11849#PolymorphicMapType_12324| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12324_11835_11849#PolymorphicMapType_12324| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11835_53) ) (!  (not (select (|PolymorphicMapType_12324_11835_53#PolymorphicMapType_12324| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12324_11835_53#PolymorphicMapType_12324| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((sub_1@@1 T@PyTypeDomainType) (middle@@0 T@PyTypeDomainType) (super_1@@0 T@PyTypeDomainType) ) (!  (=> (and (issubtype sub_1@@1 middle@@0) (isnotsubtype middle@@0 super_1@@0)) (not (issubtype sub_1@@1 super_1@@0)))
 :qid |stdinbpl.738:15|
 :skolemid |62|
 :pattern ( (issubtype sub_1@@1 middle@@0) (isnotsubtype middle@@0 super_1@@0))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11775) (self@@1 Int) (other@@1 Int) ) (! (dummyFunction_4473 (|int___ge__#triggerStateless| self@@1 other@@1))
 :qid |stdinbpl.919:15|
 :skolemid |74|
 :pattern ( (|int___ge__'| Heap@@3 self@@1 other@@1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11775) (self@@2 Int) (other@@2 Int) ) (! (dummyFunction_4473 (|int___lt__#triggerStateless| self@@2 other@@2))
 :qid |stdinbpl.969:15|
 :skolemid |78|
 :pattern ( (|int___lt__'| Heap@@4 self@@2 other@@2))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11775) (self@@3 T@Ref) (key_1 T@Ref) ) (! (dummyFunction_7433 (|list___getitem__#triggerStateless| self@@3 key_1))
 :qid |stdinbpl.1086:15|
 :skolemid |86|
 :pattern ( (|list___getitem__'| Heap@@5 self@@3 key_1))
)))
(assert (forall ((s@@1 T@Seq_18456) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7408| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7408| (|Seq#Drop_7408| s@@1 n@@1) j) (|Seq#Index_7408| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.316:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7408| (|Seq#Drop_7408| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2891) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2891| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0) (|Seq#Index_2891| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.316:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2891| (|Seq#Drop_2891| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7408| |Seq#Empty_7408|) 0))
(assert (= (|Seq#Length_2891| |Seq#Empty_2891|) 0))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11775) (prim Int) ) (! (dummyFunction_7433 (|__prim__int___box__#triggerStateless| prim))
 :qid |stdinbpl.783:15|
 :skolemid |65|
 :pattern ( (|__prim__int___box__'| Heap@@6 prim))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11775) (box_1@@0 T@Ref) ) (! (dummyFunction_4155 (|int___unbox__#triggerStateless| box_1@@0))
 :qid |stdinbpl.854:15|
 :skolemid |70|
 :pattern ( (|int___unbox__'| Heap@@7 box_1@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11775) (self@@4 T@Ref) ) (! (dummyFunction_4155 (|list___len__#triggerStateless| self@@4))
 :qid |stdinbpl.1019:15|
 :skolemid |82|
 :pattern ( (|list___len__'| Heap@@8 self@@4))
)))
(assert (forall ((s@@3 T@Seq_18456) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7408| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_7408| (|Seq#Update_7408| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_7408| (|Seq#Update_7408| s@@3 i v) n@@3) (|Seq#Index_7408| s@@3 n@@3)))))
 :qid |stdinbpl.271:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7408| (|Seq#Update_7408| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_7408| s@@3 n@@3) (|Seq#Update_7408| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2891) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2891| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2891| s@@4 n@@4)))))
 :qid |stdinbpl.271:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2891| (|Seq#Update_2891| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2891| s@@4 n@@4) (|Seq#Update_2891| s@@4 i@@0 v@@0))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11775) (Mask@@3 T@PolymorphicMapType_11796) (self@@5 T@Ref) ) (!  (=> (and (state Heap@@9 Mask@@3) (< AssumeFunctionsAbove 3)) (= (list___len__ Heap@@9 self@@5) (|Seq#Length_7408| (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@9) self@@5 list_acc))))
 :qid |stdinbpl.1025:15|
 :skolemid |83|
 :pattern ( (state Heap@@9 Mask@@3) (list___len__ Heap@@9 self@@5))
)))
(assert (forall ((s@@5 T@Seq_18456) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7408| s@@5)) (= (|Seq#Length_7408| (|Seq#Take_7408| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7408| s@@5) n@@5) (= (|Seq#Length_7408| (|Seq#Take_7408| s@@5 n@@5)) (|Seq#Length_7408| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7408| (|Seq#Take_7408| s@@5 n@@5)) 0)))
 :qid |stdinbpl.282:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7408| (|Seq#Take_7408| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7408| s@@5 n@@5) (|Seq#Length_7408| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2891) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2891| s@@6)) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2891| s@@6) n@@6) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) (|Seq#Length_2891| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)) 0)))
 :qid |stdinbpl.282:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2891| (|Seq#Take_2891| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2891| s@@6 n@@6) (|Seq#Length_2891| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.556:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2891| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_18456) (x T@Ref) ) (!  (=> (|Seq#Contains_18456| s@@7 x) (and (and (<= 0 (|Seq#Skolem_18456| s@@7 x)) (< (|Seq#Skolem_18456| s@@7 x) (|Seq#Length_7408| s@@7))) (= (|Seq#Index_7408| s@@7 (|Seq#Skolem_18456| s@@7 x)) x)))
 :qid |stdinbpl.414:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_18456| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_2891) (x@@0 Int) ) (!  (=> (|Seq#Contains_2891| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_2891| s@@8 x@@0)) (< (|Seq#Skolem_2891| s@@8 x@@0) (|Seq#Length_2891| s@@8))) (= (|Seq#Index_2891| s@@8 (|Seq#Skolem_2891| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.414:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2891| s@@8 x@@0))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11775) (prim@@0 Int) ) (!  (and (= (__prim__int___box__ Heap@@10 prim@@0) (|__prim__int___box__'| Heap@@10 prim@@0)) (dummyFunction_7433 (|__prim__int___box__#triggerStateless| prim@@0)))
 :qid |stdinbpl.779:15|
 :skolemid |64|
 :pattern ( (__prim__int___box__ Heap@@10 prim@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11775) (box_1@@1 T@Ref) ) (!  (and (= (int___unbox__ Heap@@11 box_1@@1) (|int___unbox__'| Heap@@11 box_1@@1)) (dummyFunction_4155 (|int___unbox__#triggerStateless| box_1@@1)))
 :qid |stdinbpl.850:15|
 :skolemid |69|
 :pattern ( (int___unbox__ Heap@@11 box_1@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11775) (self@@6 T@Ref) ) (!  (and (= (list___len__ Heap@@12 self@@6) (|list___len__'| Heap@@12 self@@6)) (dummyFunction_4155 (|list___len__#triggerStateless| self@@6)))
 :qid |stdinbpl.1015:15|
 :skolemid |81|
 :pattern ( (list___len__ Heap@@12 self@@6))
)))
(assert (forall ((s@@9 T@Seq_18456) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7408| s@@9 n@@7) s@@9))
 :qid |stdinbpl.398:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7408| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2891) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2891| s@@10 n@@8) s@@10))
 :qid |stdinbpl.398:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2891| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.251:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.249:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11775) (ExhaleHeap T@PolymorphicMapType_11775) (Mask@@4 T@PolymorphicMapType_11796) (pm_f_2 T@Field_7407_32923) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_7407_32987 Mask@@4 null pm_f_2) (IsPredicateField_7407_33014 pm_f_2)) (= (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@13) null (PredicateMaskField_7407 pm_f_2)) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap) null (PredicateMaskField_7407 pm_f_2)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap Mask@@4) (IsPredicateField_7407_33014 pm_f_2) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap) null (PredicateMaskField_7407 pm_f_2)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11775) (ExhaleHeap@@0 T@PolymorphicMapType_11775) (Mask@@5 T@PolymorphicMapType_11796) (pm_f_2@@0 T@Field_7407_32923) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_7407_32987 Mask@@5 null pm_f_2@@0) (IsWandField_7407_34767 pm_f_2@@0)) (= (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@14) null (WandMaskField_7407 pm_f_2@@0)) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@0) null (WandMaskField_7407 pm_f_2@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@0 Mask@@5) (IsWandField_7407_34767 pm_f_2@@0) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@0) null (WandMaskField_7407 pm_f_2@@0)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11775) (Mask@@6 T@PolymorphicMapType_11796) (prim@@1 Int) ) (!  (=> (and (state Heap@@15 Mask@@6) (or (< AssumeFunctionsAbove 4) (|__prim__int___box__#trigger| EmptyFrame prim@@1))) (= (|int___unbox__'| Heap@@15 (|__prim__int___box__'| Heap@@15 prim@@1)) prim@@1))
 :qid |stdinbpl.800:15|
 :skolemid |68|
 :pattern ( (state Heap@@15 Mask@@6) (|__prim__int___box__'| Heap@@15 prim@@1))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_18456| (|Seq#Singleton_7408| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.539:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_18456| (|Seq#Singleton_7408| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.539:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2891| (|Seq#Singleton_2891| x@@2) y@@0))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11775) (Mask@@7 T@PolymorphicMapType_11796) (prim@@2 Int) ) (!  (=> (and (state Heap@@16 Mask@@7) (or (< AssumeFunctionsAbove 4) (|__prim__int___box__#trigger| EmptyFrame prim@@2))) (= (typeof (|__prim__int___box__'| Heap@@16 prim@@2)) vint))
 :qid |stdinbpl.796:15|
 :skolemid |67|
 :pattern ( (state Heap@@16 Mask@@7) (|__prim__int___box__'| Heap@@16 prim@@2))
)))
(assert (forall ((s@@11 T@Seq_18456) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7408| s@@11))) (= (|Seq#Index_7408| (|Seq#Take_7408| s@@11 n@@9) j@@3) (|Seq#Index_7408| s@@11 j@@3)))
 :qid |stdinbpl.290:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7408| (|Seq#Take_7408| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7408| s@@11 j@@3) (|Seq#Take_7408| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2891) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2891| s@@12))) (= (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4) (|Seq#Index_2891| s@@12 j@@4)))
 :qid |stdinbpl.290:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2891| (|Seq#Take_2891| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2891| s@@12 j@@4) (|Seq#Take_2891| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_18456) (t T@Seq_18456) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7408| s@@13))) (< n@@11 (|Seq#Length_7408| (|Seq#Append_18456| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7408| s@@13)) (|Seq#Length_7408| s@@13)) n@@11) (= (|Seq#Take_7408| (|Seq#Append_18456| s@@13 t) n@@11) (|Seq#Append_18456| s@@13 (|Seq#Take_7408| t (|Seq#Sub| n@@11 (|Seq#Length_7408| s@@13)))))))
 :qid |stdinbpl.375:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7408| (|Seq#Append_18456| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2891) (t@@0 T@Seq_2891) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2891| s@@14))) (< n@@12 (|Seq#Length_2891| (|Seq#Append_2891| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)) (|Seq#Length_2891| s@@14)) n@@12) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12) (|Seq#Append_2891| s@@14 (|Seq#Take_2891| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2891| s@@14)))))))
 :qid |stdinbpl.375:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (extends_ vint float))
(assert (extends_ float object))
(assert (extends_ vbool vint))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11775) (ExhaleHeap@@1 T@PolymorphicMapType_11775) (Mask@@8 T@PolymorphicMapType_11796) (o_6 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@17) o_6 $allocated) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@1) o_6 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@1) o_6 $allocated))
)))
(assert (forall ((p T@Field_7407_32923) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11835_11835 p v_1 p w))
 :qid |stdinbpl.193:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11835_11835 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_18456) (s1 T@Seq_18456) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7408|)) (not (= s1 |Seq#Empty_7408|))) (<= (|Seq#Length_7408| s0) n@@13)) (< n@@13 (|Seq#Length_7408| (|Seq#Append_18456| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7408| s0)) (|Seq#Length_7408| s0)) n@@13) (= (|Seq#Index_7408| (|Seq#Append_18456| s0 s1) n@@13) (|Seq#Index_7408| s1 (|Seq#Sub| n@@13 (|Seq#Length_7408| s0))))))
 :qid |stdinbpl.262:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7408| (|Seq#Append_18456| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2891) (s1@@0 T@Seq_2891) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2891|)) (not (= s1@@0 |Seq#Empty_2891|))) (<= (|Seq#Length_2891| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2891| (|Seq#Append_2891| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0)) (|Seq#Length_2891| s0@@0)) n@@14) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14) (|Seq#Index_2891| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2891| s0@@0))))))
 :qid |stdinbpl.262:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7407_18480 list_acc)))
(assert  (not (IsWandField_7407_18506 list_acc)))
(assert  (not (IsPredicateField_7411_7412 Node_function_name)))
(assert  (not (IsWandField_7411_7412 Node_function_name)))
(assert  (not (IsPredicateField_7411_7412 Node_children)))
(assert  (not (IsWandField_7411_7412 Node_children)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11775) (ExhaleHeap@@2 T@PolymorphicMapType_11775) (Mask@@9 T@PolymorphicMapType_11796) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@9) (succHeap Heap@@18 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@2 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11796) (o_2@@4 T@Ref) (f_4@@4 T@Field_7407_33056) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| Mask@@10) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_7407_38289 f_4@@4))) (not (IsWandField_7407_38305 f_4@@4))) (<= (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| Mask@@10) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| Mask@@10) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11796) (o_2@@5 T@Ref) (f_4@@5 T@Field_7407_32923) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| Mask@@11) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_7407_33014 f_4@@5))) (not (IsWandField_7407_34767 f_4@@5))) (<= (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| Mask@@11) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| Mask@@11) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11796) (o_2@@6 T@Ref) (f_4@@6 T@Field_11835_53) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| Mask@@12) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_7407_53 f_4@@6))) (not (IsWandField_7407_53 f_4@@6))) (<= (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| Mask@@12) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| Mask@@12) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11796) (o_2@@7 T@Ref) (f_4@@7 T@Field_11848_11849) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| Mask@@13) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_7411_7412 f_4@@7))) (not (IsWandField_7411_7412 f_4@@7))) (<= (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| Mask@@13) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| Mask@@13) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_11796) (o_2@@8 T@Ref) (f_4@@8 T@Field_18453_18458) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| Mask@@14) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_7407_18480 f_4@@8))) (not (IsWandField_7407_18506 f_4@@8))) (<= (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| Mask@@14) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| Mask@@14) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_11796) (o_2@@9 T@Ref) (f_4@@9 T@Field_7407_33056) ) (! (= (HasDirectPerm_7407_38743 Mask@@15 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| Mask@@15) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7407_38743 Mask@@15 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_11796) (o_2@@10 T@Ref) (f_4@@10 T@Field_7407_32923) ) (! (= (HasDirectPerm_7407_32987 Mask@@16 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| Mask@@16) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7407_32987 Mask@@16 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_11796) (o_2@@11 T@Ref) (f_4@@11 T@Field_11835_53) ) (! (= (HasDirectPerm_7407_53 Mask@@17 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| Mask@@17) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7407_53 Mask@@17 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_11796) (o_2@@12 T@Ref) (f_4@@12 T@Field_11848_11849) ) (! (= (HasDirectPerm_7414_7415 Mask@@18 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| Mask@@18) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7414_7415 Mask@@18 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_11796) (o_2@@13 T@Ref) (f_4@@13 T@Field_18453_18458) ) (! (= (HasDirectPerm_7407_22427 Mask@@19 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| Mask@@19) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7407_22427 Mask@@19 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11775) (ExhaleHeap@@3 T@PolymorphicMapType_11775) (Mask@@20 T@PolymorphicMapType_11796) (pm_f_2@@1 T@Field_7407_32923) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@20) (=> (and (HasDirectPerm_7407_32987 Mask@@20 null pm_f_2@@1) (IsPredicateField_7407_33014 pm_f_2@@1)) (and (and (and (and (forall ((o2_2 T@Ref) (f_9 T@Field_11835_53) ) (!  (=> (select (|PolymorphicMapType_12324_11835_53#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) null (PredicateMaskField_7407 pm_f_2@@1))) o2_2 f_9) (= (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@19) o2_2 f_9) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2 f_9)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2 f_9))
)) (forall ((o2_2@@0 T@Ref) (f_9@@0 T@Field_11848_11849) ) (!  (=> (select (|PolymorphicMapType_12324_11835_11849#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) null (PredicateMaskField_7407 pm_f_2@@1))) o2_2@@0 f_9@@0) (= (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@19) o2_2@@0 f_9@@0) (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@0 f_9@@0)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@0 f_9@@0))
))) (forall ((o2_2@@1 T@Ref) (f_9@@1 T@Field_18453_18458) ) (!  (=> (select (|PolymorphicMapType_12324_11835_18458#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) null (PredicateMaskField_7407 pm_f_2@@1))) o2_2@@1 f_9@@1) (= (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@19) o2_2@@1 f_9@@1) (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@1 f_9@@1)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@1 f_9@@1))
))) (forall ((o2_2@@2 T@Ref) (f_9@@2 T@Field_7407_32923) ) (!  (=> (select (|PolymorphicMapType_12324_11835_32923#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) null (PredicateMaskField_7407 pm_f_2@@1))) o2_2@@2 f_9@@2) (= (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@19) o2_2@@2 f_9@@2) (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@2 f_9@@2)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@2 f_9@@2))
))) (forall ((o2_2@@3 T@Ref) (f_9@@3 T@Field_7407_33056) ) (!  (=> (select (|PolymorphicMapType_12324_11835_34240#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) null (PredicateMaskField_7407 pm_f_2@@1))) o2_2@@3 f_9@@3) (= (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@19) o2_2@@3 f_9@@3) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@3 f_9@@3)))
 :qid |stdinbpl.54:138|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@3) o2_2@@3 f_9@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@3 Mask@@20) (IsPredicateField_7407_33014 pm_f_2@@1))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11775) (ExhaleHeap@@4 T@PolymorphicMapType_11775) (Mask@@21 T@PolymorphicMapType_11796) (pm_f_2@@2 T@Field_7407_32923) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@21) (=> (and (HasDirectPerm_7407_32987 Mask@@21 null pm_f_2@@2) (IsWandField_7407_34767 pm_f_2@@2)) (and (and (and (and (forall ((o2_2@@4 T@Ref) (f_9@@4 T@Field_11835_53) ) (!  (=> (select (|PolymorphicMapType_12324_11835_53#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) null (WandMaskField_7407 pm_f_2@@2))) o2_2@@4 f_9@@4) (= (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@20) o2_2@@4 f_9@@4) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@4 f_9@@4)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@4 f_9@@4))
)) (forall ((o2_2@@5 T@Ref) (f_9@@5 T@Field_11848_11849) ) (!  (=> (select (|PolymorphicMapType_12324_11835_11849#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) null (WandMaskField_7407 pm_f_2@@2))) o2_2@@5 f_9@@5) (= (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@20) o2_2@@5 f_9@@5) (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@5 f_9@@5)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@5 f_9@@5))
))) (forall ((o2_2@@6 T@Ref) (f_9@@6 T@Field_18453_18458) ) (!  (=> (select (|PolymorphicMapType_12324_11835_18458#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) null (WandMaskField_7407 pm_f_2@@2))) o2_2@@6 f_9@@6) (= (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@20) o2_2@@6 f_9@@6) (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@6 f_9@@6)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@6 f_9@@6))
))) (forall ((o2_2@@7 T@Ref) (f_9@@7 T@Field_7407_32923) ) (!  (=> (select (|PolymorphicMapType_12324_11835_32923#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) null (WandMaskField_7407 pm_f_2@@2))) o2_2@@7 f_9@@7) (= (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@20) o2_2@@7 f_9@@7) (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@7 f_9@@7)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@7 f_9@@7))
))) (forall ((o2_2@@8 T@Ref) (f_9@@8 T@Field_7407_33056) ) (!  (=> (select (|PolymorphicMapType_12324_11835_34240#PolymorphicMapType_12324| (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) null (WandMaskField_7407 pm_f_2@@2))) o2_2@@8 f_9@@8) (= (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@20) o2_2@@8 f_9@@8) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@8 f_9@@8)))
 :qid |stdinbpl.67:133|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@4) o2_2@@8 f_9@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@4 Mask@@21) (IsWandField_7407_34767 pm_f_2@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.181:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.554:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2891| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11775) (ExhaleHeap@@5 T@PolymorphicMapType_11775) (Mask@@22 T@PolymorphicMapType_11796) (o_6@@0 T@Ref) (f_9@@9 T@Field_7407_33056) ) (!  (=> (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@22) (=> (HasDirectPerm_7407_38743 Mask@@22 o_6@@0 f_9@@9) (= (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@21) o_6@@0 f_9@@9) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@5) o_6@@0 f_9@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@21 ExhaleHeap@@5 Mask@@22) (select (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| ExhaleHeap@@5) o_6@@0 f_9@@9))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11775) (ExhaleHeap@@6 T@PolymorphicMapType_11775) (Mask@@23 T@PolymorphicMapType_11796) (o_6@@1 T@Ref) (f_9@@10 T@Field_7407_32923) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@23) (=> (HasDirectPerm_7407_32987 Mask@@23 o_6@@1 f_9@@10) (= (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@22) o_6@@1 f_9@@10) (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@6) o_6@@1 f_9@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap@@6 Mask@@23) (select (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| ExhaleHeap@@6) o_6@@1 f_9@@10))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11775) (ExhaleHeap@@7 T@PolymorphicMapType_11775) (Mask@@24 T@PolymorphicMapType_11796) (o_6@@2 T@Ref) (f_9@@11 T@Field_11835_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@24) (=> (HasDirectPerm_7407_53 Mask@@24 o_6@@2 f_9@@11) (= (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@23) o_6@@2 f_9@@11) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@7) o_6@@2 f_9@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@7 Mask@@24) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| ExhaleHeap@@7) o_6@@2 f_9@@11))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11775) (ExhaleHeap@@8 T@PolymorphicMapType_11775) (Mask@@25 T@PolymorphicMapType_11796) (o_6@@3 T@Ref) (f_9@@12 T@Field_11848_11849) ) (!  (=> (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@25) (=> (HasDirectPerm_7414_7415 Mask@@25 o_6@@3 f_9@@12) (= (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@24) o_6@@3 f_9@@12) (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@8) o_6@@3 f_9@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@24 ExhaleHeap@@8 Mask@@25) (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| ExhaleHeap@@8) o_6@@3 f_9@@12))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11775) (ExhaleHeap@@9 T@PolymorphicMapType_11775) (Mask@@26 T@PolymorphicMapType_11796) (o_6@@4 T@Ref) (f_9@@13 T@Field_18453_18458) ) (!  (=> (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@26) (=> (HasDirectPerm_7407_22427 Mask@@26 o_6@@4 f_9@@13) (= (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@25) o_6@@4 f_9@@13) (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@9) o_6@@4 f_9@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@25 ExhaleHeap@@9 Mask@@26) (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| ExhaleHeap@@9) o_6@@4 f_9@@13))
)))
(assert (forall ((s0@@1 T@Seq_18456) (s1@@1 T@Seq_18456) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7408|)) (not (= s1@@1 |Seq#Empty_7408|))) (= (|Seq#Length_7408| (|Seq#Append_18456| s0@@1 s1@@1)) (+ (|Seq#Length_7408| s0@@1) (|Seq#Length_7408| s1@@1))))
 :qid |stdinbpl.231:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7408| (|Seq#Append_18456| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2891) (s1@@2 T@Seq_2891) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2891|)) (not (= s1@@2 |Seq#Empty_2891|))) (= (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)) (+ (|Seq#Length_2891| s0@@2) (|Seq#Length_2891| s1@@2))))
 :qid |stdinbpl.231:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2891| (|Seq#Append_2891| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7407_33056) ) (! (= (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7407_32923) ) (! (= (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11835_53) ) (! (= (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11848_11849) ) (! (= (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_18453_18458) ) (! (= (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_18456) (t@@1 T@Seq_18456) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7408| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7408| s@@15)) (|Seq#Length_7408| s@@15)) n@@15) (= (|Seq#Drop_7408| (|Seq#Append_18456| s@@15 t@@1) n@@15) (|Seq#Drop_7408| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7408| s@@15))))))
 :qid |stdinbpl.388:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7408| (|Seq#Append_18456| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2891) (t@@2 T@Seq_2891) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2891| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16)) (|Seq#Length_2891| s@@16)) n@@16) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16) (|Seq#Drop_2891| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2891| s@@16))))))
 :qid |stdinbpl.388:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11775) (self@@7 T@Ref) (key_1@@0 T@Ref) ) (!  (and (= (list___getitem__ Heap@@26 self@@7 key_1@@0) (|list___getitem__'| Heap@@26 self@@7 key_1@@0)) (dummyFunction_7433 (|list___getitem__#triggerStateless| self@@7 key_1@@0)))
 :qid |stdinbpl.1082:15|
 :skolemid |85|
 :pattern ( (list___getitem__ Heap@@26 self@@7 key_1@@0))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11796) (SummandMask1 T@PolymorphicMapType_11796) (SummandMask2 T@PolymorphicMapType_11796) (o_2@@19 T@Ref) (f_4@@19 T@Field_7407_33056) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11796_7407_37174#PolymorphicMapType_11796| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11796) (SummandMask1@@0 T@PolymorphicMapType_11796) (SummandMask2@@0 T@PolymorphicMapType_11796) (o_2@@20 T@Ref) (f_4@@20 T@Field_7407_32923) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11796_7407_32923#PolymorphicMapType_11796| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11796) (SummandMask1@@1 T@PolymorphicMapType_11796) (SummandMask2@@1 T@PolymorphicMapType_11796) (o_2@@21 T@Ref) (f_4@@21 T@Field_11835_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11796_7407_53#PolymorphicMapType_11796| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11796) (SummandMask1@@2 T@PolymorphicMapType_11796) (SummandMask2@@2 T@PolymorphicMapType_11796) (o_2@@22 T@Ref) (f_4@@22 T@Field_11848_11849) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11796_7414_7415#PolymorphicMapType_11796| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11796) (SummandMask1@@3 T@PolymorphicMapType_11796) (SummandMask2@@3 T@PolymorphicMapType_11796) (o_2@@23 T@Ref) (f_4@@23 T@Field_18453_18458) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11796_7407_22275#PolymorphicMapType_11796| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.553:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2891| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_18456) (b T@Seq_18456) ) (!  (=> (|Seq#Equal_18456| a b) (= a b))
 :qid |stdinbpl.526:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_18456| a b))
)))
(assert (forall ((a@@0 T@Seq_2891) (b@@0 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.526:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2891| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_18456) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_7408| s@@17))) (|Seq#ContainsTrigger_7408| s@@17 (|Seq#Index_7408| s@@17 i@@3)))
 :qid |stdinbpl.419:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7408| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2891) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2891| s@@18))) (|Seq#ContainsTrigger_2891| s@@18 (|Seq#Index_2891| s@@18 i@@4)))
 :qid |stdinbpl.419:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2891| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_18456) (s1@@3 T@Seq_18456) ) (!  (and (=> (= s0@@3 |Seq#Empty_7408|) (= (|Seq#Append_18456| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7408|) (= (|Seq#Append_18456| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_18456| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2891) (s1@@4 T@Seq_2891) ) (!  (and (=> (= s0@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2891|) (= (|Seq#Append_2891| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.237:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2891| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7408| (|Seq#Singleton_7408| t@@3) 0) t@@3)
 :qid |stdinbpl.241:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7408| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2891| (|Seq#Singleton_2891| t@@4) 0) t@@4)
 :qid |stdinbpl.241:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2891| t@@4))
)))
(assert (forall ((s@@19 T@Seq_18456) ) (! (<= 0 (|Seq#Length_7408| s@@19))
 :qid |stdinbpl.220:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7408| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2891) ) (! (<= 0 (|Seq#Length_2891| s@@20))
 :qid |stdinbpl.220:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2891| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_18456) (s1@@5 T@Seq_18456) ) (!  (=> (|Seq#Equal_18456| s0@@5 s1@@5) (and (= (|Seq#Length_7408| s0@@5) (|Seq#Length_7408| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7408| s0@@5))) (= (|Seq#Index_7408| s0@@5 j@@6) (|Seq#Index_7408| s1@@5 j@@6)))
 :qid |stdinbpl.516:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7408| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7408| s1@@5 j@@6))
))))
 :qid |stdinbpl.513:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_18456| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2891) (s1@@6 T@Seq_2891) ) (!  (=> (|Seq#Equal_2891| s0@@6 s1@@6) (and (= (|Seq#Length_2891| s0@@6) (|Seq#Length_2891| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2891| s0@@6))) (= (|Seq#Index_2891| s0@@6 j@@7) (|Seq#Index_2891| s1@@6 j@@7)))
 :qid |stdinbpl.516:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2891| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2891| s1@@6 j@@7))
))))
 :qid |stdinbpl.513:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2891| s0@@6 s1@@6))
)))
(assert (forall ((sub_1@@2 T@PyTypeDomainType) (sub2@@0 T@PyTypeDomainType) (super_1@@1 T@PyTypeDomainType) ) (!  (=> (and (extends_ sub_1@@2 super_1@@1) (and (extends_ sub2@@0 super_1@@1) (not (= sub_1@@2 sub2@@0)))) (and (isnotsubtype sub_1@@2 sub2@@0) (isnotsubtype sub2@@0 sub_1@@2)))
 :qid |stdinbpl.732:15|
 :skolemid |61|
 :pattern ( (extends_ sub_1@@2 super_1@@1) (extends_ sub2@@0 super_1@@1))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11775) (Mask@@27 T@PolymorphicMapType_11796) (self@@8 T@Ref) ) (!  (=> (state Heap@@27 Mask@@27) (= (|list___len__'| Heap@@27 self@@8) (|list___len__#frame| (FrameFragment_21950 (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@27) self@@8 list_acc)) self@@8)))
 :qid |stdinbpl.1032:15|
 :skolemid |84|
 :pattern ( (state Heap@@27 Mask@@27) (|list___len__'| Heap@@27 self@@8))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7408| (|Seq#Singleton_7408| t@@5)) 1)
 :qid |stdinbpl.228:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7408| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2891| (|Seq#Singleton_2891| t@@6)) 1)
 :qid |stdinbpl.228:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2891| t@@6))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11775) (Mask@@28 T@PolymorphicMapType_11796) (prim@@3 Int) ) (!  (=> (state Heap@@28 Mask@@28) (= (|__prim__int___box__'| Heap@@28 prim@@3) (|__prim__int___box__#frame| EmptyFrame prim@@3)))
 :qid |stdinbpl.790:15|
 :skolemid |66|
 :pattern ( (state Heap@@28 Mask@@28) (|__prim__int___box__'| Heap@@28 prim@@3))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11775) (Mask@@29 T@PolymorphicMapType_11796) (box_1@@2 T@Ref) ) (!  (=> (state Heap@@29 Mask@@29) (= (|int___unbox__'| Heap@@29 box_1@@2) (|int___unbox__#frame| EmptyFrame box_1@@2)))
 :qid |stdinbpl.861:15|
 :skolemid |71|
 :pattern ( (state Heap@@29 Mask@@29) (|int___unbox__'| Heap@@29 box_1@@2))
)))
(assert (forall ((s@@21 T@Seq_18456) (t@@7 T@Seq_18456) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7408| s@@21))) (= (|Seq#Take_7408| (|Seq#Append_18456| s@@21 t@@7) n@@17) (|Seq#Take_7408| s@@21 n@@17)))
 :qid |stdinbpl.370:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7408| (|Seq#Append_18456| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2891) (t@@8 T@Seq_2891) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2891| s@@22))) (= (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18) (|Seq#Take_2891| s@@22 n@@18)))
 :qid |stdinbpl.370:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2891| (|Seq#Append_2891| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_18456) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_7408| s@@23))) (= (|Seq#Length_7408| (|Seq#Update_7408| s@@23 i@@5 v@@2)) (|Seq#Length_7408| s@@23)))
 :qid |stdinbpl.269:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7408| (|Seq#Update_7408| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_7408| s@@23) (|Seq#Update_7408| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2891) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2891| s@@24))) (= (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@6 v@@3)) (|Seq#Length_2891| s@@24)))
 :qid |stdinbpl.269:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2891| (|Seq#Update_2891| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2891| s@@24) (|Seq#Update_2891| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11775) (o_5 T@Ref) (f_10 T@Field_7407_32923) (v@@4 T@FrameType) ) (! (succHeap Heap@@30 (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@30) (store (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@30) o_5 f_10 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@30) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@30) (store (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@30) o_5 f_10 v@@4)))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11775) (o_5@@0 T@Ref) (f_10@@0 T@Field_7407_33056) (v@@5 T@PolymorphicMapType_12324) ) (! (succHeap Heap@@31 (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@31) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@31) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@31) (store (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@31) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@31)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@31) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@31) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@31) (store (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@31) o_5@@0 f_10@@0 v@@5) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@31)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11775) (o_5@@1 T@Ref) (f_10@@1 T@Field_18453_18458) (v@@6 T@Seq_18456) ) (! (succHeap Heap@@32 (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@32) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@32) (store (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@32) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@32) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@32)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@32) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@32) (store (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@32) o_5@@1 f_10@@1 v@@6) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@32) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@32)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11775) (o_5@@2 T@Ref) (f_10@@2 T@Field_11848_11849) (v@@7 T@Ref) ) (! (succHeap Heap@@33 (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@33) (store (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@33) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@33) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@33) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@33)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11775 (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@33) (store (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@33) o_5@@2 f_10@@2 v@@7) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@33) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@33) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@33)))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11775) (o_5@@3 T@Ref) (f_10@@3 T@Field_11835_53) (v@@8 Bool) ) (! (succHeap Heap@@34 (PolymorphicMapType_11775 (store (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@34) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@34)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11775 (store (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@34) o_5@@3 f_10@@3 v@@8) (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_7407_33100#PolymorphicMapType_11775| Heap@@34) (|PolymorphicMapType_11775_11835_32923#PolymorphicMapType_11775| Heap@@34)))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11775) (Mask@@30 T@PolymorphicMapType_11796) (self@@9 Int) (other@@3 Int) ) (!  (=> (and (state Heap@@35 Mask@@30) (< AssumeFunctionsAbove 2)) (= (int___lt__ Heap@@35 self@@9 other@@3) (< self@@9 other@@3)))
 :qid |stdinbpl.975:15|
 :skolemid |79|
 :pattern ( (state Heap@@35 Mask@@30) (int___lt__ Heap@@35 self@@9 other@@3))
)))
(assert (forall ((s@@25 T@Seq_18456) (t@@9 T@Seq_18456) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7408| s@@25))) (= (|Seq#Drop_7408| (|Seq#Append_18456| s@@25 t@@9) n@@19) (|Seq#Append_18456| (|Seq#Drop_7408| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.384:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7408| (|Seq#Append_18456| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2891) (t@@10 T@Seq_2891) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2891| s@@26))) (= (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20) (|Seq#Append_2891| (|Seq#Drop_2891| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.384:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2891| (|Seq#Append_2891| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_18456) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_7408| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_7408| (|Seq#Drop_7408| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_7408| s@@27 i@@7))))
 :qid |stdinbpl.320:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7408| s@@27 n@@21) (|Seq#Index_7408| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2891) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2891| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2891| (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2891| s@@28 i@@8))))
 :qid |stdinbpl.320:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2891| s@@28 n@@22) (|Seq#Index_2891| s@@28 i@@8))
)))
(assert (forall ((var0 T@PyTypeDomainType) ) (!  (and (extends_ (list_1 var0) object) (= (get_basic (list_1 var0)) list_basic))
 :qid |stdinbpl.744:15|
 :skolemid |63|
 :pattern ( (list_1 var0))
)))
(assert (forall ((s0@@7 T@Seq_18456) (s1@@7 T@Seq_18456) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7408|)) (not (= s1@@7 |Seq#Empty_7408|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7408| s0@@7))) (= (|Seq#Index_7408| (|Seq#Append_18456| s0@@7 s1@@7) n@@23) (|Seq#Index_7408| s0@@7 n@@23)))
 :qid |stdinbpl.260:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7408| (|Seq#Append_18456| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7408| s0@@7 n@@23) (|Seq#Append_18456| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2891) (s1@@8 T@Seq_2891) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2891|)) (not (= s1@@8 |Seq#Empty_2891|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2891| s0@@8))) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24) (|Seq#Index_2891| s0@@8 n@@24)))
 :qid |stdinbpl.260:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2891| (|Seq#Append_2891| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2891| s0@@8 n@@24) (|Seq#Append_2891| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_18456) (s1@@9 T@Seq_18456) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7408|)) (not (= s1@@9 |Seq#Empty_7408|))) (<= 0 m)) (< m (|Seq#Length_7408| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7408| s0@@9)) (|Seq#Length_7408| s0@@9)) m) (= (|Seq#Index_7408| (|Seq#Append_18456| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7408| s0@@9))) (|Seq#Index_7408| s1@@9 m))))
 :qid |stdinbpl.265:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7408| s1@@9 m) (|Seq#Append_18456| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2891) (s1@@10 T@Seq_2891) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2891|)) (not (= s1@@10 |Seq#Empty_2891|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2891| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10)) (|Seq#Length_2891| s0@@10)) m@@0) (= (|Seq#Index_2891| (|Seq#Append_2891| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2891| s0@@10))) (|Seq#Index_2891| s1@@10 m@@0))))
 :qid |stdinbpl.265:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2891| s1@@10 m@@0) (|Seq#Append_2891| s0@@10 s1@@10))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11775) (Mask@@31 T@PolymorphicMapType_11796) (self@@10 T@Ref) (key_1@@1 T@Ref) ) (!  (=> (state Heap@@36 Mask@@31) (= (|list___getitem__'| Heap@@36 self@@10 key_1@@1) (|list___getitem__#frame| (CombineFrames (FrameFragment_21950 (select (|PolymorphicMapType_11775_7407_21771#PolymorphicMapType_11775| Heap@@36) self@@10 list_acc)) (CombineFrames (FrameFragment_7222 (ite (< (int___unbox__ Heap@@36 key_1@@1) 0) EmptyFrame EmptyFrame)) (FrameFragment_7222 (ite (>= (int___unbox__ Heap@@36 key_1@@1) 0) EmptyFrame EmptyFrame)))) self@@10 key_1@@1)))
 :qid |stdinbpl.1093:15|
 :skolemid |87|
 :pattern ( (state Heap@@36 Mask@@31) (|list___getitem__'| Heap@@36 self@@10 key_1@@1))
)))
(assert (forall ((o_5@@4 T@Ref) (f_3 T@Field_11848_11849) (Heap@@37 T@PolymorphicMapType_11775) ) (!  (=> (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@37) o_5@@4 $allocated) (select (|PolymorphicMapType_11775_7119_53#PolymorphicMapType_11775| Heap@@37) (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@37) o_5@@4 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11775_7122_7123#PolymorphicMapType_11775| Heap@@37) o_5@@4 f_3))
)))
(assert (forall ((s@@29 T@Seq_18456) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7408| s@@29))) (= (|Seq#Index_7408| s@@29 i@@9) x@@3)) (|Seq#Contains_18456| s@@29 x@@3))
 :qid |stdinbpl.417:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_18456| s@@29 x@@3) (|Seq#Index_7408| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2891) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2891| s@@30))) (= (|Seq#Index_2891| s@@30 i@@10) x@@4)) (|Seq#Contains_2891| s@@30 x@@4))
 :qid |stdinbpl.417:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2891| s@@30 x@@4) (|Seq#Index_2891| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_18456) (s1@@11 T@Seq_18456) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_18456| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18456| s0@@11 s1@@11))) (not (= (|Seq#Length_7408| s0@@11) (|Seq#Length_7408| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_18456| s0@@11 s1@@11))) (= (|Seq#Length_7408| s0@@11) (|Seq#Length_7408| s1@@11))) (= (|Seq#SkolemDiff_18456| s0@@11 s1@@11) (|Seq#SkolemDiff_18456| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_18456| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_18456| s0@@11 s1@@11) (|Seq#Length_7408| s0@@11))) (not (= (|Seq#Index_7408| s0@@11 (|Seq#SkolemDiff_18456| s0@@11 s1@@11)) (|Seq#Index_7408| s1@@11 (|Seq#SkolemDiff_18456| s0@@11 s1@@11))))))
 :qid |stdinbpl.521:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_18456| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2891) (s1@@12 T@Seq_2891) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2891| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (not (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2891| s0@@12 s1@@12))) (= (|Seq#Length_2891| s0@@12) (|Seq#Length_2891| s1@@12))) (= (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#SkolemDiff_2891| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2891| s0@@12 s1@@12) (|Seq#Length_2891| s0@@12))) (not (= (|Seq#Index_2891| s0@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12)) (|Seq#Index_2891| s1@@12 (|Seq#SkolemDiff_2891| s0@@12 s1@@12))))))
 :qid |stdinbpl.521:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2891| s0@@12 s1@@12))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11775) (Mask@@32 T@PolymorphicMapType_11796) (self@@11 Int) (other@@4 Int) ) (!  (=> (and (state Heap@@38 Mask@@32) (< AssumeFunctionsAbove 0)) (= (int___ge__ Heap@@38 self@@11 other@@4) (>= self@@11 other@@4)))
 :qid |stdinbpl.925:15|
 :skolemid |75|
 :pattern ( (state Heap@@38 Mask@@32) (int___ge__ Heap@@38 self@@11 other@@4))
)))
(assert (forall ((p@@1 T@Field_7407_32923) (v_1@@0 T@FrameType) (q T@Field_7407_32923) (w@@0 T@FrameType) (r T@Field_7407_32923) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11835_11835 p@@1 v_1@@0 q w@@0) (InsidePredicate_11835_11835 q w@@0 r u)) (InsidePredicate_11835_11835 p@@1 v_1@@0 r u))
 :qid |stdinbpl.188:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11835_11835 p@@1 v_1@@0 q w@@0) (InsidePredicate_11835_11835 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_18456) ) (!  (=> (= (|Seq#Length_7408| s@@31) 0) (= s@@31 |Seq#Empty_7408|))
 :qid |stdinbpl.224:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7408| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2891) ) (!  (=> (= (|Seq#Length_2891| s@@32) 0) (= s@@32 |Seq#Empty_2891|))
 :qid |stdinbpl.224:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2891| s@@32))
)))
(assert (forall ((s@@33 T@Seq_18456) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7408| s@@33 n@@25) |Seq#Empty_7408|))
 :qid |stdinbpl.400:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7408| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2891) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2891| s@@34 n@@26) |Seq#Empty_2891|))
 :qid |stdinbpl.400:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2891| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11775) (self@@12 Int) (other@@5 Int) ) (!  (and (= (int___ge__ Heap@@39 self@@12 other@@5) (|int___ge__'| Heap@@39 self@@12 other@@5)) (dummyFunction_4473 (|int___ge__#triggerStateless| self@@12 other@@5)))
 :qid |stdinbpl.915:15|
 :skolemid |73|
 :pattern ( (int___ge__ Heap@@39 self@@12 other@@5))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11775) (self@@13 Int) (other@@6 Int) ) (!  (and (= (int___lt__ Heap@@40 self@@13 other@@6) (|int___lt__'| Heap@@40 self@@13 other@@6)) (dummyFunction_4473 (|int___lt__#triggerStateless| self@@13 other@@6)))
 :qid |stdinbpl.965:15|
 :skolemid |77|
 :pattern ( (int___lt__ Heap@@40 self@@13 other@@6))
)))
(assert (forall ((type_ T@PyTypeDomainType) ) (! (issubtype type_ type_)
 :qid |stdinbpl.720:15|
 :skolemid |59|
 :pattern ( (issubtype type_ type_))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |int___ge__#definedness|)
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
 (=> (= (ControlFlow 0 0) 2) true)
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
