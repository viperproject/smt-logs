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
(declare-sort T@Field_10632_53 0)
(declare-sort T@Field_10645_10646 0)
(declare-sort T@Field_10632_29266 0)
(declare-sort T@Field_10632_29133 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_10593 0)) (((PolymorphicMapType_10593 (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| (Array T@Ref T@Field_10645_10646 Real)) (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| (Array T@Ref T@Field_10632_53 Real)) (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| (Array T@Ref T@Field_10632_29133 Real)) (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| (Array T@Ref T@Field_10632_29266 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11121 0)) (((PolymorphicMapType_11121 (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (Array T@Ref T@Field_10632_53 Bool)) (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (Array T@Ref T@Field_10645_10646 Bool)) (|PolymorphicMapType_11121_10632_29133#PolymorphicMapType_11121| (Array T@Ref T@Field_10632_29133 Bool)) (|PolymorphicMapType_11121_10632_30246#PolymorphicMapType_11121| (Array T@Ref T@Field_10632_29266 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_10572 0)) (((PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| (Array T@Ref T@Field_10632_53 Bool)) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| (Array T@Ref T@Field_10645_10646 T@Ref)) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| (Array T@Ref T@Field_10632_29266 T@PolymorphicMapType_11121)) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| (Array T@Ref T@Field_10632_29133 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_10632_53)
(declare-fun f_7 () T@Field_10645_10646)
(declare-fun succHeap (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572) Bool)
(declare-fun state (T@PolymorphicMapType_10572 T@PolymorphicMapType_10593) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_10593) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11121)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun |Set#Union_6636| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_6693| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_6693| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_6693| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_10572 T@PolymorphicMapType_10572 T@PolymorphicMapType_10593) Bool)
(declare-fun IsPredicateField_10632_29224 (T@Field_10632_29133) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_10632 (T@Field_10632_29133) T@Field_10632_29266)
(declare-fun HasDirectPerm_10632_29197 (T@PolymorphicMapType_10593 T@Ref T@Field_10632_29133) Bool)
(declare-fun IsWandField_10632_30773 (T@Field_10632_29133) Bool)
(declare-fun WandMaskField_10632 (T@Field_10632_29133) T@Field_10632_29266)
(declare-fun dummyHeap () T@PolymorphicMapType_10572)
(declare-fun ZeroMask () T@PolymorphicMapType_10593)
(declare-fun InsidePredicate_10632_10632 (T@Field_10632_29133 T@FrameType T@Field_10632_29133 T@FrameType) Bool)
(declare-fun IsPredicateField_6627_6628 (T@Field_10645_10646) Bool)
(declare-fun IsWandField_6627_6628 (T@Field_10645_10646) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6627_33707 (T@Field_10632_29266) Bool)
(declare-fun IsWandField_6627_33723 (T@Field_10632_29266) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6627_53 (T@Field_10632_53) Bool)
(declare-fun IsWandField_6627_53 (T@Field_10632_53) Bool)
(declare-fun HasDirectPerm_10632_34078 (T@PolymorphicMapType_10593 T@Ref T@Field_10632_29266) Bool)
(declare-fun HasDirectPerm_10632_10646 (T@PolymorphicMapType_10593 T@Ref T@Field_10645_10646) Bool)
(declare-fun HasDirectPerm_10632_53 (T@PolymorphicMapType_10593 T@Ref T@Field_10632_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_10593 T@PolymorphicMapType_10593 T@PolymorphicMapType_10593) Bool)
(declare-fun |Set#Difference_6690| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_6693| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Empty_6693| () (Array T@Ref Bool))
(assert (forall ((Heap0 T@PolymorphicMapType_10572) (Heap1 T@PolymorphicMapType_10572) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_10572) (Mask T@PolymorphicMapType_10593) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_10572) (Heap1@@0 T@PolymorphicMapType_10572) (Heap2 T@PolymorphicMapType_10572) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_10632_29266) ) (!  (not (select (|PolymorphicMapType_11121_10632_30246#PolymorphicMapType_11121| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_30246#PolymorphicMapType_11121| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_10632_29133) ) (!  (not (select (|PolymorphicMapType_11121_10632_29133#PolymorphicMapType_11121| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_29133#PolymorphicMapType_11121| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10645_10646) ) (!  (not (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_10632_53) ) (!  (not (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.312:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_6636| (|Set#Union_6636| a@@0 b@@0) b@@0) (|Set#Union_6636| a@@0 b@@0))
 :qid |stdinbpl.264:18|
 :skolemid |38|
 :pattern ( (|Set#Union_6636| (|Set#Union_6636| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6693| (|Set#Intersection_6693| a@@1 b@@1) b@@1) (|Set#Intersection_6693| a@@1 b@@1))
 :qid |stdinbpl.268:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_6693| (|Set#Intersection_6693| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_6693| r) o) (= r o))
 :qid |stdinbpl.233:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_6693| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_6693| (|Set#Union_6636| a@@2 b@@2)) (|Set#Card_6693| (|Set#Intersection_6693| a@@2 b@@2))) (+ (|Set#Card_6693| a@@2) (|Set#Card_6693| b@@2)))
 :qid |stdinbpl.272:18|
 :skolemid |42|
 :pattern ( (|Set#Card_6693| (|Set#Union_6636| a@@2 b@@2)))
 :pattern ( (|Set#Card_6693| (|Set#Intersection_6693| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.315:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_10572) (ExhaleHeap T@PolymorphicMapType_10572) (Mask@@0 T@PolymorphicMapType_10593) (pm_f_34 T@Field_10632_29133) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_10632_29197 Mask@@0 null pm_f_34) (IsPredicateField_10632_29224 pm_f_34)) (= (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@0) null (PredicateMaskField_10632 pm_f_34)) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap) null (PredicateMaskField_10632 pm_f_34)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_10632_29224 pm_f_34) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap) null (PredicateMaskField_10632 pm_f_34)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_10572) (ExhaleHeap@@0 T@PolymorphicMapType_10572) (Mask@@1 T@PolymorphicMapType_10593) (pm_f_34@@0 T@Field_10632_29133) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_10632_29197 Mask@@1 null pm_f_34@@0) (IsWandField_10632_30773 pm_f_34@@0)) (= (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@1) null (WandMaskField_10632 pm_f_34@@0)) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@0) null (WandMaskField_10632 pm_f_34@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_10632_30773 pm_f_34@@0) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@0) null (WandMaskField_10632 pm_f_34@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_10572) (ExhaleHeap@@1 T@PolymorphicMapType_10572) (Mask@@2 T@PolymorphicMapType_10593) (pm_f_34@@1 T@Field_10632_29133) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_10632_29197 Mask@@2 null pm_f_34@@1) (IsPredicateField_10632_29224 pm_f_34@@1)) (and (and (and (forall ((o2_34 T@Ref) (f_35 T@Field_10632_53) ) (!  (=> (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@2) null (PredicateMaskField_10632 pm_f_34@@1))) o2_34 f_35) (= (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@2) o2_34 f_35) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34 f_35)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34 f_35))
)) (forall ((o2_34@@0 T@Ref) (f_35@@0 T@Field_10645_10646) ) (!  (=> (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@2) null (PredicateMaskField_10632 pm_f_34@@1))) o2_34@@0 f_35@@0) (= (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@2) o2_34@@0 f_35@@0) (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@0 f_35@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@0 f_35@@0))
))) (forall ((o2_34@@1 T@Ref) (f_35@@1 T@Field_10632_29133) ) (!  (=> (select (|PolymorphicMapType_11121_10632_29133#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@2) null (PredicateMaskField_10632 pm_f_34@@1))) o2_34@@1 f_35@@1) (= (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@2) o2_34@@1 f_35@@1) (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@1 f_35@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@1 f_35@@1))
))) (forall ((o2_34@@2 T@Ref) (f_35@@2 T@Field_10632_29266) ) (!  (=> (select (|PolymorphicMapType_11121_10632_30246#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@2) null (PredicateMaskField_10632 pm_f_34@@1))) o2_34@@2 f_35@@2) (= (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@2) o2_34@@2 f_35@@2) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@2 f_35@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@1) o2_34@@2 f_35@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_10632_29224 pm_f_34@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_10572) (ExhaleHeap@@2 T@PolymorphicMapType_10572) (Mask@@3 T@PolymorphicMapType_10593) (pm_f_34@@2 T@Field_10632_29133) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_10632_29197 Mask@@3 null pm_f_34@@2) (IsWandField_10632_30773 pm_f_34@@2)) (and (and (and (forall ((o2_34@@3 T@Ref) (f_35@@3 T@Field_10632_53) ) (!  (=> (select (|PolymorphicMapType_11121_10632_53#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@3) null (WandMaskField_10632 pm_f_34@@2))) o2_34@@3 f_35@@3) (= (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@3) o2_34@@3 f_35@@3) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@3 f_35@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@3 f_35@@3))
)) (forall ((o2_34@@4 T@Ref) (f_35@@4 T@Field_10645_10646) ) (!  (=> (select (|PolymorphicMapType_11121_10632_10646#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@3) null (WandMaskField_10632 pm_f_34@@2))) o2_34@@4 f_35@@4) (= (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@3) o2_34@@4 f_35@@4) (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@4 f_35@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@4 f_35@@4))
))) (forall ((o2_34@@5 T@Ref) (f_35@@5 T@Field_10632_29133) ) (!  (=> (select (|PolymorphicMapType_11121_10632_29133#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@3) null (WandMaskField_10632 pm_f_34@@2))) o2_34@@5 f_35@@5) (= (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@3) o2_34@@5 f_35@@5) (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@5 f_35@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@5 f_35@@5))
))) (forall ((o2_34@@6 T@Ref) (f_35@@6 T@Field_10632_29266) ) (!  (=> (select (|PolymorphicMapType_11121_10632_30246#PolymorphicMapType_11121| (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@3) null (WandMaskField_10632 pm_f_34@@2))) o2_34@@6 f_35@@6) (= (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@3) o2_34@@6 f_35@@6) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@6 f_35@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@2) o2_34@@6 f_35@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_10632_30773 pm_f_34@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_10572) (ExhaleHeap@@3 T@PolymorphicMapType_10572) (Mask@@4 T@PolymorphicMapType_10593) (o_30 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@4) o_30 $allocated) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@3) o_30 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@3) o_30 $allocated))
)))
(assert (forall ((p T@Field_10632_29133) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_10632_10632 p v_1 p w))
 :qid |stdinbpl.210:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_10632_10632 p v_1 p w))
)))
(assert  (not (IsPredicateField_6627_6628 f_7)))
(assert  (not (IsWandField_6627_6628 f_7)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_10572) (ExhaleHeap@@4 T@PolymorphicMapType_10572) (Mask@@5 T@PolymorphicMapType_10593) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_10593) (o_2@@3 T@Ref) (f_4@@3 T@Field_10632_29266) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_6627_33707 f_4@@3))) (not (IsWandField_6627_33723 f_4@@3))) (<= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_10593) (o_2@@4 T@Ref) (f_4@@4 T@Field_10632_29133) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_10632_29224 f_4@@4))) (not (IsWandField_10632_30773 f_4@@4))) (<= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_10593) (o_2@@5 T@Ref) (f_4@@5 T@Field_10632_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_6627_53 f_4@@5))) (not (IsWandField_6627_53 f_4@@5))) (<= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_10593) (o_2@@6 T@Ref) (f_4@@6 T@Field_10645_10646) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_6627_6628 f_4@@6))) (not (IsWandField_6627_6628 f_4@@6))) (<= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_10593) (o_2@@7 T@Ref) (f_4@@7 T@Field_10632_29266) ) (! (= (HasDirectPerm_10632_34078 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10632_34078 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_10593) (o_2@@8 T@Ref) (f_4@@8 T@Field_10632_29133) ) (! (= (HasDirectPerm_10632_29197 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10632_29197 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_10593) (o_2@@9 T@Ref) (f_4@@9 T@Field_10645_10646) ) (! (= (HasDirectPerm_10632_10646 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10632_10646 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_10593) (o_2@@10 T@Ref) (f_4@@10 T@Field_10632_53) ) (! (= (HasDirectPerm_10632_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_10632_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.198:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_10572) (ExhaleHeap@@5 T@PolymorphicMapType_10572) (Mask@@14 T@PolymorphicMapType_10593) (o_30@@0 T@Ref) (f_35@@7 T@Field_10632_29266) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_10632_34078 Mask@@14 o_30@@0 f_35@@7) (= (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@6) o_30@@0 f_35@@7) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@5) o_30@@0 f_35@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| ExhaleHeap@@5) o_30@@0 f_35@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_10572) (ExhaleHeap@@6 T@PolymorphicMapType_10572) (Mask@@15 T@PolymorphicMapType_10593) (o_30@@1 T@Ref) (f_35@@8 T@Field_10632_29133) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_10632_29197 Mask@@15 o_30@@1 f_35@@8) (= (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@7) o_30@@1 f_35@@8) (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@6) o_30@@1 f_35@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| ExhaleHeap@@6) o_30@@1 f_35@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_10572) (ExhaleHeap@@7 T@PolymorphicMapType_10572) (Mask@@16 T@PolymorphicMapType_10593) (o_30@@2 T@Ref) (f_35@@9 T@Field_10645_10646) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_10632_10646 Mask@@16 o_30@@2 f_35@@9) (= (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@8) o_30@@2 f_35@@9) (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@7) o_30@@2 f_35@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| ExhaleHeap@@7) o_30@@2 f_35@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_10572) (ExhaleHeap@@8 T@PolymorphicMapType_10572) (Mask@@17 T@PolymorphicMapType_10593) (o_30@@3 T@Ref) (f_35@@10 T@Field_10632_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_10632_53 Mask@@17 o_30@@3 f_35@@10) (= (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@9) o_30@@3 f_35@@10) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@8) o_30@@3 f_35@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| ExhaleHeap@@8) o_30@@3 f_35@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_10632_29266) ) (! (= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_10632_29133) ) (! (= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_10632_53) ) (! (= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_10645_10646) ) (! (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_10593) (SummandMask1 T@PolymorphicMapType_10593) (SummandMask2 T@PolymorphicMapType_10593) (o_2@@15 T@Ref) (f_4@@15 T@Field_10632_29266) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_10593) (SummandMask1@@0 T@PolymorphicMapType_10593) (SummandMask2@@0 T@PolymorphicMapType_10593) (o_2@@16 T@Ref) (f_4@@16 T@Field_10632_29133) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_10593) (SummandMask1@@1 T@PolymorphicMapType_10593) (SummandMask2@@1 T@PolymorphicMapType_10593) (o_2@@17 T@Ref) (f_4@@17 T@Field_10632_53) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_10593) (SummandMask1@@2 T@PolymorphicMapType_10593) (SummandMask2@@2 T@PolymorphicMapType_10593) (o_2@@18 T@Ref) (f_4@@18 T@Field_10645_10646) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_6693| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.261:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_6693| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_6693| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_6693| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_6690| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.276:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_6690| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_6690| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_6693| a@@6 x) y))
 :qid |stdinbpl.241:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_6693| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_6636| a@@7 b@@5) y@@0))
 :qid |stdinbpl.251:18|
 :skolemid |35|
 :pattern ( (|Set#Union_6636| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_6636| a@@8 b@@6) y@@1))
 :qid |stdinbpl.253:18|
 :skolemid |36|
 :pattern ( (|Set#Union_6636| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_6693| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.237:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_6693| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_6690| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.278:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_6690| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_6693| (|Set#Difference_6690| a@@11 b@@8)) (|Set#Card_6693| (|Set#Difference_6690| b@@8 a@@11))) (|Set#Card_6693| (|Set#Intersection_6693| a@@11 b@@8))) (|Set#Card_6693| (|Set#Union_6636| a@@11 b@@8))) (= (|Set#Card_6693| (|Set#Difference_6690| a@@11 b@@8)) (- (|Set#Card_6693| a@@11) (|Set#Card_6693| (|Set#Intersection_6693| a@@11 b@@8)))))
 :qid |stdinbpl.280:18|
 :skolemid |45|
 :pattern ( (|Set#Card_6693| (|Set#Difference_6690| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_6693| s))
 :qid |stdinbpl.223:18|
 :skolemid |22|
 :pattern ( (|Set#Card_6693| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_6693| a@@12 x@@1) x@@1)
 :qid |stdinbpl.239:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_6693| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_6693| (|Set#UnionOne_6693| a@@13 x@@2)) (|Set#Card_6693| a@@13)))
 :qid |stdinbpl.243:18|
 :skolemid |32|
 :pattern ( (|Set#Card_6693| (|Set#UnionOne_6693| a@@13 x@@2)))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_6693| (|Set#Singleton_6693| r@@0)) 1)
 :qid |stdinbpl.234:18|
 :skolemid |28|
 :pattern ( (|Set#Card_6693| (|Set#Singleton_6693| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_6693| r@@1) r@@1)
 :qid |stdinbpl.232:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_6693| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_6636| a@@14 (|Set#Union_6636| a@@14 b@@9)) (|Set#Union_6636| a@@14 b@@9))
 :qid |stdinbpl.266:18|
 :skolemid |39|
 :pattern ( (|Set#Union_6636| a@@14 (|Set#Union_6636| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_6693| a@@15 (|Set#Intersection_6693| a@@15 b@@10)) (|Set#Intersection_6693| a@@15 b@@10))
 :qid |stdinbpl.270:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_6693| a@@15 (|Set#Intersection_6693| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_6693| o@@3))
 :qid |stdinbpl.226:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_6693| o@@3))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_10572) (o_6 T@Ref) (f_16 T@Field_10632_29133) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@10) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@10) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@10) (store (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@10) o_6 f_16 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@10) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@10) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@10) (store (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@10) o_6 f_16 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_10572) (o_6@@0 T@Ref) (f_16@@0 T@Field_10632_29266) (v@@0 T@PolymorphicMapType_11121) ) (! (succHeap Heap@@11 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@11) (store (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@11) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@11) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@11) (store (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@11) o_6@@0 f_16@@0 v@@0) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_10572) (o_6@@1 T@Ref) (f_16@@1 T@Field_10645_10646) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@12) (store (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@12) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@12) (store (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@12) o_6@@1 f_16@@1 v@@1) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@12) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_10572) (o_6@@2 T@Ref) (f_16@@2 T@Field_10632_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_10572 (store (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@13) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_10572 (store (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@13) o_6@@2 f_16@@2 v@@2) (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29310#PolymorphicMapType_10572| Heap@@13) (|PolymorphicMapType_10572_10632_29133#PolymorphicMapType_10572| Heap@@13)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.310:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.311:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_6693| s@@0) 0) (= s@@0 |Set#Empty_6693|)) (=> (not (= (|Set#Card_6693| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.229:33|
 :skolemid |24|
))))
 :qid |stdinbpl.227:18|
 :skolemid |25|
 :pattern ( (|Set#Card_6693| s@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_6693| (|Set#UnionOne_6693| a@@18 x@@4)) (+ (|Set#Card_6693| a@@18) 1)))
 :qid |stdinbpl.245:18|
 :skolemid |33|
 :pattern ( (|Set#Card_6693| (|Set#UnionOne_6693| a@@18 x@@4)))
)))
(assert (forall ((o_6@@3 T@Ref) (f_9 T@Field_10645_10646) (Heap@@14 T@PolymorphicMapType_10572) ) (!  (=> (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@14) o_6@@3 $allocated) (select (|PolymorphicMapType_10572_6302_53#PolymorphicMapType_10572| Heap@@14) (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@14) o_6@@3 f_9) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@14) o_6@@3 f_9))
)))
(assert (forall ((p@@1 T@Field_10632_29133) (v_1@@0 T@FrameType) (q T@Field_10632_29133) (w@@0 T@FrameType) (r@@2 T@Field_10632_29133) (u T@FrameType) ) (!  (=> (and (InsidePredicate_10632_10632 p@@1 v_1@@0 q w@@0) (InsidePredicate_10632_10632 q w@@0 r@@2 u)) (InsidePredicate_10632_10632 p@@1 v_1@@0 r@@2 u))
 :qid |stdinbpl.205:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_10632_10632 p@@1 v_1@@0 q w@@0) (InsidePredicate_10632_10632 q w@@0 r@@2 u))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.316:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_6636| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.249:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_6636| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun xs () (Array T@Ref Bool))
(declare-fun ys () (Array T@Ref Bool))
(declare-fun wildcard () Real)
(declare-fun PostHeap@0 () T@PolymorphicMapType_10572)
(declare-fun wildcard@0 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_10593)
(declare-fun Heap@@15 () T@PolymorphicMapType_10572)
(declare-fun QPMask@2 () T@PolymorphicMapType_10593)
(declare-fun dummyFunction_6628 (T@Ref) Bool)
(declare-fun neverTriggered4 (T@Ref) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_10593)
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
 (=> (= (ControlFlow 0 0) 17) (let ((anon12_Else_correct  (=> (= (ControlFlow 0 10) (- 0 9)) (forall ((x_5 T@Ref) (x_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_5 x_5_1)) (select (|Set#Union_6636| xs ys) x_5)) (select (|Set#Union_6636| xs ys) x_5_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_5 x_5_1)))
 :qid |stdinbpl.535:15|
 :skolemid |94|
)))))
(let ((anon12_Then_correct true))
(let ((anon11_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (=> (= (ControlFlow 0 11) 8) anon12_Then_correct) (=> (= (ControlFlow 0 11) 10) anon12_Else_correct)))))
(let ((anon11_Else_correct  (=> (> wildcard@0 0.0) (and (=> (= (ControlFlow 0 4) (- 0 7)) (forall ((x_6 T@Ref) ) (!  (=> (select (|Set#Union_6636| xs ys) x_6) (> (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_6 f_7) NoPerm))
 :qid |stdinbpl.579:15|
 :skolemid |100|
))) (=> (forall ((x_6@@0 T@Ref) ) (!  (=> (select (|Set#Union_6636| xs ys) x_6@@0) (> (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_6@@0 f_7) NoPerm))
 :qid |stdinbpl.579:15|
 :skolemid |100|
)) (=> (forall ((x_6@@1 T@Ref) ) (!  (=> (select (|Set#Union_6636| xs ys) x_6@@1) (< wildcard@0 (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_6@@1 f_7)))
 :qid |stdinbpl.583:20|
 :skolemid |101|
)) (and (=> (= (ControlFlow 0 4) (- 0 6)) (forall ((x_6@@2 T@Ref) ) (!  (=> (and (select (|Set#Union_6636| xs ys) x_6@@2) (dummyFunction_6628 (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_6@@2 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.590:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_6@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@2) x_6@@2 f_7))
 :pattern ( (select (|Set#Union_6636| xs ys) x_6@@2))
))) (=> (forall ((x_6@@3 T@Ref) ) (!  (=> (and (select (|Set#Union_6636| xs ys) x_6@@3) (dummyFunction_6628 (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_6@@3 f_7))) (>= wildcard@0 NoPerm))
 :qid |stdinbpl.590:17|
 :skolemid |102|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_6@@3 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@2) x_6@@3 f_7))
 :pattern ( (select (|Set#Union_6636| xs ys) x_6@@3))
)) (and (=> (= (ControlFlow 0 4) (- 0 5)) (forall ((x_6@@4 T@Ref) (x_6_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@4 x_6_1)) (select (|Set#Union_6636| xs ys) x_6@@4)) (select (|Set#Union_6636| xs ys) x_6_1)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_6@@4 x_6_1)))
 :qid |stdinbpl.597:17|
 :skolemid |103|
 :pattern ( (neverTriggered4 x_6@@4) (neverTriggered4 x_6_1))
))) (=> (forall ((x_6@@5 T@Ref) (x_6_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_6@@5 x_6_1@@0)) (select (|Set#Union_6636| xs ys) x_6@@5)) (select (|Set#Union_6636| xs ys) x_6_1@@0)) (< NoPerm wildcard@0)) (< NoPerm wildcard@0)) (not (= x_6@@5 x_6_1@@0)))
 :qid |stdinbpl.597:17|
 :skolemid |103|
 :pattern ( (neverTriggered4 x_6@@5) (neverTriggered4 x_6_1@@0))
)) (=> (= (ControlFlow 0 4) (- 0 3)) (forall ((x_6@@6 T@Ref) ) (!  (=> (select (|Set#Union_6636| xs ys) x_6@@6) (> (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_6@@6 f_7) NoPerm))
 :qid |stdinbpl.604:17|
 :skolemid |104|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_6@@6 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@2) x_6@@6 f_7))
 :pattern ( (select (|Set#Union_6636| xs ys) x_6@@6))
)))))))))))))
(let ((anon10_Else_correct  (and (=> (= (ControlFlow 0 12) (- 0 13)) (forall ((x_3 T@Ref) (x_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3 x_3_1)) (select ys x_3)) (select ys x_3_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_3 x_3_1)))
 :qid |stdinbpl.484:15|
 :skolemid |88|
))) (=> (forall ((x_3@@0 T@Ref) (x_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_3@@0 x_3_1@@0)) (select ys x_3@@0)) (select ys x_3_1@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_3@@0 x_3_1@@0)))
 :qid |stdinbpl.484:15|
 :skolemid |88|
)) (=> (and (and (forall ((x_3@@1 T@Ref) ) (!  (=> (select ys x_3@@1) (and (qpRange2 x_3@@1) (= (invRecv2 x_3@@1) x_3@@1)))
 :qid |stdinbpl.490:22|
 :skolemid |89|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_3@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_3@@1 f_7))
 :pattern ( (select ys x_3@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (select ys (invRecv2 o_4)) (qpRange2 o_4)) (= (invRecv2 o_4) o_4))
 :qid |stdinbpl.494:22|
 :skolemid |90|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((x_3@@2 T@Ref) ) (!  (=> (select ys x_3@@2) (not (= x_3@@2 null)))
 :qid |stdinbpl.500:22|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) x_3@@2 f_7))
 :pattern ( (select ys x_3@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (select ys (invRecv2 o_4@@0)) (qpRange2 o_4@@0)) (and (= (invRecv2 o_4@@0) o_4@@0) (< (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@0 f_7) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) o_4@@0 f_7)))) (=> (not (and (select ys (invRecv2 o_4@@0)) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) o_4@@0 f_7) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@0 f_7))))
 :qid |stdinbpl.506:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) o_4@@0 f_7))
)))) (=> (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@1) o_4@@1 f_5)))
 :qid |stdinbpl.510:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@1) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_10645_10646) ) (!  (=> (not (= f_5@@0 f_7)) (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) o_4@@2 f_5@@0)))
 :qid |stdinbpl.510:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@1) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_10632_29133) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@1) o_4@@3 f_5@@1)))
 :qid |stdinbpl.510:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@1) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_10632_29266) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@1) o_4@@4 f_5@@2)))
 :qid |stdinbpl.510:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@1) o_4@@4 f_5@@2))
))) (and (state Heap@@15 QPMask@1) (state Heap@@15 QPMask@1))) (and (=> (= (ControlFlow 0 12) 11) anon11_Then_correct) (=> (= (ControlFlow 0 12) 4) anon11_Else_correct))))))))
(let ((anon10_Then_correct true))
(let ((anon9_Else_correct  (and (=> (= (ControlFlow 0 14) (- 0 15)) (forall ((x_1 T@Ref) (x_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1 x_1_1)) (select xs x_1)) (select xs x_1_1)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1 x_1_1)))
 :qid |stdinbpl.444:15|
 :skolemid |82|
))) (=> (forall ((x_1@@0 T@Ref) (x_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= x_1@@0 x_1_1@@0)) (select xs x_1@@0)) (select xs x_1_1@@0)) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= x_1@@0 x_1_1@@0)))
 :qid |stdinbpl.444:15|
 :skolemid |82|
)) (=> (and (and (forall ((x_1@@1 T@Ref) ) (!  (=> (select xs x_1@@1) (and (qpRange1 x_1@@1) (= (invRecv1 x_1@@1) x_1@@1)))
 :qid |stdinbpl.450:22|
 :skolemid |83|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) x_1@@1 f_7))
 :pattern ( (select xs x_1@@1))
)) (forall ((o_4@@5 T@Ref) ) (!  (=> (and (select xs (invRecv1 o_4@@5)) (qpRange1 o_4@@5)) (= (invRecv1 o_4@@5) o_4@@5))
 :qid |stdinbpl.454:22|
 :skolemid |84|
 :pattern ( (invRecv1 o_4@@5))
))) (and (forall ((x_1@@2 T@Ref) ) (!  (=> (select xs x_1@@2) (not (= x_1@@2 null)))
 :qid |stdinbpl.460:22|
 :skolemid |85|
 :pattern ( (select (|PolymorphicMapType_10572_6305_6306#PolymorphicMapType_10572| Heap@@15) x_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) x_1@@2 f_7))
 :pattern ( (select xs x_1@@2))
)) (forall ((o_4@@6 T@Ref) ) (!  (and (=> (and (select xs (invRecv1 o_4@@6)) (qpRange1 o_4@@6)) (and (= (invRecv1 o_4@@6) o_4@@6) (< (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_4@@6 f_7) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@6 f_7)))) (=> (not (and (select xs (invRecv1 o_4@@6)) (qpRange1 o_4@@6))) (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@6 f_7) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_4@@6 f_7))))
 :qid |stdinbpl.466:22|
 :skolemid |86|
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@6 f_7))
)))) (=> (and (and (and (and (forall ((o_4@@7 T@Ref) (f_5@@3 T@Field_10632_53) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ZeroMask) o_4@@7 f_5@@3) (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@0) o_4@@7 f_5@@3)))
 :qid |stdinbpl.470:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| ZeroMask) o_4@@7 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_10593_6627_53#PolymorphicMapType_10593| QPMask@0) o_4@@7 f_5@@3))
)) (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_10645_10646) ) (!  (=> (not (= f_5@@4 f_7)) (= (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.470:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_10593_6627_6628#PolymorphicMapType_10593| QPMask@0) o_4@@8 f_5@@4))
))) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_10632_29133) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.470:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_10593_6627_29133#PolymorphicMapType_10593| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_10632_29266) ) (!  (=> true (= (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.470:29|
 :skolemid |87|
 :pattern ( (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_10593_6627_32812#PolymorphicMapType_10593| QPMask@0) o_4@@10 f_5@@6))
))) (and (state Heap@@15 QPMask@0) (state Heap@@15 QPMask@0))) (and (=> (= (ControlFlow 0 14) 2) anon10_Then_correct) (=> (= (ControlFlow 0 14) 12) anon10_Else_correct))))))))
(let ((anon9_Then_correct true))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (=> (= (ControlFlow 0 16) 1) anon9_Then_correct) (=> (= (ControlFlow 0 16) 14) anon9_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 17) 16)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
