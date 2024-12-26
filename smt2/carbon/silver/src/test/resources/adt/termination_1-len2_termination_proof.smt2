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
(declare-sort T@Field_11966_53 0)
(declare-sort T@Field_11979_11980 0)
(declare-sort T@Field_11966_31312 0)
(declare-sort T@Field_11966_31179 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11927 0)) (((PolymorphicMapType_11927 (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_53 Real)) (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| (Array T@Ref T@Field_11979_11980 Real)) (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_31179 Real)) (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_31312 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12455 0)) (((PolymorphicMapType_12455 (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_53 Bool)) (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (Array T@Ref T@Field_11979_11980 Bool)) (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_31179 Bool)) (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_31312 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11906 0)) (((PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_53 Bool)) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| (Array T@Ref T@Field_11979_11980 T@Ref)) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_31312 T@PolymorphicMapType_12455)) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_31179 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906) Bool)
(declare-sort T@ListDomainType_16798 0)
(declare-fun bounded_26473 (T@ListDomainType_16798) Bool)
(declare-sort T@IntListDomainType 0)
(declare-fun bounded_7254 (T@IntListDomainType) Bool)
(declare-sort T@PairDomainType_5064_23562 0)
(declare-fun bounded_29691 (T@PairDomainType_5064_23562) Bool)
(declare-sort T@DListDomainType_5313_24225 0)
(declare-fun bounded_30140 (T@DListDomainType_5313_24225) Bool)
(declare-sort T@ValDomainType 0)
(declare-fun DCons_5313_24225 (Int T@ValDomainType T@DListDomainType_5313_24225) T@DListDomainType_5313_24225)
(declare-fun decreasing_30120 (T@DListDomainType_5313_24225 T@DListDomainType_5313_24225) Bool)
(declare-fun state (T@PolymorphicMapType_11906 T@PolymorphicMapType_11927) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11927) Bool)
(declare-fun Cons_7427 (T@ValDomainType T@ListDomainType_16798) T@ListDomainType_16798)
(declare-fun decreasing_26453 (T@ListDomainType_16798 T@ListDomainType_16798) Bool)
(declare-fun ICons (Int T@IntListDomainType) T@IntListDomainType)
(declare-fun decreasing_7248 (T@IntListDomainType T@IntListDomainType) Bool)
(declare-fun decreasing_29671 (T@PairDomainType_5064_23562 T@PairDomainType_5064_23562) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12455)
(declare-fun DList_tag_5392_7656 (T@DListDomainType_5313_24225) Int)
(declare-fun |lenBad'| (T@PolymorphicMapType_11906 T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun dummyFunction_2742 (Int) Bool)
(declare-fun |lenBad#triggerStateless| (T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun |ilenBad'| (T@PolymorphicMapType_11906 T@IntListDomainType Int) Int)
(declare-fun |ilenBad#triggerStateless| (T@IntListDomainType Int) Int)
(declare-fun |lenBad#frame| (T@FrameType T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |ilenBad#frame| (T@FrameType T@IntListDomainType Int) Int)
(declare-fun List_tag_7319 (T@ListDomainType_16798) Int)
(declare-fun Nil_7430 () T@ListDomainType_16798)
(declare-fun IntList_tag (T@IntListDomainType) Int)
(declare-fun INil () T@IntListDomainType)
(declare-fun DNil_5392_7656 () T@DListDomainType_5313_24225)
(declare-fun |len'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |len#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |len2'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |len2#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |lenBad2'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |lenBad2#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |ilen'| (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun |ilen#triggerStateless| (T@IntListDomainType) Int)
(declare-fun |ilen2'| (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun |ilen2#triggerStateless| (T@IntListDomainType) Int)
(declare-fun |stupidFunc'| (T@PolymorphicMapType_11906 T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun dummyFunction_7635 (T@ValDomainType) Bool)
(declare-fun |stupidFunc#triggerStateless| (T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |dlen'| (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun |dlen#triggerStateless| (T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad'| (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad#triggerStateless| (T@DListDomainType_5313_24225) Int)
(declare-fun dlenBad (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |len2#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun |dlenBad#trigger| (T@FrameType T@DListDomainType_5313_24225) Bool)
(declare-fun |ilen#trigger| (T@FrameType T@IntListDomainType) Bool)
(declare-fun |dlen#trigger| (T@FrameType T@DListDomainType_5313_24225) Bool)
(declare-fun |lenBad2#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun |ilen2#trigger| (T@FrameType T@IntListDomainType) Bool)
(declare-fun |len#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun len_3 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun len2 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun lenBad2 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun ilen (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun ilen2 (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun stupidFunc (T@PolymorphicMapType_11906 T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun dlen (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun get_IntList_itail (T@IntListDomainType) T@IntListDomainType)
(declare-fun get_DList_dtail_5392_7656 (T@DListDomainType_5313_24225) T@DListDomainType_5313_24225)
(declare-fun get_List_tail_7319 (T@ListDomainType_16798) T@ListDomainType_16798)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906 T@PolymorphicMapType_11927) Bool)
(declare-fun IsPredicateField_11966_31270 (T@Field_11966_31179) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11966 (T@Field_11966_31179) T@Field_11966_31312)
(declare-fun HasDirectPerm_11966_31243 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_31179) Bool)
(declare-fun IsWandField_11966_32819 (T@Field_11966_31179) Bool)
(declare-fun WandMaskField_11966 (T@Field_11966_31179) T@Field_11966_31312)
(declare-fun dummyHeap () T@PolymorphicMapType_11906)
(declare-fun ZeroMask () T@PolymorphicMapType_11927)
(declare-fun $allocated () T@Field_11966_53)
(declare-fun InsidePredicate_11966_11966 (T@Field_11966_31179 T@FrameType T@Field_11966_31179 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11966_35782 (T@Field_11966_31312) Bool)
(declare-fun IsWandField_11966_35798 (T@Field_11966_31312) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11966_11980 (T@Field_11979_11980) Bool)
(declare-fun IsWandField_11966_11980 (T@Field_11979_11980) Bool)
(declare-fun IsPredicateField_11966_53 (T@Field_11966_53) Bool)
(declare-fun IsWandField_11966_53 (T@Field_11966_53) Bool)
(declare-fun HasDirectPerm_11966_36153 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_31312) Bool)
(declare-fun HasDirectPerm_11966_11980 (T@PolymorphicMapType_11927 T@Ref T@Field_11979_11980) Bool)
(declare-fun HasDirectPerm_11966_53 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun ilenBad (T@PolymorphicMapType_11906 T@IntListDomainType Int) Int)
(declare-fun lenBad (T@PolymorphicMapType_11906 T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_11927 T@PolymorphicMapType_11927 T@PolymorphicMapType_11927) Bool)
(declare-fun pair_1_5064_23562 (Int T@ValDomainType) T@PairDomainType_5064_23562)
(declare-fun Pair_tag_5064_23562 (T@PairDomainType_5064_23562) Int)
(declare-fun |len#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |len2#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |lenBad2#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |ilen#frame| (T@FrameType T@IntListDomainType) Int)
(declare-fun |ilen2#frame| (T@FrameType T@IntListDomainType) Int)
(declare-fun |stupidFunc#frame| (T@FrameType T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |dlen#frame| (T@FrameType T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad#frame| (T@FrameType T@DListDomainType_5313_24225) Int)
(declare-fun get_DList_dvalue1_5313_24225 (T@DListDomainType_5313_24225) Int)
(declare-fun get_DList_dvalue2_5313_24225 (T@DListDomainType_5313_24225) T@ValDomainType)
(declare-fun get_List_value_7427 (T@ListDomainType_16798) T@ValDomainType)
(declare-fun get_IntList_ivalue (T@IntListDomainType) Int)
(declare-fun get_Pair_fst_5064_23562 (T@PairDomainType_5064_23562) Int)
(declare-fun get_Pair_snd_5064_23562 (T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |ilenBad#trigger| (T@FrameType T@IntListDomainType Int) Bool)
(declare-fun |lenBad#trigger| (T@FrameType T@ListDomainType_16798 T@ValDomainType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11906) (Heap1 T@PolymorphicMapType_11906) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@ListDomainType_16798) ) (! (bounded_26473 x)
 :qid |stdinbpl.283:19|
 :skolemid |29|
 :pattern ( (bounded_26473 x))
)))
(assert (forall ((x@@0 T@IntListDomainType) ) (! (bounded_7254 x@@0)
 :qid |stdinbpl.360:15|
 :skolemid |36|
 :pattern ( (bounded_7254 x@@0))
)))
(assert (forall ((x@@1 T@PairDomainType_5064_23562) ) (! (bounded_29691 x@@1)
 :qid |stdinbpl.425:22|
 :skolemid |42|
 :pattern ( (bounded_29691 x@@1))
)))
(assert (forall ((x@@2 T@DListDomainType_5313_24225) ) (! (bounded_30140 x@@2)
 :qid |stdinbpl.514:22|
 :skolemid |51|
 :pattern ( (bounded_30140 x@@2))
)))
(assert (forall ((dtail_0 T@DListDomainType_5313_24225) (dvalue1_1 Int) (dvalue2_1 T@ValDomainType) ) (! (decreasing_30120 dtail_0 (DCons_5313_24225 dvalue1_1 dvalue2_1 dtail_0))
 :qid |stdinbpl.502:22|
 :skolemid |49|
 :pattern ( (DCons_5313_24225 dvalue1_1 dvalue2_1 dtail_0))
)))
(assert (forall ((Heap T@PolymorphicMapType_11906) (Mask T@PolymorphicMapType_11927) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((tail_0 T@ListDomainType_16798) (value_1 T@ValDomainType) ) (! (decreasing_26453 tail_0 (Cons_7427 value_1 tail_0))
 :qid |stdinbpl.271:19|
 :skolemid |27|
 :pattern ( (Cons_7427 value_1 tail_0))
)))
(assert (forall ((itail_0 T@IntListDomainType) (ivalue_1 Int) ) (! (decreasing_7248 itail_0 (ICons ivalue_1 itail_0))
 :qid |stdinbpl.348:15|
 :skolemid |34|
 :pattern ( (ICons ivalue_1 itail_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11906) (Heap1@@0 T@PolymorphicMapType_11906) (Heap2 T@PolymorphicMapType_11906) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@ListDomainType_16798) (v2 T@ListDomainType_16798) (v3 T@ListDomainType_16798) ) (!  (=> (and (decreasing_26453 v1 v2) (decreasing_26453 v2 v3)) (decreasing_26453 v1 v3))
 :qid |stdinbpl.277:19|
 :skolemid |28|
 :pattern ( (decreasing_26453 v1 v2) (decreasing_26453 v2 v3))
)))
(assert (forall ((v1@@0 T@IntListDomainType) (v2@@0 T@IntListDomainType) (v3@@0 T@IntListDomainType) ) (!  (=> (and (decreasing_7248 v1@@0 v2@@0) (decreasing_7248 v2@@0 v3@@0)) (decreasing_7248 v1@@0 v3@@0))
 :qid |stdinbpl.354:15|
 :skolemid |35|
 :pattern ( (decreasing_7248 v1@@0 v2@@0) (decreasing_7248 v2@@0 v3@@0))
)))
(assert (forall ((v1@@1 T@PairDomainType_5064_23562) (v2@@1 T@PairDomainType_5064_23562) (v3@@1 T@PairDomainType_5064_23562) ) (!  (=> (and (decreasing_29671 v1@@1 v2@@1) (decreasing_29671 v2@@1 v3@@1)) (decreasing_29671 v1@@1 v3@@1))
 :qid |stdinbpl.419:22|
 :skolemid |41|
 :pattern ( (decreasing_29671 v1@@1 v2@@1) (decreasing_29671 v2@@1 v3@@1))
)))
(assert (forall ((v1@@2 T@DListDomainType_5313_24225) (v2@@2 T@DListDomainType_5313_24225) (v3@@2 T@DListDomainType_5313_24225) ) (!  (=> (and (decreasing_30120 v1@@2 v2@@2) (decreasing_30120 v2@@2 v3@@2)) (decreasing_30120 v1@@2 v3@@2))
 :qid |stdinbpl.508:22|
 :skolemid |50|
 :pattern ( (decreasing_30120 v1@@2 v2@@2) (decreasing_30120 v2@@2 v3@@2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11966_31312) ) (!  (not (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11966_31179) ) (!  (not (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11979_11980) ) (!  (not (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11966_53) ) (!  (not (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((dvalue1_1@@0 Int) (dvalue2_1@@0 T@ValDomainType) (dtail_1 T@DListDomainType_5313_24225) ) (! (= (DList_tag_5392_7656 (DCons_5313_24225 dvalue1_1@@0 dvalue2_1@@0 dtail_1)) 0)
 :qid |stdinbpl.480:22|
 :skolemid |47|
 :pattern ( (DCons_5313_24225 dvalue1_1@@0 dvalue2_1@@0 dtail_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11906) (l_2 T@ListDomainType_16798) (v_2 T@ValDomainType) ) (! (dummyFunction_2742 (|lenBad#triggerStateless| l_2 v_2))
 :qid |stdinbpl.689:15|
 :skolemid |63|
 :pattern ( (|lenBad'| Heap@@0 l_2 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11906) (l_2@@0 T@IntListDomainType) (v_2@@0 Int) ) (! (dummyFunction_2742 (|ilenBad#triggerStateless| l_2@@0 v_2@@0))
 :qid |stdinbpl.998:15|
 :skolemid |83|
 :pattern ( (|ilenBad'| Heap@@1 l_2@@0 v_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11906) (Mask@@0 T@PolymorphicMapType_11927) (l_2@@1 T@ListDomainType_16798) (v_2@@1 T@ValDomainType) ) (!  (=> (state Heap@@2 Mask@@0) (= (|lenBad'| Heap@@2 l_2@@1 v_2@@1) (|lenBad#frame| EmptyFrame l_2@@1 v_2@@1)))
 :qid |stdinbpl.702:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@0) (|lenBad'| Heap@@2 l_2@@1 v_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11906) (Mask@@1 T@PolymorphicMapType_11927) (l_2@@2 T@IntListDomainType) (v_2@@2 Int) ) (!  (=> (state Heap@@3 Mask@@1) (= (|ilenBad'| Heap@@3 l_2@@2 v_2@@2) (|ilenBad#frame| EmptyFrame l_2@@2 v_2@@2)))
 :qid |stdinbpl.1011:15|
 :skolemid |85|
 :pattern ( (state Heap@@3 Mask@@1) (|ilenBad'| Heap@@3 l_2@@2 v_2@@2))
)))
(assert (= (List_tag_7319 Nil_7430) 1))
(assert (= (IntList_tag INil) 1))
(assert (= (DList_tag_5392_7656 DNil_5392_7656) 1))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11906) (l_2@@3 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|len#triggerStateless| l_2@@3))
 :qid |stdinbpl.530:15|
 :skolemid |53|
 :pattern ( (|len'| Heap@@4 l_2@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11906) (l_2@@4 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|len2#triggerStateless| l_2@@4))
 :qid |stdinbpl.608:15|
 :skolemid |58|
 :pattern ( (|len2'| Heap@@5 l_2@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11906) (l_2@@5 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|lenBad2#triggerStateless| l_2@@5))
 :qid |stdinbpl.764:15|
 :skolemid |68|
 :pattern ( (|lenBad2'| Heap@@6 l_2@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11906) (l_2@@6 T@IntListDomainType) ) (! (dummyFunction_2742 (|ilen#triggerStateless| l_2@@6))
 :qid |stdinbpl.839:15|
 :skolemid |73|
 :pattern ( (|ilen'| Heap@@7 l_2@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11906) (l_2@@7 T@IntListDomainType) ) (! (dummyFunction_2742 (|ilen2#triggerStateless| l_2@@7))
 :qid |stdinbpl.917:15|
 :skolemid |78|
 :pattern ( (|ilen2'| Heap@@8 l_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11906) (p_1 T@PairDomainType_5064_23562) ) (! (dummyFunction_7635 (|stupidFunc#triggerStateless| p_1))
 :qid |stdinbpl.1073:15|
 :skolemid |88|
 :pattern ( (|stupidFunc'| Heap@@9 p_1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11906) (l_2@@8 T@DListDomainType_5313_24225) ) (! (dummyFunction_2742 (|dlen#triggerStateless| l_2@@8))
 :qid |stdinbpl.1134:15|
 :skolemid |92|
 :pattern ( (|dlen'| Heap@@10 l_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11906) (l_2@@9 T@DListDomainType_5313_24225) ) (! (dummyFunction_2742 (|dlenBad#triggerStateless| l_2@@9))
 :qid |stdinbpl.1212:15|
 :skolemid |97|
 :pattern ( (|dlenBad'| Heap@@11 l_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11906) (Mask@@2 T@PolymorphicMapType_11927) (l_2@@10 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@12 Mask@@2) (< AssumeFunctionsAbove 1)) (= (dlenBad Heap@@12 l_2@@10) (ite (= (DList_tag_5392_7656 l_2@@10) 1) 0 (+ 1 (|dlenBad'| Heap@@12 l_2@@10)))))
 :qid |stdinbpl.1218:15|
 :skolemid |98|
 :pattern ( (state Heap@@12 Mask@@2) (dlenBad Heap@@12 l_2@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11906) (Mask@@3 T@PolymorphicMapType_11927) (l_2@@11 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@13 Mask@@3) (or (< AssumeFunctionsAbove 0) (|len2#trigger| EmptyFrame l_2@@11))) (>= (|len2'| Heap@@13 l_2@@11) 0))
 :qid |stdinbpl.627:15|
 :skolemid |61|
 :pattern ( (state Heap@@13 Mask@@3) (|len2'| Heap@@13 l_2@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11906) (Mask@@4 T@PolymorphicMapType_11927) (l_2@@12 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@14 Mask@@4) (or (< AssumeFunctionsAbove 1) (|dlenBad#trigger| EmptyFrame l_2@@12))) (>= (|dlenBad'| Heap@@14 l_2@@12) 0))
 :qid |stdinbpl.1231:15|
 :skolemid |100|
 :pattern ( (state Heap@@14 Mask@@4) (|dlenBad'| Heap@@14 l_2@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11906) (Mask@@5 T@PolymorphicMapType_11927) (l_2@@13 T@IntListDomainType) ) (!  (=> (and (state Heap@@15 Mask@@5) (or (< AssumeFunctionsAbove 2) (|ilen#trigger| EmptyFrame l_2@@13))) (>= (|ilen'| Heap@@15 l_2@@13) 0))
 :qid |stdinbpl.858:15|
 :skolemid |76|
 :pattern ( (state Heap@@15 Mask@@5) (|ilen'| Heap@@15 l_2@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11906) (Mask@@6 T@PolymorphicMapType_11927) (l_2@@14 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@16 Mask@@6) (or (< AssumeFunctionsAbove 4) (|dlen#trigger| EmptyFrame l_2@@14))) (>= (|dlen'| Heap@@16 l_2@@14) 0))
 :qid |stdinbpl.1153:15|
 :skolemid |95|
 :pattern ( (state Heap@@16 Mask@@6) (|dlen'| Heap@@16 l_2@@14))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11906) (Mask@@7 T@PolymorphicMapType_11927) (l_2@@15 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@17 Mask@@7) (or (< AssumeFunctionsAbove 5) (|lenBad2#trigger| EmptyFrame l_2@@15))) (>= (|lenBad2'| Heap@@17 l_2@@15) 0))
 :qid |stdinbpl.783:15|
 :skolemid |71|
 :pattern ( (state Heap@@17 Mask@@7) (|lenBad2'| Heap@@17 l_2@@15))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11906) (Mask@@8 T@PolymorphicMapType_11927) (l_2@@16 T@IntListDomainType) ) (!  (=> (and (state Heap@@18 Mask@@8) (or (< AssumeFunctionsAbove 7) (|ilen2#trigger| EmptyFrame l_2@@16))) (>= (|ilen2'| Heap@@18 l_2@@16) 0))
 :qid |stdinbpl.936:15|
 :skolemid |81|
 :pattern ( (state Heap@@18 Mask@@8) (|ilen2'| Heap@@18 l_2@@16))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11906) (Mask@@9 T@PolymorphicMapType_11927) (l_2@@17 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@19 Mask@@9) (or (< AssumeFunctionsAbove 8) (|len#trigger| EmptyFrame l_2@@17))) (>= (|len'| Heap@@19 l_2@@17) 0))
 :qid |stdinbpl.549:15|
 :skolemid |56|
 :pattern ( (state Heap@@19 Mask@@9) (|len'| Heap@@19 l_2@@17))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11906) (l_2@@18 T@ListDomainType_16798) ) (!  (and (= (len_3 Heap@@20 l_2@@18) (|len'| Heap@@20 l_2@@18)) (dummyFunction_2742 (|len#triggerStateless| l_2@@18)))
 :qid |stdinbpl.526:15|
 :skolemid |52|
 :pattern ( (len_3 Heap@@20 l_2@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11906) (l_2@@19 T@ListDomainType_16798) ) (!  (and (= (len2 Heap@@21 l_2@@19) (|len2'| Heap@@21 l_2@@19)) (dummyFunction_2742 (|len2#triggerStateless| l_2@@19)))
 :qid |stdinbpl.604:15|
 :skolemid |57|
 :pattern ( (len2 Heap@@21 l_2@@19))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11906) (l_2@@20 T@ListDomainType_16798) ) (!  (and (= (lenBad2 Heap@@22 l_2@@20) (|lenBad2'| Heap@@22 l_2@@20)) (dummyFunction_2742 (|lenBad2#triggerStateless| l_2@@20)))
 :qid |stdinbpl.760:15|
 :skolemid |67|
 :pattern ( (lenBad2 Heap@@22 l_2@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11906) (l_2@@21 T@IntListDomainType) ) (!  (and (= (ilen Heap@@23 l_2@@21) (|ilen'| Heap@@23 l_2@@21)) (dummyFunction_2742 (|ilen#triggerStateless| l_2@@21)))
 :qid |stdinbpl.835:15|
 :skolemid |72|
 :pattern ( (ilen Heap@@23 l_2@@21))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11906) (l_2@@22 T@IntListDomainType) ) (!  (and (= (ilen2 Heap@@24 l_2@@22) (|ilen2'| Heap@@24 l_2@@22)) (dummyFunction_2742 (|ilen2#triggerStateless| l_2@@22)))
 :qid |stdinbpl.913:15|
 :skolemid |77|
 :pattern ( (ilen2 Heap@@24 l_2@@22))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11906) (p_1@@0 T@PairDomainType_5064_23562) ) (!  (and (= (stupidFunc Heap@@25 p_1@@0) (|stupidFunc'| Heap@@25 p_1@@0)) (dummyFunction_7635 (|stupidFunc#triggerStateless| p_1@@0)))
 :qid |stdinbpl.1069:15|
 :skolemid |87|
 :pattern ( (stupidFunc Heap@@25 p_1@@0))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11906) (l_2@@23 T@DListDomainType_5313_24225) ) (!  (and (= (dlen Heap@@26 l_2@@23) (|dlen'| Heap@@26 l_2@@23)) (dummyFunction_2742 (|dlen#triggerStateless| l_2@@23)))
 :qid |stdinbpl.1130:15|
 :skolemid |91|
 :pattern ( (dlen Heap@@26 l_2@@23))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11906) (l_2@@24 T@DListDomainType_5313_24225) ) (!  (and (= (dlenBad Heap@@27 l_2@@24) (|dlenBad'| Heap@@27 l_2@@24)) (dummyFunction_2742 (|dlenBad#triggerStateless| l_2@@24)))
 :qid |stdinbpl.1208:15|
 :skolemid |96|
 :pattern ( (dlenBad Heap@@27 l_2@@24))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11906) (Mask@@10 T@PolymorphicMapType_11927) (l_2@@25 T@IntListDomainType) ) (!  (=> (and (state Heap@@28 Mask@@10) (< AssumeFunctionsAbove 2)) (= (ilen Heap@@28 l_2@@25) (ite (= (IntList_tag l_2@@25) 1) 0 (+ 1 (|ilen'| Heap@@28 (get_IntList_itail l_2@@25))))))
 :qid |stdinbpl.845:15|
 :skolemid |74|
 :pattern ( (state Heap@@28 Mask@@10) (ilen Heap@@28 l_2@@25))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11906) (Mask@@11 T@PolymorphicMapType_11927) (l_2@@26 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@29 Mask@@11) (< AssumeFunctionsAbove 4)) (= (dlen Heap@@29 l_2@@26) (ite (= (DList_tag_5392_7656 l_2@@26) 1) 0 (+ 1 (|dlen'| Heap@@29 (get_DList_dtail_5392_7656 l_2@@26))))))
 :qid |stdinbpl.1140:15|
 :skolemid |93|
 :pattern ( (state Heap@@29 Mask@@11) (dlen Heap@@29 l_2@@26))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11906) (Mask@@12 T@PolymorphicMapType_11927) (l_2@@27 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@30 Mask@@12) (< AssumeFunctionsAbove 8)) (= (len_3 Heap@@30 l_2@@27) (ite (= (List_tag_7319 l_2@@27) 1) 0 (+ 1 (|len'| Heap@@30 (get_List_tail_7319 l_2@@27))))))
 :qid |stdinbpl.536:15|
 :skolemid |54|
 :pattern ( (state Heap@@30 Mask@@12) (len_3 Heap@@30 l_2@@27))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11906) (ExhaleHeap T@PolymorphicMapType_11906) (Mask@@13 T@PolymorphicMapType_11927) (pm_f T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap Mask@@13) (=> (and (HasDirectPerm_11966_31243 Mask@@13 null pm_f) (IsPredicateField_11966_31270 pm_f)) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@31) null (PredicateMaskField_11966 pm_f)) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap) null (PredicateMaskField_11966 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap Mask@@13) (IsPredicateField_11966_31270 pm_f) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap) null (PredicateMaskField_11966 pm_f)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11906) (ExhaleHeap@@0 T@PolymorphicMapType_11906) (Mask@@14 T@PolymorphicMapType_11927) (pm_f@@0 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@0 Mask@@14) (=> (and (HasDirectPerm_11966_31243 Mask@@14 null pm_f@@0) (IsWandField_11966_32819 pm_f@@0)) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@32) null (WandMaskField_11966 pm_f@@0)) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@0) null (WandMaskField_11966 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@0 Mask@@14) (IsWandField_11966_32819 pm_f@@0) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@0) null (WandMaskField_11966 pm_f@@0)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11906) (ExhaleHeap@@1 T@PolymorphicMapType_11906) (Mask@@15 T@PolymorphicMapType_11927) (pm_f@@1 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@1 Mask@@15) (=> (and (HasDirectPerm_11966_31243 Mask@@15 null pm_f@@1) (IsPredicateField_11966_31270 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11966_53) ) (!  (=> (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@33) o2 f_2) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11979_11980) ) (!  (=> (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@33) o2@@0 f_2@@0) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11966_31179) ) (!  (=> (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@33) o2@@1 f_2@@1) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11966_31312) ) (!  (=> (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) o2@@2 f_2@@2) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@1 Mask@@15) (IsPredicateField_11966_31270 pm_f@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11906) (ExhaleHeap@@2 T@PolymorphicMapType_11906) (Mask@@16 T@PolymorphicMapType_11927) (pm_f@@2 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@2 Mask@@16) (=> (and (HasDirectPerm_11966_31243 Mask@@16 null pm_f@@2) (IsWandField_11966_32819 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11966_53) ) (!  (=> (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@34) o2@@3 f_2@@3) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11979_11980) ) (!  (=> (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@34) o2@@4 f_2@@4) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11966_31179) ) (!  (=> (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@34) o2@@5 f_2@@5) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11966_31312) ) (!  (=> (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) o2@@6 f_2@@6) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@2 Mask@@16) (IsWandField_11966_32819 pm_f@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11906) (Mask@@17 T@PolymorphicMapType_11927) (l_2@@28 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@35 Mask@@17) (< AssumeFunctionsAbove 0)) (= (len2 Heap@@35 l_2@@28) (ite (= (List_tag_7319 l_2@@28) 1) 0 (ite (= (List_tag_7319 (get_List_tail_7319 l_2@@28)) 1) 1 (+ 2 (|len2'| Heap@@35 (get_List_tail_7319 (get_List_tail_7319 l_2@@28))))))))
 :qid |stdinbpl.614:15|
 :skolemid |59|
 :pattern ( (state Heap@@35 Mask@@17) (len2 Heap@@35 l_2@@28))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11906) (Mask@@18 T@PolymorphicMapType_11927) (l_2@@29 T@IntListDomainType) ) (!  (=> (and (state Heap@@36 Mask@@18) (< AssumeFunctionsAbove 7)) (= (ilen2 Heap@@36 l_2@@29) (ite (= (IntList_tag l_2@@29) 1) 0 (ite (= (IntList_tag (get_IntList_itail l_2@@29)) 1) 1 (+ 2 (|ilen2'| Heap@@36 (get_IntList_itail (get_IntList_itail l_2@@29))))))))
 :qid |stdinbpl.923:15|
 :skolemid |79|
 :pattern ( (state Heap@@36 Mask@@18) (ilen2 Heap@@36 l_2@@29))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11906) (ExhaleHeap@@3 T@PolymorphicMapType_11906) (Mask@@19 T@PolymorphicMapType_11927) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@3 Mask@@19) (=> (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@37) o_1 $allocated) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@3 Mask@@19) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11966_31179) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11966_11966 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11966_11966 p v_1 p w))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11906) (ExhaleHeap@@4 T@PolymorphicMapType_11906) (Mask@@20 T@PolymorphicMapType_11927) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@4 Mask@@20) (succHeap Heap@@38 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@4 Mask@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11927) (o_2@@3 T@Ref) (f_4@@3 T@Field_11966_31312) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11966_35782 f_4@@3))) (not (IsWandField_11966_35798 f_4@@3))) (<= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11927) (o_2@@4 T@Ref) (f_4@@4 T@Field_11966_31179) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11966_31270 f_4@@4))) (not (IsWandField_11966_32819 f_4@@4))) (<= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11927) (o_2@@5 T@Ref) (f_4@@5 T@Field_11979_11980) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11966_11980 f_4@@5))) (not (IsWandField_11966_11980 f_4@@5))) (<= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11927) (o_2@@6 T@Ref) (f_4@@6 T@Field_11966_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11966_53 f_4@@6))) (not (IsWandField_11966_53 f_4@@6))) (<= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11927) (o_2@@7 T@Ref) (f_4@@7 T@Field_11966_31312) ) (! (= (HasDirectPerm_11966_36153 Mask@@25 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@25) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_36153 Mask@@25 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11927) (o_2@@8 T@Ref) (f_4@@8 T@Field_11966_31179) ) (! (= (HasDirectPerm_11966_31243 Mask@@26 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@26) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_31243 Mask@@26 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11927) (o_2@@9 T@Ref) (f_4@@9 T@Field_11979_11980) ) (! (= (HasDirectPerm_11966_11980 Mask@@27 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@27) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_11980 Mask@@27 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11927) (o_2@@10 T@Ref) (f_4@@10 T@Field_11966_53) ) (! (= (HasDirectPerm_11966_53 Mask@@28 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@28) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_53 Mask@@28 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11906) (ExhaleHeap@@5 T@PolymorphicMapType_11906) (Mask@@29 T@PolymorphicMapType_11927) (o_1@@0 T@Ref) (f_2@@7 T@Field_11966_31312) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@5 Mask@@29) (=> (HasDirectPerm_11966_36153 Mask@@29 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@39) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@5 Mask@@29) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11906) (ExhaleHeap@@6 T@PolymorphicMapType_11906) (Mask@@30 T@PolymorphicMapType_11927) (o_1@@1 T@Ref) (f_2@@8 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@6 Mask@@30) (=> (HasDirectPerm_11966_31243 Mask@@30 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@40) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@6 Mask@@30) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11906) (ExhaleHeap@@7 T@PolymorphicMapType_11906) (Mask@@31 T@PolymorphicMapType_11927) (o_1@@2 T@Ref) (f_2@@9 T@Field_11979_11980) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@7 Mask@@31) (=> (HasDirectPerm_11966_11980 Mask@@31 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@41) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@7 Mask@@31) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11906) (ExhaleHeap@@8 T@PolymorphicMapType_11906) (Mask@@32 T@PolymorphicMapType_11927) (o_1@@3 T@Ref) (f_2@@10 T@Field_11966_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@8 Mask@@32) (=> (HasDirectPerm_11966_53 Mask@@32 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@42) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@8 Mask@@32) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11906) (Mask@@33 T@PolymorphicMapType_11927) (l_2@@30 T@IntListDomainType) (v_2@@3 Int) ) (!  (=> (and (state Heap@@43 Mask@@33) (< AssumeFunctionsAbove 3)) (= (ilenBad Heap@@43 l_2@@30 v_2@@3) (|ilenBad'| Heap@@43 (ICons v_2@@3 INil) v_2@@3)))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (state Heap@@43 Mask@@33) (ilenBad Heap@@43 l_2@@30 v_2@@3))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11906) (Mask@@34 T@PolymorphicMapType_11927) (l_2@@31 T@ListDomainType_16798) (v_2@@4 T@ValDomainType) ) (!  (=> (and (state Heap@@44 Mask@@34) (< AssumeFunctionsAbove 9)) (= (lenBad Heap@@44 l_2@@31 v_2@@4) (|lenBad'| Heap@@44 (Cons_7427 v_2@@4 Nil_7430) v_2@@4)))
 :qid |stdinbpl.695:15|
 :skolemid |64|
 :pattern ( (state Heap@@44 Mask@@34) (lenBad Heap@@44 l_2@@31 v_2@@4))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11966_31312) ) (! (= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11966_31179) ) (! (= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11979_11980) ) (! (= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11966_53) ) (! (= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11906) (l_2@@32 T@ListDomainType_16798) (v_2@@5 T@ValDomainType) ) (!  (and (= (lenBad Heap@@45 l_2@@32 v_2@@5) (|lenBad'| Heap@@45 l_2@@32 v_2@@5)) (dummyFunction_2742 (|lenBad#triggerStateless| l_2@@32 v_2@@5)))
 :qid |stdinbpl.685:15|
 :skolemid |62|
 :pattern ( (lenBad Heap@@45 l_2@@32 v_2@@5))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11906) (l_2@@33 T@IntListDomainType) (v_2@@6 Int) ) (!  (and (= (ilenBad Heap@@46 l_2@@33 v_2@@6) (|ilenBad'| Heap@@46 l_2@@33 v_2@@6)) (dummyFunction_2742 (|ilenBad#triggerStateless| l_2@@33 v_2@@6)))
 :qid |stdinbpl.994:15|
 :skolemid |82|
 :pattern ( (ilenBad Heap@@46 l_2@@33 v_2@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11927) (SummandMask1 T@PolymorphicMapType_11927) (SummandMask2 T@PolymorphicMapType_11927) (o_2@@15 T@Ref) (f_4@@15 T@Field_11966_31312) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11927) (SummandMask1@@0 T@PolymorphicMapType_11927) (SummandMask2@@0 T@PolymorphicMapType_11927) (o_2@@16 T@Ref) (f_4@@16 T@Field_11966_31179) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11927) (SummandMask1@@1 T@PolymorphicMapType_11927) (SummandMask2@@1 T@PolymorphicMapType_11927) (o_2@@17 T@Ref) (f_4@@17 T@Field_11979_11980) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11927) (SummandMask1@@2 T@PolymorphicMapType_11927) (SummandMask2@@2 T@PolymorphicMapType_11927) (o_2@@18 T@Ref) (f_4@@18 T@Field_11966_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11906) (Mask@@35 T@PolymorphicMapType_11927) (l_2@@34 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@47 Mask@@35) (< AssumeFunctionsAbove 5)) (= (lenBad2 Heap@@47 l_2@@34) (+ 1 (|lenBad2'| Heap@@47 l_2@@34))))
 :qid |stdinbpl.770:15|
 :skolemid |69|
 :pattern ( (state Heap@@47 Mask@@35) (lenBad2 Heap@@47 l_2@@34))
)))
(assert (forall ((value_1@@0 T@ValDomainType) (tail_1 T@ListDomainType_16798) ) (! (= (List_tag_7319 (Cons_7427 value_1@@0 tail_1)) 0)
 :qid |stdinbpl.249:19|
 :skolemid |25|
 :pattern ( (Cons_7427 value_1@@0 tail_1))
)))
(assert (forall ((ivalue_1@@0 Int) (itail_1 T@IntListDomainType) ) (! (= (IntList_tag (ICons ivalue_1@@0 itail_1)) 0)
 :qid |stdinbpl.326:15|
 :skolemid |32|
 :pattern ( (ICons ivalue_1@@0 itail_1))
)))
(assert (forall ((fst Int) (snd_1 T@ValDomainType) ) (! (= (Pair_tag_5064_23562 (pair_1_5064_23562 fst snd_1)) 0)
 :qid |stdinbpl.397:22|
 :skolemid |39|
 :pattern ( (pair_1_5064_23562 fst snd_1))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11906) (Mask@@36 T@PolymorphicMapType_11927) (l_2@@35 T@ListDomainType_16798) ) (!  (=> (state Heap@@48 Mask@@36) (= (|len'| Heap@@48 l_2@@35) (|len#frame| EmptyFrame l_2@@35)))
 :qid |stdinbpl.543:15|
 :skolemid |55|
 :pattern ( (state Heap@@48 Mask@@36) (|len'| Heap@@48 l_2@@35))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11906) (Mask@@37 T@PolymorphicMapType_11927) (l_2@@36 T@ListDomainType_16798) ) (!  (=> (state Heap@@49 Mask@@37) (= (|len2'| Heap@@49 l_2@@36) (|len2#frame| EmptyFrame l_2@@36)))
 :qid |stdinbpl.621:15|
 :skolemid |60|
 :pattern ( (state Heap@@49 Mask@@37) (|len2'| Heap@@49 l_2@@36))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11906) (Mask@@38 T@PolymorphicMapType_11927) (l_2@@37 T@ListDomainType_16798) ) (!  (=> (state Heap@@50 Mask@@38) (= (|lenBad2'| Heap@@50 l_2@@37) (|lenBad2#frame| EmptyFrame l_2@@37)))
 :qid |stdinbpl.777:15|
 :skolemid |70|
 :pattern ( (state Heap@@50 Mask@@38) (|lenBad2'| Heap@@50 l_2@@37))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11906) (Mask@@39 T@PolymorphicMapType_11927) (l_2@@38 T@IntListDomainType) ) (!  (=> (state Heap@@51 Mask@@39) (= (|ilen'| Heap@@51 l_2@@38) (|ilen#frame| EmptyFrame l_2@@38)))
 :qid |stdinbpl.852:15|
 :skolemid |75|
 :pattern ( (state Heap@@51 Mask@@39) (|ilen'| Heap@@51 l_2@@38))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11906) (Mask@@40 T@PolymorphicMapType_11927) (l_2@@39 T@IntListDomainType) ) (!  (=> (state Heap@@52 Mask@@40) (= (|ilen2'| Heap@@52 l_2@@39) (|ilen2#frame| EmptyFrame l_2@@39)))
 :qid |stdinbpl.930:15|
 :skolemid |80|
 :pattern ( (state Heap@@52 Mask@@40) (|ilen2'| Heap@@52 l_2@@39))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11906) (Mask@@41 T@PolymorphicMapType_11927) (p_1@@1 T@PairDomainType_5064_23562) ) (!  (=> (state Heap@@53 Mask@@41) (= (|stupidFunc'| Heap@@53 p_1@@1) (|stupidFunc#frame| EmptyFrame p_1@@1)))
 :qid |stdinbpl.1086:15|
 :skolemid |90|
 :pattern ( (state Heap@@53 Mask@@41) (|stupidFunc'| Heap@@53 p_1@@1))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11906) (Mask@@42 T@PolymorphicMapType_11927) (l_2@@40 T@DListDomainType_5313_24225) ) (!  (=> (state Heap@@54 Mask@@42) (= (|dlen'| Heap@@54 l_2@@40) (|dlen#frame| EmptyFrame l_2@@40)))
 :qid |stdinbpl.1147:15|
 :skolemid |94|
 :pattern ( (state Heap@@54 Mask@@42) (|dlen'| Heap@@54 l_2@@40))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11906) (Mask@@43 T@PolymorphicMapType_11927) (l_2@@41 T@DListDomainType_5313_24225) ) (!  (=> (state Heap@@55 Mask@@43) (= (|dlenBad'| Heap@@55 l_2@@41) (|dlenBad#frame| EmptyFrame l_2@@41)))
 :qid |stdinbpl.1225:15|
 :skolemid |99|
 :pattern ( (state Heap@@55 Mask@@43) (|dlenBad'| Heap@@55 l_2@@41))
)))
(assert (forall ((dvalue1_1@@1 Int) (dvalue2_1@@1 T@ValDomainType) (dtail_1@@0 T@DListDomainType_5313_24225) ) (! (= dvalue1_1@@1 (get_DList_dvalue1_5313_24225 (DCons_5313_24225 dvalue1_1@@1 dvalue2_1@@1 dtail_1@@0)))
 :qid |stdinbpl.456:22|
 :skolemid |43|
 :pattern ( (DCons_5313_24225 dvalue1_1@@1 dvalue2_1@@1 dtail_1@@0))
)))
(assert (forall ((dvalue1_1@@2 Int) (dvalue2_1@@2 T@ValDomainType) (dtail_1@@1 T@DListDomainType_5313_24225) ) (! (= dvalue2_1@@2 (get_DList_dvalue2_5313_24225 (DCons_5313_24225 dvalue1_1@@2 dvalue2_1@@2 dtail_1@@1)))
 :qid |stdinbpl.462:22|
 :skolemid |44|
 :pattern ( (DCons_5313_24225 dvalue1_1@@2 dvalue2_1@@2 dtail_1@@1))
)))
(assert (forall ((dvalue1_1@@3 Int) (dvalue2_1@@3 T@ValDomainType) (dtail_1@@2 T@DListDomainType_5313_24225) ) (! (= dtail_1@@2 (get_DList_dtail_5392_7656 (DCons_5313_24225 dvalue1_1@@3 dvalue2_1@@3 dtail_1@@2)))
 :qid |stdinbpl.468:22|
 :skolemid |45|
 :pattern ( (DCons_5313_24225 dvalue1_1@@3 dvalue2_1@@3 dtail_1@@2))
)))
(assert (forall ((value_1@@1 T@ValDomainType) (tail_1@@0 T@ListDomainType_16798) ) (! (= value_1@@1 (get_List_value_7427 (Cons_7427 value_1@@1 tail_1@@0)))
 :qid |stdinbpl.231:19|
 :skolemid |22|
 :pattern ( (Cons_7427 value_1@@1 tail_1@@0))
)))
(assert (forall ((value_1@@2 T@ValDomainType) (tail_1@@1 T@ListDomainType_16798) ) (! (= tail_1@@1 (get_List_tail_7319 (Cons_7427 value_1@@2 tail_1@@1)))
 :qid |stdinbpl.237:19|
 :skolemid |23|
 :pattern ( (Cons_7427 value_1@@2 tail_1@@1))
)))
(assert (forall ((ivalue_1@@1 Int) (itail_1@@0 T@IntListDomainType) ) (! (= ivalue_1@@1 (get_IntList_ivalue (ICons ivalue_1@@1 itail_1@@0)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (ICons ivalue_1@@1 itail_1@@0))
)))
(assert (forall ((ivalue_1@@2 Int) (itail_1@@1 T@IntListDomainType) ) (! (= itail_1@@1 (get_IntList_itail (ICons ivalue_1@@2 itail_1@@1)))
 :qid |stdinbpl.317:15|
 :skolemid |31|
 :pattern ( (ICons ivalue_1@@2 itail_1@@1))
)))
(assert (forall ((fst@@0 Int) (snd_1@@0 T@ValDomainType) ) (! (= fst@@0 (get_Pair_fst_5064_23562 (pair_1_5064_23562 fst@@0 snd_1@@0)))
 :qid |stdinbpl.385:22|
 :skolemid |37|
 :pattern ( (pair_1_5064_23562 fst@@0 snd_1@@0))
)))
(assert (forall ((fst@@1 Int) (snd_1@@1 T@ValDomainType) ) (! (= snd_1@@1 (get_Pair_snd_5064_23562 (pair_1_5064_23562 fst@@1 snd_1@@1)))
 :qid |stdinbpl.391:22|
 :skolemid |38|
 :pattern ( (pair_1_5064_23562 fst@@1 snd_1@@1))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11906) (o T@Ref) (f_3 T@Field_11966_31179) (v T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@56) (store (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@56) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@56) (store (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@56) o f_3 v)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11906) (o@@0 T@Ref) (f_3@@0 T@Field_11966_31312) (v@@0 T@PolymorphicMapType_12455) ) (! (succHeap Heap@@57 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@57) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@57) (store (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@57) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@57) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@57) (store (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@57) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11906) (o@@1 T@Ref) (f_3@@1 T@Field_11979_11980) (v@@1 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@58) (store (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@58) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@58) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@58) (store (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@58) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@58) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_11906) (o@@2 T@Ref) (f_3@@2 T@Field_11966_53) (v@@2 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_11906 (store (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@59) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (store (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@59) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@59)))
)))
(assert (forall ((t_2 T@PairDomainType_5064_23562) ) (! (= t_2 (pair_1_5064_23562 (get_Pair_fst_5064_23562 t_2) (get_Pair_snd_5064_23562 t_2)))
 :qid |stdinbpl.403:22|
 :skolemid |40|
 :pattern ( (Pair_tag_5064_23562 t_2))
 :pattern ( (get_Pair_fst_5064_23562 t_2))
 :pattern ( (get_Pair_snd_5064_23562 t_2))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11979_11980) (Heap@@60 T@PolymorphicMapType_11906) ) (!  (=> (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@60) o@@3 $allocated) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@60) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@60) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@60) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_11966_31179) (v_1@@0 T@FrameType) (q T@Field_11966_31179) (w@@0 T@FrameType) (r T@Field_11966_31179) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11966_11966 p@@1 v_1@@0 q w@@0) (InsidePredicate_11966_11966 q w@@0 r u)) (InsidePredicate_11966_11966 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11966_11966 p@@1 v_1@@0 q w@@0) (InsidePredicate_11966_11966 q w@@0 r u))
)))
(assert (forall ((t_2@@0 T@ListDomainType_16798) ) (!  (or (= t_2@@0 Nil_7430) (= t_2@@0 (Cons_7427 (get_List_value_7427 t_2@@0) (get_List_tail_7319 t_2@@0))))
 :qid |stdinbpl.255:19|
 :skolemid |26|
 :pattern ( (List_tag_7319 t_2@@0))
 :pattern ( (get_List_value_7427 t_2@@0))
 :pattern ( (get_List_tail_7319 t_2@@0))
)))
(assert (forall ((t_2@@1 T@IntListDomainType) ) (!  (or (= t_2@@1 INil) (= t_2@@1 (ICons (get_IntList_ivalue t_2@@1) (get_IntList_itail t_2@@1))))
 :qid |stdinbpl.332:15|
 :skolemid |33|
 :pattern ( (IntList_tag t_2@@1))
 :pattern ( (get_IntList_ivalue t_2@@1))
 :pattern ( (get_IntList_itail t_2@@1))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@2 T@DListDomainType_5313_24225) ) (!  (or (= t_2@@2 DNil_5392_7656) (= t_2@@2 (DCons_5313_24225 (get_DList_dvalue1_5313_24225 t_2@@2) (get_DList_dvalue2_5313_24225 t_2@@2) (get_DList_dtail_5392_7656 t_2@@2))))
 :qid |stdinbpl.486:22|
 :skolemid |48|
 :pattern ( (DList_tag_5392_7656 t_2@@2))
 :pattern ( (get_DList_dvalue1_5313_24225 t_2@@2))
 :pattern ( (get_DList_dvalue2_5313_24225 t_2@@2))
 :pattern ( (get_DList_dtail_5392_7656 t_2@@2))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_11906) (Mask@@44 T@PolymorphicMapType_11927) (l_2@@42 T@IntListDomainType) (v_2@@7 Int) ) (!  (=> (and (state Heap@@61 Mask@@44) (or (< AssumeFunctionsAbove 3) (|ilenBad#trigger| EmptyFrame l_2@@42 v_2@@7))) (>= (|ilenBad'| Heap@@61 l_2@@42 v_2@@7) 0))
 :qid |stdinbpl.1017:15|
 :skolemid |86|
 :pattern ( (state Heap@@61 Mask@@44) (|ilenBad'| Heap@@61 l_2@@42 v_2@@7))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_11906) (Mask@@45 T@PolymorphicMapType_11927) (l_2@@43 T@ListDomainType_16798) (v_2@@8 T@ValDomainType) ) (!  (=> (and (state Heap@@62 Mask@@45) (or (< AssumeFunctionsAbove 9) (|lenBad#trigger| EmptyFrame l_2@@43 v_2@@8))) (>= (|lenBad'| Heap@@62 l_2@@43 v_2@@8) 0))
 :qid |stdinbpl.708:15|
 :skolemid |66|
 :pattern ( (state Heap@@62 Mask@@45) (|lenBad'| Heap@@62 l_2@@43 v_2@@8))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_11906) (Mask@@46 T@PolymorphicMapType_11927) (p_1@@2 T@PairDomainType_5064_23562) ) (!  (=> (and (state Heap@@63 Mask@@46) (< AssumeFunctionsAbove 6)) (= (stupidFunc Heap@@63 p_1@@2) (|stupidFunc'| Heap@@63 p_1@@2)))
 :qid |stdinbpl.1079:15|
 :skolemid |89|
 :pattern ( (state Heap@@63 Mask@@46) (stupidFunc Heap@@63 p_1@@2))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@64 () T@PolymorphicMapType_11906)
(declare-fun l_2@@44 () T@ListDomainType_16798)
(set-info :boogie-vc-id len2_termination_proof)
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
 (=> (= (ControlFlow 0 0) 10) (let ((anon6_correct true))
(let ((anon5_correct  (=> (and (state Heap@@64 ZeroMask) (= (ControlFlow 0 3) 1)) anon6_correct)))
(let ((anon8_Else_correct  (=> (not (= (List_tag_7319 (get_List_tail_7319 l_2@@44)) 1)) (and (=> (= (ControlFlow 0 5) (- 0 7)) (decreasing_26453 (get_List_tail_7319 (get_List_tail_7319 l_2@@44)) l_2@@44)) (=> (decreasing_26453 (get_List_tail_7319 (get_List_tail_7319 l_2@@44)) l_2@@44) (and (=> (= (ControlFlow 0 5) (- 0 6)) (bounded_26473 l_2@@44)) (=> (bounded_26473 l_2@@44) (=> (and (state Heap@@64 ZeroMask) (= (ControlFlow 0 5) 3)) anon5_correct))))))))
(let ((anon8_Then_correct  (=> (and (= (List_tag_7319 (get_List_tail_7319 l_2@@44)) 1) (= (ControlFlow 0 4) 3)) anon5_correct)))
(let ((anon7_Else_correct  (=> (not (= (List_tag_7319 l_2@@44) 1)) (and (=> (= (ControlFlow 0 8) 4) anon8_Then_correct) (=> (= (ControlFlow 0 8) 5) anon8_Else_correct)))))
(let ((anon7_Then_correct  (=> (and (= (List_tag_7319 l_2@@44) 1) (= (ControlFlow 0 2) 1)) anon6_correct)))
(let ((anon0_correct  (=> (state Heap@@64 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (=> (= (ControlFlow 0 9) 2) anon7_Then_correct) (=> (= (ControlFlow 0 9) 8) anon7_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 10) 9) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
(reset)
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
(declare-sort T@Field_11966_53 0)
(declare-sort T@Field_11979_11980 0)
(declare-sort T@Field_11966_31312 0)
(declare-sort T@Field_11966_31179 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11927 0)) (((PolymorphicMapType_11927 (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_53 Real)) (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| (Array T@Ref T@Field_11979_11980 Real)) (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_31179 Real)) (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| (Array T@Ref T@Field_11966_31312 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_12455 0)) (((PolymorphicMapType_12455 (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_53 Bool)) (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (Array T@Ref T@Field_11979_11980 Bool)) (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_31179 Bool)) (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (Array T@Ref T@Field_11966_31312 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11906 0)) (((PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_53 Bool)) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| (Array T@Ref T@Field_11979_11980 T@Ref)) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_31312 T@PolymorphicMapType_12455)) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| (Array T@Ref T@Field_11966_31179 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906) Bool)
(declare-sort T@ListDomainType_16798 0)
(declare-fun bounded_26473 (T@ListDomainType_16798) Bool)
(declare-sort T@IntListDomainType 0)
(declare-fun bounded_7254 (T@IntListDomainType) Bool)
(declare-sort T@PairDomainType_5064_23562 0)
(declare-fun bounded_29691 (T@PairDomainType_5064_23562) Bool)
(declare-sort T@DListDomainType_5313_24225 0)
(declare-fun bounded_30140 (T@DListDomainType_5313_24225) Bool)
(declare-sort T@ValDomainType 0)
(declare-fun DCons_5313_24225 (Int T@ValDomainType T@DListDomainType_5313_24225) T@DListDomainType_5313_24225)
(declare-fun decreasing_30120 (T@DListDomainType_5313_24225 T@DListDomainType_5313_24225) Bool)
(declare-fun state (T@PolymorphicMapType_11906 T@PolymorphicMapType_11927) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11927) Bool)
(declare-fun Cons_7427 (T@ValDomainType T@ListDomainType_16798) T@ListDomainType_16798)
(declare-fun decreasing_26453 (T@ListDomainType_16798 T@ListDomainType_16798) Bool)
(declare-fun ICons (Int T@IntListDomainType) T@IntListDomainType)
(declare-fun decreasing_7248 (T@IntListDomainType T@IntListDomainType) Bool)
(declare-fun decreasing_29671 (T@PairDomainType_5064_23562 T@PairDomainType_5064_23562) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_12455)
(declare-fun DList_tag_5392_7656 (T@DListDomainType_5313_24225) Int)
(declare-fun |lenBad'| (T@PolymorphicMapType_11906 T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun dummyFunction_2742 (Int) Bool)
(declare-fun |lenBad#triggerStateless| (T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun |ilenBad'| (T@PolymorphicMapType_11906 T@IntListDomainType Int) Int)
(declare-fun |ilenBad#triggerStateless| (T@IntListDomainType Int) Int)
(declare-fun |lenBad#frame| (T@FrameType T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |ilenBad#frame| (T@FrameType T@IntListDomainType Int) Int)
(declare-fun List_tag_7319 (T@ListDomainType_16798) Int)
(declare-fun Nil_7430 () T@ListDomainType_16798)
(declare-fun IntList_tag (T@IntListDomainType) Int)
(declare-fun INil () T@IntListDomainType)
(declare-fun DNil_5392_7656 () T@DListDomainType_5313_24225)
(declare-fun |len'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |len#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |len2'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |len2#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |lenBad2'| (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun |lenBad2#triggerStateless| (T@ListDomainType_16798) Int)
(declare-fun |ilen'| (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun |ilen#triggerStateless| (T@IntListDomainType) Int)
(declare-fun |ilen2'| (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun |ilen2#triggerStateless| (T@IntListDomainType) Int)
(declare-fun |stupidFunc'| (T@PolymorphicMapType_11906 T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun dummyFunction_7635 (T@ValDomainType) Bool)
(declare-fun |stupidFunc#triggerStateless| (T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |dlen'| (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun |dlen#triggerStateless| (T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad'| (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad#triggerStateless| (T@DListDomainType_5313_24225) Int)
(declare-fun dlenBad (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |len2#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun |dlenBad#trigger| (T@FrameType T@DListDomainType_5313_24225) Bool)
(declare-fun |ilen#trigger| (T@FrameType T@IntListDomainType) Bool)
(declare-fun |dlen#trigger| (T@FrameType T@DListDomainType_5313_24225) Bool)
(declare-fun |lenBad2#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun |ilen2#trigger| (T@FrameType T@IntListDomainType) Bool)
(declare-fun |len#trigger| (T@FrameType T@ListDomainType_16798) Bool)
(declare-fun len_3 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun len2 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun lenBad2 (T@PolymorphicMapType_11906 T@ListDomainType_16798) Int)
(declare-fun ilen (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun ilen2 (T@PolymorphicMapType_11906 T@IntListDomainType) Int)
(declare-fun stupidFunc (T@PolymorphicMapType_11906 T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun dlen (T@PolymorphicMapType_11906 T@DListDomainType_5313_24225) Int)
(declare-fun get_IntList_itail (T@IntListDomainType) T@IntListDomainType)
(declare-fun get_DList_dtail_5392_7656 (T@DListDomainType_5313_24225) T@DListDomainType_5313_24225)
(declare-fun get_List_tail_7319 (T@ListDomainType_16798) T@ListDomainType_16798)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11906 T@PolymorphicMapType_11906 T@PolymorphicMapType_11927) Bool)
(declare-fun IsPredicateField_11966_31270 (T@Field_11966_31179) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11966 (T@Field_11966_31179) T@Field_11966_31312)
(declare-fun HasDirectPerm_11966_31243 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_31179) Bool)
(declare-fun IsWandField_11966_32819 (T@Field_11966_31179) Bool)
(declare-fun WandMaskField_11966 (T@Field_11966_31179) T@Field_11966_31312)
(declare-fun dummyHeap () T@PolymorphicMapType_11906)
(declare-fun ZeroMask () T@PolymorphicMapType_11927)
(declare-fun $allocated () T@Field_11966_53)
(declare-fun InsidePredicate_11966_11966 (T@Field_11966_31179 T@FrameType T@Field_11966_31179 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11966_35782 (T@Field_11966_31312) Bool)
(declare-fun IsWandField_11966_35798 (T@Field_11966_31312) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11966_11980 (T@Field_11979_11980) Bool)
(declare-fun IsWandField_11966_11980 (T@Field_11979_11980) Bool)
(declare-fun IsPredicateField_11966_53 (T@Field_11966_53) Bool)
(declare-fun IsWandField_11966_53 (T@Field_11966_53) Bool)
(declare-fun HasDirectPerm_11966_36153 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_31312) Bool)
(declare-fun HasDirectPerm_11966_11980 (T@PolymorphicMapType_11927 T@Ref T@Field_11979_11980) Bool)
(declare-fun HasDirectPerm_11966_53 (T@PolymorphicMapType_11927 T@Ref T@Field_11966_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun ilenBad (T@PolymorphicMapType_11906 T@IntListDomainType Int) Int)
(declare-fun lenBad (T@PolymorphicMapType_11906 T@ListDomainType_16798 T@ValDomainType) Int)
(declare-fun sumMask (T@PolymorphicMapType_11927 T@PolymorphicMapType_11927 T@PolymorphicMapType_11927) Bool)
(declare-fun pair_1_5064_23562 (Int T@ValDomainType) T@PairDomainType_5064_23562)
(declare-fun Pair_tag_5064_23562 (T@PairDomainType_5064_23562) Int)
(declare-fun |len#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |len2#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |lenBad2#frame| (T@FrameType T@ListDomainType_16798) Int)
(declare-fun |ilen#frame| (T@FrameType T@IntListDomainType) Int)
(declare-fun |ilen2#frame| (T@FrameType T@IntListDomainType) Int)
(declare-fun |stupidFunc#frame| (T@FrameType T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |dlen#frame| (T@FrameType T@DListDomainType_5313_24225) Int)
(declare-fun |dlenBad#frame| (T@FrameType T@DListDomainType_5313_24225) Int)
(declare-fun get_DList_dvalue1_5313_24225 (T@DListDomainType_5313_24225) Int)
(declare-fun get_DList_dvalue2_5313_24225 (T@DListDomainType_5313_24225) T@ValDomainType)
(declare-fun get_List_value_7427 (T@ListDomainType_16798) T@ValDomainType)
(declare-fun get_IntList_ivalue (T@IntListDomainType) Int)
(declare-fun get_Pair_fst_5064_23562 (T@PairDomainType_5064_23562) Int)
(declare-fun get_Pair_snd_5064_23562 (T@PairDomainType_5064_23562) T@ValDomainType)
(declare-fun |ilenBad#trigger| (T@FrameType T@IntListDomainType Int) Bool)
(declare-fun |lenBad#trigger| (T@FrameType T@ListDomainType_16798 T@ValDomainType) Bool)
(assert (forall ((Heap0 T@PolymorphicMapType_11906) (Heap1 T@PolymorphicMapType_11906) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((x T@ListDomainType_16798) ) (! (bounded_26473 x)
 :qid |stdinbpl.283:19|
 :skolemid |29|
 :pattern ( (bounded_26473 x))
)))
(assert (forall ((x@@0 T@IntListDomainType) ) (! (bounded_7254 x@@0)
 :qid |stdinbpl.360:15|
 :skolemid |36|
 :pattern ( (bounded_7254 x@@0))
)))
(assert (forall ((x@@1 T@PairDomainType_5064_23562) ) (! (bounded_29691 x@@1)
 :qid |stdinbpl.425:22|
 :skolemid |42|
 :pattern ( (bounded_29691 x@@1))
)))
(assert (forall ((x@@2 T@DListDomainType_5313_24225) ) (! (bounded_30140 x@@2)
 :qid |stdinbpl.514:22|
 :skolemid |51|
 :pattern ( (bounded_30140 x@@2))
)))
(assert (forall ((dtail_0 T@DListDomainType_5313_24225) (dvalue1_1 Int) (dvalue2_1 T@ValDomainType) ) (! (decreasing_30120 dtail_0 (DCons_5313_24225 dvalue1_1 dvalue2_1 dtail_0))
 :qid |stdinbpl.502:22|
 :skolemid |49|
 :pattern ( (DCons_5313_24225 dvalue1_1 dvalue2_1 dtail_0))
)))
(assert (forall ((Heap T@PolymorphicMapType_11906) (Mask T@PolymorphicMapType_11927) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((tail_0 T@ListDomainType_16798) (value_1 T@ValDomainType) ) (! (decreasing_26453 tail_0 (Cons_7427 value_1 tail_0))
 :qid |stdinbpl.271:19|
 :skolemid |27|
 :pattern ( (Cons_7427 value_1 tail_0))
)))
(assert (forall ((itail_0 T@IntListDomainType) (ivalue_1 Int) ) (! (decreasing_7248 itail_0 (ICons ivalue_1 itail_0))
 :qid |stdinbpl.348:15|
 :skolemid |34|
 :pattern ( (ICons ivalue_1 itail_0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11906) (Heap1@@0 T@PolymorphicMapType_11906) (Heap2 T@PolymorphicMapType_11906) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((v1 T@ListDomainType_16798) (v2 T@ListDomainType_16798) (v3 T@ListDomainType_16798) ) (!  (=> (and (decreasing_26453 v1 v2) (decreasing_26453 v2 v3)) (decreasing_26453 v1 v3))
 :qid |stdinbpl.277:19|
 :skolemid |28|
 :pattern ( (decreasing_26453 v1 v2) (decreasing_26453 v2 v3))
)))
(assert (forall ((v1@@0 T@IntListDomainType) (v2@@0 T@IntListDomainType) (v3@@0 T@IntListDomainType) ) (!  (=> (and (decreasing_7248 v1@@0 v2@@0) (decreasing_7248 v2@@0 v3@@0)) (decreasing_7248 v1@@0 v3@@0))
 :qid |stdinbpl.354:15|
 :skolemid |35|
 :pattern ( (decreasing_7248 v1@@0 v2@@0) (decreasing_7248 v2@@0 v3@@0))
)))
(assert (forall ((v1@@1 T@PairDomainType_5064_23562) (v2@@1 T@PairDomainType_5064_23562) (v3@@1 T@PairDomainType_5064_23562) ) (!  (=> (and (decreasing_29671 v1@@1 v2@@1) (decreasing_29671 v2@@1 v3@@1)) (decreasing_29671 v1@@1 v3@@1))
 :qid |stdinbpl.419:22|
 :skolemid |41|
 :pattern ( (decreasing_29671 v1@@1 v2@@1) (decreasing_29671 v2@@1 v3@@1))
)))
(assert (forall ((v1@@2 T@DListDomainType_5313_24225) (v2@@2 T@DListDomainType_5313_24225) (v3@@2 T@DListDomainType_5313_24225) ) (!  (=> (and (decreasing_30120 v1@@2 v2@@2) (decreasing_30120 v2@@2 v3@@2)) (decreasing_30120 v1@@2 v3@@2))
 :qid |stdinbpl.508:22|
 :skolemid |50|
 :pattern ( (decreasing_30120 v1@@2 v2@@2) (decreasing_30120 v2@@2 v3@@2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11966_31312) ) (!  (not (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11966_31179) ) (!  (not (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11979_11980) ) (!  (not (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11966_53) ) (!  (not (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((dvalue1_1@@0 Int) (dvalue2_1@@0 T@ValDomainType) (dtail_1 T@DListDomainType_5313_24225) ) (! (= (DList_tag_5392_7656 (DCons_5313_24225 dvalue1_1@@0 dvalue2_1@@0 dtail_1)) 0)
 :qid |stdinbpl.480:22|
 :skolemid |47|
 :pattern ( (DCons_5313_24225 dvalue1_1@@0 dvalue2_1@@0 dtail_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11906) (l_2 T@ListDomainType_16798) (v_2 T@ValDomainType) ) (! (dummyFunction_2742 (|lenBad#triggerStateless| l_2 v_2))
 :qid |stdinbpl.689:15|
 :skolemid |63|
 :pattern ( (|lenBad'| Heap@@0 l_2 v_2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11906) (l_2@@0 T@IntListDomainType) (v_2@@0 Int) ) (! (dummyFunction_2742 (|ilenBad#triggerStateless| l_2@@0 v_2@@0))
 :qid |stdinbpl.998:15|
 :skolemid |83|
 :pattern ( (|ilenBad'| Heap@@1 l_2@@0 v_2@@0))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11906) (Mask@@0 T@PolymorphicMapType_11927) (l_2@@1 T@ListDomainType_16798) (v_2@@1 T@ValDomainType) ) (!  (=> (state Heap@@2 Mask@@0) (= (|lenBad'| Heap@@2 l_2@@1 v_2@@1) (|lenBad#frame| EmptyFrame l_2@@1 v_2@@1)))
 :qid |stdinbpl.702:15|
 :skolemid |65|
 :pattern ( (state Heap@@2 Mask@@0) (|lenBad'| Heap@@2 l_2@@1 v_2@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11906) (Mask@@1 T@PolymorphicMapType_11927) (l_2@@2 T@IntListDomainType) (v_2@@2 Int) ) (!  (=> (state Heap@@3 Mask@@1) (= (|ilenBad'| Heap@@3 l_2@@2 v_2@@2) (|ilenBad#frame| EmptyFrame l_2@@2 v_2@@2)))
 :qid |stdinbpl.1011:15|
 :skolemid |85|
 :pattern ( (state Heap@@3 Mask@@1) (|ilenBad'| Heap@@3 l_2@@2 v_2@@2))
)))
(assert (= (List_tag_7319 Nil_7430) 1))
(assert (= (IntList_tag INil) 1))
(assert (= (DList_tag_5392_7656 DNil_5392_7656) 1))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11906) (l_2@@3 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|len#triggerStateless| l_2@@3))
 :qid |stdinbpl.530:15|
 :skolemid |53|
 :pattern ( (|len'| Heap@@4 l_2@@3))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11906) (l_2@@4 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|len2#triggerStateless| l_2@@4))
 :qid |stdinbpl.608:15|
 :skolemid |58|
 :pattern ( (|len2'| Heap@@5 l_2@@4))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11906) (l_2@@5 T@ListDomainType_16798) ) (! (dummyFunction_2742 (|lenBad2#triggerStateless| l_2@@5))
 :qid |stdinbpl.764:15|
 :skolemid |68|
 :pattern ( (|lenBad2'| Heap@@6 l_2@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11906) (l_2@@6 T@IntListDomainType) ) (! (dummyFunction_2742 (|ilen#triggerStateless| l_2@@6))
 :qid |stdinbpl.839:15|
 :skolemid |73|
 :pattern ( (|ilen'| Heap@@7 l_2@@6))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11906) (l_2@@7 T@IntListDomainType) ) (! (dummyFunction_2742 (|ilen2#triggerStateless| l_2@@7))
 :qid |stdinbpl.917:15|
 :skolemid |78|
 :pattern ( (|ilen2'| Heap@@8 l_2@@7))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11906) (p_1 T@PairDomainType_5064_23562) ) (! (dummyFunction_7635 (|stupidFunc#triggerStateless| p_1))
 :qid |stdinbpl.1073:15|
 :skolemid |88|
 :pattern ( (|stupidFunc'| Heap@@9 p_1))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11906) (l_2@@8 T@DListDomainType_5313_24225) ) (! (dummyFunction_2742 (|dlen#triggerStateless| l_2@@8))
 :qid |stdinbpl.1134:15|
 :skolemid |92|
 :pattern ( (|dlen'| Heap@@10 l_2@@8))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11906) (l_2@@9 T@DListDomainType_5313_24225) ) (! (dummyFunction_2742 (|dlenBad#triggerStateless| l_2@@9))
 :qid |stdinbpl.1212:15|
 :skolemid |97|
 :pattern ( (|dlenBad'| Heap@@11 l_2@@9))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11906) (Mask@@2 T@PolymorphicMapType_11927) (l_2@@10 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@12 Mask@@2) (< AssumeFunctionsAbove 1)) (= (dlenBad Heap@@12 l_2@@10) (ite (= (DList_tag_5392_7656 l_2@@10) 1) 0 (+ 1 (|dlenBad'| Heap@@12 l_2@@10)))))
 :qid |stdinbpl.1218:15|
 :skolemid |98|
 :pattern ( (state Heap@@12 Mask@@2) (dlenBad Heap@@12 l_2@@10))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11906) (Mask@@3 T@PolymorphicMapType_11927) (l_2@@11 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@13 Mask@@3) (or (< AssumeFunctionsAbove 0) (|len2#trigger| EmptyFrame l_2@@11))) (>= (|len2'| Heap@@13 l_2@@11) 0))
 :qid |stdinbpl.627:15|
 :skolemid |61|
 :pattern ( (state Heap@@13 Mask@@3) (|len2'| Heap@@13 l_2@@11))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11906) (Mask@@4 T@PolymorphicMapType_11927) (l_2@@12 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@14 Mask@@4) (or (< AssumeFunctionsAbove 1) (|dlenBad#trigger| EmptyFrame l_2@@12))) (>= (|dlenBad'| Heap@@14 l_2@@12) 0))
 :qid |stdinbpl.1231:15|
 :skolemid |100|
 :pattern ( (state Heap@@14 Mask@@4) (|dlenBad'| Heap@@14 l_2@@12))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11906) (Mask@@5 T@PolymorphicMapType_11927) (l_2@@13 T@IntListDomainType) ) (!  (=> (and (state Heap@@15 Mask@@5) (or (< AssumeFunctionsAbove 2) (|ilen#trigger| EmptyFrame l_2@@13))) (>= (|ilen'| Heap@@15 l_2@@13) 0))
 :qid |stdinbpl.858:15|
 :skolemid |76|
 :pattern ( (state Heap@@15 Mask@@5) (|ilen'| Heap@@15 l_2@@13))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11906) (Mask@@6 T@PolymorphicMapType_11927) (l_2@@14 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@16 Mask@@6) (or (< AssumeFunctionsAbove 4) (|dlen#trigger| EmptyFrame l_2@@14))) (>= (|dlen'| Heap@@16 l_2@@14) 0))
 :qid |stdinbpl.1153:15|
 :skolemid |95|
 :pattern ( (state Heap@@16 Mask@@6) (|dlen'| Heap@@16 l_2@@14))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11906) (Mask@@7 T@PolymorphicMapType_11927) (l_2@@15 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@17 Mask@@7) (or (< AssumeFunctionsAbove 5) (|lenBad2#trigger| EmptyFrame l_2@@15))) (>= (|lenBad2'| Heap@@17 l_2@@15) 0))
 :qid |stdinbpl.783:15|
 :skolemid |71|
 :pattern ( (state Heap@@17 Mask@@7) (|lenBad2'| Heap@@17 l_2@@15))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11906) (Mask@@8 T@PolymorphicMapType_11927) (l_2@@16 T@IntListDomainType) ) (!  (=> (and (state Heap@@18 Mask@@8) (or (< AssumeFunctionsAbove 7) (|ilen2#trigger| EmptyFrame l_2@@16))) (>= (|ilen2'| Heap@@18 l_2@@16) 0))
 :qid |stdinbpl.936:15|
 :skolemid |81|
 :pattern ( (state Heap@@18 Mask@@8) (|ilen2'| Heap@@18 l_2@@16))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11906) (Mask@@9 T@PolymorphicMapType_11927) (l_2@@17 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@19 Mask@@9) (or (< AssumeFunctionsAbove 8) (|len#trigger| EmptyFrame l_2@@17))) (>= (|len'| Heap@@19 l_2@@17) 0))
 :qid |stdinbpl.549:15|
 :skolemid |56|
 :pattern ( (state Heap@@19 Mask@@9) (|len'| Heap@@19 l_2@@17))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_11906) (l_2@@18 T@ListDomainType_16798) ) (!  (and (= (len_3 Heap@@20 l_2@@18) (|len'| Heap@@20 l_2@@18)) (dummyFunction_2742 (|len#triggerStateless| l_2@@18)))
 :qid |stdinbpl.526:15|
 :skolemid |52|
 :pattern ( (len_3 Heap@@20 l_2@@18))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_11906) (l_2@@19 T@ListDomainType_16798) ) (!  (and (= (len2 Heap@@21 l_2@@19) (|len2'| Heap@@21 l_2@@19)) (dummyFunction_2742 (|len2#triggerStateless| l_2@@19)))
 :qid |stdinbpl.604:15|
 :skolemid |57|
 :pattern ( (len2 Heap@@21 l_2@@19))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_11906) (l_2@@20 T@ListDomainType_16798) ) (!  (and (= (lenBad2 Heap@@22 l_2@@20) (|lenBad2'| Heap@@22 l_2@@20)) (dummyFunction_2742 (|lenBad2#triggerStateless| l_2@@20)))
 :qid |stdinbpl.760:15|
 :skolemid |67|
 :pattern ( (lenBad2 Heap@@22 l_2@@20))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_11906) (l_2@@21 T@IntListDomainType) ) (!  (and (= (ilen Heap@@23 l_2@@21) (|ilen'| Heap@@23 l_2@@21)) (dummyFunction_2742 (|ilen#triggerStateless| l_2@@21)))
 :qid |stdinbpl.835:15|
 :skolemid |72|
 :pattern ( (ilen Heap@@23 l_2@@21))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_11906) (l_2@@22 T@IntListDomainType) ) (!  (and (= (ilen2 Heap@@24 l_2@@22) (|ilen2'| Heap@@24 l_2@@22)) (dummyFunction_2742 (|ilen2#triggerStateless| l_2@@22)))
 :qid |stdinbpl.913:15|
 :skolemid |77|
 :pattern ( (ilen2 Heap@@24 l_2@@22))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_11906) (p_1@@0 T@PairDomainType_5064_23562) ) (!  (and (= (stupidFunc Heap@@25 p_1@@0) (|stupidFunc'| Heap@@25 p_1@@0)) (dummyFunction_7635 (|stupidFunc#triggerStateless| p_1@@0)))
 :qid |stdinbpl.1069:15|
 :skolemid |87|
 :pattern ( (stupidFunc Heap@@25 p_1@@0))
)))
(assert (forall ((Heap@@26 T@PolymorphicMapType_11906) (l_2@@23 T@DListDomainType_5313_24225) ) (!  (and (= (dlen Heap@@26 l_2@@23) (|dlen'| Heap@@26 l_2@@23)) (dummyFunction_2742 (|dlen#triggerStateless| l_2@@23)))
 :qid |stdinbpl.1130:15|
 :skolemid |91|
 :pattern ( (dlen Heap@@26 l_2@@23))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_11906) (l_2@@24 T@DListDomainType_5313_24225) ) (!  (and (= (dlenBad Heap@@27 l_2@@24) (|dlenBad'| Heap@@27 l_2@@24)) (dummyFunction_2742 (|dlenBad#triggerStateless| l_2@@24)))
 :qid |stdinbpl.1208:15|
 :skolemid |96|
 :pattern ( (dlenBad Heap@@27 l_2@@24))
)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_11906) (Mask@@10 T@PolymorphicMapType_11927) (l_2@@25 T@IntListDomainType) ) (!  (=> (and (state Heap@@28 Mask@@10) (< AssumeFunctionsAbove 2)) (= (ilen Heap@@28 l_2@@25) (ite (= (IntList_tag l_2@@25) 1) 0 (+ 1 (|ilen'| Heap@@28 (get_IntList_itail l_2@@25))))))
 :qid |stdinbpl.845:15|
 :skolemid |74|
 :pattern ( (state Heap@@28 Mask@@10) (ilen Heap@@28 l_2@@25))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_11906) (Mask@@11 T@PolymorphicMapType_11927) (l_2@@26 T@DListDomainType_5313_24225) ) (!  (=> (and (state Heap@@29 Mask@@11) (< AssumeFunctionsAbove 4)) (= (dlen Heap@@29 l_2@@26) (ite (= (DList_tag_5392_7656 l_2@@26) 1) 0 (+ 1 (|dlen'| Heap@@29 (get_DList_dtail_5392_7656 l_2@@26))))))
 :qid |stdinbpl.1140:15|
 :skolemid |93|
 :pattern ( (state Heap@@29 Mask@@11) (dlen Heap@@29 l_2@@26))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_11906) (Mask@@12 T@PolymorphicMapType_11927) (l_2@@27 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@30 Mask@@12) (< AssumeFunctionsAbove 8)) (= (len_3 Heap@@30 l_2@@27) (ite (= (List_tag_7319 l_2@@27) 1) 0 (+ 1 (|len'| Heap@@30 (get_List_tail_7319 l_2@@27))))))
 :qid |stdinbpl.536:15|
 :skolemid |54|
 :pattern ( (state Heap@@30 Mask@@12) (len_3 Heap@@30 l_2@@27))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_11906) (ExhaleHeap T@PolymorphicMapType_11906) (Mask@@13 T@PolymorphicMapType_11927) (pm_f T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap Mask@@13) (=> (and (HasDirectPerm_11966_31243 Mask@@13 null pm_f) (IsPredicateField_11966_31270 pm_f)) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@31) null (PredicateMaskField_11966 pm_f)) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap) null (PredicateMaskField_11966 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap Mask@@13) (IsPredicateField_11966_31270 pm_f) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap) null (PredicateMaskField_11966 pm_f)))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_11906) (ExhaleHeap@@0 T@PolymorphicMapType_11906) (Mask@@14 T@PolymorphicMapType_11927) (pm_f@@0 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@0 Mask@@14) (=> (and (HasDirectPerm_11966_31243 Mask@@14 null pm_f@@0) (IsWandField_11966_32819 pm_f@@0)) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@32) null (WandMaskField_11966 pm_f@@0)) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@0) null (WandMaskField_11966 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@0 Mask@@14) (IsWandField_11966_32819 pm_f@@0) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@0) null (WandMaskField_11966 pm_f@@0)))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_11906) (ExhaleHeap@@1 T@PolymorphicMapType_11906) (Mask@@15 T@PolymorphicMapType_11927) (pm_f@@1 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@1 Mask@@15) (=> (and (HasDirectPerm_11966_31243 Mask@@15 null pm_f@@1) (IsPredicateField_11966_31270 pm_f@@1)) (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_11966_53) ) (!  (=> (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@33) o2 f_2) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@1) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@1) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_11979_11980) ) (!  (=> (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@33) o2@@0 f_2@@0) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_11966_31179) ) (!  (=> (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@33) o2@@1 f_2@@1) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_11966_31312) ) (!  (=> (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) null (PredicateMaskField_11966 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@33) o2@@2 f_2@@2) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@1) o2@@2 f_2@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@1 Mask@@15) (IsPredicateField_11966_31270 pm_f@@1))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_11906) (ExhaleHeap@@2 T@PolymorphicMapType_11906) (Mask@@16 T@PolymorphicMapType_11927) (pm_f@@2 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@2 Mask@@16) (=> (and (HasDirectPerm_11966_31243 Mask@@16 null pm_f@@2) (IsWandField_11966_32819 pm_f@@2)) (and (and (and (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_11966_53) ) (!  (=> (select (|PolymorphicMapType_12455_11966_53#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@34) o2@@3 f_2@@3) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@3 f_2@@3)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@3 f_2@@3))
)) (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_11979_11980) ) (!  (=> (select (|PolymorphicMapType_12455_11966_11980#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@34) o2@@4 f_2@@4) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@4 f_2@@4))
))) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_11966_31179) ) (!  (=> (select (|PolymorphicMapType_12455_11966_31179#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@34) o2@@5 f_2@@5) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_11966_31312) ) (!  (=> (select (|PolymorphicMapType_12455_11966_32292#PolymorphicMapType_12455| (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) null (WandMaskField_11966 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@34) o2@@6 f_2@@6) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@2) o2@@6 f_2@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@2 Mask@@16) (IsWandField_11966_32819 pm_f@@2))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_11906) (Mask@@17 T@PolymorphicMapType_11927) (l_2@@28 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@35 Mask@@17) (< AssumeFunctionsAbove 0)) (= (len2 Heap@@35 l_2@@28) (ite (= (List_tag_7319 l_2@@28) 1) 0 (ite (= (List_tag_7319 (get_List_tail_7319 l_2@@28)) 1) 1 (+ 2 (|len2'| Heap@@35 (get_List_tail_7319 (get_List_tail_7319 l_2@@28))))))))
 :qid |stdinbpl.614:15|
 :skolemid |59|
 :pattern ( (state Heap@@35 Mask@@17) (len2 Heap@@35 l_2@@28))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_11906) (Mask@@18 T@PolymorphicMapType_11927) (l_2@@29 T@IntListDomainType) ) (!  (=> (and (state Heap@@36 Mask@@18) (< AssumeFunctionsAbove 7)) (= (ilen2 Heap@@36 l_2@@29) (ite (= (IntList_tag l_2@@29) 1) 0 (ite (= (IntList_tag (get_IntList_itail l_2@@29)) 1) 1 (+ 2 (|ilen2'| Heap@@36 (get_IntList_itail (get_IntList_itail l_2@@29))))))))
 :qid |stdinbpl.923:15|
 :skolemid |79|
 :pattern ( (state Heap@@36 Mask@@18) (ilen2 Heap@@36 l_2@@29))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@37 T@PolymorphicMapType_11906) (ExhaleHeap@@3 T@PolymorphicMapType_11906) (Mask@@19 T@PolymorphicMapType_11927) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@3 Mask@@19) (=> (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@37) o_1 $allocated) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@3) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@37 ExhaleHeap@@3 Mask@@19) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@3) o_1 $allocated))
)))
(assert (forall ((p T@Field_11966_31179) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11966_11966 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11966_11966 p v_1 p w))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_11906) (ExhaleHeap@@4 T@PolymorphicMapType_11906) (Mask@@20 T@PolymorphicMapType_11927) ) (!  (=> (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@4 Mask@@20) (succHeap Heap@@38 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@38 ExhaleHeap@@4 Mask@@20))
)))
(assert (forall ((Mask@@21 T@PolymorphicMapType_11927) (o_2@@3 T@Ref) (f_4@@3 T@Field_11966_31312) ) (!  (=> (GoodMask Mask@@21) (and (>= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@21) AssumePermUpperBound) (not (IsPredicateField_11966_35782 f_4@@3))) (not (IsWandField_11966_35798 f_4@@3))) (<= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@21) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@21) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@22 T@PolymorphicMapType_11927) (o_2@@4 T@Ref) (f_4@@4 T@Field_11966_31179) ) (!  (=> (GoodMask Mask@@22) (and (>= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@22) AssumePermUpperBound) (not (IsPredicateField_11966_31270 f_4@@4))) (not (IsWandField_11966_32819 f_4@@4))) (<= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@22) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@22) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@23 T@PolymorphicMapType_11927) (o_2@@5 T@Ref) (f_4@@5 T@Field_11979_11980) ) (!  (=> (GoodMask Mask@@23) (and (>= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@23) AssumePermUpperBound) (not (IsPredicateField_11966_11980 f_4@@5))) (not (IsWandField_11966_11980 f_4@@5))) (<= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@23) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@23) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@24 T@PolymorphicMapType_11927) (o_2@@6 T@Ref) (f_4@@6 T@Field_11966_53) ) (!  (=> (GoodMask Mask@@24) (and (>= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@24) AssumePermUpperBound) (not (IsPredicateField_11966_53 f_4@@6))) (not (IsWandField_11966_53 f_4@@6))) (<= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@24) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@24) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@25 T@PolymorphicMapType_11927) (o_2@@7 T@Ref) (f_4@@7 T@Field_11966_31312) ) (! (= (HasDirectPerm_11966_36153 Mask@@25 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| Mask@@25) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_36153 Mask@@25 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@26 T@PolymorphicMapType_11927) (o_2@@8 T@Ref) (f_4@@8 T@Field_11966_31179) ) (! (= (HasDirectPerm_11966_31243 Mask@@26 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| Mask@@26) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_31243 Mask@@26 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@27 T@PolymorphicMapType_11927) (o_2@@9 T@Ref) (f_4@@9 T@Field_11979_11980) ) (! (= (HasDirectPerm_11966_11980 Mask@@27 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| Mask@@27) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_11980 Mask@@27 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@28 T@PolymorphicMapType_11927) (o_2@@10 T@Ref) (f_4@@10 T@Field_11966_53) ) (! (= (HasDirectPerm_11966_53 Mask@@28 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| Mask@@28) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11966_53 Mask@@28 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_11906) (ExhaleHeap@@5 T@PolymorphicMapType_11906) (Mask@@29 T@PolymorphicMapType_11927) (o_1@@0 T@Ref) (f_2@@7 T@Field_11966_31312) ) (!  (=> (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@5 Mask@@29) (=> (HasDirectPerm_11966_36153 Mask@@29 o_1@@0 f_2@@7) (= (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@39) o_1@@0 f_2@@7) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@5) o_1@@0 f_2@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@39 ExhaleHeap@@5 Mask@@29) (select (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| ExhaleHeap@@5) o_1@@0 f_2@@7))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_11906) (ExhaleHeap@@6 T@PolymorphicMapType_11906) (Mask@@30 T@PolymorphicMapType_11927) (o_1@@1 T@Ref) (f_2@@8 T@Field_11966_31179) ) (!  (=> (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@6 Mask@@30) (=> (HasDirectPerm_11966_31243 Mask@@30 o_1@@1 f_2@@8) (= (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@40) o_1@@1 f_2@@8) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@6) o_1@@1 f_2@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@40 ExhaleHeap@@6 Mask@@30) (select (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| ExhaleHeap@@6) o_1@@1 f_2@@8))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_11906) (ExhaleHeap@@7 T@PolymorphicMapType_11906) (Mask@@31 T@PolymorphicMapType_11927) (o_1@@2 T@Ref) (f_2@@9 T@Field_11979_11980) ) (!  (=> (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@7 Mask@@31) (=> (HasDirectPerm_11966_11980 Mask@@31 o_1@@2 f_2@@9) (= (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@41) o_1@@2 f_2@@9) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@7) o_1@@2 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@41 ExhaleHeap@@7 Mask@@31) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| ExhaleHeap@@7) o_1@@2 f_2@@9))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_11906) (ExhaleHeap@@8 T@PolymorphicMapType_11906) (Mask@@32 T@PolymorphicMapType_11927) (o_1@@3 T@Ref) (f_2@@10 T@Field_11966_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@8 Mask@@32) (=> (HasDirectPerm_11966_53 Mask@@32 o_1@@3 f_2@@10) (= (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@42) o_1@@3 f_2@@10) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@8) o_1@@3 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@42 ExhaleHeap@@8 Mask@@32) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| ExhaleHeap@@8) o_1@@3 f_2@@10))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_11906) (Mask@@33 T@PolymorphicMapType_11927) (l_2@@30 T@IntListDomainType) (v_2@@3 Int) ) (!  (=> (and (state Heap@@43 Mask@@33) (< AssumeFunctionsAbove 3)) (= (ilenBad Heap@@43 l_2@@30 v_2@@3) (|ilenBad'| Heap@@43 (ICons v_2@@3 INil) v_2@@3)))
 :qid |stdinbpl.1004:15|
 :skolemid |84|
 :pattern ( (state Heap@@43 Mask@@33) (ilenBad Heap@@43 l_2@@30 v_2@@3))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_11906) (Mask@@34 T@PolymorphicMapType_11927) (l_2@@31 T@ListDomainType_16798) (v_2@@4 T@ValDomainType) ) (!  (=> (and (state Heap@@44 Mask@@34) (< AssumeFunctionsAbove 9)) (= (lenBad Heap@@44 l_2@@31 v_2@@4) (|lenBad'| Heap@@44 (Cons_7427 v_2@@4 Nil_7430) v_2@@4)))
 :qid |stdinbpl.695:15|
 :skolemid |64|
 :pattern ( (state Heap@@44 Mask@@34) (lenBad Heap@@44 l_2@@31 v_2@@4))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11966_31312) ) (! (= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11966_31179) ) (! (= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11979_11980) ) (! (= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11966_53) ) (! (= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_11906) (l_2@@32 T@ListDomainType_16798) (v_2@@5 T@ValDomainType) ) (!  (and (= (lenBad Heap@@45 l_2@@32 v_2@@5) (|lenBad'| Heap@@45 l_2@@32 v_2@@5)) (dummyFunction_2742 (|lenBad#triggerStateless| l_2@@32 v_2@@5)))
 :qid |stdinbpl.685:15|
 :skolemid |62|
 :pattern ( (lenBad Heap@@45 l_2@@32 v_2@@5))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_11906) (l_2@@33 T@IntListDomainType) (v_2@@6 Int) ) (!  (and (= (ilenBad Heap@@46 l_2@@33 v_2@@6) (|ilenBad'| Heap@@46 l_2@@33 v_2@@6)) (dummyFunction_2742 (|ilenBad#triggerStateless| l_2@@33 v_2@@6)))
 :qid |stdinbpl.994:15|
 :skolemid |82|
 :pattern ( (ilenBad Heap@@46 l_2@@33 v_2@@6))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11927) (SummandMask1 T@PolymorphicMapType_11927) (SummandMask2 T@PolymorphicMapType_11927) (o_2@@15 T@Ref) (f_4@@15 T@Field_11966_31312) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11927_11966_34873#PolymorphicMapType_11927| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11927) (SummandMask1@@0 T@PolymorphicMapType_11927) (SummandMask2@@0 T@PolymorphicMapType_11927) (o_2@@16 T@Ref) (f_4@@16 T@Field_11966_31179) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11927_11966_31179#PolymorphicMapType_11927| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11927) (SummandMask1@@1 T@PolymorphicMapType_11927) (SummandMask2@@1 T@PolymorphicMapType_11927) (o_2@@17 T@Ref) (f_4@@17 T@Field_11979_11980) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11927_11966_11980#PolymorphicMapType_11927| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11927) (SummandMask1@@2 T@PolymorphicMapType_11927) (SummandMask2@@2 T@PolymorphicMapType_11927) (o_2@@18 T@Ref) (f_4@@18 T@Field_11966_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11927_11966_53#PolymorphicMapType_11927| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_11906) (Mask@@35 T@PolymorphicMapType_11927) (l_2@@34 T@ListDomainType_16798) ) (!  (=> (and (state Heap@@47 Mask@@35) (< AssumeFunctionsAbove 5)) (= (lenBad2 Heap@@47 l_2@@34) (+ 1 (|lenBad2'| Heap@@47 l_2@@34))))
 :qid |stdinbpl.770:15|
 :skolemid |69|
 :pattern ( (state Heap@@47 Mask@@35) (lenBad2 Heap@@47 l_2@@34))
)))
(assert (forall ((value_1@@0 T@ValDomainType) (tail_1 T@ListDomainType_16798) ) (! (= (List_tag_7319 (Cons_7427 value_1@@0 tail_1)) 0)
 :qid |stdinbpl.249:19|
 :skolemid |25|
 :pattern ( (Cons_7427 value_1@@0 tail_1))
)))
(assert (forall ((ivalue_1@@0 Int) (itail_1 T@IntListDomainType) ) (! (= (IntList_tag (ICons ivalue_1@@0 itail_1)) 0)
 :qid |stdinbpl.326:15|
 :skolemid |32|
 :pattern ( (ICons ivalue_1@@0 itail_1))
)))
(assert (forall ((fst Int) (snd_1 T@ValDomainType) ) (! (= (Pair_tag_5064_23562 (pair_1_5064_23562 fst snd_1)) 0)
 :qid |stdinbpl.397:22|
 :skolemid |39|
 :pattern ( (pair_1_5064_23562 fst snd_1))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_11906) (Mask@@36 T@PolymorphicMapType_11927) (l_2@@35 T@ListDomainType_16798) ) (!  (=> (state Heap@@48 Mask@@36) (= (|len'| Heap@@48 l_2@@35) (|len#frame| EmptyFrame l_2@@35)))
 :qid |stdinbpl.543:15|
 :skolemid |55|
 :pattern ( (state Heap@@48 Mask@@36) (|len'| Heap@@48 l_2@@35))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_11906) (Mask@@37 T@PolymorphicMapType_11927) (l_2@@36 T@ListDomainType_16798) ) (!  (=> (state Heap@@49 Mask@@37) (= (|len2'| Heap@@49 l_2@@36) (|len2#frame| EmptyFrame l_2@@36)))
 :qid |stdinbpl.621:15|
 :skolemid |60|
 :pattern ( (state Heap@@49 Mask@@37) (|len2'| Heap@@49 l_2@@36))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_11906) (Mask@@38 T@PolymorphicMapType_11927) (l_2@@37 T@ListDomainType_16798) ) (!  (=> (state Heap@@50 Mask@@38) (= (|lenBad2'| Heap@@50 l_2@@37) (|lenBad2#frame| EmptyFrame l_2@@37)))
 :qid |stdinbpl.777:15|
 :skolemid |70|
 :pattern ( (state Heap@@50 Mask@@38) (|lenBad2'| Heap@@50 l_2@@37))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_11906) (Mask@@39 T@PolymorphicMapType_11927) (l_2@@38 T@IntListDomainType) ) (!  (=> (state Heap@@51 Mask@@39) (= (|ilen'| Heap@@51 l_2@@38) (|ilen#frame| EmptyFrame l_2@@38)))
 :qid |stdinbpl.852:15|
 :skolemid |75|
 :pattern ( (state Heap@@51 Mask@@39) (|ilen'| Heap@@51 l_2@@38))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_11906) (Mask@@40 T@PolymorphicMapType_11927) (l_2@@39 T@IntListDomainType) ) (!  (=> (state Heap@@52 Mask@@40) (= (|ilen2'| Heap@@52 l_2@@39) (|ilen2#frame| EmptyFrame l_2@@39)))
 :qid |stdinbpl.930:15|
 :skolemid |80|
 :pattern ( (state Heap@@52 Mask@@40) (|ilen2'| Heap@@52 l_2@@39))
)))
(assert (forall ((Heap@@53 T@PolymorphicMapType_11906) (Mask@@41 T@PolymorphicMapType_11927) (p_1@@1 T@PairDomainType_5064_23562) ) (!  (=> (state Heap@@53 Mask@@41) (= (|stupidFunc'| Heap@@53 p_1@@1) (|stupidFunc#frame| EmptyFrame p_1@@1)))
 :qid |stdinbpl.1086:15|
 :skolemid |90|
 :pattern ( (state Heap@@53 Mask@@41) (|stupidFunc'| Heap@@53 p_1@@1))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_11906) (Mask@@42 T@PolymorphicMapType_11927) (l_2@@40 T@DListDomainType_5313_24225) ) (!  (=> (state Heap@@54 Mask@@42) (= (|dlen'| Heap@@54 l_2@@40) (|dlen#frame| EmptyFrame l_2@@40)))
 :qid |stdinbpl.1147:15|
 :skolemid |94|
 :pattern ( (state Heap@@54 Mask@@42) (|dlen'| Heap@@54 l_2@@40))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_11906) (Mask@@43 T@PolymorphicMapType_11927) (l_2@@41 T@DListDomainType_5313_24225) ) (!  (=> (state Heap@@55 Mask@@43) (= (|dlenBad'| Heap@@55 l_2@@41) (|dlenBad#frame| EmptyFrame l_2@@41)))
 :qid |stdinbpl.1225:15|
 :skolemid |99|
 :pattern ( (state Heap@@55 Mask@@43) (|dlenBad'| Heap@@55 l_2@@41))
)))
(assert (forall ((dvalue1_1@@1 Int) (dvalue2_1@@1 T@ValDomainType) (dtail_1@@0 T@DListDomainType_5313_24225) ) (! (= dvalue1_1@@1 (get_DList_dvalue1_5313_24225 (DCons_5313_24225 dvalue1_1@@1 dvalue2_1@@1 dtail_1@@0)))
 :qid |stdinbpl.456:22|
 :skolemid |43|
 :pattern ( (DCons_5313_24225 dvalue1_1@@1 dvalue2_1@@1 dtail_1@@0))
)))
(assert (forall ((dvalue1_1@@2 Int) (dvalue2_1@@2 T@ValDomainType) (dtail_1@@1 T@DListDomainType_5313_24225) ) (! (= dvalue2_1@@2 (get_DList_dvalue2_5313_24225 (DCons_5313_24225 dvalue1_1@@2 dvalue2_1@@2 dtail_1@@1)))
 :qid |stdinbpl.462:22|
 :skolemid |44|
 :pattern ( (DCons_5313_24225 dvalue1_1@@2 dvalue2_1@@2 dtail_1@@1))
)))
(assert (forall ((dvalue1_1@@3 Int) (dvalue2_1@@3 T@ValDomainType) (dtail_1@@2 T@DListDomainType_5313_24225) ) (! (= dtail_1@@2 (get_DList_dtail_5392_7656 (DCons_5313_24225 dvalue1_1@@3 dvalue2_1@@3 dtail_1@@2)))
 :qid |stdinbpl.468:22|
 :skolemid |45|
 :pattern ( (DCons_5313_24225 dvalue1_1@@3 dvalue2_1@@3 dtail_1@@2))
)))
(assert (forall ((value_1@@1 T@ValDomainType) (tail_1@@0 T@ListDomainType_16798) ) (! (= value_1@@1 (get_List_value_7427 (Cons_7427 value_1@@1 tail_1@@0)))
 :qid |stdinbpl.231:19|
 :skolemid |22|
 :pattern ( (Cons_7427 value_1@@1 tail_1@@0))
)))
(assert (forall ((value_1@@2 T@ValDomainType) (tail_1@@1 T@ListDomainType_16798) ) (! (= tail_1@@1 (get_List_tail_7319 (Cons_7427 value_1@@2 tail_1@@1)))
 :qid |stdinbpl.237:19|
 :skolemid |23|
 :pattern ( (Cons_7427 value_1@@2 tail_1@@1))
)))
(assert (forall ((ivalue_1@@1 Int) (itail_1@@0 T@IntListDomainType) ) (! (= ivalue_1@@1 (get_IntList_ivalue (ICons ivalue_1@@1 itail_1@@0)))
 :qid |stdinbpl.311:15|
 :skolemid |30|
 :pattern ( (ICons ivalue_1@@1 itail_1@@0))
)))
(assert (forall ((ivalue_1@@2 Int) (itail_1@@1 T@IntListDomainType) ) (! (= itail_1@@1 (get_IntList_itail (ICons ivalue_1@@2 itail_1@@1)))
 :qid |stdinbpl.317:15|
 :skolemid |31|
 :pattern ( (ICons ivalue_1@@2 itail_1@@1))
)))
(assert (forall ((fst@@0 Int) (snd_1@@0 T@ValDomainType) ) (! (= fst@@0 (get_Pair_fst_5064_23562 (pair_1_5064_23562 fst@@0 snd_1@@0)))
 :qid |stdinbpl.385:22|
 :skolemid |37|
 :pattern ( (pair_1_5064_23562 fst@@0 snd_1@@0))
)))
(assert (forall ((fst@@1 Int) (snd_1@@1 T@ValDomainType) ) (! (= snd_1@@1 (get_Pair_snd_5064_23562 (pair_1_5064_23562 fst@@1 snd_1@@1)))
 :qid |stdinbpl.391:22|
 :skolemid |38|
 :pattern ( (pair_1_5064_23562 fst@@1 snd_1@@1))
)))
(assert (forall ((Heap@@56 T@PolymorphicMapType_11906) (o T@Ref) (f_3 T@Field_11966_31179) (v T@FrameType) ) (! (succHeap Heap@@56 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@56) (store (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@56) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@56) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@56) (store (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@56) o f_3 v)))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_11906) (o@@0 T@Ref) (f_3@@0 T@Field_11966_31312) (v@@0 T@PolymorphicMapType_12455) ) (! (succHeap Heap@@57 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@57) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@57) (store (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@57) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@57)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@57) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@57) (store (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@57) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@57)))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_11906) (o@@1 T@Ref) (f_3@@1 T@Field_11979_11980) (v@@1 T@Ref) ) (! (succHeap Heap@@58 (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@58) (store (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@58) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@58) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@58)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@58) (store (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@58) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@58) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@58)))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_11906) (o@@2 T@Ref) (f_3@@2 T@Field_11966_53) (v@@2 Bool) ) (! (succHeap Heap@@59 (PolymorphicMapType_11906 (store (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@59) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@59)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11906 (store (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@59) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31356#PolymorphicMapType_11906| Heap@@59) (|PolymorphicMapType_11906_11966_31179#PolymorphicMapType_11906| Heap@@59)))
)))
(assert (forall ((t_2 T@PairDomainType_5064_23562) ) (! (= t_2 (pair_1_5064_23562 (get_Pair_fst_5064_23562 t_2) (get_Pair_snd_5064_23562 t_2)))
 :qid |stdinbpl.403:22|
 :skolemid |40|
 :pattern ( (Pair_tag_5064_23562 t_2))
 :pattern ( (get_Pair_fst_5064_23562 t_2))
 :pattern ( (get_Pair_snd_5064_23562 t_2))
)))
(assert (forall ((o@@3 T@Ref) (f T@Field_11979_11980) (Heap@@60 T@PolymorphicMapType_11906) ) (!  (=> (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@60) o@@3 $allocated) (select (|PolymorphicMapType_11906_7067_53#PolymorphicMapType_11906| Heap@@60) (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@60) o@@3 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11906_7070_7071#PolymorphicMapType_11906| Heap@@60) o@@3 f))
)))
(assert (forall ((p@@1 T@Field_11966_31179) (v_1@@0 T@FrameType) (q T@Field_11966_31179) (w@@0 T@FrameType) (r T@Field_11966_31179) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11966_11966 p@@1 v_1@@0 q w@@0) (InsidePredicate_11966_11966 q w@@0 r u)) (InsidePredicate_11966_11966 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11966_11966 p@@1 v_1@@0 q w@@0) (InsidePredicate_11966_11966 q w@@0 r u))
)))
(assert (forall ((t_2@@0 T@ListDomainType_16798) ) (!  (or (= t_2@@0 Nil_7430) (= t_2@@0 (Cons_7427 (get_List_value_7427 t_2@@0) (get_List_tail_7319 t_2@@0))))
 :qid |stdinbpl.255:19|
 :skolemid |26|
 :pattern ( (List_tag_7319 t_2@@0))
 :pattern ( (get_List_value_7427 t_2@@0))
 :pattern ( (get_List_tail_7319 t_2@@0))
)))
(assert (forall ((t_2@@1 T@IntListDomainType) ) (!  (or (= t_2@@1 INil) (= t_2@@1 (ICons (get_IntList_ivalue t_2@@1) (get_IntList_itail t_2@@1))))
 :qid |stdinbpl.332:15|
 :skolemid |33|
 :pattern ( (IntList_tag t_2@@1))
 :pattern ( (get_IntList_ivalue t_2@@1))
 :pattern ( (get_IntList_itail t_2@@1))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((t_2@@2 T@DListDomainType_5313_24225) ) (!  (or (= t_2@@2 DNil_5392_7656) (= t_2@@2 (DCons_5313_24225 (get_DList_dvalue1_5313_24225 t_2@@2) (get_DList_dvalue2_5313_24225 t_2@@2) (get_DList_dtail_5392_7656 t_2@@2))))
 :qid |stdinbpl.486:22|
 :skolemid |48|
 :pattern ( (DList_tag_5392_7656 t_2@@2))
 :pattern ( (get_DList_dvalue1_5313_24225 t_2@@2))
 :pattern ( (get_DList_dvalue2_5313_24225 t_2@@2))
 :pattern ( (get_DList_dtail_5392_7656 t_2@@2))
)))
(assert (forall ((Heap@@61 T@PolymorphicMapType_11906) (Mask@@44 T@PolymorphicMapType_11927) (l_2@@42 T@IntListDomainType) (v_2@@7 Int) ) (!  (=> (and (state Heap@@61 Mask@@44) (or (< AssumeFunctionsAbove 3) (|ilenBad#trigger| EmptyFrame l_2@@42 v_2@@7))) (>= (|ilenBad'| Heap@@61 l_2@@42 v_2@@7) 0))
 :qid |stdinbpl.1017:15|
 :skolemid |86|
 :pattern ( (state Heap@@61 Mask@@44) (|ilenBad'| Heap@@61 l_2@@42 v_2@@7))
)))
(assert (forall ((Heap@@62 T@PolymorphicMapType_11906) (Mask@@45 T@PolymorphicMapType_11927) (l_2@@43 T@ListDomainType_16798) (v_2@@8 T@ValDomainType) ) (!  (=> (and (state Heap@@62 Mask@@45) (or (< AssumeFunctionsAbove 9) (|lenBad#trigger| EmptyFrame l_2@@43 v_2@@8))) (>= (|lenBad'| Heap@@62 l_2@@43 v_2@@8) 0))
 :qid |stdinbpl.708:15|
 :skolemid |66|
 :pattern ( (state Heap@@62 Mask@@45) (|lenBad'| Heap@@62 l_2@@43 v_2@@8))
)))
(assert (forall ((Heap@@63 T@PolymorphicMapType_11906) (Mask@@46 T@PolymorphicMapType_11927) (p_1@@2 T@PairDomainType_5064_23562) ) (!  (=> (and (state Heap@@63 Mask@@46) (< AssumeFunctionsAbove 6)) (= (stupidFunc Heap@@63 p_1@@2) (|stupidFunc'| Heap@@63 p_1@@2)))
 :qid |stdinbpl.1079:15|
 :skolemid |89|
 :pattern ( (state Heap@@63 Mask@@46) (stupidFunc Heap@@63 p_1@@2))
)))
; Valid

