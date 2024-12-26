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
(declare-sort T@Field_8074_53 0)
(declare-sort T@Field_8087_8088 0)
(declare-sort T@Field_14254_3259 0)
(declare-sort T@Field_4984_20986 0)
(declare-sort T@Field_4984_20853 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_8035 0)) (((PolymorphicMapType_8035 (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| (Array T@Ref T@Field_14254_3259 Real)) (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| (Array T@Ref T@Field_8074_53 Real)) (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| (Array T@Ref T@Field_8087_8088 Real)) (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| (Array T@Ref T@Field_4984_20853 Real)) (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| (Array T@Ref T@Field_4984_20986 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8563 0)) (((PolymorphicMapType_8563 (|PolymorphicMapType_8563_8074_53#PolymorphicMapType_8563| (Array T@Ref T@Field_8074_53 Bool)) (|PolymorphicMapType_8563_8074_8088#PolymorphicMapType_8563| (Array T@Ref T@Field_8087_8088 Bool)) (|PolymorphicMapType_8563_8074_3259#PolymorphicMapType_8563| (Array T@Ref T@Field_14254_3259 Bool)) (|PolymorphicMapType_8563_8074_20853#PolymorphicMapType_8563| (Array T@Ref T@Field_4984_20853 Bool)) (|PolymorphicMapType_8563_8074_22164#PolymorphicMapType_8563| (Array T@Ref T@Field_4984_20986 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_8014 0)) (((PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| (Array T@Ref T@Field_8074_53 Bool)) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| (Array T@Ref T@Field_8087_8088 T@Ref)) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| (Array T@Ref T@Field_14254_3259 Int)) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| (Array T@Ref T@Field_4984_20986 T@PolymorphicMapType_8563)) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| (Array T@Ref T@Field_4984_20853 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_8074_53)
(declare-fun val () T@Field_14254_3259)
(declare-fun succHeap (T@PolymorphicMapType_8014 T@PolymorphicMapType_8014) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_8014 T@PolymorphicMapType_8014) Bool)
(declare-fun state (T@PolymorphicMapType_8014 T@PolymorphicMapType_8035) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_8035) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_8563)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_4990| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_4990| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_4990| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_4990| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_8014 T@PolymorphicMapType_8014 T@PolymorphicMapType_8035) Bool)
(declare-fun IsPredicateField_4984_20944 (T@Field_4984_20853) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_4984 (T@Field_4984_20853) T@Field_4984_20986)
(declare-fun HasDirectPerm_4984_20917 (T@PolymorphicMapType_8035 T@Ref T@Field_4984_20853) Bool)
(declare-fun IsWandField_4984_22691 (T@Field_4984_20853) Bool)
(declare-fun WandMaskField_4984 (T@Field_4984_20853) T@Field_4984_20986)
(declare-fun dummyHeap () T@PolymorphicMapType_8014)
(declare-fun ZeroMask () T@PolymorphicMapType_8035)
(declare-fun InsidePredicate_8074_8074 (T@Field_4984_20853 T@FrameType T@Field_4984_20853 T@FrameType) Bool)
(declare-fun IsPredicateField_4984_3259 (T@Field_14254_3259) Bool)
(declare-fun IsWandField_4984_3259 (T@Field_14254_3259) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_4984_26237 (T@Field_4984_20986) Bool)
(declare-fun IsWandField_4984_26253 (T@Field_4984_20986) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_4984_8088 (T@Field_8087_8088) Bool)
(declare-fun IsWandField_4984_8088 (T@Field_8087_8088) Bool)
(declare-fun IsPredicateField_4984_53 (T@Field_8074_53) Bool)
(declare-fun IsWandField_4984_53 (T@Field_8074_53) Bool)
(declare-fun HasDirectPerm_4984_26691 (T@PolymorphicMapType_8035 T@Ref T@Field_4984_20986) Bool)
(declare-fun HasDirectPerm_4984_8088 (T@PolymorphicMapType_8035 T@Ref T@Field_8087_8088) Bool)
(declare-fun HasDirectPerm_4984_53 (T@PolymorphicMapType_8035 T@Ref T@Field_8074_53) Bool)
(declare-fun HasDirectPerm_4984_3259 (T@PolymorphicMapType_8035 T@Ref T@Field_14254_3259) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_8035 T@PolymorphicMapType_8035 T@PolymorphicMapType_8035) Bool)
(declare-fun |Set#Difference_4990| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_4990| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_4990| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_8014) (Heap1 T@PolymorphicMapType_8014) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_8014) (Mask T@PolymorphicMapType_8035) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_8014) (Heap1@@0 T@PolymorphicMapType_8014) (Heap2 T@PolymorphicMapType_8014) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_4984_20986) ) (!  (not (select (|PolymorphicMapType_8563_8074_22164#PolymorphicMapType_8563| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8563_8074_22164#PolymorphicMapType_8563| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_4984_20853) ) (!  (not (select (|PolymorphicMapType_8563_8074_20853#PolymorphicMapType_8563| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8563_8074_20853#PolymorphicMapType_8563| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_14254_3259) ) (!  (not (select (|PolymorphicMapType_8563_8074_3259#PolymorphicMapType_8563| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8563_8074_3259#PolymorphicMapType_8563| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8087_8088) ) (!  (not (select (|PolymorphicMapType_8563_8074_8088#PolymorphicMapType_8563| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8563_8074_8088#PolymorphicMapType_8563| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8074_53) ) (!  (not (select (|PolymorphicMapType_8563_8074_53#PolymorphicMapType_8563| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_8563_8074_53#PolymorphicMapType_8563| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.294:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_4990| (|Set#Union_4990| a@@0 b@@0) b@@0) (|Set#Union_4990| a@@0 b@@0))
 :qid |stdinbpl.246:18|
 :skolemid |38|
 :pattern ( (|Set#Union_4990| (|Set#Union_4990| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4990| (|Set#Intersection_4990| a@@1 b@@1) b@@1) (|Set#Intersection_4990| a@@1 b@@1))
 :qid |stdinbpl.250:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_4990| (|Set#Intersection_4990| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_4990| r) o) (= r o))
 :qid |stdinbpl.215:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_4990| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_4990| (|Set#Union_4990| a@@2 b@@2)) (|Set#Card_4990| (|Set#Intersection_4990| a@@2 b@@2))) (+ (|Set#Card_4990| a@@2) (|Set#Card_4990| b@@2)))
 :qid |stdinbpl.254:18|
 :skolemid |42|
 :pattern ( (|Set#Card_4990| (|Set#Union_4990| a@@2 b@@2)))
 :pattern ( (|Set#Card_4990| (|Set#Intersection_4990| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.297:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_8014) (ExhaleHeap T@PolymorphicMapType_8014) (Mask@@0 T@PolymorphicMapType_8035) (pm_f_13 T@Field_4984_20853) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_4984_20917 Mask@@0 null pm_f_13) (IsPredicateField_4984_20944 pm_f_13)) (= (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@0) null (PredicateMaskField_4984 pm_f_13)) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap) null (PredicateMaskField_4984 pm_f_13)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_4984_20944 pm_f_13) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap) null (PredicateMaskField_4984 pm_f_13)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_8014) (ExhaleHeap@@0 T@PolymorphicMapType_8014) (Mask@@1 T@PolymorphicMapType_8035) (pm_f_13@@0 T@Field_4984_20853) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_4984_20917 Mask@@1 null pm_f_13@@0) (IsWandField_4984_22691 pm_f_13@@0)) (= (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@1) null (WandMaskField_4984 pm_f_13@@0)) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@0) null (WandMaskField_4984 pm_f_13@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_4984_22691 pm_f_13@@0) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@0) null (WandMaskField_4984 pm_f_13@@0)))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_8014) (ExhaleHeap@@1 T@PolymorphicMapType_8014) (Mask@@2 T@PolymorphicMapType_8035) (o_22 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@2) o_22 $allocated) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@1) o_22 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@1) o_22 $allocated))
)))
(assert (forall ((p T@Field_4984_20853) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_8074_8074 p v_1 p w))
 :qid |stdinbpl.192:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_8074_8074 p v_1 p w))
)))
(assert  (not (IsPredicateField_4984_3259 val)))
(assert  (not (IsWandField_4984_3259 val)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_8014) (ExhaleHeap@@2 T@PolymorphicMapType_8014) (Mask@@3 T@PolymorphicMapType_8035) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_8035) (o_2@@4 T@Ref) (f_4@@4 T@Field_4984_20986) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_4984_26237 f_4@@4))) (not (IsWandField_4984_26253 f_4@@4))) (<= (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_8035) (o_2@@5 T@Ref) (f_4@@5 T@Field_4984_20853) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_4984_20944 f_4@@5))) (not (IsWandField_4984_22691 f_4@@5))) (<= (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_8035) (o_2@@6 T@Ref) (f_4@@6 T@Field_8087_8088) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_4984_8088 f_4@@6))) (not (IsWandField_4984_8088 f_4@@6))) (<= (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_8035) (o_2@@7 T@Ref) (f_4@@7 T@Field_8074_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_4984_53 f_4@@7))) (not (IsWandField_4984_53 f_4@@7))) (<= (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_8035) (o_2@@8 T@Ref) (f_4@@8 T@Field_14254_3259) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_4984_3259 f_4@@8))) (not (IsWandField_4984_3259 f_4@@8))) (<= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_8035) (o_2@@9 T@Ref) (f_4@@9 T@Field_4984_20986) ) (! (= (HasDirectPerm_4984_26691 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4984_26691 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_8035) (o_2@@10 T@Ref) (f_4@@10 T@Field_4984_20853) ) (! (= (HasDirectPerm_4984_20917 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4984_20917 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_8035) (o_2@@11 T@Ref) (f_4@@11 T@Field_8087_8088) ) (! (= (HasDirectPerm_4984_8088 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4984_8088 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_8035) (o_2@@12 T@Ref) (f_4@@12 T@Field_8074_53) ) (! (= (HasDirectPerm_4984_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4984_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_8035) (o_2@@13 T@Ref) (f_4@@13 T@Field_14254_3259) ) (! (= (HasDirectPerm_4984_3259 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_4984_3259 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_8014) (ExhaleHeap@@3 T@PolymorphicMapType_8014) (Mask@@14 T@PolymorphicMapType_8035) (pm_f_13@@1 T@Field_4984_20853) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_4984_20917 Mask@@14 null pm_f_13@@1) (IsPredicateField_4984_20944 pm_f_13@@1)) (and (and (and (and (forall ((o2_13 T@Ref) (f_30 T@Field_8074_53) ) (!  (=> (select (|PolymorphicMapType_8563_8074_53#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) null (PredicateMaskField_4984 pm_f_13@@1))) o2_13 f_30) (= (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@4) o2_13 f_30) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13 f_30)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13 f_30))
)) (forall ((o2_13@@0 T@Ref) (f_30@@0 T@Field_8087_8088) ) (!  (=> (select (|PolymorphicMapType_8563_8074_8088#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) null (PredicateMaskField_4984 pm_f_13@@1))) o2_13@@0 f_30@@0) (= (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@4) o2_13@@0 f_30@@0) (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@0 f_30@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@0 f_30@@0))
))) (forall ((o2_13@@1 T@Ref) (f_30@@1 T@Field_14254_3259) ) (!  (=> (select (|PolymorphicMapType_8563_8074_3259#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) null (PredicateMaskField_4984 pm_f_13@@1))) o2_13@@1 f_30@@1) (= (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@4) o2_13@@1 f_30@@1) (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@1 f_30@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@1 f_30@@1))
))) (forall ((o2_13@@2 T@Ref) (f_30@@2 T@Field_4984_20853) ) (!  (=> (select (|PolymorphicMapType_8563_8074_20853#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) null (PredicateMaskField_4984 pm_f_13@@1))) o2_13@@2 f_30@@2) (= (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@4) o2_13@@2 f_30@@2) (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@2 f_30@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@2 f_30@@2))
))) (forall ((o2_13@@3 T@Ref) (f_30@@3 T@Field_4984_20986) ) (!  (=> (select (|PolymorphicMapType_8563_8074_22164#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) null (PredicateMaskField_4984 pm_f_13@@1))) o2_13@@3 f_30@@3) (= (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@4) o2_13@@3 f_30@@3) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@3 f_30@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@3) o2_13@@3 f_30@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@14) (IsPredicateField_4984_20944 pm_f_13@@1))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_8014) (ExhaleHeap@@4 T@PolymorphicMapType_8014) (Mask@@15 T@PolymorphicMapType_8035) (pm_f_13@@2 T@Field_4984_20853) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_4984_20917 Mask@@15 null pm_f_13@@2) (IsWandField_4984_22691 pm_f_13@@2)) (and (and (and (and (forall ((o2_13@@4 T@Ref) (f_30@@4 T@Field_8074_53) ) (!  (=> (select (|PolymorphicMapType_8563_8074_53#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) null (WandMaskField_4984 pm_f_13@@2))) o2_13@@4 f_30@@4) (= (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@5) o2_13@@4 f_30@@4) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@4 f_30@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@4 f_30@@4))
)) (forall ((o2_13@@5 T@Ref) (f_30@@5 T@Field_8087_8088) ) (!  (=> (select (|PolymorphicMapType_8563_8074_8088#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) null (WandMaskField_4984 pm_f_13@@2))) o2_13@@5 f_30@@5) (= (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@5) o2_13@@5 f_30@@5) (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@5 f_30@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@5 f_30@@5))
))) (forall ((o2_13@@6 T@Ref) (f_30@@6 T@Field_14254_3259) ) (!  (=> (select (|PolymorphicMapType_8563_8074_3259#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) null (WandMaskField_4984 pm_f_13@@2))) o2_13@@6 f_30@@6) (= (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@5) o2_13@@6 f_30@@6) (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@6 f_30@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@6 f_30@@6))
))) (forall ((o2_13@@7 T@Ref) (f_30@@7 T@Field_4984_20853) ) (!  (=> (select (|PolymorphicMapType_8563_8074_20853#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) null (WandMaskField_4984 pm_f_13@@2))) o2_13@@7 f_30@@7) (= (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@5) o2_13@@7 f_30@@7) (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@7 f_30@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@7 f_30@@7))
))) (forall ((o2_13@@8 T@Ref) (f_30@@8 T@Field_4984_20986) ) (!  (=> (select (|PolymorphicMapType_8563_8074_22164#PolymorphicMapType_8563| (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) null (WandMaskField_4984 pm_f_13@@2))) o2_13@@8 f_30@@8) (= (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@5) o2_13@@8 f_30@@8) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@8 f_30@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@4) o2_13@@8 f_30@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@15) (IsWandField_4984_22691 pm_f_13@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.180:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_8014) (ExhaleHeap@@5 T@PolymorphicMapType_8014) (Mask@@16 T@PolymorphicMapType_8035) (o_22@@0 T@Ref) (f_30@@9 T@Field_4984_20986) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_4984_26691 Mask@@16 o_22@@0 f_30@@9) (= (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@6) o_22@@0 f_30@@9) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@5) o_22@@0 f_30@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| ExhaleHeap@@5) o_22@@0 f_30@@9))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_8014) (ExhaleHeap@@6 T@PolymorphicMapType_8014) (Mask@@17 T@PolymorphicMapType_8035) (o_22@@1 T@Ref) (f_30@@10 T@Field_4984_20853) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_4984_20917 Mask@@17 o_22@@1 f_30@@10) (= (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@7) o_22@@1 f_30@@10) (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@6) o_22@@1 f_30@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| ExhaleHeap@@6) o_22@@1 f_30@@10))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_8014) (ExhaleHeap@@7 T@PolymorphicMapType_8014) (Mask@@18 T@PolymorphicMapType_8035) (o_22@@2 T@Ref) (f_30@@11 T@Field_8087_8088) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_4984_8088 Mask@@18 o_22@@2 f_30@@11) (= (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@8) o_22@@2 f_30@@11) (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@7) o_22@@2 f_30@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| ExhaleHeap@@7) o_22@@2 f_30@@11))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_8014) (ExhaleHeap@@8 T@PolymorphicMapType_8014) (Mask@@19 T@PolymorphicMapType_8035) (o_22@@3 T@Ref) (f_30@@12 T@Field_8074_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_4984_53 Mask@@19 o_22@@3 f_30@@12) (= (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@9) o_22@@3 f_30@@12) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@8) o_22@@3 f_30@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| ExhaleHeap@@8) o_22@@3 f_30@@12))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_8014) (ExhaleHeap@@9 T@PolymorphicMapType_8014) (Mask@@20 T@PolymorphicMapType_8035) (o_22@@4 T@Ref) (f_30@@13 T@Field_14254_3259) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_4984_3259 Mask@@20 o_22@@4 f_30@@13) (= (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@10) o_22@@4 f_30@@13) (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@9) o_22@@4 f_30@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| ExhaleHeap@@9) o_22@@4 f_30@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_4984_20986) ) (! (= (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_4984_20853) ) (! (= (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_8087_8088) ) (! (= (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_8074_53) ) (! (= (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_14254_3259) ) (! (= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_8035) (SummandMask1 T@PolymorphicMapType_8035) (SummandMask2 T@PolymorphicMapType_8035) (o_2@@19 T@Ref) (f_4@@19 T@Field_4984_20986) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_8035) (SummandMask1@@0 T@PolymorphicMapType_8035) (SummandMask2@@0 T@PolymorphicMapType_8035) (o_2@@20 T@Ref) (f_4@@20 T@Field_4984_20853) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_8035) (SummandMask1@@1 T@PolymorphicMapType_8035) (SummandMask2@@1 T@PolymorphicMapType_8035) (o_2@@21 T@Ref) (f_4@@21 T@Field_8087_8088) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_8035) (SummandMask1@@2 T@PolymorphicMapType_8035) (SummandMask2@@2 T@PolymorphicMapType_8035) (o_2@@22 T@Ref) (f_4@@22 T@Field_8074_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_8035) (SummandMask1@@3 T@PolymorphicMapType_8035) (SummandMask2@@3 T@PolymorphicMapType_8035) (o_2@@23 T@Ref) (f_4@@23 T@Field_14254_3259) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_4990| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.243:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_4990| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_4990| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_4990| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_4990| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.258:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_4990| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_4990| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_4990| a@@6 x) y))
 :qid |stdinbpl.223:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_4990| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_4990| a@@7 b@@5) y@@0))
 :qid |stdinbpl.233:18|
 :skolemid |35|
 :pattern ( (|Set#Union_4990| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_4990| a@@8 b@@6) y@@1))
 :qid |stdinbpl.235:18|
 :skolemid |36|
 :pattern ( (|Set#Union_4990| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_4990| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.219:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_4990| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_4990| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.260:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_4990| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_4990| (|Set#Difference_4990| a@@11 b@@8)) (|Set#Card_4990| (|Set#Difference_4990| b@@8 a@@11))) (|Set#Card_4990| (|Set#Intersection_4990| a@@11 b@@8))) (|Set#Card_4990| (|Set#Union_4990| a@@11 b@@8))) (= (|Set#Card_4990| (|Set#Difference_4990| a@@11 b@@8)) (- (|Set#Card_4990| a@@11) (|Set#Card_4990| (|Set#Intersection_4990| a@@11 b@@8)))))
 :qid |stdinbpl.262:18|
 :skolemid |45|
 :pattern ( (|Set#Card_4990| (|Set#Difference_4990| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_4990| s))
 :qid |stdinbpl.205:18|
 :skolemid |22|
 :pattern ( (|Set#Card_4990| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_4990| a@@12 x@@1) x@@1)
 :qid |stdinbpl.221:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_4990| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_4990| (|Set#UnionOne_4990| a@@13 x@@2)) (|Set#Card_4990| a@@13)))
 :qid |stdinbpl.225:18|
 :skolemid |32|
 :pattern ( (|Set#Card_4990| (|Set#UnionOne_4990| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_4990| (|Set#Singleton_4990| r@@0)) 1)
 :qid |stdinbpl.216:18|
 :skolemid |28|
 :pattern ( (|Set#Card_4990| (|Set#Singleton_4990| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_4990| r@@1) r@@1)
 :qid |stdinbpl.214:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_4990| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_4990| a@@14 (|Set#Union_4990| a@@14 b@@9)) (|Set#Union_4990| a@@14 b@@9))
 :qid |stdinbpl.248:18|
 :skolemid |39|
 :pattern ( (|Set#Union_4990| a@@14 (|Set#Union_4990| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_4990| a@@15 (|Set#Intersection_4990| a@@15 b@@10)) (|Set#Intersection_4990| a@@15 b@@10))
 :qid |stdinbpl.252:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_4990| a@@15 (|Set#Intersection_4990| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_4990| o@@3))
 :qid |stdinbpl.208:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_4990| o@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_8014) (o_35 T@Ref) (f_11 T@Field_4984_20853) (v T@FrameType) ) (! (succHeap Heap@@11 (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@11) (store (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@11) o_35 f_11 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@11) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@11) (store (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@11) o_35 f_11 v)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_8014) (o_35@@0 T@Ref) (f_11@@0 T@Field_4984_20986) (v@@0 T@PolymorphicMapType_8563) ) (! (succHeap Heap@@12 (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@12) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@12) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@12) (store (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@12) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@12) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@12) (store (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@12) o_35@@0 f_11@@0 v@@0) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_8014) (o_35@@1 T@Ref) (f_11@@1 T@Field_14254_3259) (v@@1 Int) ) (! (succHeap Heap@@13 (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@13) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@13) (store (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@13) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@13) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@13) (store (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@13) o_35@@1 f_11@@1 v@@1) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@13) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_8014) (o_35@@2 T@Ref) (f_11@@2 T@Field_8087_8088) (v@@2 T@Ref) ) (! (succHeap Heap@@14 (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@14) (store (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@14) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@14) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8014 (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@14) (store (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@14) o_35@@2 f_11@@2 v@@2) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@14) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@14) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_8014) (o_35@@3 T@Ref) (f_11@@3 T@Field_8074_53) (v@@3 Bool) ) (! (succHeap Heap@@15 (PolymorphicMapType_8014 (store (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_8014 (store (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@15) o_35@@3 f_11@@3 v@@3) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@15) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@15)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.292:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.293:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_4990| s@@0) 0) (= s@@0 |Set#Empty_4990|)) (=> (not (= (|Set#Card_4990| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.211:33|
 :skolemid |24|
))))
 :qid |stdinbpl.209:18|
 :skolemid |25|
 :pattern ( (|Set#Card_4990| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_4990| (|Set#UnionOne_4990| a@@18 x@@4)) (+ (|Set#Card_4990| a@@18) 1)))
 :qid |stdinbpl.227:18|
 :skolemid |33|
 :pattern ( (|Set#Card_4990| (|Set#UnionOne_4990| a@@18 x@@4)))
)))
(assert (forall ((o_35@@4 T@Ref) (f_31 T@Field_8087_8088) (Heap@@16 T@PolymorphicMapType_8014) ) (!  (=> (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@16) o_35@@4 $allocated) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@16) (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@16) o_35@@4 f_31) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@16) o_35@@4 f_31))
)))
(assert (forall ((p@@1 T@Field_4984_20853) (v_1@@0 T@FrameType) (q T@Field_4984_20853) (w@@0 T@FrameType) (r@@2 T@Field_4984_20853) (u T@FrameType) ) (!  (=> (and (InsidePredicate_8074_8074 p@@1 v_1@@0 q w@@0) (InsidePredicate_8074_8074 q w@@0 r@@2 u)) (InsidePredicate_8074_8074 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.187:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_8074_8074 p@@1 v_1@@0 q w@@0) (InsidePredicate_8074_8074 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.298:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_4990| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.231:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_4990| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun S@0 () (Array T@Ref Bool))
(declare-fun s_5 () T@Ref)
(declare-fun Mask@2 () T@PolymorphicMapType_8035)
(declare-fun neverTriggered1 (T@Ref) Bool)
(declare-fun Heap@2 () T@PolymorphicMapType_8014)
(declare-fun QPMask@0 () T@PolymorphicMapType_8035)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) T@Ref)
(declare-fun freshObj@0 () T@Ref)
(declare-fun freshObj@1 () T@Ref)
(declare-fun freshObj@2 () T@Ref)
(declare-fun Heap@@17 () T@PolymorphicMapType_8014)
(declare-fun s1 () T@Ref)
(declare-fun s2 () T@Ref)
(declare-fun s3 () T@Ref)
(declare-fun Heap@0 () T@PolymorphicMapType_8014)
(declare-fun Mask@0 () T@PolymorphicMapType_8035)
(declare-fun Heap@1 () T@PolymorphicMapType_8014)
(declare-fun Mask@1 () T@PolymorphicMapType_8035)
(set-info :boogie-vc-id test04)
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
 (=> (= (ControlFlow 0 0) 14) (let ((anon5_correct true))
(let ((anon9_Else_correct  (=> (and (not (select S@0 s_5)) (= (ControlFlow 0 6) 3)) anon5_correct)))
(let ((anon9_Then_correct  (=> (select S@0 s_5) (and (=> (= (ControlFlow 0 4) (- 0 5)) (HasDirectPerm_4984_3259 Mask@2 s_5 val)) (=> (HasDirectPerm_4984_3259 Mask@2 s_5 val) (=> (= (ControlFlow 0 4) 3) anon5_correct))))))
(let ((anon8_Else_correct true))
(let ((anon7_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 12)) (forall ((s_1 T@Ref) (s_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1 s_1_1)) (select S@0 s_1)) (select S@0 s_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1 s_1_1)))
 :qid |stdinbpl.478:17|
 :skolemid |82|
 :pattern ( (neverTriggered1 s_1) (neverTriggered1 s_1_1))
))) (=> (forall ((s_1@@0 T@Ref) (s_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= s_1@@0 s_1_1@@0)) (select S@0 s_1@@0)) (select S@0 s_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= s_1@@0 s_1_1@@0)))
 :qid |stdinbpl.478:17|
 :skolemid |82|
 :pattern ( (neverTriggered1 s_1@@0) (neverTriggered1 s_1_1@@0))
)) (and (=> (= (ControlFlow 0 7) (- 0 11)) (forall ((s_1@@1 T@Ref) ) (!  (=> (select S@0 s_1@@1) (>= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@2) s_1@@1 val) FullPerm))
 :qid |stdinbpl.485:17|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@2) s_1@@1 val))
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) s_1@@1 val))
 :pattern ( (select S@0 s_1@@1))
))) (=> (forall ((s_1@@2 T@Ref) ) (!  (=> (select S@0 s_1@@2) (>= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@2) s_1@@2 val) FullPerm))
 :qid |stdinbpl.485:17|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@2) s_1@@2 val))
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) s_1@@2 val))
 :pattern ( (select S@0 s_1@@2))
)) (=> (forall ((s_1@@3 T@Ref) ) (!  (=> (and (select S@0 s_1@@3) (< NoPerm FullPerm)) (and (qpRange1 s_1@@3) (= (invRecv1 s_1@@3) s_1@@3)))
 :qid |stdinbpl.491:22|
 :skolemid |84|
 :pattern ( (select (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@2) s_1@@3 val))
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) s_1@@3 val))
 :pattern ( (select S@0 s_1@@3))
)) (=> (and (forall ((o_4 T@Ref) ) (!  (=> (and (select S@0 (invRecv1 o_4)) (and (< NoPerm FullPerm) (qpRange1 o_4))) (= (invRecv1 o_4) o_4))
 :qid |stdinbpl.495:22|
 :skolemid |85|
 :pattern ( (invRecv1 o_4))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select S@0 (invRecv1 o_4@@0)) (and (< NoPerm FullPerm) (qpRange1 o_4@@0))) (and (= (invRecv1 o_4@@0) o_4@@0) (= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) o_4@@0 val) (- (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@2) o_4@@0 val) FullPerm)))) (=> (not (and (select S@0 (invRecv1 o_4@@0)) (and (< NoPerm FullPerm) (qpRange1 o_4@@0)))) (= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) o_4@@0 val) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@2) o_4@@0 val))))
 :qid |stdinbpl.501:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) o_4@@0 val))
))) (=> (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_8074_53) ) (!  (=> true (= (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@2) o_4@@1 f_5) (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| QPMask@0) o_4@@1 f_5)))
 :qid |stdinbpl.507:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| QPMask@0) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_8087_8088) ) (!  (=> true (= (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@2) o_4@@2 f_5@@0) (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| QPMask@0) o_4@@2 f_5@@0)))
 :qid |stdinbpl.507:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| QPMask@0) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_14254_3259) ) (!  (=> (not (= f_5@@1 val)) (= (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@2) o_4@@3 f_5@@1) (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) o_4@@3 f_5@@1)))
 :qid |stdinbpl.507:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| QPMask@0) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_4984_20853) ) (!  (=> true (= (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@2) o_4@@4 f_5@@2) (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| QPMask@0) o_4@@4 f_5@@2)))
 :qid |stdinbpl.507:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| QPMask@0) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_4984_20986) ) (!  (=> true (= (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@2) o_4@@5 f_5@@3) (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| QPMask@0) o_4@@5 f_5@@3)))
 :qid |stdinbpl.507:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| QPMask@0) o_4@@5 f_5@@3))
))) (state Heap@2 Mask@2)) (and (=> (= (ControlFlow 0 7) (- 0 10)) (select S@0 freshObj@0)) (=> (select S@0 freshObj@0) (and (=> (= (ControlFlow 0 7) (- 0 9)) (select S@0 freshObj@1)) (=> (select S@0 freshObj@1) (and (=> (= (ControlFlow 0 7) (- 0 8)) (select S@0 freshObj@2)) (=> (select S@0 freshObj@2) (=> (state Heap@2 Mask@2) (and (and (=> (= (ControlFlow 0 7) 2) anon8_Else_correct) (=> (= (ControlFlow 0 7) 4) anon9_Then_correct)) (=> (= (ControlFlow 0 7) 6) anon9_Else_correct))))))))))))))))))
(let ((anon7_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@17 ZeroMask) (=> (and (and AssumePermUpperBound (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@17) s1 $allocated)) (and (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@17) s2 $allocated) (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@17) s3 $allocated))) (=> (and (and (and (not (= freshObj@0 null)) (not (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@17) freshObj@0 $allocated))) (= Heap@0 (PolymorphicMapType_8014 (store (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@@17) freshObj@0 $allocated true) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@@17) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@@17) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@@17) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@@17)))) (and (= Mask@0 (PolymorphicMapType_8035 (store (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ZeroMask) freshObj@0 val (+ (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| ZeroMask) freshObj@0 val) FullPerm)) (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| ZeroMask) (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| ZeroMask) (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| ZeroMask) (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| ZeroMask))) (state Heap@0 Mask@0))) (=> (and (and (and (and (not (= freshObj@1 null)) (not (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@0) freshObj@1 $allocated))) (= Heap@1 (PolymorphicMapType_8014 (store (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@0) freshObj@1 $allocated true) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@0) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@0) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@0) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@0)))) (and (= Mask@1 (PolymorphicMapType_8035 (store (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@0) freshObj@1 val (+ (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@0) freshObj@1 val) FullPerm)) (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@0) (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@0) (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@0) (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@0))) (state Heap@1 Mask@1))) (and (and (and (not (= freshObj@2 null)) (not (select (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@1) freshObj@2 $allocated))) (= Heap@2 (PolymorphicMapType_8014 (store (|PolymorphicMapType_8014_4683_53#PolymorphicMapType_8014| Heap@1) freshObj@2 $allocated true) (|PolymorphicMapType_8014_4686_4687#PolymorphicMapType_8014| Heap@1) (|PolymorphicMapType_8014_4984_3259#PolymorphicMapType_8014| Heap@1) (|PolymorphicMapType_8014_4984_21030#PolymorphicMapType_8014| Heap@1) (|PolymorphicMapType_8014_8074_20853#PolymorphicMapType_8014| Heap@1)))) (and (and (= Mask@2 (PolymorphicMapType_8035 (store (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@1) freshObj@2 val (+ (select (|PolymorphicMapType_8035_4984_3259#PolymorphicMapType_8035| Mask@1) freshObj@2 val) FullPerm)) (|PolymorphicMapType_8035_4984_53#PolymorphicMapType_8035| Mask@1) (|PolymorphicMapType_8035_4984_8088#PolymorphicMapType_8035| Mask@1) (|PolymorphicMapType_8035_4984_20853#PolymorphicMapType_8035| Mask@1) (|PolymorphicMapType_8035_4984_25108#PolymorphicMapType_8035| Mask@1))) (state Heap@2 Mask@2)) (and (= S@0 (|Set#UnionOne_4990| (|Set#UnionOne_4990| (|Set#Singleton_4990| freshObj@2) freshObj@1) freshObj@0)) (state Heap@2 Mask@2))))) (and (=> (= (ControlFlow 0 13) 1) anon7_Then_correct) (=> (= (ControlFlow 0 13) 7) anon7_Else_correct))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 14) 13) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
