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
(declare-sort T@Field_14168_53 0)
(declare-sort T@Field_14181_14182 0)
(declare-sort T@Field_20426_3442 0)
(declare-sort T@Field_20474_20475 0)
(declare-sort T@FrameType 0)
(declare-sort T@Field_20488_20493 0)
(declare-sort T@Field_8678_8684 0)
(declare-sort T@Field_8678_20493 0)
(declare-sort T@Field_8683_3442 0)
(declare-sort T@Field_8683_8676 0)
(declare-sort T@Field_8683_53 0)
(declare-datatypes ((T@PolymorphicMapType_14129 0)) (((PolymorphicMapType_14129 (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| (Array T@Ref T@Field_14181_14182 Real)) (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| (Array T@Ref T@Field_20426_3442 Real)) (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| (Array T@Ref T@Field_20474_20475 Real)) (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| (Array T@Ref T@Field_8678_8684 Real)) (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| (Array T@Ref T@Field_14168_53 Real)) (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| (Array T@Ref T@Field_8678_20493 Real)) (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| (Array T@Ref T@Field_8683_8676 Real)) (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| (Array T@Ref T@Field_8683_3442 Real)) (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| (Array T@Ref T@Field_8683_53 Real)) (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| (Array T@Ref T@Field_20488_20493 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14657 0)) (((PolymorphicMapType_14657 (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (Array T@Ref T@Field_14181_14182 Bool)) (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (Array T@Ref T@Field_20426_3442 Bool)) (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (Array T@Ref T@Field_14168_53 Bool)) (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (Array T@Ref T@Field_8678_8684 Bool)) (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (Array T@Ref T@Field_8678_20493 Bool)) (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (Array T@Ref T@Field_8683_8676 Bool)) (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (Array T@Ref T@Field_8683_3442 Bool)) (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (Array T@Ref T@Field_8683_53 Bool)) (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (Array T@Ref T@Field_20474_20475 Bool)) (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (Array T@Ref T@Field_20488_20493 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_14108 0)) (((PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| (Array T@Ref T@Field_14168_53 Bool)) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| (Array T@Ref T@Field_14181_14182 T@Ref)) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| (Array T@Ref T@Field_20426_3442 Int)) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| (Array T@Ref T@Field_20474_20475 T@FrameType)) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| (Array T@Ref T@Field_20488_20493 T@PolymorphicMapType_14657)) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| (Array T@Ref T@Field_8678_8684 T@FrameType)) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| (Array T@Ref T@Field_8678_20493 T@PolymorphicMapType_14657)) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| (Array T@Ref T@Field_8683_3442 Int)) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| (Array T@Ref T@Field_8683_8676 T@Ref)) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| (Array T@Ref T@Field_8683_53 Bool)) ) ) ))
(declare-fun $allocated () T@Field_14168_53)
(declare-fun parent () T@Field_14181_14182)
(declare-fun rank () T@Field_20426_3442)
(declare-fun succHeap (T@PolymorphicMapType_14108 T@PolymorphicMapType_14108) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_14108 T@PolymorphicMapType_14108) Bool)
(declare-fun state (T@PolymorphicMapType_14108 T@PolymorphicMapType_14129) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_14129) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_14657)
(declare-fun |Math#min| (Int Int) Int)
(declare-fun uf_bank ((Array T@Ref Bool)) T@Field_20474_20475)
(declare-fun IsPredicateField_8683_8684 (T@Field_20474_20475) Bool)
(declare-fun |uf_bank#trigger_8683| (T@PolymorphicMapType_14108 T@Field_20474_20475) Bool)
(declare-fun |uf_bank#everUsed_8683| (T@Field_20474_20475) Bool)
(declare-fun |Set#Union_8864| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Intersection_8864| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#Singleton_8864| (T@Ref) (Array T@Ref Bool))
(declare-fun |Set#Card_8864| ((Array T@Ref Bool)) Int)
(declare-fun |Math#clip| (Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_14108 T@PolymorphicMapType_14108 T@PolymorphicMapType_14129) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_8683 (T@Field_20474_20475) T@Field_20488_20493)
(declare-fun HasDirectPerm_8683_8684 (T@PolymorphicMapType_14129 T@Ref T@Field_20474_20475) Bool)
(declare-fun IsPredicateField_8678_43796 (T@Field_8678_8684) Bool)
(declare-fun PredicateMaskField_8678 (T@Field_8678_8684) T@Field_8678_20493)
(declare-fun HasDirectPerm_8678_8684 (T@PolymorphicMapType_14129 T@Ref T@Field_8678_8684) Bool)
(declare-fun IsWandField_8683_47466 (T@Field_20474_20475) Bool)
(declare-fun WandMaskField_8683 (T@Field_20474_20475) T@Field_20488_20493)
(declare-fun IsWandField_8678_47109 (T@Field_8678_8684) Bool)
(declare-fun WandMaskField_8678 (T@Field_8678_8684) T@Field_8678_20493)
(declare-fun |uf_bank#sm| ((Array T@Ref Bool)) T@Field_20488_20493)
(declare-fun dummyHeap () T@PolymorphicMapType_14108)
(declare-fun ZeroMask () T@PolymorphicMapType_14129)
(declare-fun InsidePredicate_20474_20474 (T@Field_20474_20475 T@FrameType T@Field_20474_20475 T@FrameType) Bool)
(declare-fun InsidePredicate_14168_14168 (T@Field_8678_8684 T@FrameType T@Field_8678_8684 T@FrameType) Bool)
(declare-fun IsPredicateField_8675_8676 (T@Field_14181_14182) Bool)
(declare-fun IsWandField_8675_8676 (T@Field_14181_14182) Bool)
(declare-fun IsPredicateField_8678_3442 (T@Field_20426_3442) Bool)
(declare-fun IsWandField_8678_3442 (T@Field_20426_3442) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_8683_54369 (T@Field_20488_20493) Bool)
(declare-fun IsWandField_8683_54385 (T@Field_20488_20493) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_8683_53 (T@Field_8683_53) Bool)
(declare-fun IsWandField_8683_53 (T@Field_8683_53) Bool)
(declare-fun IsPredicateField_8683_3442 (T@Field_8683_3442) Bool)
(declare-fun IsWandField_8683_3442 (T@Field_8683_3442) Bool)
(declare-fun IsPredicateField_8683_8676 (T@Field_8683_8676) Bool)
(declare-fun IsWandField_8683_8676 (T@Field_8683_8676) Bool)
(declare-fun IsPredicateField_8675_53538 (T@Field_8678_20493) Bool)
(declare-fun IsWandField_8675_53554 (T@Field_8678_20493) Bool)
(declare-fun IsPredicateField_8675_53 (T@Field_14168_53) Bool)
(declare-fun IsWandField_8675_53 (T@Field_14168_53) Bool)
(declare-fun HasDirectPerm_8683_43551 (T@PolymorphicMapType_14129 T@Ref T@Field_20488_20493) Bool)
(declare-fun HasDirectPerm_8683_53 (T@PolymorphicMapType_14129 T@Ref T@Field_8683_53) Bool)
(declare-fun HasDirectPerm_8683_8676 (T@PolymorphicMapType_14129 T@Ref T@Field_8683_8676) Bool)
(declare-fun HasDirectPerm_8683_3442 (T@PolymorphicMapType_14129 T@Ref T@Field_8683_3442) Bool)
(declare-fun HasDirectPerm_8678_42410 (T@PolymorphicMapType_14129 T@Ref T@Field_8678_20493) Bool)
(declare-fun HasDirectPerm_8678_53 (T@PolymorphicMapType_14129 T@Ref T@Field_14168_53) Bool)
(declare-fun HasDirectPerm_8675_8676 (T@PolymorphicMapType_14129 T@Ref T@Field_14181_14182) Bool)
(declare-fun HasDirectPerm_8678_3442 (T@PolymorphicMapType_14129 T@Ref T@Field_20426_3442) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_14129 T@PolymorphicMapType_14129 T@PolymorphicMapType_14129) Bool)
(declare-fun |Set#Difference_8864| ((Array T@Ref Bool) (Array T@Ref Bool)) (Array T@Ref Bool))
(declare-fun |Set#UnionOne_8864| ((Array T@Ref Bool) T@Ref) (Array T@Ref Bool))
(declare-fun getPredWandId_8683_8684 (T@Field_20474_20475) Int)
(declare-fun |Set#Empty_8864| () (Array T@Ref Bool))
(declare-fun |uf_bank#condqp1| (T@PolymorphicMapType_14108 (Array T@Ref Bool)) Int)
(declare-fun |sk_uf_bank#condqp1| (Int Int) T@Ref)
(declare-fun |uf_bank#condqp2| (T@PolymorphicMapType_14108 (Array T@Ref Bool)) Int)
(declare-fun |sk_uf_bank#condqp2| (Int Int) T@Ref)
(declare-fun InsidePredicate_20474_14168 (T@Field_20474_20475 T@FrameType T@Field_8678_8684 T@FrameType) Bool)
(declare-fun InsidePredicate_14168_20474 (T@Field_8678_8684 T@FrameType T@Field_20474_20475 T@FrameType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_14108) (Heap1 T@PolymorphicMapType_14108) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_14108) (Mask T@PolymorphicMapType_14129) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_14108) (Heap1@@0 T@PolymorphicMapType_14108) (Heap2 T@PolymorphicMapType_14108) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_20488_20493) ) (!  (not (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_20474_20475) ) (!  (not (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_8683_53) ) (!  (not (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_8683_3442) ) (!  (not (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_8683_8676) ) (!  (not (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_8678_20493) ) (!  (not (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((o_2@@5 T@Ref) (f_4@@5 T@Field_8678_8684) ) (!  (not (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| ZeroPMask) o_2@@5 f_4@@5))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| ZeroPMask) o_2@@5 f_4@@5))
)))
(assert (forall ((o_2@@6 T@Ref) (f_4@@6 T@Field_14168_53) ) (!  (not (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| ZeroPMask) o_2@@6 f_4@@6))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| ZeroPMask) o_2@@6 f_4@@6))
)))
(assert (forall ((o_2@@7 T@Ref) (f_4@@7 T@Field_20426_3442) ) (!  (not (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| ZeroPMask) o_2@@7 f_4@@7))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| ZeroPMask) o_2@@7 f_4@@7))
)))
(assert (forall ((o_2@@8 T@Ref) (f_4@@8 T@Field_14181_14182) ) (!  (not (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| ZeroPMask) o_2@@8 f_4@@8))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| ZeroPMask) o_2@@8 f_4@@8))
)))
(assert (forall ((a Int) (b Int) ) (!  (or (= (|Math#min| a b) a) (= (|Math#min| a b) b))
 :qid |stdinbpl.315:15|
 :skolemid |53|
 :pattern ( (|Math#min| a b))
)))
(assert (forall ((b_24 (Array T@Ref Bool)) ) (! (IsPredicateField_8683_8684 (uf_bank b_24))
 :qid |stdinbpl.431:15|
 :skolemid |83|
 :pattern ( (uf_bank b_24))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_14108) (b_24@@0 (Array T@Ref Bool)) ) (! (|uf_bank#everUsed_8683| (uf_bank b_24@@0))
 :qid |stdinbpl.450:15|
 :skolemid |87|
 :pattern ( (|uf_bank#trigger_8683| Heap@@0 (uf_bank b_24@@0)))
)))
(assert (forall ((a@@0 (Array T@Ref Bool)) (b@@0 (Array T@Ref Bool)) ) (! (= (|Set#Union_8864| (|Set#Union_8864| a@@0 b@@0) b@@0) (|Set#Union_8864| a@@0 b@@0))
 :qid |stdinbpl.267:18|
 :skolemid |38|
 :pattern ( (|Set#Union_8864| (|Set#Union_8864| a@@0 b@@0) b@@0))
)))
(assert (forall ((a@@1 (Array T@Ref Bool)) (b@@1 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8864| (|Set#Intersection_8864| a@@1 b@@1) b@@1) (|Set#Intersection_8864| a@@1 b@@1))
 :qid |stdinbpl.271:18|
 :skolemid |40|
 :pattern ( (|Set#Intersection_8864| (|Set#Intersection_8864| a@@1 b@@1) b@@1))
)))
(assert (forall ((r T@Ref) (o T@Ref) ) (! (= (select (|Set#Singleton_8864| r) o) (= r o))
 :qid |stdinbpl.236:18|
 :skolemid |27|
 :pattern ( (select (|Set#Singleton_8864| r) o))
)))
(assert (forall ((a@@2 (Array T@Ref Bool)) (b@@2 (Array T@Ref Bool)) ) (! (= (+ (|Set#Card_8864| (|Set#Union_8864| a@@2 b@@2)) (|Set#Card_8864| (|Set#Intersection_8864| a@@2 b@@2))) (+ (|Set#Card_8864| a@@2) (|Set#Card_8864| b@@2)))
 :qid |stdinbpl.275:18|
 :skolemid |42|
 :pattern ( (|Set#Card_8864| (|Set#Union_8864| a@@2 b@@2)))
 :pattern ( (|Set#Card_8864| (|Set#Intersection_8864| a@@2 b@@2)))
)))
(assert (forall ((a@@3 Int) ) (!  (=> (<= 0 a@@3) (= (|Math#clip| a@@3) a@@3))
 :qid |stdinbpl.318:15|
 :skolemid |54|
 :pattern ( (|Math#clip| a@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_14108) (ExhaleHeap T@PolymorphicMapType_14108) (Mask@@0 T@PolymorphicMapType_14129) (pm_f_18 T@Field_20474_20475) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_8683_8684 Mask@@0 null pm_f_18) (IsPredicateField_8683_8684 pm_f_18)) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@1) null (PredicateMaskField_8683 pm_f_18)) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap) null (PredicateMaskField_8683 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_8683_8684 pm_f_18) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap) null (PredicateMaskField_8683 pm_f_18)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_14108) (ExhaleHeap@@0 T@PolymorphicMapType_14108) (Mask@@1 T@PolymorphicMapType_14129) (pm_f_18@@0 T@Field_8678_8684) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_8678_8684 Mask@@1 null pm_f_18@@0) (IsPredicateField_8678_43796 pm_f_18@@0)) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@2) null (PredicateMaskField_8678 pm_f_18@@0)) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@0) null (PredicateMaskField_8678 pm_f_18@@0)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsPredicateField_8678_43796 pm_f_18@@0) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@0) null (PredicateMaskField_8678 pm_f_18@@0)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_14108) (ExhaleHeap@@1 T@PolymorphicMapType_14108) (Mask@@2 T@PolymorphicMapType_14129) (pm_f_18@@1 T@Field_20474_20475) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_8683_8684 Mask@@2 null pm_f_18@@1) (IsWandField_8683_47466 pm_f_18@@1)) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@3) null (WandMaskField_8683 pm_f_18@@1)) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@1) null (WandMaskField_8683 pm_f_18@@1)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (IsWandField_8683_47466 pm_f_18@@1) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@1) null (WandMaskField_8683 pm_f_18@@1)))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_14108) (ExhaleHeap@@2 T@PolymorphicMapType_14108) (Mask@@3 T@PolymorphicMapType_14129) (pm_f_18@@2 T@Field_8678_8684) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_8678_8684 Mask@@3 null pm_f_18@@2) (IsWandField_8678_47109 pm_f_18@@2)) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@4) null (WandMaskField_8678 pm_f_18@@2)) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@2) null (WandMaskField_8678 pm_f_18@@2)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (IsWandField_8678_47109 pm_f_18@@2) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@2) null (WandMaskField_8678 pm_f_18@@2)))
)))
(assert (forall ((b_24@@1 (Array T@Ref Bool)) (b2 (Array T@Ref Bool)) ) (!  (=> (= (uf_bank b_24@@1) (uf_bank b2)) (= b_24@@1 b2))
 :qid |stdinbpl.441:15|
 :skolemid |85|
 :pattern ( (uf_bank b_24@@1) (uf_bank b2))
)))
(assert (forall ((b_24@@2 (Array T@Ref Bool)) (b2@@0 (Array T@Ref Bool)) ) (!  (=> (= (|uf_bank#sm| b_24@@2) (|uf_bank#sm| b2@@0)) (= b_24@@2 b2@@0))
 :qid |stdinbpl.445:15|
 :skolemid |86|
 :pattern ( (|uf_bank#sm| b_24@@2) (|uf_bank#sm| b2@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_14108) (ExhaleHeap@@3 T@PolymorphicMapType_14108) (Mask@@4 T@PolymorphicMapType_14129) (pm_f_18@@3 T@Field_20474_20475) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (=> (and (HasDirectPerm_8683_8684 Mask@@4 null pm_f_18@@3) (IsPredicateField_8683_8684 pm_f_18@@3)) (and (and (and (and (and (and (and (and (and (forall ((o2_18 T@Ref) (f_48 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18 f_48) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@5) o2_18 f_48) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18 f_48)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18 f_48))
)) (forall ((o2_18@@0 T@Ref) (f_48@@0 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@0 f_48@@0) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@5) o2_18@@0 f_48@@0) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@0 f_48@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@0 f_48@@0))
))) (forall ((o2_18@@1 T@Ref) (f_48@@1 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@1 f_48@@1) (= (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@5) o2_18@@1 f_48@@1) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@1 f_48@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@1 f_48@@1))
))) (forall ((o2_18@@2 T@Ref) (f_48@@2 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@2 f_48@@2) (= (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@5) o2_18@@2 f_48@@2) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@2 f_48@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@2 f_48@@2))
))) (forall ((o2_18@@3 T@Ref) (f_48@@3 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@3 f_48@@3) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@5) o2_18@@3 f_48@@3) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@3 f_48@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@3 f_48@@3))
))) (forall ((o2_18@@4 T@Ref) (f_48@@4 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@4 f_48@@4) (= (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@5) o2_18@@4 f_48@@4) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@4 f_48@@4)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@4 f_48@@4))
))) (forall ((o2_18@@5 T@Ref) (f_48@@5 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@5 f_48@@5) (= (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@5) o2_18@@5 f_48@@5) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@5 f_48@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@5 f_48@@5))
))) (forall ((o2_18@@6 T@Ref) (f_48@@6 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@6 f_48@@6) (= (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@5) o2_18@@6 f_48@@6) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@6 f_48@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@6 f_48@@6))
))) (forall ((o2_18@@7 T@Ref) (f_48@@7 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@7 f_48@@7) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@5) o2_18@@7 f_48@@7) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@7 f_48@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@7 f_48@@7))
))) (forall ((o2_18@@8 T@Ref) (f_48@@8 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) null (PredicateMaskField_8683 pm_f_18@@3))) o2_18@@8 f_48@@8) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@5) o2_18@@8 f_48@@8) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@8 f_48@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@3) o2_18@@8 f_48@@8))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@4) (IsPredicateField_8683_8684 pm_f_18@@3))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_14108) (ExhaleHeap@@4 T@PolymorphicMapType_14108) (Mask@@5 T@PolymorphicMapType_14129) (pm_f_18@@4 T@Field_8678_8684) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (=> (and (HasDirectPerm_8678_8684 Mask@@5 null pm_f_18@@4) (IsPredicateField_8678_43796 pm_f_18@@4)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@9 T@Ref) (f_48@@9 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@9 f_48@@9) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@6) o2_18@@9 f_48@@9) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@9 f_48@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@9 f_48@@9))
)) (forall ((o2_18@@10 T@Ref) (f_48@@10 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@10 f_48@@10) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@6) o2_18@@10 f_48@@10) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@10 f_48@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@10 f_48@@10))
))) (forall ((o2_18@@11 T@Ref) (f_48@@11 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@11 f_48@@11) (= (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@6) o2_18@@11 f_48@@11) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@11 f_48@@11)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@11 f_48@@11))
))) (forall ((o2_18@@12 T@Ref) (f_48@@12 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@12 f_48@@12) (= (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@6) o2_18@@12 f_48@@12) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@12 f_48@@12)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@12 f_48@@12))
))) (forall ((o2_18@@13 T@Ref) (f_48@@13 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@13 f_48@@13) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) o2_18@@13 f_48@@13) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@13 f_48@@13)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@13 f_48@@13))
))) (forall ((o2_18@@14 T@Ref) (f_48@@14 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@14 f_48@@14) (= (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@6) o2_18@@14 f_48@@14) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@14 f_48@@14)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@14 f_48@@14))
))) (forall ((o2_18@@15 T@Ref) (f_48@@15 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@15 f_48@@15) (= (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@6) o2_18@@15 f_48@@15) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@15 f_48@@15)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@15 f_48@@15))
))) (forall ((o2_18@@16 T@Ref) (f_48@@16 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@16 f_48@@16) (= (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@6) o2_18@@16 f_48@@16) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@16 f_48@@16)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@16 f_48@@16))
))) (forall ((o2_18@@17 T@Ref) (f_48@@17 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@17 f_48@@17) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@6) o2_18@@17 f_48@@17) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@17 f_48@@17)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@17 f_48@@17))
))) (forall ((o2_18@@18 T@Ref) (f_48@@18 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@6) null (PredicateMaskField_8678 pm_f_18@@4))) o2_18@@18 f_48@@18) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@6) o2_18@@18 f_48@@18) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@18 f_48@@18)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@4) o2_18@@18 f_48@@18))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@5) (IsPredicateField_8678_43796 pm_f_18@@4))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_14108) (ExhaleHeap@@5 T@PolymorphicMapType_14108) (Mask@@6 T@PolymorphicMapType_14129) (pm_f_18@@5 T@Field_20474_20475) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (=> (and (HasDirectPerm_8683_8684 Mask@@6 null pm_f_18@@5) (IsWandField_8683_47466 pm_f_18@@5)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@19 T@Ref) (f_48@@19 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@19 f_48@@19) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@7) o2_18@@19 f_48@@19) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@19 f_48@@19)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@19 f_48@@19))
)) (forall ((o2_18@@20 T@Ref) (f_48@@20 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@20 f_48@@20) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@7) o2_18@@20 f_48@@20) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@20 f_48@@20)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@20 f_48@@20))
))) (forall ((o2_18@@21 T@Ref) (f_48@@21 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@21 f_48@@21) (= (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@7) o2_18@@21 f_48@@21) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@21 f_48@@21)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@21 f_48@@21))
))) (forall ((o2_18@@22 T@Ref) (f_48@@22 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@22 f_48@@22) (= (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@7) o2_18@@22 f_48@@22) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@22 f_48@@22)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@22 f_48@@22))
))) (forall ((o2_18@@23 T@Ref) (f_48@@23 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@23 f_48@@23) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@7) o2_18@@23 f_48@@23) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@23 f_48@@23)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@23 f_48@@23))
))) (forall ((o2_18@@24 T@Ref) (f_48@@24 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@24 f_48@@24) (= (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@7) o2_18@@24 f_48@@24) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@24 f_48@@24)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@24 f_48@@24))
))) (forall ((o2_18@@25 T@Ref) (f_48@@25 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@25 f_48@@25) (= (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@7) o2_18@@25 f_48@@25) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@25 f_48@@25)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@25 f_48@@25))
))) (forall ((o2_18@@26 T@Ref) (f_48@@26 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@26 f_48@@26) (= (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@7) o2_18@@26 f_48@@26) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@26 f_48@@26)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@26 f_48@@26))
))) (forall ((o2_18@@27 T@Ref) (f_48@@27 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@27 f_48@@27) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@7) o2_18@@27 f_48@@27) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@27 f_48@@27)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@27 f_48@@27))
))) (forall ((o2_18@@28 T@Ref) (f_48@@28 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) null (WandMaskField_8683 pm_f_18@@5))) o2_18@@28 f_48@@28) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@7) o2_18@@28 f_48@@28) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@28 f_48@@28)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@5) o2_18@@28 f_48@@28))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@6) (IsWandField_8683_47466 pm_f_18@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_14108) (ExhaleHeap@@6 T@PolymorphicMapType_14108) (Mask@@7 T@PolymorphicMapType_14129) (pm_f_18@@6 T@Field_8678_8684) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (=> (and (HasDirectPerm_8678_8684 Mask@@7 null pm_f_18@@6) (IsWandField_8678_47109 pm_f_18@@6)) (and (and (and (and (and (and (and (and (and (forall ((o2_18@@29 T@Ref) (f_48@@29 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@29 f_48@@29) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@8) o2_18@@29 f_48@@29) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@29 f_48@@29)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@29 f_48@@29))
)) (forall ((o2_18@@30 T@Ref) (f_48@@30 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@30 f_48@@30) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@8) o2_18@@30 f_48@@30) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@30 f_48@@30)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@30 f_48@@30))
))) (forall ((o2_18@@31 T@Ref) (f_48@@31 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@31 f_48@@31) (= (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@8) o2_18@@31 f_48@@31) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@31 f_48@@31)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@31 f_48@@31))
))) (forall ((o2_18@@32 T@Ref) (f_48@@32 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@32 f_48@@32) (= (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@8) o2_18@@32 f_48@@32) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@32 f_48@@32)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@32 f_48@@32))
))) (forall ((o2_18@@33 T@Ref) (f_48@@33 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@33 f_48@@33) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) o2_18@@33 f_48@@33) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@33 f_48@@33)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@33 f_48@@33))
))) (forall ((o2_18@@34 T@Ref) (f_48@@34 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@34 f_48@@34) (= (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@8) o2_18@@34 f_48@@34) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@34 f_48@@34)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@34 f_48@@34))
))) (forall ((o2_18@@35 T@Ref) (f_48@@35 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@35 f_48@@35) (= (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@8) o2_18@@35 f_48@@35) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@35 f_48@@35)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@35 f_48@@35))
))) (forall ((o2_18@@36 T@Ref) (f_48@@36 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@36 f_48@@36) (= (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@8) o2_18@@36 f_48@@36) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@36 f_48@@36)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@36 f_48@@36))
))) (forall ((o2_18@@37 T@Ref) (f_48@@37 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@37 f_48@@37) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@8) o2_18@@37 f_48@@37) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@37 f_48@@37)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@37 f_48@@37))
))) (forall ((o2_18@@38 T@Ref) (f_48@@38 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@8) null (WandMaskField_8678 pm_f_18@@6))) o2_18@@38 f_48@@38) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@8) o2_18@@38 f_48@@38) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@38 f_48@@38)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@6) o2_18@@38 f_48@@38))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@7) (IsWandField_8678_47109 pm_f_18@@6))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@9 T@PolymorphicMapType_14108) (ExhaleHeap@@7 T@PolymorphicMapType_14108) (Mask@@8 T@PolymorphicMapType_14129) (o_42 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (=> (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@9) o_42 $allocated) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@7) o_42 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@8) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@7) o_42 $allocated))
)))
(assert (forall ((p T@Field_20474_20475) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_20474_20474 p v_1 p w))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_20474_20474 p v_1 p w))
)))
(assert (forall ((p@@0 T@Field_8678_8684) (v_1@@0 T@FrameType) (w@@0 T@FrameType) ) (!  (not (InsidePredicate_14168_14168 p@@0 v_1@@0 p@@0 w@@0))
 :qid |stdinbpl.213:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_14168_14168 p@@0 v_1@@0 p@@0 w@@0))
)))
(assert  (not (IsPredicateField_8675_8676 parent)))
(assert  (not (IsWandField_8675_8676 parent)))
(assert  (not (IsPredicateField_8678_3442 rank)))
(assert  (not (IsWandField_8678_3442 rank)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_14108) (ExhaleHeap@@8 T@PolymorphicMapType_14108) (Mask@@9 T@PolymorphicMapType_14129) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9) (succHeap Heap@@10 ExhaleHeap@@8))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_14129) (o_2@@9 T@Ref) (f_4@@9 T@Field_20488_20493) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@@10) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_8683_54369 f_4@@9))) (not (IsWandField_8683_54385 f_4@@9))) (<= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@@10) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@@10) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_14129) (o_2@@10 T@Ref) (f_4@@10 T@Field_8683_53) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@@11) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_8683_53 f_4@@10))) (not (IsWandField_8683_53 f_4@@10))) (<= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@@11) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@@11) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_14129) (o_2@@11 T@Ref) (f_4@@11 T@Field_20474_20475) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@@12) o_2@@11 f_4@@11) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_8683_8684 f_4@@11))) (not (IsWandField_8683_47466 f_4@@11))) (<= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@@12) o_2@@11 f_4@@11) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@@12) o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_14129) (o_2@@12 T@Ref) (f_4@@12 T@Field_8683_3442) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@@13) o_2@@12 f_4@@12) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_8683_3442 f_4@@12))) (not (IsWandField_8683_3442 f_4@@12))) (<= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@@13) o_2@@12 f_4@@12) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@@13) o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_14129) (o_2@@13 T@Ref) (f_4@@13 T@Field_8683_8676) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@@14) o_2@@13 f_4@@13) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_8683_8676 f_4@@13))) (not (IsWandField_8683_8676 f_4@@13))) (<= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@@14) o_2@@13 f_4@@13) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@@14) o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_14129) (o_2@@14 T@Ref) (f_4@@14 T@Field_8678_20493) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@@15) o_2@@14 f_4@@14) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_8675_53538 f_4@@14))) (not (IsWandField_8675_53554 f_4@@14))) (<= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@@15) o_2@@14 f_4@@14) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@@15) o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_14129) (o_2@@15 T@Ref) (f_4@@15 T@Field_14168_53) ) (!  (=> (GoodMask Mask@@16) (and (>= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@@16) o_2@@15 f_4@@15) NoPerm) (=> (and (and (and (GoodMask Mask@@16) AssumePermUpperBound) (not (IsPredicateField_8675_53 f_4@@15))) (not (IsWandField_8675_53 f_4@@15))) (<= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@@16) o_2@@15 f_4@@15) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@16) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@@16) o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_14129) (o_2@@16 T@Ref) (f_4@@16 T@Field_8678_8684) ) (!  (=> (GoodMask Mask@@17) (and (>= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@@17) o_2@@16 f_4@@16) NoPerm) (=> (and (and (and (GoodMask Mask@@17) AssumePermUpperBound) (not (IsPredicateField_8678_43796 f_4@@16))) (not (IsWandField_8678_47109 f_4@@16))) (<= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@@17) o_2@@16 f_4@@16) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@17) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@@17) o_2@@16 f_4@@16))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_14129) (o_2@@17 T@Ref) (f_4@@17 T@Field_20426_3442) ) (!  (=> (GoodMask Mask@@18) (and (>= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@@18) o_2@@17 f_4@@17) NoPerm) (=> (and (and (and (GoodMask Mask@@18) AssumePermUpperBound) (not (IsPredicateField_8678_3442 f_4@@17))) (not (IsWandField_8678_3442 f_4@@17))) (<= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@@18) o_2@@17 f_4@@17) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@18) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@@18) o_2@@17 f_4@@17))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_14129) (o_2@@18 T@Ref) (f_4@@18 T@Field_14181_14182) ) (!  (=> (GoodMask Mask@@19) (and (>= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@@19) o_2@@18 f_4@@18) NoPerm) (=> (and (and (and (GoodMask Mask@@19) AssumePermUpperBound) (not (IsPredicateField_8675_8676 f_4@@18))) (not (IsWandField_8675_8676 f_4@@18))) (<= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@@19) o_2@@18 f_4@@18) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@19) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@@19) o_2@@18 f_4@@18))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_14129) (o_2@@19 T@Ref) (f_4@@19 T@Field_20488_20493) ) (! (= (HasDirectPerm_8683_43551 Mask@@20 o_2@@19 f_4@@19) (> (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@@20) o_2@@19 f_4@@19) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8683_43551 Mask@@20 o_2@@19 f_4@@19))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_14129) (o_2@@20 T@Ref) (f_4@@20 T@Field_8683_53) ) (! (= (HasDirectPerm_8683_53 Mask@@21 o_2@@20 f_4@@20) (> (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@@21) o_2@@20 f_4@@20) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8683_53 Mask@@21 o_2@@20 f_4@@20))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_14129) (o_2@@21 T@Ref) (f_4@@21 T@Field_20474_20475) ) (! (= (HasDirectPerm_8683_8684 Mask@@22 o_2@@21 f_4@@21) (> (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@@22) o_2@@21 f_4@@21) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8683_8684 Mask@@22 o_2@@21 f_4@@21))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_14129) (o_2@@22 T@Ref) (f_4@@22 T@Field_8683_8676) ) (! (= (HasDirectPerm_8683_8676 Mask@@23 o_2@@22 f_4@@22) (> (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@@23) o_2@@22 f_4@@22) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8683_8676 Mask@@23 o_2@@22 f_4@@22))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_14129) (o_2@@23 T@Ref) (f_4@@23 T@Field_8683_3442) ) (! (= (HasDirectPerm_8683_3442 Mask@@24 o_2@@23 f_4@@23) (> (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@@24) o_2@@23 f_4@@23) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8683_3442 Mask@@24 o_2@@23 f_4@@23))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_14129) (o_2@@24 T@Ref) (f_4@@24 T@Field_8678_20493) ) (! (= (HasDirectPerm_8678_42410 Mask@@25 o_2@@24 f_4@@24) (> (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@@25) o_2@@24 f_4@@24) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8678_42410 Mask@@25 o_2@@24 f_4@@24))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_14129) (o_2@@25 T@Ref) (f_4@@25 T@Field_14168_53) ) (! (= (HasDirectPerm_8678_53 Mask@@26 o_2@@25 f_4@@25) (> (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@@26) o_2@@25 f_4@@25) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8678_53 Mask@@26 o_2@@25 f_4@@25))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_14129) (o_2@@26 T@Ref) (f_4@@26 T@Field_8678_8684) ) (! (= (HasDirectPerm_8678_8684 Mask@@27 o_2@@26 f_4@@26) (> (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@@27) o_2@@26 f_4@@26) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8678_8684 Mask@@27 o_2@@26 f_4@@26))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_14129) (o_2@@27 T@Ref) (f_4@@27 T@Field_14181_14182) ) (! (= (HasDirectPerm_8675_8676 Mask@@28 o_2@@27 f_4@@27) (> (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@@28) o_2@@27 f_4@@27) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8675_8676 Mask@@28 o_2@@27 f_4@@27))
)))
(assert (forall ((Mask@@29 T@PolymorphicMapType_14129) (o_2@@28 T@Ref) (f_4@@28 T@Field_20426_3442) ) (! (= (HasDirectPerm_8678_3442 Mask@@29 o_2@@28 f_4@@28) (> (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@@29) o_2@@28 f_4@@28) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_8678_3442 Mask@@29 o_2@@28 f_4@@28))
)))
(assert (forall ((p@@1 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@1 f_6) (ite (> p@@1 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.201:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@1 f_6))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_14108) (ExhaleHeap@@9 T@PolymorphicMapType_14108) (Mask@@30 T@PolymorphicMapType_14129) (o_42@@0 T@Ref) (f_48@@39 T@Field_20488_20493) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (=> (HasDirectPerm_8683_43551 Mask@@30 o_42@@0 f_48@@39) (= (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@11) o_42@@0 f_48@@39) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@9) o_42@@0 f_48@@39))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@30) (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| ExhaleHeap@@9) o_42@@0 f_48@@39))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_14108) (ExhaleHeap@@10 T@PolymorphicMapType_14108) (Mask@@31 T@PolymorphicMapType_14129) (o_42@@1 T@Ref) (f_48@@40 T@Field_8683_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (=> (HasDirectPerm_8683_53 Mask@@31 o_42@@1 f_48@@40) (= (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@12) o_42@@1 f_48@@40) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@10) o_42@@1 f_48@@40))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@10 Mask@@31) (select (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| ExhaleHeap@@10) o_42@@1 f_48@@40))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_14108) (ExhaleHeap@@11 T@PolymorphicMapType_14108) (Mask@@32 T@PolymorphicMapType_14129) (o_42@@2 T@Ref) (f_48@@41 T@Field_20474_20475) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (=> (HasDirectPerm_8683_8684 Mask@@32 o_42@@2 f_48@@41) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@13) o_42@@2 f_48@@41) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@11) o_42@@2 f_48@@41))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@11 Mask@@32) (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| ExhaleHeap@@11) o_42@@2 f_48@@41))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_14108) (ExhaleHeap@@12 T@PolymorphicMapType_14108) (Mask@@33 T@PolymorphicMapType_14129) (o_42@@3 T@Ref) (f_48@@42 T@Field_8683_8676) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (=> (HasDirectPerm_8683_8676 Mask@@33 o_42@@3 f_48@@42) (= (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@14) o_42@@3 f_48@@42) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@12) o_42@@3 f_48@@42))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@12 Mask@@33) (select (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| ExhaleHeap@@12) o_42@@3 f_48@@42))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_14108) (ExhaleHeap@@13 T@PolymorphicMapType_14108) (Mask@@34 T@PolymorphicMapType_14129) (o_42@@4 T@Ref) (f_48@@43 T@Field_8683_3442) ) (!  (=> (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (=> (HasDirectPerm_8683_3442 Mask@@34 o_42@@4 f_48@@43) (= (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@15) o_42@@4 f_48@@43) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@13) o_42@@4 f_48@@43))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@15 ExhaleHeap@@13 Mask@@34) (select (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| ExhaleHeap@@13) o_42@@4 f_48@@43))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_14108) (ExhaleHeap@@14 T@PolymorphicMapType_14108) (Mask@@35 T@PolymorphicMapType_14129) (o_42@@5 T@Ref) (f_48@@44 T@Field_8678_20493) ) (!  (=> (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (=> (HasDirectPerm_8678_42410 Mask@@35 o_42@@5 f_48@@44) (= (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@16) o_42@@5 f_48@@44) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@14) o_42@@5 f_48@@44))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@16 ExhaleHeap@@14 Mask@@35) (select (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| ExhaleHeap@@14) o_42@@5 f_48@@44))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_14108) (ExhaleHeap@@15 T@PolymorphicMapType_14108) (Mask@@36 T@PolymorphicMapType_14129) (o_42@@6 T@Ref) (f_48@@45 T@Field_14168_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (=> (HasDirectPerm_8678_53 Mask@@36 o_42@@6 f_48@@45) (= (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@17) o_42@@6 f_48@@45) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@15) o_42@@6 f_48@@45))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@17 ExhaleHeap@@15 Mask@@36) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| ExhaleHeap@@15) o_42@@6 f_48@@45))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_14108) (ExhaleHeap@@16 T@PolymorphicMapType_14108) (Mask@@37 T@PolymorphicMapType_14129) (o_42@@7 T@Ref) (f_48@@46 T@Field_8678_8684) ) (!  (=> (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (=> (HasDirectPerm_8678_8684 Mask@@37 o_42@@7 f_48@@46) (= (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@18) o_42@@7 f_48@@46) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@16) o_42@@7 f_48@@46))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@18 ExhaleHeap@@16 Mask@@37) (select (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| ExhaleHeap@@16) o_42@@7 f_48@@46))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_14108) (ExhaleHeap@@17 T@PolymorphicMapType_14108) (Mask@@38 T@PolymorphicMapType_14129) (o_42@@8 T@Ref) (f_48@@47 T@Field_14181_14182) ) (!  (=> (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (=> (HasDirectPerm_8675_8676 Mask@@38 o_42@@8 f_48@@47) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@19) o_42@@8 f_48@@47) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@17) o_42@@8 f_48@@47))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@19 ExhaleHeap@@17 Mask@@38) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| ExhaleHeap@@17) o_42@@8 f_48@@47))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_14108) (ExhaleHeap@@18 T@PolymorphicMapType_14108) (Mask@@39 T@PolymorphicMapType_14129) (o_42@@9 T@Ref) (f_48@@48 T@Field_20426_3442) ) (!  (=> (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (=> (HasDirectPerm_8678_3442 Mask@@39 o_42@@9 f_48@@48) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@20) o_42@@9 f_48@@48) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@18) o_42@@9 f_48@@48))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@20 ExhaleHeap@@18 Mask@@39) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| ExhaleHeap@@18) o_42@@9 f_48@@48))
)))
(assert (forall ((o_2@@29 T@Ref) (f_4@@29 T@Field_20488_20493) ) (! (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| ZeroMask) o_2@@29 f_4@@29) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| ZeroMask) o_2@@29 f_4@@29))
)))
(assert (forall ((o_2@@30 T@Ref) (f_4@@30 T@Field_8683_53) ) (! (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| ZeroMask) o_2@@30 f_4@@30) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| ZeroMask) o_2@@30 f_4@@30))
)))
(assert (forall ((o_2@@31 T@Ref) (f_4@@31 T@Field_20474_20475) ) (! (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ZeroMask) o_2@@31 f_4@@31) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ZeroMask) o_2@@31 f_4@@31))
)))
(assert (forall ((o_2@@32 T@Ref) (f_4@@32 T@Field_8683_3442) ) (! (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| ZeroMask) o_2@@32 f_4@@32) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| ZeroMask) o_2@@32 f_4@@32))
)))
(assert (forall ((o_2@@33 T@Ref) (f_4@@33 T@Field_8683_8676) ) (! (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| ZeroMask) o_2@@33 f_4@@33) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| ZeroMask) o_2@@33 f_4@@33))
)))
(assert (forall ((o_2@@34 T@Ref) (f_4@@34 T@Field_8678_20493) ) (! (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| ZeroMask) o_2@@34 f_4@@34) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| ZeroMask) o_2@@34 f_4@@34))
)))
(assert (forall ((o_2@@35 T@Ref) (f_4@@35 T@Field_14168_53) ) (! (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| ZeroMask) o_2@@35 f_4@@35) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| ZeroMask) o_2@@35 f_4@@35))
)))
(assert (forall ((o_2@@36 T@Ref) (f_4@@36 T@Field_8678_8684) ) (! (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| ZeroMask) o_2@@36 f_4@@36) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| ZeroMask) o_2@@36 f_4@@36))
)))
(assert (forall ((o_2@@37 T@Ref) (f_4@@37 T@Field_20426_3442) ) (! (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| ZeroMask) o_2@@37 f_4@@37) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| ZeroMask) o_2@@37 f_4@@37))
)))
(assert (forall ((o_2@@38 T@Ref) (f_4@@38 T@Field_14181_14182) ) (! (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| ZeroMask) o_2@@38 f_4@@38) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| ZeroMask) o_2@@38 f_4@@38))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_14129) (SummandMask1 T@PolymorphicMapType_14129) (SummandMask2 T@PolymorphicMapType_14129) (o_2@@39 T@Ref) (f_4@@39 T@Field_20488_20493) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| ResultMask) o_2@@39 f_4@@39) (+ (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| SummandMask1) o_2@@39 f_4@@39) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| SummandMask2) o_2@@39 f_4@@39))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| ResultMask) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| SummandMask1) o_2@@39 f_4@@39))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| SummandMask2) o_2@@39 f_4@@39))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_14129) (SummandMask1@@0 T@PolymorphicMapType_14129) (SummandMask2@@0 T@PolymorphicMapType_14129) (o_2@@40 T@Ref) (f_4@@40 T@Field_8683_53) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| ResultMask@@0) o_2@@40 f_4@@40) (+ (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| SummandMask1@@0) o_2@@40 f_4@@40) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| SummandMask2@@0) o_2@@40 f_4@@40))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| ResultMask@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| SummandMask1@@0) o_2@@40 f_4@@40))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| SummandMask2@@0) o_2@@40 f_4@@40))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_14129) (SummandMask1@@1 T@PolymorphicMapType_14129) (SummandMask2@@1 T@PolymorphicMapType_14129) (o_2@@41 T@Ref) (f_4@@41 T@Field_20474_20475) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ResultMask@@1) o_2@@41 f_4@@41) (+ (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| SummandMask1@@1) o_2@@41 f_4@@41) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| SummandMask2@@1) o_2@@41 f_4@@41))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ResultMask@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| SummandMask1@@1) o_2@@41 f_4@@41))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| SummandMask2@@1) o_2@@41 f_4@@41))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_14129) (SummandMask1@@2 T@PolymorphicMapType_14129) (SummandMask2@@2 T@PolymorphicMapType_14129) (o_2@@42 T@Ref) (f_4@@42 T@Field_8683_3442) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| ResultMask@@2) o_2@@42 f_4@@42) (+ (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| SummandMask1@@2) o_2@@42 f_4@@42) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| SummandMask2@@2) o_2@@42 f_4@@42))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| ResultMask@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| SummandMask1@@2) o_2@@42 f_4@@42))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| SummandMask2@@2) o_2@@42 f_4@@42))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_14129) (SummandMask1@@3 T@PolymorphicMapType_14129) (SummandMask2@@3 T@PolymorphicMapType_14129) (o_2@@43 T@Ref) (f_4@@43 T@Field_8683_8676) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| ResultMask@@3) o_2@@43 f_4@@43) (+ (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| SummandMask1@@3) o_2@@43 f_4@@43) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| SummandMask2@@3) o_2@@43 f_4@@43))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| ResultMask@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| SummandMask1@@3) o_2@@43 f_4@@43))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| SummandMask2@@3) o_2@@43 f_4@@43))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_14129) (SummandMask1@@4 T@PolymorphicMapType_14129) (SummandMask2@@4 T@PolymorphicMapType_14129) (o_2@@44 T@Ref) (f_4@@44 T@Field_8678_20493) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| ResultMask@@4) o_2@@44 f_4@@44) (+ (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| SummandMask1@@4) o_2@@44 f_4@@44) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| SummandMask2@@4) o_2@@44 f_4@@44))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| ResultMask@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| SummandMask1@@4) o_2@@44 f_4@@44))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| SummandMask2@@4) o_2@@44 f_4@@44))
)))
(assert (forall ((ResultMask@@5 T@PolymorphicMapType_14129) (SummandMask1@@5 T@PolymorphicMapType_14129) (SummandMask2@@5 T@PolymorphicMapType_14129) (o_2@@45 T@Ref) (f_4@@45 T@Field_14168_53) ) (!  (=> (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| ResultMask@@5) o_2@@45 f_4@@45) (+ (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| SummandMask1@@5) o_2@@45 f_4@@45) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| SummandMask2@@5) o_2@@45 f_4@@45))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| ResultMask@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| SummandMask1@@5) o_2@@45 f_4@@45))
 :pattern ( (sumMask ResultMask@@5 SummandMask1@@5 SummandMask2@@5) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| SummandMask2@@5) o_2@@45 f_4@@45))
)))
(assert (forall ((ResultMask@@6 T@PolymorphicMapType_14129) (SummandMask1@@6 T@PolymorphicMapType_14129) (SummandMask2@@6 T@PolymorphicMapType_14129) (o_2@@46 T@Ref) (f_4@@46 T@Field_8678_8684) ) (!  (=> (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| ResultMask@@6) o_2@@46 f_4@@46) (+ (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| SummandMask1@@6) o_2@@46 f_4@@46) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| SummandMask2@@6) o_2@@46 f_4@@46))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| ResultMask@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| SummandMask1@@6) o_2@@46 f_4@@46))
 :pattern ( (sumMask ResultMask@@6 SummandMask1@@6 SummandMask2@@6) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| SummandMask2@@6) o_2@@46 f_4@@46))
)))
(assert (forall ((ResultMask@@7 T@PolymorphicMapType_14129) (SummandMask1@@7 T@PolymorphicMapType_14129) (SummandMask2@@7 T@PolymorphicMapType_14129) (o_2@@47 T@Ref) (f_4@@47 T@Field_20426_3442) ) (!  (=> (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| ResultMask@@7) o_2@@47 f_4@@47) (+ (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| SummandMask1@@7) o_2@@47 f_4@@47) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| SummandMask2@@7) o_2@@47 f_4@@47))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| ResultMask@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| SummandMask1@@7) o_2@@47 f_4@@47))
 :pattern ( (sumMask ResultMask@@7 SummandMask1@@7 SummandMask2@@7) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| SummandMask2@@7) o_2@@47 f_4@@47))
)))
(assert (forall ((ResultMask@@8 T@PolymorphicMapType_14129) (SummandMask1@@8 T@PolymorphicMapType_14129) (SummandMask2@@8 T@PolymorphicMapType_14129) (o_2@@48 T@Ref) (f_4@@48 T@Field_14181_14182) ) (!  (=> (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| ResultMask@@8) o_2@@48 f_4@@48) (+ (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| SummandMask1@@8) o_2@@48 f_4@@48) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| SummandMask2@@8) o_2@@48 f_4@@48))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| ResultMask@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| SummandMask1@@8) o_2@@48 f_4@@48))
 :pattern ( (sumMask ResultMask@@8 SummandMask1@@8 SummandMask2@@8) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| SummandMask2@@8) o_2@@48 f_4@@48))
)))
(assert (forall ((a@@4 (Array T@Ref Bool)) (b@@3 (Array T@Ref Bool)) (o@@0 T@Ref) ) (! (= (select (|Set#Intersection_8864| a@@4 b@@3) o@@0)  (and (select a@@4 o@@0) (select b@@3 o@@0)))
 :qid |stdinbpl.264:18|
 :skolemid |37|
 :pattern ( (select (|Set#Intersection_8864| a@@4 b@@3) o@@0))
 :pattern ( (|Set#Intersection_8864| a@@4 b@@3) (select a@@4 o@@0))
 :pattern ( (|Set#Intersection_8864| a@@4 b@@3) (select b@@3 o@@0))
)))
(assert (forall ((a@@5 (Array T@Ref Bool)) (b@@4 (Array T@Ref Bool)) (o@@1 T@Ref) ) (! (= (select (|Set#Difference_8864| a@@5 b@@4) o@@1)  (and (select a@@5 o@@1) (not (select b@@4 o@@1))))
 :qid |stdinbpl.279:18|
 :skolemid |43|
 :pattern ( (select (|Set#Difference_8864| a@@5 b@@4) o@@1))
 :pattern ( (|Set#Difference_8864| a@@5 b@@4) (select a@@5 o@@1))
)))
(assert (forall ((a@@6 (Array T@Ref Bool)) (x T@Ref) (y T@Ref) ) (!  (=> (select a@@6 y) (select (|Set#UnionOne_8864| a@@6 x) y))
 :qid |stdinbpl.244:18|
 :skolemid |31|
 :pattern ( (|Set#UnionOne_8864| a@@6 x) (select a@@6 y))
)))
(assert (forall ((a@@7 (Array T@Ref Bool)) (b@@5 (Array T@Ref Bool)) (y@@0 T@Ref) ) (!  (=> (select a@@7 y@@0) (select (|Set#Union_8864| a@@7 b@@5) y@@0))
 :qid |stdinbpl.254:18|
 :skolemid |35|
 :pattern ( (|Set#Union_8864| a@@7 b@@5) (select a@@7 y@@0))
)))
(assert (forall ((a@@8 (Array T@Ref Bool)) (b@@6 (Array T@Ref Bool)) (y@@1 T@Ref) ) (!  (=> (select b@@6 y@@1) (select (|Set#Union_8864| a@@8 b@@6) y@@1))
 :qid |stdinbpl.256:18|
 :skolemid |36|
 :pattern ( (|Set#Union_8864| a@@8 b@@6) (select b@@6 y@@1))
)))
(assert (forall ((a@@9 (Array T@Ref Bool)) (x@@0 T@Ref) (o@@2 T@Ref) ) (! (= (select (|Set#UnionOne_8864| a@@9 x@@0) o@@2)  (or (= o@@2 x@@0) (select a@@9 o@@2)))
 :qid |stdinbpl.240:18|
 :skolemid |29|
 :pattern ( (select (|Set#UnionOne_8864| a@@9 x@@0) o@@2))
)))
(assert (forall ((a@@10 (Array T@Ref Bool)) (b@@7 (Array T@Ref Bool)) (y@@2 T@Ref) ) (!  (=> (select b@@7 y@@2) (not (select (|Set#Difference_8864| a@@10 b@@7) y@@2)))
 :qid |stdinbpl.281:18|
 :skolemid |44|
 :pattern ( (|Set#Difference_8864| a@@10 b@@7) (select b@@7 y@@2))
)))
(assert (forall ((a@@11 (Array T@Ref Bool)) (b@@8 (Array T@Ref Bool)) ) (!  (and (= (+ (+ (|Set#Card_8864| (|Set#Difference_8864| a@@11 b@@8)) (|Set#Card_8864| (|Set#Difference_8864| b@@8 a@@11))) (|Set#Card_8864| (|Set#Intersection_8864| a@@11 b@@8))) (|Set#Card_8864| (|Set#Union_8864| a@@11 b@@8))) (= (|Set#Card_8864| (|Set#Difference_8864| a@@11 b@@8)) (- (|Set#Card_8864| a@@11) (|Set#Card_8864| (|Set#Intersection_8864| a@@11 b@@8)))))
 :qid |stdinbpl.283:18|
 :skolemid |45|
 :pattern ( (|Set#Card_8864| (|Set#Difference_8864| a@@11 b@@8)))
)))
(assert (forall ((s (Array T@Ref Bool)) ) (! (<= 0 (|Set#Card_8864| s))
 :qid |stdinbpl.226:18|
 :skolemid |22|
 :pattern ( (|Set#Card_8864| s))
)))
(assert (forall ((a@@12 (Array T@Ref Bool)) (x@@1 T@Ref) ) (! (select (|Set#UnionOne_8864| a@@12 x@@1) x@@1)
 :qid |stdinbpl.242:18|
 :skolemid |30|
 :pattern ( (|Set#UnionOne_8864| a@@12 x@@1))
)))
(assert (forall ((a@@13 (Array T@Ref Bool)) (x@@2 T@Ref) ) (!  (=> (select a@@13 x@@2) (= (|Set#Card_8864| (|Set#UnionOne_8864| a@@13 x@@2)) (|Set#Card_8864| a@@13)))
 :qid |stdinbpl.246:18|
 :skolemid |32|
 :pattern ( (|Set#Card_8864| (|Set#UnionOne_8864| a@@13 x@@2)))
)))
(assert (forall ((b_24@@3 (Array T@Ref Bool)) ) (! (= (getPredWandId_8683_8684 (uf_bank b_24@@3)) 0)
 :qid |stdinbpl.435:15|
 :skolemid |84|
 :pattern ( (uf_bank b_24@@3))
)))
(assert (forall ((r@@0 T@Ref) ) (! (= (|Set#Card_8864| (|Set#Singleton_8864| r@@0)) 1)
 :qid |stdinbpl.237:18|
 :skolemid |28|
 :pattern ( (|Set#Card_8864| (|Set#Singleton_8864| r@@0)))
)))
(assert (forall ((r@@1 T@Ref) ) (! (select (|Set#Singleton_8864| r@@1) r@@1)
 :qid |stdinbpl.235:18|
 :skolemid |26|
 :pattern ( (|Set#Singleton_8864| r@@1))
)))
(assert (forall ((a@@14 (Array T@Ref Bool)) (b@@9 (Array T@Ref Bool)) ) (! (= (|Set#Union_8864| a@@14 (|Set#Union_8864| a@@14 b@@9)) (|Set#Union_8864| a@@14 b@@9))
 :qid |stdinbpl.269:18|
 :skolemid |39|
 :pattern ( (|Set#Union_8864| a@@14 (|Set#Union_8864| a@@14 b@@9)))
)))
(assert (forall ((a@@15 (Array T@Ref Bool)) (b@@10 (Array T@Ref Bool)) ) (! (= (|Set#Intersection_8864| a@@15 (|Set#Intersection_8864| a@@15 b@@10)) (|Set#Intersection_8864| a@@15 b@@10))
 :qid |stdinbpl.273:18|
 :skolemid |41|
 :pattern ( (|Set#Intersection_8864| a@@15 (|Set#Intersection_8864| a@@15 b@@10)))
)))
(assert (forall ((o@@3 T@Ref) ) (!  (not (select |Set#Empty_8864| o@@3))
 :qid |stdinbpl.229:18|
 :skolemid |23|
 :pattern ( (select |Set#Empty_8864| o@@3))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_14108) (o_41 T@Ref) (f_44 T@Field_20488_20493) (v T@PolymorphicMapType_14657) ) (! (succHeap Heap@@21 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@21) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@21) o_41 f_44 v) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@21) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@21) o_41 f_44 v) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@21) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@21)))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_14108) (o_41@@0 T@Ref) (f_44@@0 T@Field_20474_20475) (v@@0 T@FrameType) ) (! (succHeap Heap@@22 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@22) (store (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@22) o_41@@0 f_44@@0 v@@0) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@22)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@22) (store (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@22) o_41@@0 f_44@@0 v@@0) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@22) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@22)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_14108) (o_41@@1 T@Ref) (f_44@@1 T@Field_8683_3442) (v@@1 Int) ) (! (succHeap Heap@@23 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@23) (store (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@23) o_41@@1 f_44@@1 v@@1) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@23)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@23) (store (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@23) o_41@@1 f_44@@1 v@@1) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@23) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@23)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_14108) (o_41@@2 T@Ref) (f_44@@2 T@Field_8683_8676) (v@@2 T@Ref) ) (! (succHeap Heap@@24 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@24) (store (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@24) o_41@@2 f_44@@2 v@@2) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@24)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@24) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@24) (store (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@24) o_41@@2 f_44@@2 v@@2) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@24)))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_14108) (o_41@@3 T@Ref) (f_44@@3 T@Field_8683_53) (v@@3 Bool) ) (! (succHeap Heap@@25 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@25) (store (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@25) o_41@@3 f_44@@3 v@@3)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@25) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@25) (store (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@25) o_41@@3 f_44@@3 v@@3)))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_14108) (o_41@@4 T@Ref) (f_44@@4 T@Field_8678_20493) (v@@4 T@PolymorphicMapType_14657) ) (! (succHeap Heap@@26 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@26) (store (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@26) o_41@@4 f_44@@4 v@@4) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@26)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@26) (store (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@26) o_41@@4 f_44@@4 v@@4) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@26) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@26)))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_14108) (o_41@@5 T@Ref) (f_44@@5 T@Field_8678_8684) (v@@5 T@FrameType) ) (! (succHeap Heap@@27 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@27) (store (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@27) o_41@@5 f_44@@5 v@@5) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@27)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@27) (store (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@27) o_41@@5 f_44@@5 v@@5) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@27) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@27)))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_14108) (o_41@@6 T@Ref) (f_44@@6 T@Field_20426_3442) (v@@6 Int) ) (! (succHeap Heap@@28 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@28) (store (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@28) o_41@@6 f_44@@6 v@@6) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@28)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@28) (store (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@28) o_41@@6 f_44@@6 v@@6) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@28) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@28)))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_14108) (o_41@@7 T@Ref) (f_44@@7 T@Field_14181_14182) (v@@7 T@Ref) ) (! (succHeap Heap@@29 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@29) (store (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@29) o_41@@7 f_44@@7 v@@7) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@29)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@29) (store (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@29) o_41@@7 f_44@@7 v@@7) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@29) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@29)))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_14108) (o_41@@8 T@Ref) (f_44@@8 T@Field_14168_53) (v@@8 Bool) ) (! (succHeap Heap@@30 (PolymorphicMapType_14108 (store (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@30) o_41@@8 f_44@@8 v@@8) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@30)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_14108 (store (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@30) o_41@@8 f_44@@8 v@@8) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@30) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@30)))
)))
(assert (forall ((b_24@@4 (Array T@Ref Bool)) ) (! (= (PredicateMaskField_8683 (uf_bank b_24@@4)) (|uf_bank#sm| b_24@@4))
 :qid |stdinbpl.427:15|
 :skolemid |82|
 :pattern ( (PredicateMaskField_8683 (uf_bank b_24@@4)))
)))
(assert (forall ((a@@16 Int) (b@@11 Int) ) (! (= (<= a@@16 b@@11) (= (|Math#min| a@@16 b@@11) a@@16))
 :qid |stdinbpl.313:15|
 :skolemid |51|
 :pattern ( (|Math#min| a@@16 b@@11))
)))
(assert (forall ((a@@17 Int) (b@@12 Int) ) (! (= (<= b@@12 a@@17) (= (|Math#min| a@@17 b@@12) b@@12))
 :qid |stdinbpl.314:15|
 :skolemid |52|
 :pattern ( (|Math#min| a@@17 b@@12))
)))
(assert (forall ((s@@0 (Array T@Ref Bool)) ) (!  (and (= (= (|Set#Card_8864| s@@0) 0) (= s@@0 |Set#Empty_8864|)) (=> (not (= (|Set#Card_8864| s@@0) 0)) (exists ((x@@3 T@Ref) ) (! (select s@@0 x@@3)
 :qid |stdinbpl.232:33|
 :skolemid |24|
))))
 :qid |stdinbpl.230:18|
 :skolemid |25|
 :pattern ( (|Set#Card_8864| s@@0))
)))
(assert (forall ((Heap2Heap T@PolymorphicMapType_14108) (Heap1Heap T@PolymorphicMapType_14108) (b_24@@5 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))  (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm))) (=> (and (select b_24@@5 (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap2Heap) (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)) parent) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap1Heap) (|sk_uf_bank#condqp1| (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)) parent)))) (= (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5)))
 :qid |stdinbpl.461:15|
 :skolemid |88|
 :pattern ( (|uf_bank#condqp1| Heap2Heap b_24@@5) (|uf_bank#condqp1| Heap1Heap b_24@@5) (succHeapTrans Heap2Heap Heap1Heap))
)))
(assert (forall ((Heap2Heap@@0 T@PolymorphicMapType_14108) (Heap1Heap@@0 T@PolymorphicMapType_14108) (b_24@@6 (Array T@Ref Bool)) ) (!  (=> (and (=  (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm))  (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm))) (=> (and (select b_24@@6 (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6))) (< NoPerm FullPerm)) (= (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap2Heap@@0) (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap1Heap@@0) (|sk_uf_bank#condqp2| (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)) rank)))) (= (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6)))
 :qid |stdinbpl.472:15|
 :skolemid |89|
 :pattern ( (|uf_bank#condqp2| Heap2Heap@@0 b_24@@6) (|uf_bank#condqp2| Heap1Heap@@0 b_24@@6) (succHeapTrans Heap2Heap@@0 Heap1Heap@@0))
)))
(assert (forall ((a@@18 (Array T@Ref Bool)) (x@@4 T@Ref) ) (!  (=> (not (select a@@18 x@@4)) (= (|Set#Card_8864| (|Set#UnionOne_8864| a@@18 x@@4)) (+ (|Set#Card_8864| a@@18) 1)))
 :qid |stdinbpl.248:18|
 :skolemid |33|
 :pattern ( (|Set#Card_8864| (|Set#UnionOne_8864| a@@18 x@@4)))
)))
(assert (forall ((o_41@@9 T@Ref) (f_27 T@Field_14181_14182) (Heap@@31 T@PolymorphicMapType_14108) ) (!  (=> (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@31) o_41@@9 $allocated) (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@31) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@31) o_41@@9 f_27) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@31) o_41@@9 f_27))
)))
(assert (forall ((p@@2 T@Field_20474_20475) (v_1@@1 T@FrameType) (q T@Field_20474_20475) (w@@1 T@FrameType) (r@@2 T@Field_20474_20475) (u T@FrameType) ) (!  (=> (and (InsidePredicate_20474_20474 p@@2 v_1@@1 q w@@1) (InsidePredicate_20474_20474 q w@@1 r@@2 u)) (InsidePredicate_20474_20474 p@@2 v_1@@1 r@@2 u))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20474_20474 p@@2 v_1@@1 q w@@1) (InsidePredicate_20474_20474 q w@@1 r@@2 u))
)))
(assert (forall ((p@@3 T@Field_20474_20475) (v_1@@2 T@FrameType) (q@@0 T@Field_20474_20475) (w@@2 T@FrameType) (r@@3 T@Field_8678_8684) (u@@0 T@FrameType) ) (!  (=> (and (InsidePredicate_20474_20474 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20474_14168 q@@0 w@@2 r@@3 u@@0)) (InsidePredicate_20474_14168 p@@3 v_1@@2 r@@3 u@@0))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20474_20474 p@@3 v_1@@2 q@@0 w@@2) (InsidePredicate_20474_14168 q@@0 w@@2 r@@3 u@@0))
)))
(assert (forall ((p@@4 T@Field_20474_20475) (v_1@@3 T@FrameType) (q@@1 T@Field_8678_8684) (w@@3 T@FrameType) (r@@4 T@Field_20474_20475) (u@@1 T@FrameType) ) (!  (=> (and (InsidePredicate_20474_14168 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_14168_20474 q@@1 w@@3 r@@4 u@@1)) (InsidePredicate_20474_20474 p@@4 v_1@@3 r@@4 u@@1))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20474_14168 p@@4 v_1@@3 q@@1 w@@3) (InsidePredicate_14168_20474 q@@1 w@@3 r@@4 u@@1))
)))
(assert (forall ((p@@5 T@Field_20474_20475) (v_1@@4 T@FrameType) (q@@2 T@Field_8678_8684) (w@@4 T@FrameType) (r@@5 T@Field_8678_8684) (u@@2 T@FrameType) ) (!  (=> (and (InsidePredicate_20474_14168 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_14168_14168 q@@2 w@@4 r@@5 u@@2)) (InsidePredicate_20474_14168 p@@5 v_1@@4 r@@5 u@@2))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_20474_14168 p@@5 v_1@@4 q@@2 w@@4) (InsidePredicate_14168_14168 q@@2 w@@4 r@@5 u@@2))
)))
(assert (forall ((p@@6 T@Field_8678_8684) (v_1@@5 T@FrameType) (q@@3 T@Field_20474_20475) (w@@5 T@FrameType) (r@@6 T@Field_20474_20475) (u@@3 T@FrameType) ) (!  (=> (and (InsidePredicate_14168_20474 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20474_20474 q@@3 w@@5 r@@6 u@@3)) (InsidePredicate_14168_20474 p@@6 v_1@@5 r@@6 u@@3))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14168_20474 p@@6 v_1@@5 q@@3 w@@5) (InsidePredicate_20474_20474 q@@3 w@@5 r@@6 u@@3))
)))
(assert (forall ((p@@7 T@Field_8678_8684) (v_1@@6 T@FrameType) (q@@4 T@Field_20474_20475) (w@@6 T@FrameType) (r@@7 T@Field_8678_8684) (u@@4 T@FrameType) ) (!  (=> (and (InsidePredicate_14168_20474 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20474_14168 q@@4 w@@6 r@@7 u@@4)) (InsidePredicate_14168_14168 p@@7 v_1@@6 r@@7 u@@4))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14168_20474 p@@7 v_1@@6 q@@4 w@@6) (InsidePredicate_20474_14168 q@@4 w@@6 r@@7 u@@4))
)))
(assert (forall ((p@@8 T@Field_8678_8684) (v_1@@7 T@FrameType) (q@@5 T@Field_8678_8684) (w@@7 T@FrameType) (r@@8 T@Field_20474_20475) (u@@5 T@FrameType) ) (!  (=> (and (InsidePredicate_14168_14168 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_14168_20474 q@@5 w@@7 r@@8 u@@5)) (InsidePredicate_14168_20474 p@@8 v_1@@7 r@@8 u@@5))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14168_14168 p@@8 v_1@@7 q@@5 w@@7) (InsidePredicate_14168_20474 q@@5 w@@7 r@@8 u@@5))
)))
(assert (forall ((p@@9 T@Field_8678_8684) (v_1@@8 T@FrameType) (q@@6 T@Field_8678_8684) (w@@8 T@FrameType) (r@@9 T@Field_8678_8684) (u@@6 T@FrameType) ) (!  (=> (and (InsidePredicate_14168_14168 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_14168_14168 q@@6 w@@8 r@@9 u@@6)) (InsidePredicate_14168_14168 p@@9 v_1@@8 r@@9 u@@6))
 :qid |stdinbpl.208:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_14168_14168 p@@9 v_1@@8 q@@6 w@@8) (InsidePredicate_14168_14168 q@@6 w@@8 r@@9 u@@6))
)))
(assert (forall ((a@@19 Int) ) (!  (=> (< a@@19 0) (= (|Math#clip| a@@19) 0))
 :qid |stdinbpl.319:15|
 :skolemid |55|
 :pattern ( (|Math#clip| a@@19))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((a@@20 (Array T@Ref Bool)) (b@@13 (Array T@Ref Bool)) (o@@4 T@Ref) ) (! (= (select (|Set#Union_8864| a@@20 b@@13) o@@4)  (or (select a@@20 o@@4) (select b@@13 o@@4)))
 :qid |stdinbpl.252:18|
 :skolemid |34|
 :pattern ( (select (|Set#Union_8864| a@@20 b@@13) o@@4))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun UnfoldingMask@0 () T@PolymorphicMapType_14129)
(declare-fun Mask@2 () T@PolymorphicMapType_14129)
(declare-fun b_24@@7 () (Array T@Ref Bool))
(declare-fun Heap@6 () T@PolymorphicMapType_14108)
(declare-fun QPMask@4 () T@PolymorphicMapType_14129)
(declare-fun qpRange7 (T@Ref) Bool)
(declare-fun invRecv7 (T@Ref) T@Ref)
(declare-fun QPMask@5 () T@PolymorphicMapType_14129)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) T@Ref)
(declare-fun l_2 () T@Ref)
(declare-fun newPMask@2 () T@PolymorphicMapType_14657)
(declare-fun Heap@7 () T@PolymorphicMapType_14108)
(declare-fun newPMask@3 () T@PolymorphicMapType_14657)
(declare-fun Heap@8 () T@PolymorphicMapType_14108)
(declare-fun n@0 () Int)
(declare-fun n_2@0 () Int)
(declare-fun newPMask@0 () T@PolymorphicMapType_14657)
(declare-fun Heap@4 () T@PolymorphicMapType_14108)
(declare-fun Heap@5 () T@PolymorphicMapType_14108)
(declare-fun newPMask@1 () T@PolymorphicMapType_14657)
(declare-fun CombineFrames (T@FrameType T@FrameType) T@FrameType)
(declare-fun FrameFragment_3644 (Int) T@FrameType)
(declare-fun Heap@1 () T@PolymorphicMapType_14108)
(declare-fun Heap@2 () T@PolymorphicMapType_14108)
(declare-fun Heap@3 () T@PolymorphicMapType_14108)
(declare-fun freshVersion@0 () T@FrameType)
(declare-fun QPMask@3 () T@PolymorphicMapType_14129)
(declare-fun l$0_8 () T@Ref)
(declare-fun l$0_6 () T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_14129)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) T@Ref)
(declare-fun Mask@1 () T@PolymorphicMapType_14129)
(declare-fun QPMask@1 () T@PolymorphicMapType_14129)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) T@Ref)
(declare-fun neverTriggered5 (T@Ref) Bool)
(declare-fun QPMask@2 () T@PolymorphicMapType_14129)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) T@Ref)
(declare-fun neverTriggered6 (T@Ref) Bool)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) T@Ref)
(declare-fun Heap@@32 () T@PolymorphicMapType_14108)
(declare-fun Heap@0 () T@PolymorphicMapType_14108)
(declare-fun newVersion@0 () T@FrameType)
(declare-fun Mask@0 () T@PolymorphicMapType_14129)
(set-info :boogie-vc-id bad)
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
 (=> (= (ControlFlow 0 0) 40) (let ((anon18_correct  (=> (= UnfoldingMask@0 (PolymorphicMapType_14129 (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@2) (store (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@2) null (uf_bank b_24@@7) (- (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@2) null (uf_bank b_24@@7)) FullPerm)) (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@2) (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@2))) (and (=> (= (ControlFlow 0 12) (- 0 16)) (forall ((l$0_12 T@Ref) (l$0_12_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_12 l$0_12_1)) (select b_24@@7 l$0_12)) (select b_24@@7 l$0_12_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_12 l$0_12_1)))
 :qid |stdinbpl.930:17|
 :skolemid |136|
))) (=> (forall ((l$0_12@@0 T@Ref) (l$0_12_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_12@@0 l$0_12_1@@0)) (select b_24@@7 l$0_12@@0)) (select b_24@@7 l$0_12_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_12@@0 l$0_12_1@@0)))
 :qid |stdinbpl.930:17|
 :skolemid |136|
)) (=> (and (and (forall ((l$0_12@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_12@@1) (< NoPerm FullPerm)) (and (qpRange7 l$0_12@@1) (= (invRecv7 l$0_12@@1) l$0_12@@1)))
 :qid |stdinbpl.936:24|
 :skolemid |137|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_12@@1 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) l$0_12@@1 parent))
 :pattern ( (select b_24@@7 l$0_12@@1))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv7 o_4)) (< NoPerm FullPerm)) (qpRange7 o_4)) (= (invRecv7 o_4) o_4))
 :qid |stdinbpl.940:24|
 :skolemid |138|
 :pattern ( (invRecv7 o_4))
))) (and (forall ((l$0_12@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0_12@@2) (not (= l$0_12@@2 null)))
 :qid |stdinbpl.946:24|
 :skolemid |139|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_12@@2 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) l$0_12@@2 parent))
 :pattern ( (select b_24@@7 l$0_12@@2))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv7 o_4@@0)) (< NoPerm FullPerm)) (qpRange7 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv7 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@0 parent) (+ (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@0 parent) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv7 o_4@@0)) (< NoPerm FullPerm)) (qpRange7 o_4@@0))) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@0 parent) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@0 parent))))
 :qid |stdinbpl.952:24|
 :skolemid |140|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@0 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@1 f_5) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@4) o_4@@1 f_5)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@4) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_14181_14182) ) (!  (=> (not (= f_5@@0 parent)) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@2 f_5@@0) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@2 f_5@@0)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_20426_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@3 f_5@@1) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@3 f_5@@1)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@4 f_5@@2) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@4) o_4@@4 f_5@@2)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@4) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@5 f_5@@3) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@4) o_4@@5 f_5@@3)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@4) o_4@@5 f_5@@3))
))) (forall ((o_4@@6 T@Ref) (f_5@@4 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@6 f_5@@4) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@4) o_4@@6 f_5@@4)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@4) o_4@@6 f_5@@4))
))) (forall ((o_4@@7 T@Ref) (f_5@@5 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@7 f_5@@5) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@4) o_4@@7 f_5@@5)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@7 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@4) o_4@@7 f_5@@5))
))) (forall ((o_4@@8 T@Ref) (f_5@@6 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@8 f_5@@6) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@4) o_4@@8 f_5@@6)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@8 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@4) o_4@@8 f_5@@6))
))) (forall ((o_4@@9 T@Ref) (f_5@@7 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@9 f_5@@7) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@4) o_4@@9 f_5@@7)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@9 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@4) o_4@@9 f_5@@7))
))) (forall ((o_4@@10 T@Ref) (f_5@@8 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@10 f_5@@8) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@4) o_4@@10 f_5@@8)))
 :qid |stdinbpl.956:31|
 :skolemid |141|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| UnfoldingMask@0) o_4@@10 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@4) o_4@@10 f_5@@8))
))) (state Heap@6 QPMask@4)) (and (=> (= (ControlFlow 0 12) (- 0 15)) (forall ((l$0_13 T@Ref) (l$0_13_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_13 l$0_13_1)) (select b_24@@7 l$0_13)) (select b_24@@7 l$0_13_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_13 l$0_13_1)))
 :qid |stdinbpl.964:17|
 :skolemid |142|
))) (=> (forall ((l$0_13@@0 T@Ref) (l$0_13_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_13@@0 l$0_13_1@@0)) (select b_24@@7 l$0_13@@0)) (select b_24@@7 l$0_13_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_13@@0 l$0_13_1@@0)))
 :qid |stdinbpl.964:17|
 :skolemid |142|
)) (=> (and (and (forall ((l$0_13@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_13@@1) (< NoPerm FullPerm)) (and (qpRange8 l$0_13@@1) (= (invRecv8 l$0_13@@1) l$0_13@@1)))
 :qid |stdinbpl.970:24|
 :skolemid |143|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) l$0_13@@1 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) l$0_13@@1 rank))
 :pattern ( (select b_24@@7 l$0_13@@1))
)) (forall ((o_4@@11 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv8 o_4@@11)) (< NoPerm FullPerm)) (qpRange8 o_4@@11)) (= (invRecv8 o_4@@11) o_4@@11))
 :qid |stdinbpl.974:24|
 :skolemid |144|
 :pattern ( (invRecv8 o_4@@11))
))) (and (forall ((l$0_13@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0_13@@2) (not (= l$0_13@@2 null)))
 :qid |stdinbpl.980:24|
 :skolemid |145|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) l$0_13@@2 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) l$0_13@@2 rank))
 :pattern ( (select b_24@@7 l$0_13@@2))
)) (forall ((o_4@@12 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv8 o_4@@12)) (< NoPerm FullPerm)) (qpRange8 o_4@@12)) (and (=> (< NoPerm FullPerm) (= (invRecv8 o_4@@12) o_4@@12)) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) o_4@@12 rank) (+ (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@12 rank) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv8 o_4@@12)) (< NoPerm FullPerm)) (qpRange8 o_4@@12))) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) o_4@@12 rank) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@12 rank))))
 :qid |stdinbpl.986:24|
 :skolemid |146|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) o_4@@12 rank))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@13 T@Ref) (f_5@@9 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@4) o_4@@13 f_5@@9) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@5) o_4@@13 f_5@@9)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@4) o_4@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@5) o_4@@13 f_5@@9))
)) (forall ((o_4@@14 T@Ref) (f_5@@10 T@Field_14181_14182) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@14 f_5@@10) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@5) o_4@@14 f_5@@10)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@4) o_4@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@5) o_4@@14 f_5@@10))
))) (forall ((o_4@@15 T@Ref) (f_5@@11 T@Field_20426_3442) ) (!  (=> (not (= f_5@@11 rank)) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@15 f_5@@11) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) o_4@@15 f_5@@11)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@4) o_4@@15 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@5) o_4@@15 f_5@@11))
))) (forall ((o_4@@16 T@Ref) (f_5@@12 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@4) o_4@@16 f_5@@12) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@5) o_4@@16 f_5@@12)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@4) o_4@@16 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@5) o_4@@16 f_5@@12))
))) (forall ((o_4@@17 T@Ref) (f_5@@13 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@4) o_4@@17 f_5@@13) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@5) o_4@@17 f_5@@13)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@4) o_4@@17 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@5) o_4@@17 f_5@@13))
))) (forall ((o_4@@18 T@Ref) (f_5@@14 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@4) o_4@@18 f_5@@14) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@5) o_4@@18 f_5@@14)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@4) o_4@@18 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@5) o_4@@18 f_5@@14))
))) (forall ((o_4@@19 T@Ref) (f_5@@15 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@4) o_4@@19 f_5@@15) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@5) o_4@@19 f_5@@15)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@4) o_4@@19 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@5) o_4@@19 f_5@@15))
))) (forall ((o_4@@20 T@Ref) (f_5@@16 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@4) o_4@@20 f_5@@16) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@5) o_4@@20 f_5@@16)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@4) o_4@@20 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@5) o_4@@20 f_5@@16))
))) (forall ((o_4@@21 T@Ref) (f_5@@17 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@4) o_4@@21 f_5@@17) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@5) o_4@@21 f_5@@17)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@4) o_4@@21 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@5) o_4@@21 f_5@@17))
))) (forall ((o_4@@22 T@Ref) (f_5@@18 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@4) o_4@@22 f_5@@18) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@5) o_4@@22 f_5@@18)))
 :qid |stdinbpl.990:31|
 :skolemid |147|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@4) o_4@@22 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@5) o_4@@22 f_5@@18))
))) (and (and (state Heap@6 QPMask@5) (forall ((l$0_14 T@Ref) ) (!  (=> (select b_24@@7 l$0_14) (<= 0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) l$0_14 rank)))
 :qid |stdinbpl.996:22|
 :skolemid |148|
 :pattern ( (select b_24@@7 l$0_14))
))) (and (forall ((l$0_15 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_15) (not (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_15 parent) null))) (and (select b_24@@7 (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_15 parent)) (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_15 parent) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) l$0_15 rank))))
 :qid |stdinbpl.1000:22|
 :skolemid |149|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) l$0_15 parent))
)) (state Heap@6 QPMask@5)))) (and (=> (= (ControlFlow 0 12) (- 0 14)) (HasDirectPerm_8678_3442 QPMask@5 l_2 rank)) (=> (HasDirectPerm_8678_3442 QPMask@5 l_2 rank) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_26 T@Ref) (f_29 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26 f_29) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@2) o_26 f_29))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@2) o_26 f_29))
)) (forall ((o_26@@0 T@Ref) (f_29@@0 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@0 f_29@@0) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@2) o_26@@0 f_29@@0))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@2) o_26@@0 f_29@@0))
))) (forall ((o_26@@1 T@Ref) (f_29@@1 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@1 f_29@@1) (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@2) o_26@@1 f_29@@1))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@2) o_26@@1 f_29@@1))
))) (forall ((o_26@@2 T@Ref) (f_29@@2 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@2 f_29@@2) (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@2) o_26@@2 f_29@@2))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@2) o_26@@2 f_29@@2))
))) (forall ((o_26@@3 T@Ref) (f_29@@3 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@3 f_29@@3) (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@2) o_26@@3 f_29@@3))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@2) o_26@@3 f_29@@3))
))) (forall ((o_26@@4 T@Ref) (f_29@@4 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@4 f_29@@4) (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@2) o_26@@4 f_29@@4))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@2) o_26@@4 f_29@@4))
))) (forall ((o_26@@5 T@Ref) (f_29@@5 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@5 f_29@@5) (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@2) o_26@@5 f_29@@5))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@2) o_26@@5 f_29@@5))
))) (forall ((o_26@@6 T@Ref) (f_29@@6 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@6 f_29@@6) (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@2) o_26@@6 f_29@@6))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@2) o_26@@6 f_29@@6))
))) (forall ((o_26@@7 T@Ref) (f_29@@7 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@7 f_29@@7) (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@2) o_26@@7 f_29@@7))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@2) o_26@@7 f_29@@7))
))) (forall ((o_26@@8 T@Ref) (f_29@@8 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7))) o_26@@8 f_29@@8) (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@2) o_26@@8 f_29@@8))
 :qid |stdinbpl.1011:31|
 :skolemid |150|
 :pattern ( (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@2) o_26@@8 f_29@@8))
))) (and (forall ((l$0_16 T@Ref) ) (!  (=> (select b_24@@7 l$0_16) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@2) l$0_16 parent))
 :qid |stdinbpl.1015:24|
 :skolemid |151|
)) (= Heap@7 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@6) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@6) null (|uf_bank#sm| b_24@@7) newPMask@2) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@6) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@6))))) (and (and (and (and (and (and (and (and (and (and (forall ((o@@5 T@Ref) (f_85 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@5 f_85) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@3) o@@5 f_85))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@3) o@@5 f_85))
)) (forall ((o@@6 T@Ref) (f_85@@0 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@6 f_85@@0) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@3) o@@6 f_85@@0))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@3) o@@6 f_85@@0))
))) (forall ((o@@7 T@Ref) (f_85@@1 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@7 f_85@@1) (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@3) o@@7 f_85@@1))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@3) o@@7 f_85@@1))
))) (forall ((o@@8 T@Ref) (f_85@@2 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@8 f_85@@2) (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@3) o@@8 f_85@@2))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@3) o@@8 f_85@@2))
))) (forall ((o@@9 T@Ref) (f_85@@3 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@9 f_85@@3) (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@3) o@@9 f_85@@3))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@3) o@@9 f_85@@3))
))) (forall ((o@@10 T@Ref) (f_85@@4 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@10 f_85@@4) (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@3) o@@10 f_85@@4))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@3) o@@10 f_85@@4))
))) (forall ((o@@11 T@Ref) (f_85@@5 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@11 f_85@@5) (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@3) o@@11 f_85@@5))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@3) o@@11 f_85@@5))
))) (forall ((o@@12 T@Ref) (f_85@@6 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@12 f_85@@6) (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@3) o@@12 f_85@@6))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@3) o@@12 f_85@@6))
))) (forall ((o@@13 T@Ref) (f_85@@7 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@13 f_85@@7) (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@3) o@@13 f_85@@7))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@3) o@@13 f_85@@7))
))) (forall ((o@@14 T@Ref) (f_85@@8 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7))) o@@14 f_85@@8) (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@3) o@@14 f_85@@8))
 :qid |stdinbpl.1022:31|
 :skolemid |152|
 :pattern ( (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@3) o@@14 f_85@@8))
))) (and (and (forall ((l$0_17 T@Ref) ) (!  (=> (select b_24@@7 l$0_17) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@3) l$0_17 rank))
 :qid |stdinbpl.1026:24|
 :skolemid |153|
)) (= Heap@8 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@7) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@7) null (|uf_bank#sm| b_24@@7) newPMask@3) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@7) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@7)))) (and (state Heap@8 Mask@2) (= n@0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank)))))) (and (=> (= (ControlFlow 0 12) (- 0 13)) (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank))) (=> (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank)) (=> (= n_2@0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@8) l_2 rank)) (=> (and (state Heap@8 Mask@2) (= (ControlFlow 0 12) (- 0 11))) false))))))))))))))))))
(let ((anon27_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 19) 12)) anon18_correct)))
(let ((anon27_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 17) (- 0 18)) (<= FullPerm (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@2) null (uf_bank b_24@@7)))) (=> (<= FullPerm (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@2) null (uf_bank b_24@@7))) (=> (= (ControlFlow 0 17) 12) anon18_correct))))))
(let ((anon16_correct  (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_52 T@Ref) (f_55 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52 f_55) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@0) o_52 f_55))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@0) o_52 f_55))
)) (forall ((o_52@@0 T@Ref) (f_55@@0 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@0 f_55@@0) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@0) o_52@@0 f_55@@0))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@0) o_52@@0 f_55@@0))
))) (forall ((o_52@@1 T@Ref) (f_55@@1 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@1 f_55@@1) (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@0) o_52@@1 f_55@@1))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@0) o_52@@1 f_55@@1))
))) (forall ((o_52@@2 T@Ref) (f_55@@2 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@2 f_55@@2) (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@0) o_52@@2 f_55@@2))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@0) o_52@@2 f_55@@2))
))) (forall ((o_52@@3 T@Ref) (f_55@@3 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@3 f_55@@3) (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@0) o_52@@3 f_55@@3))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@0) o_52@@3 f_55@@3))
))) (forall ((o_52@@4 T@Ref) (f_55@@4 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@4 f_55@@4) (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@0) o_52@@4 f_55@@4))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@0) o_52@@4 f_55@@4))
))) (forall ((o_52@@5 T@Ref) (f_55@@5 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@5 f_55@@5) (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@0) o_52@@5 f_55@@5))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@0) o_52@@5 f_55@@5))
))) (forall ((o_52@@6 T@Ref) (f_55@@6 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@6 f_55@@6) (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@0) o_52@@6 f_55@@6))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@0) o_52@@6 f_55@@6))
))) (forall ((o_52@@7 T@Ref) (f_55@@7 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@7 f_55@@7) (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@0) o_52@@7 f_55@@7))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@0) o_52@@7 f_55@@7))
))) (forall ((o_52@@8 T@Ref) (f_55@@8 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7))) o_52@@8 f_55@@8) (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@0) o_52@@8 f_55@@8))
 :qid |stdinbpl.886:27|
 :skolemid |132|
 :pattern ( (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@0) o_52@@8 f_55@@8))
))) (and (forall ((l$0_10 T@Ref) ) (!  (=> (select b_24@@7 l$0_10) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@0) l$0_10 parent))
 :qid |stdinbpl.890:20|
 :skolemid |133|
)) (= Heap@5 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@4) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@4) null (|uf_bank#sm| b_24@@7) newPMask@0) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@4) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@4))))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_53 T@Ref) (f_56 T@Field_14181_14182) ) (!  (=> (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53 f_56) (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@1) o_53 f_56))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_8675_8676#PolymorphicMapType_14657| newPMask@1) o_53 f_56))
)) (forall ((o_53@@0 T@Ref) (f_56@@0 T@Field_20426_3442) ) (!  (=> (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@0 f_56@@0) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@1) o_53@@0 f_56@@0))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@1) o_53@@0 f_56@@0))
))) (forall ((o_53@@1 T@Ref) (f_56@@1 T@Field_14168_53) ) (!  (=> (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@1 f_56@@1) (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@1) o_53@@1 f_56@@1))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_8675_53#PolymorphicMapType_14657| newPMask@1) o_53@@1 f_56@@1))
))) (forall ((o_53@@2 T@Ref) (f_56@@2 T@Field_8678_8684) ) (!  (=> (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@2 f_56@@2) (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@1) o_53@@2 f_56@@2))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_8675_20475#PolymorphicMapType_14657| newPMask@1) o_53@@2 f_56@@2))
))) (forall ((o_53@@3 T@Ref) (f_56@@3 T@Field_8678_20493) ) (!  (=> (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@3 f_56@@3) (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@1) o_53@@3 f_56@@3))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_8675_45253#PolymorphicMapType_14657| newPMask@1) o_53@@3 f_56@@3))
))) (forall ((o_53@@4 T@Ref) (f_56@@4 T@Field_8683_8676) ) (!  (=> (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@4 f_56@@4) (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@1) o_53@@4 f_56@@4))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_20474_8676#PolymorphicMapType_14657| newPMask@1) o_53@@4 f_56@@4))
))) (forall ((o_53@@5 T@Ref) (f_56@@5 T@Field_8683_3442) ) (!  (=> (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@5 f_56@@5) (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@1) o_53@@5 f_56@@5))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_20474_3442#PolymorphicMapType_14657| newPMask@1) o_53@@5 f_56@@5))
))) (forall ((o_53@@6 T@Ref) (f_56@@6 T@Field_8683_53) ) (!  (=> (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@6 f_56@@6) (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@1) o_53@@6 f_56@@6))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_20474_53#PolymorphicMapType_14657| newPMask@1) o_53@@6 f_56@@6))
))) (forall ((o_53@@7 T@Ref) (f_56@@7 T@Field_20474_20475) ) (!  (=> (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@7 f_56@@7) (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@1) o_53@@7 f_56@@7))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_20474_20475#PolymorphicMapType_14657| newPMask@1) o_53@@7 f_56@@7))
))) (forall ((o_53@@8 T@Ref) (f_56@@8 T@Field_20488_20493) ) (!  (=> (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| (select (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7))) o_53@@8 f_56@@8) (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@1) o_53@@8 f_56@@8))
 :qid |stdinbpl.897:27|
 :skolemid |134|
 :pattern ( (select (|PolymorphicMapType_14657_20474_46301#PolymorphicMapType_14657| newPMask@1) o_53@@8 f_56@@8))
))) (and (forall ((l$0_11 T@Ref) ) (!  (=> (select b_24@@7 l$0_11) (select (|PolymorphicMapType_14657_8678_3442#PolymorphicMapType_14657| newPMask@1) l$0_11 rank))
 :qid |stdinbpl.901:20|
 :skolemid |135|
)) (= Heap@6 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@5) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@5) null (|uf_bank#sm| b_24@@7) newPMask@1) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@5) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@5))))) (and (and (state Heap@6 Mask@2) (state Heap@6 Mask@2)) (and (|uf_bank#trigger_8683| Heap@6 (uf_bank b_24@@7)) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@6) null (uf_bank b_24@@7)) (CombineFrames (FrameFragment_3644 (|uf_bank#condqp1| Heap@6 b_24@@7)) (FrameFragment_3644 (|uf_bank#condqp2| Heap@6 b_24@@7))))))) (and (=> (= (ControlFlow 0 20) 17) anon27_Then_correct) (=> (= (ControlFlow 0 20) 19) anon27_Else_correct))))))
(let ((anon26_Else_correct  (=> (HasDirectPerm_8683_8684 Mask@2 null (uf_bank b_24@@7)) (=> (and (= Heap@4 Heap@1) (= (ControlFlow 0 22) 20)) anon16_correct))))
(let ((anon26_Then_correct  (=> (not (HasDirectPerm_8683_8684 Mask@2 null (uf_bank b_24@@7))) (=> (and (and (= Heap@2 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@1) (store (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@1) null (|uf_bank#sm| b_24@@7) ZeroPMask) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@1) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@1))) (= Heap@3 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@2) (store (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@2) null (uf_bank b_24@@7) freshVersion@0) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@2) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@2)))) (and (= Heap@4 Heap@3) (= (ControlFlow 0 21) 20))) anon16_correct))))
(let ((anon24_Else_correct  (=> (and (forall ((l$0_9_1_1 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_9_1_1) (not (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_9_1_1 parent) null))) (and (select b_24@@7 (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_9_1_1 parent)) (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_9_1_1 parent) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_9_1_1 rank))))
 :qid |stdinbpl.869:20|
 :skolemid |131|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_9_1_1 parent))
)) (= Mask@2 (PolymorphicMapType_14129 (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) (store (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@3) null (uf_bank b_24@@7) (+ (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@3) null (uf_bank b_24@@7)) FullPerm)) (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@3) (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@3)))) (=> (and (and (state Heap@1 Mask@2) (state Heap@1 Mask@2)) (and (|uf_bank#trigger_8683| Heap@1 (uf_bank b_24@@7)) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@1) null (uf_bank b_24@@7)) (CombineFrames (FrameFragment_3644 (|uf_bank#condqp1| Heap@1 b_24@@7)) (FrameFragment_3644 (|uf_bank#condqp2| Heap@1 b_24@@7)))))) (and (=> (= (ControlFlow 0 23) 21) anon26_Then_correct) (=> (= (ControlFlow 0 23) 22) anon26_Else_correct))))))
(let ((anon13_correct true))
(let ((anon25_Else_correct  (=> (and (not (and (select b_24@@7 l$0_8) (not (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent) null)))) (= (ControlFlow 0 10) 6)) anon13_correct)))
(let ((anon25_Then_correct  (=> (and (select b_24@@7 l$0_8) (not (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent) null))) (and (=> (= (ControlFlow 0 7) (- 0 9)) (select b_24@@7 (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent))) (=> (select b_24@@7 (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent)) (and (=> (= (ControlFlow 0 7) (- 0 8)) (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_8 rank))) (=> (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_8 parent) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_8 rank)) (=> (= (ControlFlow 0 7) 6) anon13_correct))))))))
(let ((anon22_Else_correct  (=> (forall ((l$0_7_1 T@Ref) ) (!  (=> (select b_24@@7 l$0_7_1) (<= 0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_7_1 rank)))
 :qid |stdinbpl.856:20|
 :skolemid |130|
 :pattern ( (select b_24@@7 l$0_7_1))
)) (and (and (=> (= (ControlFlow 0 24) 23) anon24_Else_correct) (=> (= (ControlFlow 0 24) 7) anon25_Then_correct)) (=> (= (ControlFlow 0 24) 10) anon25_Else_correct)))))
(let ((anon9_correct true))
(let ((anon23_Else_correct  (=> (and (not (select b_24@@7 l$0_6)) (= (ControlFlow 0 5) 2)) anon9_correct)))
(let ((anon23_Then_correct  (=> (select b_24@@7 l$0_6) (and (=> (= (ControlFlow 0 3) (- 0 4)) (<= 0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_6 rank))) (=> (<= 0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_6 rank)) (=> (= (ControlFlow 0 3) 2) anon9_correct))))))
(let ((anon6_correct  (and (=> (= (ControlFlow 0 25) (- 0 31)) (forall ((l$0 T@Ref) (l$0_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0 l$0_1)) (select b_24@@7 l$0)) (select b_24@@7 l$0_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0 l$0_1)))
 :qid |stdinbpl.687:15|
 :skolemid |104|
))) (=> (forall ((l$0@@0 T@Ref) (l$0_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0@@0 l$0_1@@0)) (select b_24@@7 l$0@@0)) (select b_24@@7 l$0_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0@@0 l$0_1@@0)))
 :qid |stdinbpl.687:15|
 :skolemid |104|
)) (=> (and (and (forall ((l$0@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l$0@@1) (< NoPerm FullPerm)) (and (qpRange3 l$0@@1) (= (invRecv3 l$0@@1) l$0@@1)))
 :qid |stdinbpl.693:22|
 :skolemid |105|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0@@1 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) l$0@@1 parent))
 :pattern ( (select b_24@@7 l$0@@1))
)) (forall ((o_4@@23 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv3 o_4@@23)) (< NoPerm FullPerm)) (qpRange3 o_4@@23)) (= (invRecv3 o_4@@23) o_4@@23))
 :qid |stdinbpl.697:22|
 :skolemid |106|
 :pattern ( (invRecv3 o_4@@23))
))) (and (forall ((l$0@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0@@2) (not (= l$0@@2 null)))
 :qid |stdinbpl.703:22|
 :skolemid |107|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0@@2 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) l$0@@2 parent))
 :pattern ( (select b_24@@7 l$0@@2))
)) (forall ((o_4@@24 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv3 o_4@@24)) (< NoPerm FullPerm)) (qpRange3 o_4@@24)) (and (=> (< NoPerm FullPerm) (= (invRecv3 o_4@@24) o_4@@24)) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@24 parent) (+ (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@1) o_4@@24 parent) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv3 o_4@@24)) (< NoPerm FullPerm)) (qpRange3 o_4@@24))) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@24 parent) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@1) o_4@@24 parent))))
 :qid |stdinbpl.709:22|
 :skolemid |108|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@24 parent))
)))) (=> (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@25 T@Ref) (f_5@@19 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@1) o_4@@25 f_5@@19) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@0) o_4@@25 f_5@@19)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@1) o_4@@25 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@0) o_4@@25 f_5@@19))
)) (forall ((o_4@@26 T@Ref) (f_5@@20 T@Field_14181_14182) ) (!  (=> (not (= f_5@@20 parent)) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@1) o_4@@26 f_5@@20) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@26 f_5@@20)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@1) o_4@@26 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@26 f_5@@20))
))) (forall ((o_4@@27 T@Ref) (f_5@@21 T@Field_20426_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@1) o_4@@27 f_5@@21) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@27 f_5@@21)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@1) o_4@@27 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@27 f_5@@21))
))) (forall ((o_4@@28 T@Ref) (f_5@@22 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@1) o_4@@28 f_5@@22) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@0) o_4@@28 f_5@@22)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@1) o_4@@28 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@0) o_4@@28 f_5@@22))
))) (forall ((o_4@@29 T@Ref) (f_5@@23 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@1) o_4@@29 f_5@@23) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@0) o_4@@29 f_5@@23)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@1) o_4@@29 f_5@@23))
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@0) o_4@@29 f_5@@23))
))) (forall ((o_4@@30 T@Ref) (f_5@@24 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@1) o_4@@30 f_5@@24) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@0) o_4@@30 f_5@@24)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@1) o_4@@30 f_5@@24))
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@0) o_4@@30 f_5@@24))
))) (forall ((o_4@@31 T@Ref) (f_5@@25 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@1) o_4@@31 f_5@@25) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@0) o_4@@31 f_5@@25)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@1) o_4@@31 f_5@@25))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@0) o_4@@31 f_5@@25))
))) (forall ((o_4@@32 T@Ref) (f_5@@26 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@1) o_4@@32 f_5@@26) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@0) o_4@@32 f_5@@26)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@1) o_4@@32 f_5@@26))
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@0) o_4@@32 f_5@@26))
))) (forall ((o_4@@33 T@Ref) (f_5@@27 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@1) o_4@@33 f_5@@27) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@0) o_4@@33 f_5@@27)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@1) o_4@@33 f_5@@27))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@0) o_4@@33 f_5@@27))
))) (forall ((o_4@@34 T@Ref) (f_5@@28 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@1) o_4@@34 f_5@@28) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@0) o_4@@34 f_5@@28)))
 :qid |stdinbpl.713:29|
 :skolemid |109|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@1) o_4@@34 f_5@@28))
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@0) o_4@@34 f_5@@28))
))) (state Heap@1 QPMask@0)) (and (=> (= (ControlFlow 0 25) (- 0 30)) (forall ((l$0_1_1 T@Ref) (l$0_1_2 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_1_1 l$0_1_2)) (select b_24@@7 l$0_1_1)) (select b_24@@7 l$0_1_2)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_1_1 l$0_1_2)))
 :qid |stdinbpl.721:15|
 :skolemid |110|
))) (=> (forall ((l$0_1_1@@0 T@Ref) (l$0_1_2@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_1_1@@0 l$0_1_2@@0)) (select b_24@@7 l$0_1_1@@0)) (select b_24@@7 l$0_1_2@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_1_1@@0 l$0_1_2@@0)))
 :qid |stdinbpl.721:15|
 :skolemid |110|
)) (=> (and (and (forall ((l$0_1_1@@1 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_1_1@@1) (< NoPerm FullPerm)) (and (qpRange4 l$0_1_1@@1) (= (invRecv4 l$0_1_1@@1) l$0_1_1@@1)))
 :qid |stdinbpl.727:22|
 :skolemid |111|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_1_1@@1 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) l$0_1_1@@1 rank))
 :pattern ( (select b_24@@7 l$0_1_1@@1))
)) (forall ((o_4@@35 T@Ref) ) (!  (=> (and (and (select b_24@@7 (invRecv4 o_4@@35)) (< NoPerm FullPerm)) (qpRange4 o_4@@35)) (= (invRecv4 o_4@@35) o_4@@35))
 :qid |stdinbpl.731:22|
 :skolemid |112|
 :pattern ( (invRecv4 o_4@@35))
))) (and (forall ((l$0_1_1@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0_1_1@@2) (not (= l$0_1_1@@2 null)))
 :qid |stdinbpl.737:22|
 :skolemid |113|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_1_1@@2 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) l$0_1_1@@2 rank))
 :pattern ( (select b_24@@7 l$0_1_1@@2))
)) (forall ((o_4@@36 T@Ref) ) (!  (and (=> (and (and (select b_24@@7 (invRecv4 o_4@@36)) (< NoPerm FullPerm)) (qpRange4 o_4@@36)) (and (=> (< NoPerm FullPerm) (= (invRecv4 o_4@@36) o_4@@36)) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@36 rank) (+ (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@36 rank) FullPerm)))) (=> (not (and (and (select b_24@@7 (invRecv4 o_4@@36)) (< NoPerm FullPerm)) (qpRange4 o_4@@36))) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@36 rank) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@36 rank))))
 :qid |stdinbpl.743:22|
 :skolemid |114|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@36 rank))
)))) (=> (and (and (and (and (and (and (and (and (and (and (and (forall ((o_4@@37 T@Ref) (f_5@@29 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@0) o_4@@37 f_5@@29) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@1) o_4@@37 f_5@@29)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@0) o_4@@37 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@1) o_4@@37 f_5@@29))
)) (forall ((o_4@@38 T@Ref) (f_5@@30 T@Field_14181_14182) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@38 f_5@@30) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) o_4@@38 f_5@@30)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@0) o_4@@38 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) o_4@@38 f_5@@30))
))) (forall ((o_4@@39 T@Ref) (f_5@@31 T@Field_20426_3442) ) (!  (=> (not (= f_5@@31 rank)) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@39 f_5@@31) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@39 f_5@@31)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@0) o_4@@39 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@39 f_5@@31))
))) (forall ((o_4@@40 T@Ref) (f_5@@32 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@0) o_4@@40 f_5@@32) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@1) o_4@@40 f_5@@32)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@0) o_4@@40 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@1) o_4@@40 f_5@@32))
))) (forall ((o_4@@41 T@Ref) (f_5@@33 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@0) o_4@@41 f_5@@33) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@1) o_4@@41 f_5@@33)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@0) o_4@@41 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@1) o_4@@41 f_5@@33))
))) (forall ((o_4@@42 T@Ref) (f_5@@34 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@0) o_4@@42 f_5@@34) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@1) o_4@@42 f_5@@34)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@0) o_4@@42 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@1) o_4@@42 f_5@@34))
))) (forall ((o_4@@43 T@Ref) (f_5@@35 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@0) o_4@@43 f_5@@35) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@1) o_4@@43 f_5@@35)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@0) o_4@@43 f_5@@35))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@1) o_4@@43 f_5@@35))
))) (forall ((o_4@@44 T@Ref) (f_5@@36 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@0) o_4@@44 f_5@@36) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@1) o_4@@44 f_5@@36)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@0) o_4@@44 f_5@@36))
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@1) o_4@@44 f_5@@36))
))) (forall ((o_4@@45 T@Ref) (f_5@@37 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@0) o_4@@45 f_5@@37) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@1) o_4@@45 f_5@@37)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@0) o_4@@45 f_5@@37))
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@1) o_4@@45 f_5@@37))
))) (forall ((o_4@@46 T@Ref) (f_5@@38 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@0) o_4@@46 f_5@@38) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@1) o_4@@46 f_5@@38)))
 :qid |stdinbpl.747:29|
 :skolemid |115|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@0) o_4@@46 f_5@@38))
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@1) o_4@@46 f_5@@38))
))) (state Heap@1 QPMask@1)) (and (and (forall ((l$0_2 T@Ref) ) (!  (=> (select b_24@@7 l$0_2) (<= 0 (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_2 rank)))
 :qid |stdinbpl.753:20|
 :skolemid |116|
 :pattern ( (select b_24@@7 l$0_2))
)) (forall ((l$0_3 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_3) (not (= (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_3 parent) null))) (and (select b_24@@7 (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_3 parent)) (> (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_3 parent) rank) (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_3 rank))))
 :qid |stdinbpl.757:20|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_3 parent))
))) (and (state Heap@1 QPMask@1) (state Heap@1 QPMask@1)))) (and (=> (= (ControlFlow 0 25) (- 0 29)) (forall ((l$0_4 T@Ref) (l$0_4_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_4 l$0_4_1)) (select b_24@@7 l$0_4)) (select b_24@@7 l$0_4_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_4 l$0_4_1)))
 :qid |stdinbpl.774:17|
 :skolemid |118|
 :pattern ( (neverTriggered5 l$0_4) (neverTriggered5 l$0_4_1))
))) (=> (forall ((l$0_4@@0 T@Ref) (l$0_4_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_4@@0 l$0_4_1@@0)) (select b_24@@7 l$0_4@@0)) (select b_24@@7 l$0_4_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_4@@0 l$0_4_1@@0)))
 :qid |stdinbpl.774:17|
 :skolemid |118|
 :pattern ( (neverTriggered5 l$0_4@@0) (neverTriggered5 l$0_4_1@@0))
)) (and (=> (= (ControlFlow 0 25) (- 0 28)) (forall ((l$0_4@@1 T@Ref) ) (!  (=> (select b_24@@7 l$0_4@@1) (>= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) l$0_4@@1 parent) FullPerm))
 :qid |stdinbpl.781:17|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_4@@1 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) l$0_4@@1 parent))
 :pattern ( (select b_24@@7 l$0_4@@1))
))) (=> (forall ((l$0_4@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0_4@@2) (>= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) l$0_4@@2 parent) FullPerm))
 :qid |stdinbpl.781:17|
 :skolemid |119|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_4@@2 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) l$0_4@@2 parent))
 :pattern ( (select b_24@@7 l$0_4@@2))
)) (=> (forall ((l$0_4@@3 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_4@@3) (< NoPerm FullPerm)) (and (qpRange5 l$0_4@@3) (= (invRecv5 l$0_4@@3) l$0_4@@3)))
 :qid |stdinbpl.787:22|
 :skolemid |120|
 :pattern ( (select (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@1) l$0_4@@3 parent))
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) l$0_4@@3 parent))
 :pattern ( (select b_24@@7 l$0_4@@3))
)) (=> (and (forall ((o_4@@47 T@Ref) ) (!  (=> (and (select b_24@@7 (invRecv5 o_4@@47)) (and (< NoPerm FullPerm) (qpRange5 o_4@@47))) (= (invRecv5 o_4@@47) o_4@@47))
 :qid |stdinbpl.791:22|
 :skolemid |121|
 :pattern ( (invRecv5 o_4@@47))
)) (forall ((o_4@@48 T@Ref) ) (!  (and (=> (and (select b_24@@7 (invRecv5 o_4@@48)) (and (< NoPerm FullPerm) (qpRange5 o_4@@48))) (and (= (invRecv5 o_4@@48) o_4@@48) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@48 parent) (- (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) o_4@@48 parent) FullPerm)))) (=> (not (and (select b_24@@7 (invRecv5 o_4@@48)) (and (< NoPerm FullPerm) (qpRange5 o_4@@48)))) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@48 parent) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) o_4@@48 parent))))
 :qid |stdinbpl.797:22|
 :skolemid |122|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@48 parent))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@49 T@Ref) (f_5@@39 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@1) o_4@@49 f_5@@39) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@2) o_4@@49 f_5@@39)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@2) o_4@@49 f_5@@39))
)) (forall ((o_4@@50 T@Ref) (f_5@@40 T@Field_14181_14182) ) (!  (=> (not (= f_5@@40 parent)) (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@1) o_4@@50 f_5@@40) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@50 f_5@@40)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@50 f_5@@40))
))) (forall ((o_4@@51 T@Ref) (f_5@@41 T@Field_20426_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@1) o_4@@51 f_5@@41) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) o_4@@51 f_5@@41)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) o_4@@51 f_5@@41))
))) (forall ((o_4@@52 T@Ref) (f_5@@42 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@1) o_4@@52 f_5@@42) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@2) o_4@@52 f_5@@42)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@2) o_4@@52 f_5@@42))
))) (forall ((o_4@@53 T@Ref) (f_5@@43 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@1) o_4@@53 f_5@@43) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@2) o_4@@53 f_5@@43)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@2) o_4@@53 f_5@@43))
))) (forall ((o_4@@54 T@Ref) (f_5@@44 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@1) o_4@@54 f_5@@44) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@2) o_4@@54 f_5@@44)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@2) o_4@@54 f_5@@44))
))) (forall ((o_4@@55 T@Ref) (f_5@@45 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@1) o_4@@55 f_5@@45) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@2) o_4@@55 f_5@@45)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@2) o_4@@55 f_5@@45))
))) (forall ((o_4@@56 T@Ref) (f_5@@46 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@1) o_4@@56 f_5@@46) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@2) o_4@@56 f_5@@46)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@2) o_4@@56 f_5@@46))
))) (forall ((o_4@@57 T@Ref) (f_5@@47 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@1) o_4@@57 f_5@@47) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@2) o_4@@57 f_5@@47)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@2) o_4@@57 f_5@@47))
))) (forall ((o_4@@58 T@Ref) (f_5@@48 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@1) o_4@@58 f_5@@48) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@2) o_4@@58 f_5@@48)))
 :qid |stdinbpl.803:29|
 :skolemid |123|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@2) o_4@@58 f_5@@48))
))) (and (=> (= (ControlFlow 0 25) (- 0 27)) (forall ((l$0_5 T@Ref) (l$0_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_5 l$0_5_1)) (select b_24@@7 l$0_5)) (select b_24@@7 l$0_5_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_5 l$0_5_1)))
 :qid |stdinbpl.815:17|
 :skolemid |124|
 :pattern ( (neverTriggered6 l$0_5) (neverTriggered6 l$0_5_1))
))) (=> (forall ((l$0_5@@0 T@Ref) (l$0_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= l$0_5@@0 l$0_5_1@@0)) (select b_24@@7 l$0_5@@0)) (select b_24@@7 l$0_5_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= l$0_5@@0 l$0_5_1@@0)))
 :qid |stdinbpl.815:17|
 :skolemid |124|
 :pattern ( (neverTriggered6 l$0_5@@0) (neverTriggered6 l$0_5_1@@0))
)) (and (=> (= (ControlFlow 0 25) (- 0 26)) (forall ((l$0_5@@1 T@Ref) ) (!  (=> (select b_24@@7 l$0_5@@1) (>= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) l$0_5@@1 rank) FullPerm))
 :qid |stdinbpl.822:17|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_5@@1 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) l$0_5@@1 rank))
 :pattern ( (select b_24@@7 l$0_5@@1))
))) (=> (forall ((l$0_5@@2 T@Ref) ) (!  (=> (select b_24@@7 l$0_5@@2) (>= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) l$0_5@@2 rank) FullPerm))
 :qid |stdinbpl.822:17|
 :skolemid |125|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_5@@2 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) l$0_5@@2 rank))
 :pattern ( (select b_24@@7 l$0_5@@2))
)) (=> (forall ((l$0_5@@3 T@Ref) ) (!  (=> (and (select b_24@@7 l$0_5@@3) (< NoPerm FullPerm)) (and (qpRange6 l$0_5@@3) (= (invRecv6 l$0_5@@3) l$0_5@@3)))
 :qid |stdinbpl.828:22|
 :skolemid |126|
 :pattern ( (select (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@1) l$0_5@@3 rank))
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) l$0_5@@3 rank))
 :pattern ( (select b_24@@7 l$0_5@@3))
)) (=> (and (forall ((o_4@@59 T@Ref) ) (!  (=> (and (select b_24@@7 (invRecv6 o_4@@59)) (and (< NoPerm FullPerm) (qpRange6 o_4@@59))) (= (invRecv6 o_4@@59) o_4@@59))
 :qid |stdinbpl.832:22|
 :skolemid |127|
 :pattern ( (invRecv6 o_4@@59))
)) (forall ((o_4@@60 T@Ref) ) (!  (and (=> (and (select b_24@@7 (invRecv6 o_4@@60)) (and (< NoPerm FullPerm) (qpRange6 o_4@@60))) (and (= (invRecv6 o_4@@60) o_4@@60) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) o_4@@60 rank) (- (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) o_4@@60 rank) FullPerm)))) (=> (not (and (select b_24@@7 (invRecv6 o_4@@60)) (and (< NoPerm FullPerm) (qpRange6 o_4@@60)))) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) o_4@@60 rank) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) o_4@@60 rank))))
 :qid |stdinbpl.838:22|
 :skolemid |128|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) o_4@@60 rank))
))) (=> (and (and (and (and (and (and (and (and (and (forall ((o_4@@61 T@Ref) (f_5@@49 T@Field_14168_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@2) o_4@@61 f_5@@49) (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@3) o_4@@61 f_5@@49)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| QPMask@3) o_4@@61 f_5@@49))
)) (forall ((o_4@@62 T@Ref) (f_5@@50 T@Field_14181_14182) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@2) o_4@@62 f_5@@50) (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@3) o_4@@62 f_5@@50)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| QPMask@3) o_4@@62 f_5@@50))
))) (forall ((o_4@@63 T@Ref) (f_5@@51 T@Field_20426_3442) ) (!  (=> (not (= f_5@@51 rank)) (= (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@2) o_4@@63 f_5@@51) (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) o_4@@63 f_5@@51)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| QPMask@3) o_4@@63 f_5@@51))
))) (forall ((o_4@@64 T@Ref) (f_5@@52 T@Field_8678_8684) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@2) o_4@@64 f_5@@52) (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@3) o_4@@64 f_5@@52)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| QPMask@3) o_4@@64 f_5@@52))
))) (forall ((o_4@@65 T@Ref) (f_5@@53 T@Field_8678_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@2) o_4@@65 f_5@@53) (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@3) o_4@@65 f_5@@53)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| QPMask@3) o_4@@65 f_5@@53))
))) (forall ((o_4@@66 T@Ref) (f_5@@54 T@Field_8683_53) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@2) o_4@@66 f_5@@54) (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@3) o_4@@66 f_5@@54)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| QPMask@3) o_4@@66 f_5@@54))
))) (forall ((o_4@@67 T@Ref) (f_5@@55 T@Field_8683_8676) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@2) o_4@@67 f_5@@55) (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@3) o_4@@67 f_5@@55)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| QPMask@3) o_4@@67 f_5@@55))
))) (forall ((o_4@@68 T@Ref) (f_5@@56 T@Field_8683_3442) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@2) o_4@@68 f_5@@56) (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@3) o_4@@68 f_5@@56)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| QPMask@3) o_4@@68 f_5@@56))
))) (forall ((o_4@@69 T@Ref) (f_5@@57 T@Field_20474_20475) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@2) o_4@@69 f_5@@57) (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@3) o_4@@69 f_5@@57)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| QPMask@3) o_4@@69 f_5@@57))
))) (forall ((o_4@@70 T@Ref) (f_5@@58 T@Field_20488_20493) ) (!  (=> true (= (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@2) o_4@@70 f_5@@58) (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@3) o_4@@70 f_5@@58)))
 :qid |stdinbpl.844:29|
 :skolemid |129|
 :pattern ( (select (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| QPMask@3) o_4@@70 f_5@@58))
))) (and (and (=> (= (ControlFlow 0 25) 24) anon22_Else_correct) (=> (= (ControlFlow 0 25) 3) anon23_Then_correct)) (=> (= (ControlFlow 0 25) 5) anon23_Else_correct))))))))))))))))))))))))))
(let ((anon21_Else_correct  (=> (HasDirectPerm_8683_8684 Mask@1 null (uf_bank b_24@@7)) (=> (and (= Heap@1 Heap@@32) (= (ControlFlow 0 33) 25)) anon6_correct))))
(let ((anon21_Then_correct  (=> (and (and (not (HasDirectPerm_8683_8684 Mask@1 null (uf_bank b_24@@7))) (= Heap@0 (PolymorphicMapType_14108 (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8349_8350#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8678_3442#PolymorphicMapType_14108| Heap@@32) (store (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@32) null (uf_bank b_24@@7) newVersion@0) (|PolymorphicMapType_14108_8689_31164#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8678_8684#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8678_42452#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8683_3442#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8683_8676#PolymorphicMapType_14108| Heap@@32) (|PolymorphicMapType_14108_8683_53#PolymorphicMapType_14108| Heap@@32)))) (and (= Heap@1 Heap@0) (= (ControlFlow 0 32) 25))) anon6_correct)))
(let ((anon4_correct  (=> (= Mask@1 (PolymorphicMapType_14129 (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| Mask@0) (store (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@0) null (uf_bank b_24@@7) (- (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@0) null (uf_bank b_24@@7)) FullPerm)) (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| Mask@0) (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| Mask@0))) (and (=> (= (ControlFlow 0 34) 32) anon21_Then_correct) (=> (= (ControlFlow 0 34) 33) anon21_Else_correct)))))
(let ((anon20_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 37) 34)) anon4_correct)))
(let ((anon20_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= FullPerm (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@0) null (uf_bank b_24@@7)))) (=> (<= FullPerm (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| Mask@0) null (uf_bank b_24@@7))) (=> (= (ControlFlow 0 35) 34) anon4_correct))))))
(let ((anon19_Else_correct  (=> (and (|uf_bank#trigger_8683| Heap@@32 (uf_bank b_24@@7)) (= (select (|PolymorphicMapType_14108_8683_8684#PolymorphicMapType_14108| Heap@@32) null (uf_bank b_24@@7)) (CombineFrames (FrameFragment_3644 (|uf_bank#condqp1| Heap@@32 b_24@@7)) (FrameFragment_3644 (|uf_bank#condqp2| Heap@@32 b_24@@7))))) (and (=> (= (ControlFlow 0 38) 35) anon20_Then_correct) (=> (= (ControlFlow 0 38) 37) anon20_Else_correct)))))
(let ((anon19_Then_correct true))
(let ((anon0_correct  (=> (and (and (and (state Heap@@32 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_14108_8346_53#PolymorphicMapType_14108| Heap@@32) l_2 $allocated) (= Mask@0 (PolymorphicMapType_14129 (|PolymorphicMapType_14129_8675_8676#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8678_3442#PolymorphicMapType_14129| ZeroMask) (store (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ZeroMask) null (uf_bank b_24@@7) (+ (select (|PolymorphicMapType_14129_8683_8684#PolymorphicMapType_14129| ZeroMask) null (uf_bank b_24@@7)) FullPerm)) (|PolymorphicMapType_14129_8675_8684#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8675_53#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8675_51680#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8683_8676#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8683_3442#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8683_53#PolymorphicMapType_14129| ZeroMask) (|PolymorphicMapType_14129_8683_52091#PolymorphicMapType_14129| ZeroMask))))) (and (and (state Heap@@32 Mask@0) (state Heap@@32 Mask@0)) (and (select b_24@@7 l_2) (state Heap@@32 Mask@0)))) (and (=> (= (ControlFlow 0 39) 1) anon19_Then_correct) (=> (= (ControlFlow 0 39) 38) anon19_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 40) 39) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 12) (- 13))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
