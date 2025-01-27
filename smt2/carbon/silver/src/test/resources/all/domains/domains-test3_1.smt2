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
(declare-sort T@Field_5917_53 0)
(declare-sort T@Field_5930_5931 0)
(declare-sort T@Field_5917_16332 0)
(declare-sort T@Field_5917_16199 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5878 0)) (((PolymorphicMapType_5878 (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_53 Real)) (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| (Array T@Ref T@Field_5930_5931 Real)) (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_16199 Real)) (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_16332 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6406 0)) (((PolymorphicMapType_6406 (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_53 Bool)) (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (Array T@Ref T@Field_5930_5931 Bool)) (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_16199 Bool)) (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_16332 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5857 0)) (((PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_53 Bool)) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| (Array T@Ref T@Field_5930_5931 T@Ref)) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_16332 T@PolymorphicMapType_6406)) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_16199 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857) Bool)
(declare-fun barfoo1_3168 (T@Ref) Bool)
(declare-fun state (T@PolymorphicMapType_5857 T@PolymorphicMapType_5878) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5878) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6406)
(declare-sort T@TripleDomainType_2306_2309_11713 0)
(declare-fun Triple_first_2371_2372_3359 (T@TripleDomainType_2306_2309_11713) Int)
(declare-fun Triple_triple_2306_2309_3354 (Int Bool T@Ref) T@TripleDomainType_2306_2309_11713)
(declare-fun Triple_second_2402_2403_3361 (T@TripleDomainType_2306_2309_11713) Bool)
(declare-fun Triple_third_2433_2434_3364 (T@TripleDomainType_2306_2309_11713) T@Ref)
(declare-sort T@PairDomainType_2160_2163 0)
(declare-fun Triple_isPrefix_2517_2518_3373 (T@PairDomainType_2160_2163 T@TripleDomainType_2306_2309_11713) Bool)
(declare-fun Pair_first_2216_2217 (T@PairDomainType_2160_2163) Int)
(declare-fun Pair_second_2245_2246 (T@PairDomainType_2160_2163) Bool)
(declare-sort T@ListDomainType_2023 0)
(declare-fun length_2_2035 (T@ListDomainType_2023) Int)
(declare-fun nil_2068 () T@ListDomainType_2023)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857 T@PolymorphicMapType_5878) Bool)
(declare-fun IsPredicateField_5917_16290 (T@Field_5917_16199) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5917 (T@Field_5917_16199) T@Field_5917_16332)
(declare-fun HasDirectPerm_5917_16263 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_16199) Bool)
(declare-fun IsWandField_5917_17839 (T@Field_5917_16199) Bool)
(declare-fun WandMaskField_5917 (T@Field_5917_16199) T@Field_5917_16332)
(declare-fun dummyHeap () T@PolymorphicMapType_5857)
(declare-fun ZeroMask () T@PolymorphicMapType_5878)
(declare-fun $allocated () T@Field_5917_53)
(declare-fun InsidePredicate_5917_5917 (T@Field_5917_16199 T@FrameType T@Field_5917_16199 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5917_20802 (T@Field_5917_16332) Bool)
(declare-fun IsWandField_5917_20818 (T@Field_5917_16332) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5917_5931 (T@Field_5930_5931) Bool)
(declare-fun IsWandField_5917_5931 (T@Field_5930_5931) Bool)
(declare-fun IsPredicateField_5917_53 (T@Field_5917_53) Bool)
(declare-fun IsWandField_5917_53 (T@Field_5917_53) Bool)
(declare-fun HasDirectPerm_5917_21173 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_16332) Bool)
(declare-fun HasDirectPerm_5917_5931 (T@PolymorphicMapType_5878 T@Ref T@Field_5930_5931) Bool)
(declare-fun HasDirectPerm_5917_53 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5878 T@PolymorphicMapType_5878 T@PolymorphicMapType_5878) Bool)
(declare-fun hide2_3331 (T@Ref) Int)
(declare-fun foo_2_645 (Real) Int)
(declare-fun foo_2_3168 (T@Ref) Int)
(declare-fun foo_2_3 (Int) Int)
(declare-fun hide2_1933 (Int) Int)
(declare-fun hide_3 (Int) Int)
(declare-fun Pair_pair_2160_2163 (Int Bool) T@PairDomainType_2160_2163)
(declare-sort T@CellDomainType_14879 0)
(declare-fun Cell_get_3403 (T@CellDomainType_14879) T@Ref)
(declare-fun Cell_cell_3168 (T@Ref) T@CellDomainType_14879)
(declare-sort T@CellDomainType_2992 0)
(declare-fun Cell_get_2992 (T@CellDomainType_2992) Int)
(declare-fun Cell_cell_3 (Int) T@CellDomainType_2992)
(declare-fun barfoo2_3 (Int) Int)
(declare-fun cons_2020 (Int T@ListDomainType_2023) T@ListDomainType_2023)
(assert (forall ((Heap0 T@PolymorphicMapType_5857) (Heap1 T@PolymorphicMapType_5857) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a_2 T@Ref) ) (! (barfoo1_3168 a_2)
 :qid |stdinbpl.342:19|
 :skolemid |35|
 :pattern ( (barfoo1_3168 a_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_5857) (Mask T@PolymorphicMapType_5878) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5857) (Heap1@@0 T@PolymorphicMapType_5857) (Heap2 T@PolymorphicMapType_5857) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5917_16332) ) (!  (not (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5917_16199) ) (!  (not (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5930_5931) ) (!  (not (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5917_53) ) (!  (not (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a_2@@0 Int) (b_24 Bool) (c T@Ref) ) (! (= (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@0 b_24 c)) a_2@@0)
 :qid |stdinbpl.267:25|
 :skolemid |29|
 :pattern ( (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@0 b_24 c)))
)))
(assert (forall ((a_2@@1 Int) (b_24@@0 Bool) (c@@0 T@Ref) ) (! (= (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@1 b_24@@0 c@@0)) b_24@@0)
 :qid |stdinbpl.273:25|
 :skolemid |30|
 :pattern ( (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@1 b_24@@0 c@@0)))
)))
(assert (forall ((a_2@@2 Int) (b_24@@1 Bool) (c@@1 T@Ref) ) (! (= (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@2 b_24@@1 c@@1)) c@@1)
 :qid |stdinbpl.279:25|
 :skolemid |31|
 :pattern ( (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@2 b_24@@1 c@@1)))
)))
(assert (forall ((p_1 T@PairDomainType_2160_2163) (t_2 T@TripleDomainType_2306_2309_11713) ) (! (= (Triple_isPrefix_2517_2518_3373 p_1 t_2)  (and (= (Pair_first_2216_2217 p_1) (Triple_first_2371_2372_3359 t_2)) (= (Pair_second_2245_2246 p_1) (Triple_second_2402_2403_3361 t_2))))
 :qid |stdinbpl.285:25|
 :skolemid |32|
 :pattern ( (Triple_isPrefix_2517_2518_3373 p_1 t_2))
 :pattern ( (Pair_first_2216_2217 p_1) (Triple_first_2371_2372_3359 t_2))
 :pattern ( (Pair_first_2216_2217 p_1) (Triple_second_2402_2403_3361 t_2))
 :pattern ( (Triple_first_2371_2372_3359 t_2) (Pair_second_2245_2246 p_1))
 :pattern ( (Pair_second_2245_2246 p_1) (Triple_second_2402_2403_3361 t_2))
)))
(assert (= (length_2_2035 nil_2068) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5857) (ExhaleHeap T@PolymorphicMapType_5857) (Mask@@0 T@PolymorphicMapType_5878) (pm_f_26 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5917_16263 Mask@@0 null pm_f_26) (IsPredicateField_5917_16290 pm_f_26)) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@0) null (PredicateMaskField_5917 pm_f_26)) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap) null (PredicateMaskField_5917 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5917_16290 pm_f_26) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap) null (PredicateMaskField_5917 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5857) (ExhaleHeap@@0 T@PolymorphicMapType_5857) (Mask@@1 T@PolymorphicMapType_5878) (pm_f_26@@0 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5917_16263 Mask@@1 null pm_f_26@@0) (IsWandField_5917_17839 pm_f_26@@0)) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@1) null (WandMaskField_5917 pm_f_26@@0)) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@0) null (WandMaskField_5917 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5917_17839 pm_f_26@@0) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@0) null (WandMaskField_5917 pm_f_26@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5857) (ExhaleHeap@@1 T@PolymorphicMapType_5857) (Mask@@2 T@PolymorphicMapType_5878) (pm_f_26@@1 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5917_16263 Mask@@2 null pm_f_26@@1) (IsPredicateField_5917_16290 pm_f_26@@1)) (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_5917_53) ) (!  (=> (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@2) o2_26 f_51) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_5930_5931) ) (!  (=> (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@2) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_5917_16199) ) (!  (=> (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@2) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_5917_16332) ) (!  (=> (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5917_16290 pm_f_26@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5857) (ExhaleHeap@@2 T@PolymorphicMapType_5857) (Mask@@3 T@PolymorphicMapType_5878) (pm_f_26@@2 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5917_16263 Mask@@3 null pm_f_26@@2) (IsWandField_5917_17839 pm_f_26@@2)) (and (and (and (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_5917_53) ) (!  (=> (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@3) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@3 f_51@@3))
)) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_5930_5931) ) (!  (=> (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@3) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_5917_16199) ) (!  (=> (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@3) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_5917_16332) ) (!  (=> (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5917_17839 pm_f_26@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5857) (ExhaleHeap@@3 T@PolymorphicMapType_5857) (Mask@@4 T@PolymorphicMapType_5878) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@4) o_38 $allocated) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@3) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@3) o_38 $allocated))
)))
(assert (forall ((p T@Field_5917_16199) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5917_5917 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5917_5917 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5857) (ExhaleHeap@@4 T@PolymorphicMapType_5857) (Mask@@5 T@PolymorphicMapType_5878) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5878) (o_2@@3 T@Ref) (f_4@@3 T@Field_5917_16332) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5917_20802 f_4@@3))) (not (IsWandField_5917_20818 f_4@@3))) (<= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5878) (o_2@@4 T@Ref) (f_4@@4 T@Field_5917_16199) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5917_16290 f_4@@4))) (not (IsWandField_5917_17839 f_4@@4))) (<= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5878) (o_2@@5 T@Ref) (f_4@@5 T@Field_5930_5931) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5917_5931 f_4@@5))) (not (IsWandField_5917_5931 f_4@@5))) (<= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5878) (o_2@@6 T@Ref) (f_4@@6 T@Field_5917_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5917_53 f_4@@6))) (not (IsWandField_5917_53 f_4@@6))) (<= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5878) (o_2@@7 T@Ref) (f_4@@7 T@Field_5917_16332) ) (! (= (HasDirectPerm_5917_21173 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_21173 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5878) (o_2@@8 T@Ref) (f_4@@8 T@Field_5917_16199) ) (! (= (HasDirectPerm_5917_16263 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_16263 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5878) (o_2@@9 T@Ref) (f_4@@9 T@Field_5930_5931) ) (! (= (HasDirectPerm_5917_5931 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_5931 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5878) (o_2@@10 T@Ref) (f_4@@10 T@Field_5917_53) ) (! (= (HasDirectPerm_5917_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5857) (ExhaleHeap@@5 T@PolymorphicMapType_5857) (Mask@@14 T@PolymorphicMapType_5878) (o_38@@0 T@Ref) (f_51@@7 T@Field_5917_16332) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5917_21173 Mask@@14 o_38@@0 f_51@@7) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@6) o_38@@0 f_51@@7) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@5) o_38@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@5) o_38@@0 f_51@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5857) (ExhaleHeap@@6 T@PolymorphicMapType_5857) (Mask@@15 T@PolymorphicMapType_5878) (o_38@@1 T@Ref) (f_51@@8 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5917_16263 Mask@@15 o_38@@1 f_51@@8) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@7) o_38@@1 f_51@@8) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@6) o_38@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@6) o_38@@1 f_51@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5857) (ExhaleHeap@@7 T@PolymorphicMapType_5857) (Mask@@16 T@PolymorphicMapType_5878) (o_38@@2 T@Ref) (f_51@@9 T@Field_5930_5931) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5917_5931 Mask@@16 o_38@@2 f_51@@9) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@8) o_38@@2 f_51@@9) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@7) o_38@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@7) o_38@@2 f_51@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5857) (ExhaleHeap@@8 T@PolymorphicMapType_5857) (Mask@@17 T@PolymorphicMapType_5878) (o_38@@3 T@Ref) (f_51@@10 T@Field_5917_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5917_53 Mask@@17 o_38@@3 f_51@@10) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@9) o_38@@3 f_51@@10) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@8) o_38@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@8) o_38@@3 f_51@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5917_16332) ) (! (= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5917_16199) ) (! (= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5930_5931) ) (! (= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5917_53) ) (! (= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5878) (SummandMask1 T@PolymorphicMapType_5878) (SummandMask2 T@PolymorphicMapType_5878) (o_2@@15 T@Ref) (f_4@@15 T@Field_5917_16332) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5878) (SummandMask1@@0 T@PolymorphicMapType_5878) (SummandMask2@@0 T@PolymorphicMapType_5878) (o_2@@16 T@Ref) (f_4@@16 T@Field_5917_16199) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5878) (SummandMask1@@1 T@PolymorphicMapType_5878) (SummandMask2@@1 T@PolymorphicMapType_5878) (o_2@@17 T@Ref) (f_4@@17 T@Field_5930_5931) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5878) (SummandMask1@@2 T@PolymorphicMapType_5878) (SummandMask2@@2 T@PolymorphicMapType_5878) (o_2@@18 T@Ref) (f_4@@18 T@Field_5917_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((r_1 T@Ref) ) (! (< (hide2_3331 r_1) 0)
 :qid |stdinbpl.406:15|
 :skolemid |40|
 :pattern ( (hide2_3331 r_1))
)))
(assert (forall ((a_2@@3 Real) ) (! (> (foo_2_645 a_2@@3) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_645 a_2@@3))
)))
(assert (forall ((a_2@@4 T@Ref) ) (! (> (foo_2_3168 a_2@@4) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_3168 a_2@@4))
)))
(assert (forall ((a_2@@5 Int) ) (! (> (foo_2_3 a_2@@5) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_3 a_2@@5))
)))
(assert (forall ((x Int) ) (! (> (hide2_1933 x) 0)
 :qid |stdinbpl.393:15|
 :skolemid |39|
 :pattern ( (hide2_1933 x))
)))
(assert (forall ((a_2@@6 Int) ) (! (= (hide_3 a_2@@6) 0)
 :qid |stdinbpl.370:19|
 :skolemid |38|
 :pattern ( (hide_3 a_2@@6))
)))
(assert (forall ((a_2@@7 Int) (b_24@@2 Bool) ) (! (= (Pair_first_2216_2217 (Pair_pair_2160_2163 a_2@@7 b_24@@2)) a_2@@7)
 :qid |stdinbpl.233:22|
 :skolemid |27|
 :pattern ( (Pair_first_2216_2217 (Pair_pair_2160_2163 a_2@@7 b_24@@2)))
)))
(assert (forall ((a_2@@8 Int) (b_24@@3 Bool) ) (! (= (Pair_second_2245_2246 (Pair_pair_2160_2163 a_2@@8 b_24@@3)) b_24@@3)
 :qid |stdinbpl.239:22|
 :skolemid |28|
 :pattern ( (Pair_second_2245_2246 (Pair_pair_2160_2163 a_2@@8 b_24@@3)))
)))
(assert (forall ((a_2@@9 T@Ref) ) (! (= (Cell_get_3403 (Cell_cell_3168 a_2@@9)) a_2@@9)
 :qid |stdinbpl.425:19|
 :skolemid |41|
 :pattern ( (Cell_get_3403 (Cell_cell_3168 a_2@@9)))
)))
(assert (forall ((a_2@@10 Int) ) (! (= (Cell_get_2992 (Cell_cell_3 a_2@@10)) a_2@@10)
 :qid |stdinbpl.425:19|
 :skolemid |41|
 :pattern ( (Cell_get_2992 (Cell_cell_3 a_2@@10)))
)))
(assert (forall ((a_2@@11 Int) ) (! (not (= (barfoo2_3 a_2@@11) (hide_3 a_2@@11)))
 :qid |stdinbpl.354:19|
 :skolemid |37|
 :pattern ( (barfoo2_3 a_2@@11))
 :pattern ( (hide_3 a_2@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5857) (o_56 T@Ref) (f_22 T@Field_5917_16199) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@10) (store (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@10) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@10) (store (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@10) o_56 f_22 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5857) (o_56@@0 T@Ref) (f_22@@0 T@Field_5917_16332) (v@@0 T@PolymorphicMapType_6406) ) (! (succHeap Heap@@11 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@11) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@11) (store (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@11) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@11) (store (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5857) (o_56@@1 T@Ref) (f_22@@1 T@Field_5930_5931) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@12) (store (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@12) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@12) (store (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@12) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5857) (o_56@@2 T@Ref) (f_22@@2 T@Field_5917_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5857 (store (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (store (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@13)))
)))
(assert (forall ((o_56@@3 T@Ref) (f_3 T@Field_5930_5931) (Heap@@14 T@PolymorphicMapType_5857) ) (!  (=> (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@14) o_56@@3 $allocated) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@14) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@14) o_56@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@14) o_56@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_5917_16199) (v_1@@0 T@FrameType) (q T@Field_5917_16199) (w@@0 T@FrameType) (r T@Field_5917_16199) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5917_5917 p@@1 v_1@@0 q w@@0) (InsidePredicate_5917_5917 q w@@0 r u)) (InsidePredicate_5917_5917 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5917_5917 p@@1 v_1@@0 q w@@0) (InsidePredicate_5917_5917 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((z Int) ) (! (forall ((zs T@ListDomainType_2023) ) (! (not (= (cons_2020 z zs) nil_2068))
 :qid |stdinbpl.210:11|
 :skolemid |25|
 :pattern ( (cons_2020 z zs))
))
 :qid |stdinbpl.208:19|
 :skolemid |26|
)))
(assert (forall ((x@@0 Int) ) (! (forall ((xs T@ListDomainType_2023) ) (! (= (length_2_2035 (cons_2020 x@@0 xs)) (+ (length_2_2035 xs) 1))
 :qid |stdinbpl.201:11|
 :skolemid |23|
 :pattern ( (length_2_2035 (cons_2020 x@@0 xs)))
 :pattern ( (length_2_2035 xs))
))
 :qid |stdinbpl.199:19|
 :skolemid |24|
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@15 () T@PolymorphicMapType_5857)
(declare-fun c@@2 () T@Ref)
(declare-fun a_2@@12 () Int)
(declare-fun b_24@@4 () Bool)
(set-info :boogie-vc-id test3_1)
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
 (=> (= (ControlFlow 0 0) 6) (let ((anon0_correct  (=> (state Heap@@15 ZeroMask) (=> (and AssumePermUpperBound (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@15) c@@2 $allocated)) (and (=> (= (ControlFlow 0 2) (- 0 5)) (= (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) a_2@@12)) (=> (= (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) a_2@@12) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 4)) (= (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) b_24@@4)) (=> (= (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) b_24@@4) (=> (state Heap@@15 ZeroMask) (and (=> (= (ControlFlow 0 2) (- 0 3)) (= (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) c@@2)) (=> (= (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) c@@2) (=> (state Heap@@15 ZeroMask) (=> (and (state Heap@@15 ZeroMask) (= (ControlFlow 0 2) (- 0 1))) (= (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@12 b_24@@4 c@@2)) true)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 6) 2) anon0_correct)))
PreconditionGeneratedEntry_correct)))
))
(check-sat)
(get-info :reason-unknown)
(get-info :rlimit)
(assert (not (= (ControlFlow 0 2) (- 1))))
(check-sat)
(get-info :rlimit)
(pop 1)
; Invalid
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
(declare-sort T@Field_5917_53 0)
(declare-sort T@Field_5930_5931 0)
(declare-sort T@Field_5917_16332 0)
(declare-sort T@Field_5917_16199 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_5878 0)) (((PolymorphicMapType_5878 (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_53 Real)) (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| (Array T@Ref T@Field_5930_5931 Real)) (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_16199 Real)) (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| (Array T@Ref T@Field_5917_16332 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6406 0)) (((PolymorphicMapType_6406 (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_53 Bool)) (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (Array T@Ref T@Field_5930_5931 Bool)) (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_16199 Bool)) (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (Array T@Ref T@Field_5917_16332 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_5857 0)) (((PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_53 Bool)) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| (Array T@Ref T@Field_5930_5931 T@Ref)) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_16332 T@PolymorphicMapType_6406)) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| (Array T@Ref T@Field_5917_16199 T@FrameType)) ) ) ))
(declare-fun succHeap (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857) Bool)
(declare-fun barfoo1_3168 (T@Ref) Bool)
(declare-fun state (T@PolymorphicMapType_5857 T@PolymorphicMapType_5878) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_5878) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_6406)
(declare-sort T@TripleDomainType_2306_2309_11713 0)
(declare-fun Triple_first_2371_2372_3359 (T@TripleDomainType_2306_2309_11713) Int)
(declare-fun Triple_triple_2306_2309_3354 (Int Bool T@Ref) T@TripleDomainType_2306_2309_11713)
(declare-fun Triple_second_2402_2403_3361 (T@TripleDomainType_2306_2309_11713) Bool)
(declare-fun Triple_third_2433_2434_3364 (T@TripleDomainType_2306_2309_11713) T@Ref)
(declare-sort T@PairDomainType_2160_2163 0)
(declare-fun Triple_isPrefix_2517_2518_3373 (T@PairDomainType_2160_2163 T@TripleDomainType_2306_2309_11713) Bool)
(declare-fun Pair_first_2216_2217 (T@PairDomainType_2160_2163) Int)
(declare-fun Pair_second_2245_2246 (T@PairDomainType_2160_2163) Bool)
(declare-sort T@ListDomainType_2023 0)
(declare-fun length_2_2035 (T@ListDomainType_2023) Int)
(declare-fun nil_2068 () T@ListDomainType_2023)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_5857 T@PolymorphicMapType_5857 T@PolymorphicMapType_5878) Bool)
(declare-fun IsPredicateField_5917_16290 (T@Field_5917_16199) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_5917 (T@Field_5917_16199) T@Field_5917_16332)
(declare-fun HasDirectPerm_5917_16263 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_16199) Bool)
(declare-fun IsWandField_5917_17839 (T@Field_5917_16199) Bool)
(declare-fun WandMaskField_5917 (T@Field_5917_16199) T@Field_5917_16332)
(declare-fun dummyHeap () T@PolymorphicMapType_5857)
(declare-fun ZeroMask () T@PolymorphicMapType_5878)
(declare-fun $allocated () T@Field_5917_53)
(declare-fun InsidePredicate_5917_5917 (T@Field_5917_16199 T@FrameType T@Field_5917_16199 T@FrameType) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_5917_20802 (T@Field_5917_16332) Bool)
(declare-fun IsWandField_5917_20818 (T@Field_5917_16332) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_5917_5931 (T@Field_5930_5931) Bool)
(declare-fun IsWandField_5917_5931 (T@Field_5930_5931) Bool)
(declare-fun IsPredicateField_5917_53 (T@Field_5917_53) Bool)
(declare-fun IsWandField_5917_53 (T@Field_5917_53) Bool)
(declare-fun HasDirectPerm_5917_21173 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_16332) Bool)
(declare-fun HasDirectPerm_5917_5931 (T@PolymorphicMapType_5878 T@Ref T@Field_5930_5931) Bool)
(declare-fun HasDirectPerm_5917_53 (T@PolymorphicMapType_5878 T@Ref T@Field_5917_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_5878 T@PolymorphicMapType_5878 T@PolymorphicMapType_5878) Bool)
(declare-fun hide2_3331 (T@Ref) Int)
(declare-fun foo_2_645 (Real) Int)
(declare-fun foo_2_3168 (T@Ref) Int)
(declare-fun foo_2_3 (Int) Int)
(declare-fun hide2_1933 (Int) Int)
(declare-fun hide_3 (Int) Int)
(declare-fun Pair_pair_2160_2163 (Int Bool) T@PairDomainType_2160_2163)
(declare-sort T@CellDomainType_14879 0)
(declare-fun Cell_get_3403 (T@CellDomainType_14879) T@Ref)
(declare-fun Cell_cell_3168 (T@Ref) T@CellDomainType_14879)
(declare-sort T@CellDomainType_2992 0)
(declare-fun Cell_get_2992 (T@CellDomainType_2992) Int)
(declare-fun Cell_cell_3 (Int) T@CellDomainType_2992)
(declare-fun barfoo2_3 (Int) Int)
(declare-fun cons_2020 (Int T@ListDomainType_2023) T@ListDomainType_2023)
(assert (forall ((Heap0 T@PolymorphicMapType_5857) (Heap1 T@PolymorphicMapType_5857) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((a_2 T@Ref) ) (! (barfoo1_3168 a_2)
 :qid |stdinbpl.342:19|
 :skolemid |35|
 :pattern ( (barfoo1_3168 a_2))
)))
(assert (forall ((Heap T@PolymorphicMapType_5857) (Mask T@PolymorphicMapType_5878) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_5857) (Heap1@@0 T@PolymorphicMapType_5857) (Heap2 T@PolymorphicMapType_5857) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_5917_16332) ) (!  (not (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_5917_16199) ) (!  (not (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_5930_5931) ) (!  (not (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_5917_53) ) (!  (not (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((a_2@@0 Int) (b_24 Bool) (c T@Ref) ) (! (= (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@0 b_24 c)) a_2@@0)
 :qid |stdinbpl.267:25|
 :skolemid |29|
 :pattern ( (Triple_first_2371_2372_3359 (Triple_triple_2306_2309_3354 a_2@@0 b_24 c)))
)))
(assert (forall ((a_2@@1 Int) (b_24@@0 Bool) (c@@0 T@Ref) ) (! (= (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@1 b_24@@0 c@@0)) b_24@@0)
 :qid |stdinbpl.273:25|
 :skolemid |30|
 :pattern ( (Triple_second_2402_2403_3361 (Triple_triple_2306_2309_3354 a_2@@1 b_24@@0 c@@0)))
)))
(assert (forall ((a_2@@2 Int) (b_24@@1 Bool) (c@@1 T@Ref) ) (! (= (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@2 b_24@@1 c@@1)) c@@1)
 :qid |stdinbpl.279:25|
 :skolemid |31|
 :pattern ( (Triple_third_2433_2434_3364 (Triple_triple_2306_2309_3354 a_2@@2 b_24@@1 c@@1)))
)))
(assert (forall ((p_1 T@PairDomainType_2160_2163) (t_2 T@TripleDomainType_2306_2309_11713) ) (! (= (Triple_isPrefix_2517_2518_3373 p_1 t_2)  (and (= (Pair_first_2216_2217 p_1) (Triple_first_2371_2372_3359 t_2)) (= (Pair_second_2245_2246 p_1) (Triple_second_2402_2403_3361 t_2))))
 :qid |stdinbpl.285:25|
 :skolemid |32|
 :pattern ( (Triple_isPrefix_2517_2518_3373 p_1 t_2))
 :pattern ( (Pair_first_2216_2217 p_1) (Triple_first_2371_2372_3359 t_2))
 :pattern ( (Pair_first_2216_2217 p_1) (Triple_second_2402_2403_3361 t_2))
 :pattern ( (Triple_first_2371_2372_3359 t_2) (Pair_second_2245_2246 p_1))
 :pattern ( (Pair_second_2245_2246 p_1) (Triple_second_2402_2403_3361 t_2))
)))
(assert (= (length_2_2035 nil_2068) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_5857) (ExhaleHeap T@PolymorphicMapType_5857) (Mask@@0 T@PolymorphicMapType_5878) (pm_f_26 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_5917_16263 Mask@@0 null pm_f_26) (IsPredicateField_5917_16290 pm_f_26)) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@0) null (PredicateMaskField_5917 pm_f_26)) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap) null (PredicateMaskField_5917 pm_f_26)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_5917_16290 pm_f_26) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap) null (PredicateMaskField_5917 pm_f_26)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_5857) (ExhaleHeap@@0 T@PolymorphicMapType_5857) (Mask@@1 T@PolymorphicMapType_5878) (pm_f_26@@0 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_5917_16263 Mask@@1 null pm_f_26@@0) (IsWandField_5917_17839 pm_f_26@@0)) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@1) null (WandMaskField_5917 pm_f_26@@0)) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@0) null (WandMaskField_5917 pm_f_26@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_5917_17839 pm_f_26@@0) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@0) null (WandMaskField_5917 pm_f_26@@0)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_5857) (ExhaleHeap@@1 T@PolymorphicMapType_5857) (Mask@@2 T@PolymorphicMapType_5878) (pm_f_26@@1 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_5917_16263 Mask@@2 null pm_f_26@@1) (IsPredicateField_5917_16290 pm_f_26@@1)) (and (and (and (forall ((o2_26 T@Ref) (f_51 T@Field_5917_53) ) (!  (=> (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26 f_51) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@2) o2_26 f_51) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26 f_51)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26 f_51))
)) (forall ((o2_26@@0 T@Ref) (f_51@@0 T@Field_5930_5931) ) (!  (=> (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@0 f_51@@0) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@2) o2_26@@0 f_51@@0) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@0 f_51@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@0 f_51@@0))
))) (forall ((o2_26@@1 T@Ref) (f_51@@1 T@Field_5917_16199) ) (!  (=> (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@1 f_51@@1) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@2) o2_26@@1 f_51@@1) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@1 f_51@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@1 f_51@@1))
))) (forall ((o2_26@@2 T@Ref) (f_51@@2 T@Field_5917_16332) ) (!  (=> (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) null (PredicateMaskField_5917 pm_f_26@@1))) o2_26@@2 f_51@@2) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@2) o2_26@@2 f_51@@2) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@2 f_51@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@1) o2_26@@2 f_51@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_5917_16290 pm_f_26@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_5857) (ExhaleHeap@@2 T@PolymorphicMapType_5857) (Mask@@3 T@PolymorphicMapType_5878) (pm_f_26@@2 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_5917_16263 Mask@@3 null pm_f_26@@2) (IsWandField_5917_17839 pm_f_26@@2)) (and (and (and (forall ((o2_26@@3 T@Ref) (f_51@@3 T@Field_5917_53) ) (!  (=> (select (|PolymorphicMapType_6406_5917_53#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@3 f_51@@3) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@3) o2_26@@3 f_51@@3) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@3 f_51@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@3 f_51@@3))
)) (forall ((o2_26@@4 T@Ref) (f_51@@4 T@Field_5930_5931) ) (!  (=> (select (|PolymorphicMapType_6406_5917_5931#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@4 f_51@@4) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@3) o2_26@@4 f_51@@4) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@4 f_51@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@4 f_51@@4))
))) (forall ((o2_26@@5 T@Ref) (f_51@@5 T@Field_5917_16199) ) (!  (=> (select (|PolymorphicMapType_6406_5917_16199#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@5 f_51@@5) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@3) o2_26@@5 f_51@@5) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@5 f_51@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@5 f_51@@5))
))) (forall ((o2_26@@6 T@Ref) (f_51@@6 T@Field_5917_16332) ) (!  (=> (select (|PolymorphicMapType_6406_5917_17312#PolymorphicMapType_6406| (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) null (WandMaskField_5917 pm_f_26@@2))) o2_26@@6 f_51@@6) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@3) o2_26@@6 f_51@@6) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@6 f_51@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@2) o2_26@@6 f_51@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_5917_17839 pm_f_26@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_5857) (ExhaleHeap@@3 T@PolymorphicMapType_5857) (Mask@@4 T@PolymorphicMapType_5878) (o_38 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@4) o_38 $allocated) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@3) o_38 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@3) o_38 $allocated))
)))
(assert (forall ((p T@Field_5917_16199) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_5917_5917 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_5917_5917 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_5857) (ExhaleHeap@@4 T@PolymorphicMapType_5857) (Mask@@5 T@PolymorphicMapType_5878) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_5878) (o_2@@3 T@Ref) (f_4@@3 T@Field_5917_16332) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_5917_20802 f_4@@3))) (not (IsWandField_5917_20818 f_4@@3))) (<= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_5878) (o_2@@4 T@Ref) (f_4@@4 T@Field_5917_16199) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_5917_16290 f_4@@4))) (not (IsWandField_5917_17839 f_4@@4))) (<= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_5878) (o_2@@5 T@Ref) (f_4@@5 T@Field_5930_5931) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_5917_5931 f_4@@5))) (not (IsWandField_5917_5931 f_4@@5))) (<= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_5878) (o_2@@6 T@Ref) (f_4@@6 T@Field_5917_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_5917_53 f_4@@6))) (not (IsWandField_5917_53 f_4@@6))) (<= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_5878) (o_2@@7 T@Ref) (f_4@@7 T@Field_5917_16332) ) (! (= (HasDirectPerm_5917_21173 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_21173 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_5878) (o_2@@8 T@Ref) (f_4@@8 T@Field_5917_16199) ) (! (= (HasDirectPerm_5917_16263 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_16263 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_5878) (o_2@@9 T@Ref) (f_4@@9 T@Field_5930_5931) ) (! (= (HasDirectPerm_5917_5931 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_5931 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_5878) (o_2@@10 T@Ref) (f_4@@10 T@Field_5917_53) ) (! (= (HasDirectPerm_5917_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_5917_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_5857) (ExhaleHeap@@5 T@PolymorphicMapType_5857) (Mask@@14 T@PolymorphicMapType_5878) (o_38@@0 T@Ref) (f_51@@7 T@Field_5917_16332) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_5917_21173 Mask@@14 o_38@@0 f_51@@7) (= (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@6) o_38@@0 f_51@@7) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@5) o_38@@0 f_51@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| ExhaleHeap@@5) o_38@@0 f_51@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_5857) (ExhaleHeap@@6 T@PolymorphicMapType_5857) (Mask@@15 T@PolymorphicMapType_5878) (o_38@@1 T@Ref) (f_51@@8 T@Field_5917_16199) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_5917_16263 Mask@@15 o_38@@1 f_51@@8) (= (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@7) o_38@@1 f_51@@8) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@6) o_38@@1 f_51@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| ExhaleHeap@@6) o_38@@1 f_51@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_5857) (ExhaleHeap@@7 T@PolymorphicMapType_5857) (Mask@@16 T@PolymorphicMapType_5878) (o_38@@2 T@Ref) (f_51@@9 T@Field_5930_5931) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_5917_5931 Mask@@16 o_38@@2 f_51@@9) (= (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@8) o_38@@2 f_51@@9) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@7) o_38@@2 f_51@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| ExhaleHeap@@7) o_38@@2 f_51@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_5857) (ExhaleHeap@@8 T@PolymorphicMapType_5857) (Mask@@17 T@PolymorphicMapType_5878) (o_38@@3 T@Ref) (f_51@@10 T@Field_5917_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_5917_53 Mask@@17 o_38@@3 f_51@@10) (= (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@9) o_38@@3 f_51@@10) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@8) o_38@@3 f_51@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| ExhaleHeap@@8) o_38@@3 f_51@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_5917_16332) ) (! (= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_5917_16199) ) (! (= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_5930_5931) ) (! (= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_5917_53) ) (! (= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_5878) (SummandMask1 T@PolymorphicMapType_5878) (SummandMask2 T@PolymorphicMapType_5878) (o_2@@15 T@Ref) (f_4@@15 T@Field_5917_16332) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_5878_5917_19893#PolymorphicMapType_5878| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_5878) (SummandMask1@@0 T@PolymorphicMapType_5878) (SummandMask2@@0 T@PolymorphicMapType_5878) (o_2@@16 T@Ref) (f_4@@16 T@Field_5917_16199) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_5878_5917_16199#PolymorphicMapType_5878| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_5878) (SummandMask1@@1 T@PolymorphicMapType_5878) (SummandMask2@@1 T@PolymorphicMapType_5878) (o_2@@17 T@Ref) (f_4@@17 T@Field_5930_5931) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_5878_5917_5931#PolymorphicMapType_5878| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_5878) (SummandMask1@@2 T@PolymorphicMapType_5878) (SummandMask2@@2 T@PolymorphicMapType_5878) (o_2@@18 T@Ref) (f_4@@18 T@Field_5917_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_5878_5917_53#PolymorphicMapType_5878| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((r_1 T@Ref) ) (! (< (hide2_3331 r_1) 0)
 :qid |stdinbpl.406:15|
 :skolemid |40|
 :pattern ( (hide2_3331 r_1))
)))
(assert (forall ((a_2@@3 Real) ) (! (> (foo_2_645 a_2@@3) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_645 a_2@@3))
)))
(assert (forall ((a_2@@4 T@Ref) ) (! (> (foo_2_3168 a_2@@4) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_3168 a_2@@4))
)))
(assert (forall ((a_2@@5 Int) ) (! (> (foo_2_3 a_2@@5) 0)
 :qid |stdinbpl.317:19|
 :skolemid |33|
 :pattern ( (foo_2_3 a_2@@5))
)))
(assert (forall ((x Int) ) (! (> (hide2_1933 x) 0)
 :qid |stdinbpl.393:15|
 :skolemid |39|
 :pattern ( (hide2_1933 x))
)))
(assert (forall ((a_2@@6 Int) ) (! (= (hide_3 a_2@@6) 0)
 :qid |stdinbpl.370:19|
 :skolemid |38|
 :pattern ( (hide_3 a_2@@6))
)))
(assert (forall ((a_2@@7 Int) (b_24@@2 Bool) ) (! (= (Pair_first_2216_2217 (Pair_pair_2160_2163 a_2@@7 b_24@@2)) a_2@@7)
 :qid |stdinbpl.233:22|
 :skolemid |27|
 :pattern ( (Pair_first_2216_2217 (Pair_pair_2160_2163 a_2@@7 b_24@@2)))
)))
(assert (forall ((a_2@@8 Int) (b_24@@3 Bool) ) (! (= (Pair_second_2245_2246 (Pair_pair_2160_2163 a_2@@8 b_24@@3)) b_24@@3)
 :qid |stdinbpl.239:22|
 :skolemid |28|
 :pattern ( (Pair_second_2245_2246 (Pair_pair_2160_2163 a_2@@8 b_24@@3)))
)))
(assert (forall ((a_2@@9 T@Ref) ) (! (= (Cell_get_3403 (Cell_cell_3168 a_2@@9)) a_2@@9)
 :qid |stdinbpl.425:19|
 :skolemid |41|
 :pattern ( (Cell_get_3403 (Cell_cell_3168 a_2@@9)))
)))
(assert (forall ((a_2@@10 Int) ) (! (= (Cell_get_2992 (Cell_cell_3 a_2@@10)) a_2@@10)
 :qid |stdinbpl.425:19|
 :skolemid |41|
 :pattern ( (Cell_get_2992 (Cell_cell_3 a_2@@10)))
)))
(assert (forall ((a_2@@11 Int) ) (! (not (= (barfoo2_3 a_2@@11) (hide_3 a_2@@11)))
 :qid |stdinbpl.354:19|
 :skolemid |37|
 :pattern ( (barfoo2_3 a_2@@11))
 :pattern ( (hide_3 a_2@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_5857) (o_56 T@Ref) (f_22 T@Field_5917_16199) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@10) (store (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@10) o_56 f_22 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@10) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@10) (store (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@10) o_56 f_22 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_5857) (o_56@@0 T@Ref) (f_22@@0 T@Field_5917_16332) (v@@0 T@PolymorphicMapType_6406) ) (! (succHeap Heap@@11 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@11) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@11) (store (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@11) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@11) (store (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@11) o_56@@0 f_22@@0 v@@0) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_5857) (o_56@@1 T@Ref) (f_22@@1 T@Field_5930_5931) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@12) (store (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@12) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@12) (store (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@12) o_56@@1 f_22@@1 v@@1) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@12) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_5857) (o_56@@2 T@Ref) (f_22@@2 T@Field_5917_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_5857 (store (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_5857 (store (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@13) o_56@@2 f_22@@2 v@@2) (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16376#PolymorphicMapType_5857| Heap@@13) (|PolymorphicMapType_5857_5917_16199#PolymorphicMapType_5857| Heap@@13)))
)))
(assert (forall ((o_56@@3 T@Ref) (f_3 T@Field_5930_5931) (Heap@@14 T@PolymorphicMapType_5857) ) (!  (=> (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@14) o_56@@3 $allocated) (select (|PolymorphicMapType_5857_3170_53#PolymorphicMapType_5857| Heap@@14) (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@14) o_56@@3 f_3) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_5857_3173_3174#PolymorphicMapType_5857| Heap@@14) o_56@@3 f_3))
)))
(assert (forall ((p@@1 T@Field_5917_16199) (v_1@@0 T@FrameType) (q T@Field_5917_16199) (w@@0 T@FrameType) (r T@Field_5917_16199) (u T@FrameType) ) (!  (=> (and (InsidePredicate_5917_5917 p@@1 v_1@@0 q w@@0) (InsidePredicate_5917_5917 q w@@0 r u)) (InsidePredicate_5917_5917 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_5917_5917 p@@1 v_1@@0 q w@@0) (InsidePredicate_5917_5917 q w@@0 r u))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((z Int) ) (! (forall ((zs T@ListDomainType_2023) ) (! (not (= (cons_2020 z zs) nil_2068))
 :qid |stdinbpl.210:11|
 :skolemid |25|
 :pattern ( (cons_2020 z zs))
))
 :qid |stdinbpl.208:19|
 :skolemid |26|
)))
(assert (forall ((x@@0 Int) ) (! (forall ((xs T@ListDomainType_2023) ) (! (= (length_2_2035 (cons_2020 x@@0 xs)) (+ (length_2_2035 xs) 1))
 :qid |stdinbpl.201:11|
 :skolemid |23|
 :pattern ( (length_2_2035 (cons_2020 x@@0 xs)))
 :pattern ( (length_2_2035 xs))
))
 :qid |stdinbpl.199:19|
 :skolemid |24|
)))
; Invalid

