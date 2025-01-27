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
(declare-sort T@Field_11188_53 0)
(declare-sort T@Field_11201_11202 0)
(declare-sort T@Field_11188_28125 0)
(declare-sort T@Field_11188_27992 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11149 0)) (((PolymorphicMapType_11149 (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| (Array T@Ref T@Field_11188_53 Real)) (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| (Array T@Ref T@Field_11201_11202 Real)) (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| (Array T@Ref T@Field_11188_27992 Real)) (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| (Array T@Ref T@Field_11188_28125 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11677 0)) (((PolymorphicMapType_11677 (|PolymorphicMapType_11677_11188_53#PolymorphicMapType_11677| (Array T@Ref T@Field_11188_53 Bool)) (|PolymorphicMapType_11677_11188_11202#PolymorphicMapType_11677| (Array T@Ref T@Field_11201_11202 Bool)) (|PolymorphicMapType_11677_11188_27992#PolymorphicMapType_11677| (Array T@Ref T@Field_11188_27992 Bool)) (|PolymorphicMapType_11677_11188_29105#PolymorphicMapType_11677| (Array T@Ref T@Field_11188_28125 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11128 0)) (((PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| (Array T@Ref T@Field_11188_53 Bool)) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| (Array T@Ref T@Field_11201_11202 T@Ref)) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| (Array T@Ref T@Field_11188_28125 T@PolymorphicMapType_11677)) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| (Array T@Ref T@Field_11188_27992 T@FrameType)) ) ) ))
(declare-sort T@NaturalDomainType 0)
(declare-sort T@ListDomainType_16815 0)
(declare-fun cons_7694 (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun concatenate_8374 (T@ListDomainType_16815 T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun reverse_1_7684 (T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun nil_7684 (T@NaturalDomainType) T@ListDomainType_16815)
(declare-fun succHeap (T@PolymorphicMapType_11128 T@PolymorphicMapType_11128) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11128 T@PolymorphicMapType_11128) Bool)
(declare-fun isZeroOrSuccessor (T@NaturalDomainType) Bool)
(declare-fun isNilOrCons_8352 (T@ListDomainType_16815) Bool)
(declare-fun state (T@PolymorphicMapType_11128 T@PolymorphicMapType_11149) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11149) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11677)
(declare-fun lessEqual (T@NaturalDomainType T@NaturalDomainType) Bool)
(declare-fun zero () T@NaturalDomainType)
(declare-fun successor (T@NaturalDomainType) T@NaturalDomainType)
(declare-fun empty_7684 (T@ListDomainType_16815) Bool)
(declare-fun element_1 (T@NaturalDomainType T@ListDomainType_16815) Bool)
(declare-fun sorted (T@ListDomainType_16815) Bool)
(declare-fun hasMultiple (T@ListDomainType_16815) Bool)
(declare-fun less (T@NaturalDomainType T@NaturalDomainType) Bool)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11128 T@PolymorphicMapType_11128 T@PolymorphicMapType_11149) Bool)
(declare-fun IsPredicateField_11188_28083 (T@Field_11188_27992) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_11188 (T@Field_11188_27992) T@Field_11188_28125)
(declare-fun HasDirectPerm_11188_28056 (T@PolymorphicMapType_11149 T@Ref T@Field_11188_27992) Bool)
(declare-fun IsWandField_11188_29632 (T@Field_11188_27992) Bool)
(declare-fun WandMaskField_11188 (T@Field_11188_27992) T@Field_11188_28125)
(declare-fun dummyHeap () T@PolymorphicMapType_11128)
(declare-fun ZeroMask () T@PolymorphicMapType_11149)
(declare-fun $allocated () T@Field_11188_53)
(declare-fun InsidePredicate_11188_11188 (T@Field_11188_27992 T@FrameType T@Field_11188_27992 T@FrameType) Bool)
(declare-fun minus (T@NaturalDomainType T@NaturalDomainType) T@NaturalDomainType)
(declare-fun times (T@NaturalDomainType T@NaturalDomainType) T@NaturalDomainType)
(declare-fun minimum (T@NaturalDomainType T@NaturalDomainType) T@NaturalDomainType)
(declare-fun count_1 (T@NaturalDomainType T@ListDomainType_16815) T@NaturalDomainType)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_11188_32595 (T@Field_11188_28125) Bool)
(declare-fun IsWandField_11188_32611 (T@Field_11188_28125) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_11188_11202 (T@Field_11201_11202) Bool)
(declare-fun IsWandField_11188_11202 (T@Field_11201_11202) Bool)
(declare-fun IsPredicateField_11188_53 (T@Field_11188_53) Bool)
(declare-fun IsWandField_11188_53 (T@Field_11188_53) Bool)
(declare-fun length_2_7684 (T@ListDomainType_16815) T@NaturalDomainType)
(declare-fun last_2 (T@ListDomainType_16815) T@NaturalDomainType)
(declare-fun sum_2 (T@ListDomainType_16815) T@NaturalDomainType)
(declare-fun take_8364 (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun HasDirectPerm_11188_32966 (T@PolymorphicMapType_11149 T@Ref T@Field_11188_28125) Bool)
(declare-fun HasDirectPerm_11188_11202 (T@PolymorphicMapType_11149 T@Ref T@Field_11201_11202) Bool)
(declare-fun HasDirectPerm_11188_53 (T@PolymorphicMapType_11149 T@Ref T@Field_11188_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11149 T@PolymorphicMapType_11149 T@PolymorphicMapType_11149) Bool)
(declare-fun plus (T@NaturalDomainType T@NaturalDomainType) T@NaturalDomainType)
(declare-fun maximum (T@NaturalDomainType T@NaturalDomainType) T@NaturalDomainType)
(declare-fun drop_8364 (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun insertSorting (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun insert_1 (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun delete (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun butLast_7684 (T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun sort (T@ListDomainType_16815) T@ListDomainType_16815)
(declare-fun insertUnlessPresent (T@NaturalDomainType T@ListDomainType_16815) T@ListDomainType_16815)
(assert (forall ((x T@NaturalDomainType) (xs T@ListDomainType_16815) (t_2 T@NaturalDomainType) ) (! (= (reverse_1_7684 (cons_7694 x xs)) (concatenate_8374 (reverse_1_7684 xs) (cons_7694 x (nil_7684 t_2))))
 :qid |stdinbpl.506:19|
 :skolemid |60|
 :pattern ( (cons_7694 x xs) (concatenate_8374 (reverse_1_7684 xs) (cons_7694 x (nil_7684 t_2))))
 :pattern ( (reverse_1_7684 (cons_7694 x xs)) (nil_7684 t_2))
 :pattern ( (reverse_1_7684 (cons_7694 x xs)) (cons_7694 x (nil_7684 t_2)))
 :pattern ( (reverse_1_7684 (cons_7694 x xs)) (concatenate_8374 (reverse_1_7684 xs) (cons_7694 x (nil_7684 t_2))))
 :pattern ( (concatenate_8374 (reverse_1_7684 xs) (cons_7694 x (nil_7684 t_2))))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11128) (Heap1 T@PolymorphicMapType_11128) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((n T@NaturalDomainType) ) (! (isZeroOrSuccessor n)
 :qid |stdinbpl.214:15|
 :skolemid |22|
 :pattern ( (isZeroOrSuccessor n))
)))
(assert (forall ((l_1 T@ListDomainType_16815) ) (! (isNilOrCons_8352 l_1)
 :qid |stdinbpl.434:19|
 :skolemid |47|
 :pattern ( (isNilOrCons_8352 l_1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11128) (Mask T@PolymorphicMapType_11149) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11128) (Heap1@@0 T@PolymorphicMapType_11128) (Heap2 T@PolymorphicMapType_11128) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_11188_28125) ) (!  (not (select (|PolymorphicMapType_11677_11188_29105#PolymorphicMapType_11677| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11677_11188_29105#PolymorphicMapType_11677| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_11188_27992) ) (!  (not (select (|PolymorphicMapType_11677_11188_27992#PolymorphicMapType_11677| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11677_11188_27992#PolymorphicMapType_11677| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_11201_11202) ) (!  (not (select (|PolymorphicMapType_11677_11188_11202#PolymorphicMapType_11677| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11677_11188_11202#PolymorphicMapType_11677| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11188_53) ) (!  (not (select (|PolymorphicMapType_11677_11188_53#PolymorphicMapType_11677| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11677_11188_53#PolymorphicMapType_11677| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((n@@0 T@NaturalDomainType) ) (! (lessEqual zero n@@0)
 :qid |stdinbpl.250:15|
 :skolemid |28|
 :pattern ( (lessEqual zero n@@0))
)))
(assert (forall ((n@@1 T@NaturalDomainType) ) (! (= (isZeroOrSuccessor n@@1)  (or (= n@@1 zero) (exists ((p_1 T@NaturalDomainType) ) (! (= n@@1 (successor p_1))
 :qid |stdinbpl.222:80|
 :skolemid |23|
 :pattern ( (successor p_1))
))))
 :qid |stdinbpl.220:15|
 :skolemid |24|
 :pattern ( (isZeroOrSuccessor n@@1))
)))
(assert (forall ((e_1 T@NaturalDomainType) (l_1@@0 T@ListDomainType_16815) ) (!  (not (empty_7684 (cons_7694 e_1 l_1@@0)))
 :qid |stdinbpl.482:19|
 :skolemid |56|
 :pattern ( (empty_7684 (cons_7694 e_1 l_1@@0)))
)))
(assert (forall ((n@@2 T@NaturalDomainType) (t_2@@0 T@NaturalDomainType) ) (!  (not (element_1 n@@2 (nil_7684 t_2@@0)))
 :qid |stdinbpl.536:15|
 :skolemid |65|
 :pattern ( (element_1 n@@2 (nil_7684 t_2@@0)))
)))
(assert (forall ((t_2@@1 T@NaturalDomainType) ) (! (empty_7684 (nil_7684 t_2@@1))
 :qid |stdinbpl.476:19|
 :skolemid |55|
 :pattern ( (empty_7684 (nil_7684 t_2@@1)))
)))
(assert (forall ((t_2@@2 T@NaturalDomainType) ) (! (sorted (nil_7684 t_2@@2))
 :qid |stdinbpl.635:15|
 :skolemid |82|
 :pattern ( (sorted (nil_7684 t_2@@2)))
)))
(assert (forall ((t_2@@3 T@NaturalDomainType) ) (!  (not (hasMultiple (nil_7684 t_2@@3)))
 :qid |stdinbpl.713:15|
 :skolemid |95|
 :pattern ( (hasMultiple (nil_7684 t_2@@3)))
)))
(assert (forall ((n@@3 T@NaturalDomainType) ) (! (less zero (successor n@@3))
 :qid |stdinbpl.274:15|
 :skolemid |32|
 :pattern ( (less zero (successor n@@3)))
)))
(assert (forall ((x@@0 T@NaturalDomainType) (t_2@@4 T@NaturalDomainType) ) (! (sorted (cons_7694 x@@0 (nil_7684 t_2@@4)))
 :qid |stdinbpl.641:15|
 :skolemid |83|
 :pattern ( (sorted (cons_7694 x@@0 (nil_7684 t_2@@4))))
)))
(assert (forall ((x@@1 T@NaturalDomainType) (xs@@0 T@ListDomainType_16815) (ys T@ListDomainType_16815) ) (! (= (concatenate_8374 (cons_7694 x@@1 xs@@0) ys) (cons_7694 x@@1 (concatenate_8374 xs@@0 ys)))
 :qid |stdinbpl.494:19|
 :skolemid |58|
 :pattern ( (cons_7694 x@@1 xs@@0) (concatenate_8374 xs@@0 ys))
 :pattern ( (cons_7694 x@@1 xs@@0) (cons_7694 x@@1 (concatenate_8374 xs@@0 ys)))
 :pattern ( (concatenate_8374 (cons_7694 x@@1 xs@@0) ys))
 :pattern ( (cons_7694 x@@1 (concatenate_8374 xs@@0 ys)))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11128) (ExhaleHeap T@PolymorphicMapType_11128) (Mask@@0 T@PolymorphicMapType_11149) (pm_f_18 T@Field_11188_27992) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_11188_28056 Mask@@0 null pm_f_18) (IsPredicateField_11188_28083 pm_f_18)) (= (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@0) null (PredicateMaskField_11188 pm_f_18)) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap) null (PredicateMaskField_11188 pm_f_18)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_11188_28083 pm_f_18) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap) null (PredicateMaskField_11188 pm_f_18)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11128) (ExhaleHeap@@0 T@PolymorphicMapType_11128) (Mask@@1 T@PolymorphicMapType_11149) (pm_f_18@@0 T@Field_11188_27992) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_11188_28056 Mask@@1 null pm_f_18@@0) (IsWandField_11188_29632 pm_f_18@@0)) (= (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@1) null (WandMaskField_11188 pm_f_18@@0)) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@0) null (WandMaskField_11188 pm_f_18@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_11188_29632 pm_f_18@@0) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@0) null (WandMaskField_11188 pm_f_18@@0)))
)))
(assert (forall ((n@@4 T@NaturalDomainType) (l_1@@1 T@ListDomainType_16815) ) (! (= (hasMultiple (cons_7694 n@@4 l_1@@1))  (or (less (successor zero) n@@4) (hasMultiple l_1@@1)))
 :qid |stdinbpl.719:15|
 :skolemid |96|
 :pattern ( (hasMultiple (cons_7694 n@@4 l_1@@1)))
 :pattern ( (less (successor zero) n@@4) (hasMultiple l_1@@1))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11128) (ExhaleHeap@@1 T@PolymorphicMapType_11128) (Mask@@2 T@PolymorphicMapType_11149) (pm_f_18@@1 T@Field_11188_27992) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (and (HasDirectPerm_11188_28056 Mask@@2 null pm_f_18@@1) (IsPredicateField_11188_28083 pm_f_18@@1)) (and (and (and (forall ((o2_18 T@Ref) (f_21 T@Field_11188_53) ) (!  (=> (select (|PolymorphicMapType_11677_11188_53#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@2) null (PredicateMaskField_11188 pm_f_18@@1))) o2_18 f_21) (= (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@2) o2_18 f_21) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18 f_21)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18 f_21))
)) (forall ((o2_18@@0 T@Ref) (f_21@@0 T@Field_11201_11202) ) (!  (=> (select (|PolymorphicMapType_11677_11188_11202#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@2) null (PredicateMaskField_11188 pm_f_18@@1))) o2_18@@0 f_21@@0) (= (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@2) o2_18@@0 f_21@@0) (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@0 f_21@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@0 f_21@@0))
))) (forall ((o2_18@@1 T@Ref) (f_21@@1 T@Field_11188_27992) ) (!  (=> (select (|PolymorphicMapType_11677_11188_27992#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@2) null (PredicateMaskField_11188 pm_f_18@@1))) o2_18@@1 f_21@@1) (= (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@2) o2_18@@1 f_21@@1) (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@1 f_21@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@1 f_21@@1))
))) (forall ((o2_18@@2 T@Ref) (f_21@@2 T@Field_11188_28125) ) (!  (=> (select (|PolymorphicMapType_11677_11188_29105#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@2) null (PredicateMaskField_11188 pm_f_18@@1))) o2_18@@2 f_21@@2) (= (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@2) o2_18@@2 f_21@@2) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@2 f_21@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@1) o2_18@@2 f_21@@2))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (IsPredicateField_11188_28083 pm_f_18@@1))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11128) (ExhaleHeap@@2 T@PolymorphicMapType_11128) (Mask@@3 T@PolymorphicMapType_11149) (pm_f_18@@2 T@Field_11188_27992) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (=> (and (HasDirectPerm_11188_28056 Mask@@3 null pm_f_18@@2) (IsWandField_11188_29632 pm_f_18@@2)) (and (and (and (forall ((o2_18@@3 T@Ref) (f_21@@3 T@Field_11188_53) ) (!  (=> (select (|PolymorphicMapType_11677_11188_53#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@3) null (WandMaskField_11188 pm_f_18@@2))) o2_18@@3 f_21@@3) (= (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@3) o2_18@@3 f_21@@3) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@3 f_21@@3)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@3 f_21@@3))
)) (forall ((o2_18@@4 T@Ref) (f_21@@4 T@Field_11201_11202) ) (!  (=> (select (|PolymorphicMapType_11677_11188_11202#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@3) null (WandMaskField_11188 pm_f_18@@2))) o2_18@@4 f_21@@4) (= (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@3) o2_18@@4 f_21@@4) (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@4 f_21@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@4 f_21@@4))
))) (forall ((o2_18@@5 T@Ref) (f_21@@5 T@Field_11188_27992) ) (!  (=> (select (|PolymorphicMapType_11677_11188_27992#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@3) null (WandMaskField_11188 pm_f_18@@2))) o2_18@@5 f_21@@5) (= (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@3) o2_18@@5 f_21@@5) (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@5 f_21@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@5 f_21@@5))
))) (forall ((o2_18@@6 T@Ref) (f_21@@6 T@Field_11188_28125) ) (!  (=> (select (|PolymorphicMapType_11677_11188_29105#PolymorphicMapType_11677| (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@3) null (WandMaskField_11188 pm_f_18@@2))) o2_18@@6 f_21@@6) (= (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@3) o2_18@@6 f_21@@6) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@6 f_21@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@2) o2_18@@6 f_21@@6))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (IsWandField_11188_29632 pm_f_18@@2))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((n@@5 T@NaturalDomainType) ) (! (not (= (successor n@@5) zero))
 :qid |stdinbpl.238:15|
 :skolemid |26|
 :pattern ( (successor n@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11128) (ExhaleHeap@@3 T@PolymorphicMapType_11128) (Mask@@4 T@PolymorphicMapType_11149) (o_39 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (=> (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@4) o_39 $allocated) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@3) o_39 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@4) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@3) o_39 $allocated))
)))
(assert (forall ((p T@Field_11188_27992) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11188_11188 p v_1 p w))
 :qid |stdinbpl.171:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11188_11188 p v_1 p w))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11128) (ExhaleHeap@@4 T@PolymorphicMapType_11128) (Mask@@5 T@PolymorphicMapType_11149) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5) (succHeap Heap@@5 ExhaleHeap@@4))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@5))
)))
(assert (forall ((n@@6 T@NaturalDomainType) ) (! (= (minus zero n@@6) zero)
 :qid |stdinbpl.298:15|
 :skolemid |36|
 :pattern ( (minus zero n@@6))
)))
(assert (forall ((n@@7 T@NaturalDomainType) ) (! (= (times zero n@@7) zero)
 :qid |stdinbpl.316:15|
 :skolemid |39|
 :pattern ( (times zero n@@7))
)))
(assert (forall ((y T@NaturalDomainType) ) (! (= (minimum zero y) zero)
 :qid |stdinbpl.328:15|
 :skolemid |41|
 :pattern ( (minimum zero y))
)))
(assert (forall ((x@@2 T@NaturalDomainType) (t_2@@5 T@NaturalDomainType) ) (! (= (count_1 x@@2 (nil_7684 t_2@@5)) zero)
 :qid |stdinbpl.587:15|
 :skolemid |74|
 :pattern ( (count_1 x@@2 (nil_7684 t_2@@5)))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11149) (o_2@@3 T@Ref) (f_4@@3 T@Field_11188_28125) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| Mask@@6) o_2@@3 f_4@@3) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_11188_32595 f_4@@3))) (not (IsWandField_11188_32611 f_4@@3))) (<= (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| Mask@@6) o_2@@3 f_4@@3) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| Mask@@6) o_2@@3 f_4@@3))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11149) (o_2@@4 T@Ref) (f_4@@4 T@Field_11188_27992) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| Mask@@7) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_11188_28083 f_4@@4))) (not (IsWandField_11188_29632 f_4@@4))) (<= (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| Mask@@7) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| Mask@@7) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11149) (o_2@@5 T@Ref) (f_4@@5 T@Field_11201_11202) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| Mask@@8) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_11188_11202 f_4@@5))) (not (IsWandField_11188_11202 f_4@@5))) (<= (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| Mask@@8) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| Mask@@8) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11149) (o_2@@6 T@Ref) (f_4@@6 T@Field_11188_53) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| Mask@@9) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_11188_53 f_4@@6))) (not (IsWandField_11188_53 f_4@@6))) (<= (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| Mask@@9) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| Mask@@9) o_2@@6 f_4@@6))
)))
(assert (forall ((t_2@@6 T@NaturalDomainType) ) (! (= (length_2_7684 (nil_7684 t_2@@6)) zero)
 :qid |stdinbpl.524:19|
 :skolemid |63|
 :pattern ( (length_2_7684 (nil_7684 t_2@@6)))
)))
(assert (forall ((t_2@@7 T@NaturalDomainType) ) (! (= (last_2 (nil_7684 t_2@@7)) zero)
 :qid |stdinbpl.617:15|
 :skolemid |79|
 :pattern ( (last_2 (nil_7684 t_2@@7)))
)))
(assert (forall ((t_2@@8 T@NaturalDomainType) ) (! (= (sum_2 (nil_7684 t_2@@8)) zero)
 :qid |stdinbpl.701:15|
 :skolemid |93|
 :pattern ( (sum_2 (nil_7684 t_2@@8)))
)))
(assert (forall ((l_1@@2 T@ListDomainType_16815) ) (! (exists ((t_2@@9 T@NaturalDomainType) ) (! (= (take_8364 zero l_1@@2) (nil_7684 t_2@@9))
 :qid |stdinbpl.568:11|
 :skolemid |70|
 :pattern ( (nil_7684 t_2@@9))
))
 :qid |stdinbpl.566:19|
 :skolemid |71|
 :pattern ( (take_8364 zero l_1@@2))
)))
(assert (forall ((x@@3 T@NaturalDomainType) ) (! (= (minimum x@@3 zero) zero)
 :qid |stdinbpl.334:15|
 :skolemid |42|
 :pattern ( (minimum x@@3 zero))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11149) (o_2@@7 T@Ref) (f_4@@7 T@Field_11188_28125) ) (! (= (HasDirectPerm_11188_32966 Mask@@10 o_2@@7 f_4@@7) (> (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| Mask@@10) o_2@@7 f_4@@7) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11188_32966 Mask@@10 o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11149) (o_2@@8 T@Ref) (f_4@@8 T@Field_11188_27992) ) (! (= (HasDirectPerm_11188_28056 Mask@@11 o_2@@8 f_4@@8) (> (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| Mask@@11) o_2@@8 f_4@@8) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11188_28056 Mask@@11 o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11149) (o_2@@9 T@Ref) (f_4@@9 T@Field_11201_11202) ) (! (= (HasDirectPerm_11188_11202 Mask@@12 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| Mask@@12) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11188_11202 Mask@@12 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11149) (o_2@@10 T@Ref) (f_4@@10 T@Field_11188_53) ) (! (= (HasDirectPerm_11188_53 Mask@@13 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| Mask@@13) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_11188_53 Mask@@13 o_2@@10 f_4@@10))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.159:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11128) (ExhaleHeap@@5 T@PolymorphicMapType_11128) (Mask@@14 T@PolymorphicMapType_11149) (o_39@@0 T@Ref) (f_21@@7 T@Field_11188_28125) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (=> (HasDirectPerm_11188_32966 Mask@@14 o_39@@0 f_21@@7) (= (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@6) o_39@@0 f_21@@7) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@5) o_39@@0 f_21@@7))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@14) (select (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| ExhaleHeap@@5) o_39@@0 f_21@@7))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11128) (ExhaleHeap@@6 T@PolymorphicMapType_11128) (Mask@@15 T@PolymorphicMapType_11149) (o_39@@1 T@Ref) (f_21@@8 T@Field_11188_27992) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (=> (HasDirectPerm_11188_28056 Mask@@15 o_39@@1 f_21@@8) (= (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@7) o_39@@1 f_21@@8) (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@6) o_39@@1 f_21@@8))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@15) (select (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| ExhaleHeap@@6) o_39@@1 f_21@@8))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11128) (ExhaleHeap@@7 T@PolymorphicMapType_11128) (Mask@@16 T@PolymorphicMapType_11149) (o_39@@2 T@Ref) (f_21@@9 T@Field_11201_11202) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (=> (HasDirectPerm_11188_11202 Mask@@16 o_39@@2 f_21@@9) (= (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@8) o_39@@2 f_21@@9) (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@7) o_39@@2 f_21@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@16) (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| ExhaleHeap@@7) o_39@@2 f_21@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11128) (ExhaleHeap@@8 T@PolymorphicMapType_11128) (Mask@@17 T@PolymorphicMapType_11149) (o_39@@3 T@Ref) (f_21@@10 T@Field_11188_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (=> (HasDirectPerm_11188_53 Mask@@17 o_39@@3 f_21@@10) (= (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@9) o_39@@3 f_21@@10) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@8) o_39@@3 f_21@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@17) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| ExhaleHeap@@8) o_39@@3 f_21@@10))
)))
(assert (forall ((o_2@@11 T@Ref) (f_4@@11 T@Field_11188_28125) ) (! (= (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| ZeroMask) o_2@@11 f_4@@11) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| ZeroMask) o_2@@11 f_4@@11))
)))
(assert (forall ((o_2@@12 T@Ref) (f_4@@12 T@Field_11188_27992) ) (! (= (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| ZeroMask) o_2@@12 f_4@@12) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| ZeroMask) o_2@@12 f_4@@12))
)))
(assert (forall ((o_2@@13 T@Ref) (f_4@@13 T@Field_11201_11202) ) (! (= (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| ZeroMask) o_2@@13 f_4@@13) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| ZeroMask) o_2@@13 f_4@@13))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_11188_53) ) (! (= (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11149) (SummandMask1 T@PolymorphicMapType_11149) (SummandMask2 T@PolymorphicMapType_11149) (o_2@@15 T@Ref) (f_4@@15 T@Field_11188_28125) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| ResultMask) o_2@@15 f_4@@15) (+ (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| SummandMask1) o_2@@15 f_4@@15) (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| SummandMask2) o_2@@15 f_4@@15))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| ResultMask) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| SummandMask1) o_2@@15 f_4@@15))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11149_11188_31686#PolymorphicMapType_11149| SummandMask2) o_2@@15 f_4@@15))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11149) (SummandMask1@@0 T@PolymorphicMapType_11149) (SummandMask2@@0 T@PolymorphicMapType_11149) (o_2@@16 T@Ref) (f_4@@16 T@Field_11188_27992) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| ResultMask@@0) o_2@@16 f_4@@16) (+ (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| SummandMask1@@0) o_2@@16 f_4@@16) (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| SummandMask2@@0) o_2@@16 f_4@@16))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| ResultMask@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| SummandMask1@@0) o_2@@16 f_4@@16))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11149_11188_27992#PolymorphicMapType_11149| SummandMask2@@0) o_2@@16 f_4@@16))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11149) (SummandMask1@@1 T@PolymorphicMapType_11149) (SummandMask2@@1 T@PolymorphicMapType_11149) (o_2@@17 T@Ref) (f_4@@17 T@Field_11201_11202) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| ResultMask@@1) o_2@@17 f_4@@17) (+ (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| SummandMask1@@1) o_2@@17 f_4@@17) (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| SummandMask2@@1) o_2@@17 f_4@@17))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| ResultMask@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| SummandMask1@@1) o_2@@17 f_4@@17))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11149_11188_11202#PolymorphicMapType_11149| SummandMask2@@1) o_2@@17 f_4@@17))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11149) (SummandMask1@@2 T@PolymorphicMapType_11149) (SummandMask2@@2 T@PolymorphicMapType_11149) (o_2@@18 T@Ref) (f_4@@18 T@Field_11188_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| ResultMask@@2) o_2@@18 f_4@@18) (+ (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| SummandMask1@@2) o_2@@18 f_4@@18) (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| SummandMask2@@2) o_2@@18 f_4@@18))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| ResultMask@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| SummandMask1@@2) o_2@@18 f_4@@18))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11149_11188_53#PolymorphicMapType_11149| SummandMask2@@2) o_2@@18 f_4@@18))
)))
(assert (forall ((t_2@@10 T@NaturalDomainType) (ys@@0 T@ListDomainType_16815) ) (! (= (concatenate_8374 (nil_7684 t_2@@10) ys@@0) ys@@0)
 :qid |stdinbpl.488:19|
 :skolemid |57|
 :pattern ( (concatenate_8374 (nil_7684 t_2@@10) ys@@0))
)))
(assert (forall ((n@@8 T@NaturalDomainType) (x@@4 T@NaturalDomainType) (xs@@1 T@ListDomainType_16815) ) (! (= (element_1 n@@8 (cons_7694 x@@4 xs@@1))  (or (= n@@8 x@@4) (element_1 n@@8 xs@@1)))
 :qid |stdinbpl.542:15|
 :skolemid |66|
 :pattern ( (cons_7694 x@@4 xs@@1) (element_1 n@@8 xs@@1))
 :pattern ( (element_1 n@@8 (cons_7694 x@@4 xs@@1)))
)))
(assert (forall ((y@@0 T@NaturalDomainType) ) (! (= (plus zero y@@0) y@@0)
 :qid |stdinbpl.286:15|
 :skolemid |34|
 :pattern ( (plus zero y@@0))
)))
(assert (forall ((y@@1 T@NaturalDomainType) ) (! (= (maximum zero y@@1) y@@1)
 :qid |stdinbpl.346:15|
 :skolemid |44|
 :pattern ( (maximum zero y@@1))
)))
(assert (forall ((xs@@2 T@ListDomainType_16815) ) (! (= (drop_8364 zero xs@@2) xs@@2)
 :qid |stdinbpl.548:19|
 :skolemid |67|
 :pattern ( (drop_8364 zero xs@@2))
)))
(assert (forall ((t_2@@11 T@NaturalDomainType) (y@@2 T@NaturalDomainType) (ys@@1 T@ListDomainType_16815) ) (! (not (= (nil_7684 t_2@@11) (cons_7694 y@@2 ys@@1)))
 :qid |stdinbpl.464:15|
 :skolemid |53|
 :pattern ( (nil_7684 t_2@@11) (cons_7694 y@@2 ys@@1))
)))
(assert (forall ((n@@9 T@NaturalDomainType) ) (!  (not (less n@@9 zero))
 :qid |stdinbpl.268:15|
 :skolemid |31|
 :pattern ( (less n@@9 zero))
)))
(assert (forall ((x@@5 T@NaturalDomainType) (y@@3 T@NaturalDomainType) ) (! (= (lessEqual (successor x@@5) (successor y@@3)) (lessEqual x@@5 y@@3))
 :qid |stdinbpl.262:15|
 :skolemid |30|
 :pattern ( (successor x@@5) (lessEqual x@@5 y@@3))
 :pattern ( (successor y@@3) (lessEqual x@@5 y@@3))
 :pattern ( (lessEqual (successor x@@5) (successor y@@3)))
 :pattern ( (lessEqual x@@5 y@@3))
)))
(assert (forall ((x@@6 T@NaturalDomainType) (y@@4 T@NaturalDomainType) ) (! (= (less (successor x@@6) (successor y@@4)) (less x@@6 y@@4))
 :qid |stdinbpl.280:15|
 :skolemid |33|
 :pattern ( (successor x@@6) (less x@@6 y@@4))
 :pattern ( (successor y@@4) (less x@@6 y@@4))
 :pattern ( (less (successor x@@6) (successor y@@4)))
 :pattern ( (less x@@6 y@@4))
)))
(assert (forall ((x@@7 T@NaturalDomainType) (xs@@3 T@ListDomainType_16815) (t_2@@12 T@NaturalDomainType) ) (! (not (= (cons_7694 x@@7 xs@@3) (nil_7684 t_2@@12)))
 :qid |stdinbpl.458:15|
 :skolemid |52|
 :pattern ( (cons_7694 x@@7 xs@@3) (nil_7684 t_2@@12))
)))
(assert (forall ((x@@8 T@NaturalDomainType) ) (! (= (minus x@@8 zero) x@@8)
 :qid |stdinbpl.304:15|
 :skolemid |37|
 :pattern ( (minus x@@8 zero))
)))
(assert (forall ((x@@9 T@NaturalDomainType) ) (! (= (maximum x@@9 zero) x@@9)
 :qid |stdinbpl.352:15|
 :skolemid |45|
 :pattern ( (maximum x@@9 zero))
)))
(assert (forall ((l_1@@3 T@NaturalDomainType) (r_1 T@NaturalDomainType) ) (! (= (nil_7684 l_1@@3) (nil_7684 r_1))
 :qid |stdinbpl.452:15|
 :skolemid |51|
 :pattern ( (nil_7684 l_1@@3) (nil_7684 r_1))
)))
(assert (forall ((l_1@@4 T@ListDomainType_16815) ) (! (= (isNilOrCons_8352 l_1@@4)  (or (exists ((t_2@@13 T@NaturalDomainType) ) (! (= l_1@@4 (nil_7684 t_2@@13))
 :qid |stdinbpl.442:40|
 :skolemid |48|
 :pattern ( (nil_7684 t_2@@13))
)) (exists ((e_1@@0 T@NaturalDomainType) (r_1@@0 T@ListDomainType_16815) ) (! (= l_1@@4 (cons_7694 e_1@@0 r_1@@0))
 :qid |stdinbpl.445:16|
 :skolemid |49|
 :pattern ( (cons_7694 e_1@@0 r_1@@0))
))))
 :qid |stdinbpl.440:19|
 :skolemid |50|
 :pattern ( (isNilOrCons_8352 l_1@@4))
)))
(assert (= zero zero))
(assert (forall ((x@@10 T@NaturalDomainType) (t_2@@14 T@NaturalDomainType) ) (! (= (last_2 (cons_7694 x@@10 (nil_7684 t_2@@14))) x@@10)
 :qid |stdinbpl.623:15|
 :skolemid |80|
 :pattern ( (last_2 (cons_7694 x@@10 (nil_7684 t_2@@14))))
)))
(assert (forall ((n@@10 T@NaturalDomainType) (x@@11 T@NaturalDomainType) (xs@@4 T@ListDomainType_16815) ) (! (= (insertSorting n@@10 (cons_7694 x@@11 xs@@4)) (ite (lessEqual n@@10 x@@11) (cons_7694 n@@10 (cons_7694 x@@11 xs@@4)) (cons_7694 x@@11 (insertSorting n@@10 xs@@4))))
 :qid |stdinbpl.659:15|
 :skolemid |86|
 :pattern ( (cons_7694 x@@11 xs@@4) (lessEqual n@@10 x@@11))
 :pattern ( (cons_7694 x@@11 xs@@4) (insertSorting n@@10 xs@@4))
 :pattern ( (cons_7694 x@@11 xs@@4) (cons_7694 x@@11 (insertSorting n@@10 xs@@4)))
 :pattern ( (insertSorting n@@10 (cons_7694 x@@11 xs@@4)))
 :pattern ( (lessEqual n@@10 x@@11) (cons_7694 x@@11 xs@@4))
 :pattern ( (lessEqual n@@10 x@@11) (cons_7694 n@@10 (cons_7694 x@@11 xs@@4)))
 :pattern ( (lessEqual n@@10 x@@11) (insertSorting n@@10 xs@@4))
 :pattern ( (lessEqual n@@10 x@@11) (cons_7694 x@@11 (insertSorting n@@10 xs@@4)))
 :pattern ( (cons_7694 n@@10 (cons_7694 x@@11 xs@@4)))
 :pattern ( (cons_7694 x@@11 (insertSorting n@@10 xs@@4)))
)))
(assert (forall ((n@@11 T@NaturalDomainType) (x@@12 T@NaturalDomainType) (xs@@5 T@ListDomainType_16815) ) (! (= (insert_1 n@@11 (cons_7694 x@@12 xs@@5)) (ite (less n@@11 x@@12) (cons_7694 n@@11 (cons_7694 x@@12 xs@@5)) (cons_7694 x@@12 (insert_1 n@@11 xs@@5))))
 :qid |stdinbpl.671:15|
 :skolemid |88|
 :pattern ( (cons_7694 x@@12 xs@@5) (less n@@11 x@@12))
 :pattern ( (cons_7694 x@@12 xs@@5) (insert_1 n@@11 xs@@5))
 :pattern ( (cons_7694 x@@12 xs@@5) (cons_7694 x@@12 (insert_1 n@@11 xs@@5)))
 :pattern ( (insert_1 n@@11 (cons_7694 x@@12 xs@@5)))
 :pattern ( (less n@@11 x@@12) (cons_7694 x@@12 xs@@5))
 :pattern ( (less n@@11 x@@12) (cons_7694 n@@11 (cons_7694 x@@12 xs@@5)))
 :pattern ( (less n@@11 x@@12) (insert_1 n@@11 xs@@5))
 :pattern ( (less n@@11 x@@12) (cons_7694 x@@12 (insert_1 n@@11 xs@@5)))
 :pattern ( (cons_7694 n@@11 (cons_7694 x@@12 xs@@5)))
 :pattern ( (cons_7694 x@@12 (insert_1 n@@11 xs@@5)))
)))
(assert (forall ((n@@12 T@NaturalDomainType) ) (! (not (= zero (successor n@@12)))
 :qid |stdinbpl.232:15|
 :skolemid |25|
 :pattern ( (successor n@@12))
)))
(assert (forall ((n@@13 T@NaturalDomainType) ) (!  (not (lessEqual (successor n@@13) zero))
 :qid |stdinbpl.256:15|
 :skolemid |29|
 :pattern ( (lessEqual (successor n@@13) zero))
)))
(assert (forall ((x@@13 T@NaturalDomainType) (e_1@@1 T@NaturalDomainType) (xs@@6 T@ListDomainType_16815) ) (! (= (drop_8364 (successor x@@13) (cons_7694 e_1@@1 xs@@6)) (drop_8364 x@@13 xs@@6))
 :qid |stdinbpl.560:19|
 :skolemid |69|
 :pattern ( (cons_7694 e_1@@1 xs@@6) (drop_8364 x@@13 xs@@6))
 :pattern ( (drop_8364 (successor x@@13) (cons_7694 e_1@@1 xs@@6)))
)))
(assert (forall ((n@@14 T@NaturalDomainType) (t_2@@15 T@NaturalDomainType) ) (! (= (delete n@@14 (nil_7684 t_2@@15)) (nil_7684 t_2@@15))
 :qid |stdinbpl.512:15|
 :skolemid |61|
 :pattern ( (delete n@@14 (nil_7684 t_2@@15)))
)))
(assert (forall ((n@@15 T@NaturalDomainType) (t_2@@16 T@NaturalDomainType) ) (! (= (drop_8364 n@@15 (nil_7684 t_2@@16)) (nil_7684 t_2@@16))
 :qid |stdinbpl.554:19|
 :skolemid |68|
 :pattern ( (drop_8364 n@@15 (nil_7684 t_2@@16)))
)))
(assert (forall ((n@@16 T@NaturalDomainType) (t_2@@17 T@NaturalDomainType) ) (! (= (take_8364 n@@16 (nil_7684 t_2@@17)) (nil_7684 t_2@@17))
 :qid |stdinbpl.575:19|
 :skolemid |72|
 :pattern ( (take_8364 n@@16 (nil_7684 t_2@@17)))
)))
(assert (forall ((x@@14 T@NaturalDomainType) (y@@5 T@NaturalDomainType) ) (! (= (minus (successor x@@14) (successor y@@5)) (minus x@@14 y@@5))
 :qid |stdinbpl.310:15|
 :skolemid |38|
 :pattern ( (successor x@@14) (minus x@@14 y@@5))
 :pattern ( (successor y@@5) (minus x@@14 y@@5))
 :pattern ( (minus (successor x@@14) (successor y@@5)))
 :pattern ( (minus x@@14 y@@5))
)))
(assert (forall ((x@@15 T@NaturalDomainType) (y@@6 T@NaturalDomainType) ) (! (= (times (successor x@@15) y@@6) (plus y@@6 (times x@@15 y@@6)))
 :qid |stdinbpl.322:15|
 :skolemid |40|
 :pattern ( (successor x@@15) (times x@@15 y@@6))
 :pattern ( (successor x@@15) (plus y@@6 (times x@@15 y@@6)))
 :pattern ( (times (successor x@@15) y@@6))
 :pattern ( (plus y@@6 (times x@@15 y@@6)))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11128) (o_38 T@Ref) (f_23 T@Field_11188_27992) (v T@FrameType) ) (! (succHeap Heap@@10 (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@10) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@10) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@10) (store (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@10) o_38 f_23 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@10) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@10) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@10) (store (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@10) o_38 f_23 v)))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11128) (o_38@@0 T@Ref) (f_23@@0 T@Field_11188_28125) (v@@0 T@PolymorphicMapType_11677) ) (! (succHeap Heap@@11 (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@11) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@11) (store (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@11) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@11)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@11) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@11) (store (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@11) o_38@@0 f_23@@0 v@@0) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@11)))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11128) (o_38@@1 T@Ref) (f_23@@1 T@Field_11201_11202) (v@@1 T@Ref) ) (! (succHeap Heap@@12 (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@12) (store (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@12) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@12) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@12)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11128 (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@12) (store (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@12) o_38@@1 f_23@@1 v@@1) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@12) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@12)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11128) (o_38@@2 T@Ref) (f_23@@2 T@Field_11188_53) (v@@2 Bool) ) (! (succHeap Heap@@13 (PolymorphicMapType_11128 (store (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@13) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@13) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@13) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11128 (store (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@13) o_38@@2 f_23@@2 v@@2) (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@13) (|PolymorphicMapType_11128_11188_28169#PolymorphicMapType_11128| Heap@@13) (|PolymorphicMapType_11128_11188_27992#PolymorphicMapType_11128| Heap@@13)))
)))
(assert (forall ((t_2@@18 T@NaturalDomainType) ) (! (= (reverse_1_7684 (nil_7684 t_2@@18)) (nil_7684 t_2@@18))
 :qid |stdinbpl.500:19|
 :skolemid |59|
 :pattern ( (reverse_1_7684 (nil_7684 t_2@@18)))
)))
(assert (forall ((t_2@@19 T@NaturalDomainType) ) (! (= (butLast_7684 (nil_7684 t_2@@19)) (nil_7684 t_2@@19))
 :qid |stdinbpl.599:19|
 :skolemid |76|
 :pattern ( (butLast_7684 (nil_7684 t_2@@19)))
)))
(assert (forall ((t_2@@20 T@NaturalDomainType) ) (! (= (sort (nil_7684 t_2@@20)) (nil_7684 t_2@@20))
 :qid |stdinbpl.689:15|
 :skolemid |91|
 :pattern ( (sort (nil_7684 t_2@@20)))
)))
(assert (forall ((x@@16 T@NaturalDomainType) (y@@7 T@NaturalDomainType) ) (! (= (plus (successor x@@16) y@@7) (successor (plus x@@16 y@@7)))
 :qid |stdinbpl.292:15|
 :skolemid |35|
 :pattern ( (successor x@@16) (plus x@@16 y@@7))
 :pattern ( (successor x@@16) (successor (plus x@@16 y@@7)))
 :pattern ( (plus (successor x@@16) y@@7))
 :pattern ( (successor (plus x@@16 y@@7)))
)))
(assert (forall ((x@@17 T@NaturalDomainType) (y@@8 T@NaturalDomainType) (ys@@2 T@ListDomainType_16815) ) (! (= (take_8364 (successor x@@17) (cons_7694 y@@8 ys@@2)) (cons_7694 y@@8 (take_8364 x@@17 ys@@2)))
 :qid |stdinbpl.581:19|
 :skolemid |73|
 :pattern ( (successor x@@17) (cons_7694 y@@8 (take_8364 x@@17 ys@@2)))
 :pattern ( (cons_7694 y@@8 ys@@2) (take_8364 x@@17 ys@@2))
 :pattern ( (cons_7694 y@@8 ys@@2) (cons_7694 y@@8 (take_8364 x@@17 ys@@2)))
 :pattern ( (take_8364 (successor x@@17) (cons_7694 y@@8 ys@@2)))
 :pattern ( (cons_7694 y@@8 (take_8364 x@@17 ys@@2)))
)))
(assert (forall ((x@@18 T@NaturalDomainType) (t_2@@21 T@NaturalDomainType) ) (! (= (butLast_7684 (cons_7694 x@@18 (nil_7684 t_2@@21))) (nil_7684 t_2@@21))
 :qid |stdinbpl.605:19|
 :skolemid |77|
 :pattern ( (butLast_7684 (cons_7694 x@@18 (nil_7684 t_2@@21))))
)))
(assert (forall ((n@@17 T@NaturalDomainType) (t_2@@22 T@NaturalDomainType) ) (! (= (insertSorting n@@17 (nil_7684 t_2@@22)) (cons_7694 n@@17 (nil_7684 t_2@@22)))
 :qid |stdinbpl.653:15|
 :skolemid |85|
 :pattern ( (insertSorting n@@17 (nil_7684 t_2@@22)))
 :pattern ( (cons_7694 n@@17 (nil_7684 t_2@@22)))
)))
(assert (forall ((n@@18 T@NaturalDomainType) (t_2@@23 T@NaturalDomainType) ) (! (= (insert_1 n@@18 (nil_7684 t_2@@23)) (cons_7694 n@@18 (nil_7684 t_2@@23)))
 :qid |stdinbpl.665:15|
 :skolemid |87|
 :pattern ( (insert_1 n@@18 (nil_7684 t_2@@23)))
 :pattern ( (cons_7694 n@@18 (nil_7684 t_2@@23)))
)))
(assert (forall ((n@@19 T@NaturalDomainType) (t_2@@24 T@NaturalDomainType) ) (! (= (insertUnlessPresent n@@19 (nil_7684 t_2@@24)) (cons_7694 n@@19 (nil_7684 t_2@@24)))
 :qid |stdinbpl.677:15|
 :skolemid |89|
 :pattern ( (insertUnlessPresent n@@19 (nil_7684 t_2@@24)))
 :pattern ( (cons_7694 n@@19 (nil_7684 t_2@@24)))
)))
(assert (forall ((x@@19 T@NaturalDomainType) (xs@@7 T@ListDomainType_16815) ) (! (= (sort (cons_7694 x@@19 xs@@7)) (insertSorting x@@19 (sort xs@@7)))
 :qid |stdinbpl.695:15|
 :skolemid |92|
 :pattern ( (sort (cons_7694 x@@19 xs@@7)))
 :pattern ( (insertSorting x@@19 (sort xs@@7)))
)))
(assert (forall ((n@@20 T@NaturalDomainType) (l_1@@5 T@ListDomainType_16815) ) (! (= (sum_2 (cons_7694 n@@20 l_1@@5)) (plus n@@20 (sum_2 l_1@@5)))
 :qid |stdinbpl.707:15|
 :skolemid |94|
 :pattern ( (sum_2 (cons_7694 n@@20 l_1@@5)))
 :pattern ( (plus n@@20 (sum_2 l_1@@5)))
)))
(assert (forall ((x@@20 T@NaturalDomainType) (xs@@8 T@ListDomainType_16815) (y@@9 T@NaturalDomainType) (ys@@3 T@ListDomainType_16815) ) (! (= (= (cons_7694 x@@20 xs@@8) (cons_7694 y@@9 ys@@3))  (and (= x@@20 y@@9) (= xs@@8 ys@@3)))
 :qid |stdinbpl.470:15|
 :skolemid |54|
 :pattern ( (cons_7694 x@@20 xs@@8) (cons_7694 y@@9 ys@@3))
)))
(assert (forall ((o_38@@3 T@Ref) (f_51 T@Field_11201_11202) (Heap@@14 T@PolymorphicMapType_11128) ) (!  (=> (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@14) o_38@@3 $allocated) (select (|PolymorphicMapType_11128_7279_53#PolymorphicMapType_11128| Heap@@14) (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@14) o_38@@3 f_51) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11128_7282_7283#PolymorphicMapType_11128| Heap@@14) o_38@@3 f_51))
)))
(assert (forall ((x@@21 T@NaturalDomainType) (y@@10 T@NaturalDomainType) ) (! (= (= (successor x@@21) (successor y@@10)) (= x@@21 y@@10))
 :qid |stdinbpl.244:15|
 :skolemid |27|
 :pattern ( (successor x@@21) (successor y@@10))
)))
(assert (forall ((p@@1 T@Field_11188_27992) (v_1@@0 T@FrameType) (q T@Field_11188_27992) (w@@0 T@FrameType) (r T@Field_11188_27992) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11188_11188 p@@1 v_1@@0 q w@@0) (InsidePredicate_11188_11188 q w@@0 r u)) (InsidePredicate_11188_11188 p@@1 v_1@@0 r u))
 :qid |stdinbpl.166:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11188_11188 p@@1 v_1@@0 q w@@0) (InsidePredicate_11188_11188 q w@@0 r u))
)))
(assert (forall ((x@@22 T@NaturalDomainType) (y@@11 T@NaturalDomainType) (ys@@4 T@ListDomainType_16815) ) (! (= (sorted (cons_7694 x@@22 (cons_7694 y@@11 ys@@4)))  (and (lessEqual x@@22 y@@11) (sorted (cons_7694 y@@11 ys@@4))))
 :qid |stdinbpl.647:15|
 :skolemid |84|
 :pattern ( (cons_7694 y@@11 ys@@4) (lessEqual x@@22 y@@11))
 :pattern ( (sorted (cons_7694 x@@22 (cons_7694 y@@11 ys@@4))))
 :pattern ( (lessEqual x@@22 y@@11) (cons_7694 y@@11 ys@@4))
 :pattern ( (lessEqual x@@22 y@@11) (sorted (cons_7694 y@@11 ys@@4)))
)))
(assert (forall ((e_1@@2 T@NaturalDomainType) (xs@@9 T@ListDomainType_16815) ) (! (= (length_2_7684 (cons_7694 e_1@@2 xs@@9)) (successor (length_2_7684 xs@@9)))
 :qid |stdinbpl.530:19|
 :skolemid |64|
 :pattern ( (length_2_7684 (cons_7694 e_1@@2 xs@@9)))
)))
(assert (forall ((x@@23 T@NaturalDomainType) (y@@12 T@NaturalDomainType) ) (! (= (minimum (successor x@@23) (successor y@@12)) (successor (minimum x@@23 y@@12)))
 :qid |stdinbpl.340:15|
 :skolemid |43|
 :pattern ( (successor x@@23) (minimum x@@23 y@@12))
 :pattern ( (successor x@@23) (successor (minimum x@@23 y@@12)))
 :pattern ( (successor y@@12) (minimum x@@23 y@@12))
 :pattern ( (successor y@@12) (successor (minimum x@@23 y@@12)))
 :pattern ( (minimum (successor x@@23) (successor y@@12)))
 :pattern ( (successor (minimum x@@23 y@@12)))
)))
(assert (forall ((x@@24 T@NaturalDomainType) (y@@13 T@NaturalDomainType) ) (! (= (maximum (successor x@@24) (successor y@@13)) (successor (maximum x@@24 y@@13)))
 :qid |stdinbpl.358:15|
 :skolemid |46|
 :pattern ( (successor x@@24) (maximum x@@24 y@@13))
 :pattern ( (successor x@@24) (successor (maximum x@@24 y@@13)))
 :pattern ( (successor y@@13) (maximum x@@24 y@@13))
 :pattern ( (successor y@@13) (successor (maximum x@@24 y@@13)))
 :pattern ( (maximum (successor x@@24) (successor y@@13)))
 :pattern ( (successor (maximum x@@24 y@@13)))
)))
(assert (forall ((x@@25 T@NaturalDomainType) (n@@21 T@NaturalDomainType) (l_1@@6 T@ListDomainType_16815) ) (! (= (last_2 (cons_7694 x@@25 (cons_7694 n@@21 l_1@@6))) (last_2 (cons_7694 n@@21 l_1@@6)))
 :qid |stdinbpl.629:15|
 :skolemid |81|
 :pattern ( (last_2 (cons_7694 x@@25 (cons_7694 n@@21 l_1@@6))))
)))
(assert (forall ((x@@26 T@NaturalDomainType) (e_1@@3 T@NaturalDomainType) (l_1@@7 T@ListDomainType_16815) ) (! (= (cons_7694 x@@26 (cons_7694 e_1@@3 l_1@@7)) (cons_7694 x@@26 (butLast_7684 (cons_7694 e_1@@3 l_1@@7))))
 :qid |stdinbpl.611:19|
 :skolemid |78|
 :pattern ( (cons_7694 x@@26 (cons_7694 e_1@@3 l_1@@7)))
 :pattern ( (cons_7694 x@@26 (butLast_7684 (cons_7694 e_1@@3 l_1@@7))))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((x@@27 T@NaturalDomainType) (y@@14 T@NaturalDomainType) (ys@@5 T@ListDomainType_16815) ) (! (= (count_1 x@@27 (cons_7694 y@@14 ys@@5)) (ite (= x@@27 y@@14) (successor (count_1 x@@27 ys@@5)) (count_1 x@@27 ys@@5)))
 :qid |stdinbpl.593:15|
 :skolemid |75|
 :pattern ( (cons_7694 y@@14 ys@@5) (count_1 x@@27 ys@@5))
 :pattern ( (cons_7694 y@@14 ys@@5) (successor (count_1 x@@27 ys@@5)))
 :pattern ( (count_1 x@@27 (cons_7694 y@@14 ys@@5)))
)))
(assert (forall ((n@@22 T@NaturalDomainType) (x@@28 T@NaturalDomainType) (xs@@10 T@ListDomainType_16815) ) (! (= (delete n@@22 (cons_7694 x@@28 xs@@10)) (ite (= n@@22 x@@28) (delete n@@22 xs@@10) (cons_7694 x@@28 (delete n@@22 xs@@10))))
 :qid |stdinbpl.518:15|
 :skolemid |62|
 :pattern ( (cons_7694 x@@28 xs@@10) (delete n@@22 xs@@10))
 :pattern ( (cons_7694 x@@28 xs@@10) (cons_7694 x@@28 (delete n@@22 xs@@10)))
 :pattern ( (delete n@@22 (cons_7694 x@@28 xs@@10)))
 :pattern ( (cons_7694 x@@28 (delete n@@22 xs@@10)))
)))
(assert (forall ((n@@23 T@NaturalDomainType) (x@@29 T@NaturalDomainType) (xs@@11 T@ListDomainType_16815) ) (! (= (insertUnlessPresent n@@23 (cons_7694 x@@29 xs@@11)) (ite (= n@@23 x@@29) (cons_7694 x@@29 xs@@11) (cons_7694 x@@29 (insertUnlessPresent n@@23 xs@@11))))
 :qid |stdinbpl.683:15|
 :skolemid |90|
 :pattern ( (cons_7694 x@@29 xs@@11) (insertUnlessPresent n@@23 xs@@11))
 :pattern ( (cons_7694 x@@29 xs@@11) (cons_7694 x@@29 (insertUnlessPresent n@@23 xs@@11)))
 :pattern ( (insertUnlessPresent n@@23 (cons_7694 x@@29 xs@@11)))
 :pattern ( (cons_7694 x@@29 (insertUnlessPresent n@@23 xs@@11)))
)))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun e_0 () T@NaturalDomainType)
(declare-fun l_0 () T@ListDomainType_16815)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11128)
(declare-fun n_5_2 () T@NaturalDomainType)
(declare-fun e_0_2 () T@NaturalDomainType)
(declare-fun l_0_2 () T@ListDomainType_16815)
(declare-fun n_3_2 () T@NaturalDomainType)
(declare-fun t_0_2 () T@NaturalDomainType)
(declare-fun Heap@@15 () T@PolymorphicMapType_11128)
(set-info :boogie-vc-id property01)
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
 (=> (= (ControlFlow 0 0) 38) (let ((anon50_Then_correct true))
(let ((anon18_correct true))
(let ((anon49_Then_correct  (=> (isZeroOrSuccessor e_0) (and (=> (= (ControlFlow 0 32) 31) anon50_Then_correct) (=> (= (ControlFlow 0 32) 29) anon18_correct)))))
(let ((anon49_Else_correct  (=> (and (not (isZeroOrSuccessor e_0)) (= (ControlFlow 0 30) 29)) anon18_correct)))
(let ((anon46_Then_correct true))
(let ((anon19_correct true))
(let ((anon47_Then_correct  (=> (forall ((n_4_1_1 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_4_1_1 l_0) (drop_8364 n_4_1_1 l_0)) l_0)
 :qid |stdinbpl.870:25|
 :skolemid |108|
 :pattern ( (concatenate_8374 (take_8364 n_4_1_1 l_0) (drop_8364 n_4_1_1 l_0)))
)) (and (and (=> (= (ControlFlow 0 33) 25) anon19_correct) (=> (= (ControlFlow 0 33) 32) anon49_Then_correct)) (=> (= (ControlFlow 0 33) 30) anon49_Else_correct)))))
(let ((anon47_Else_correct  (=> (and (not (forall ((n_4_1_1@@0 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_4_1_1@@0 l_0) (drop_8364 n_4_1_1@@0 l_0)) l_0)
 :qid |stdinbpl.870:25|
 :skolemid |108|
 :pattern ( (concatenate_8374 (take_8364 n_4_1_1@@0 l_0) (drop_8364 n_4_1_1@@0 l_0)))
))) (= (ControlFlow 0 28) 25)) anon19_correct)))
(let ((anon45_Then_correct  (=> (isNilOrCons_8352 l_0) (and (and (=> (= (ControlFlow 0 34) 27) anon46_Then_correct) (=> (= (ControlFlow 0 34) 33) anon47_Then_correct)) (=> (= (ControlFlow 0 34) 28) anon47_Else_correct)))))
(let ((anon45_Else_correct  (=> (and (not (isNilOrCons_8352 l_0)) (= (ControlFlow 0 26) 25)) anon19_correct)))
(let ((anon44_Else_correct true))
(let ((anon42_Else_correct  (=> (forall ((t_0_1 T@NaturalDomainType) ) (! (forall ((n_3_1_1 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_3_1_1 (nil_7684 t_0_1)) (drop_8364 n_3_1_1 (nil_7684 t_0_1))) (nil_7684 t_0_1))
 :qid |stdinbpl.858:17|
 :skolemid |106|
 :pattern ( (concatenate_8374 (take_8364 n_3_1_1 (nil_7684 t_0_1)) (drop_8364 n_3_1_1 (nil_7684 t_0_1))))
))
 :qid |stdinbpl.856:22|
 :skolemid |107|
 :pattern ( (nil_7684 t_0_1))
)) (and (and (=> (= (ControlFlow 0 35) 24) anon44_Else_correct) (=> (= (ControlFlow 0 35) 34) anon45_Then_correct)) (=> (= (ControlFlow 0 35) 26) anon45_Else_correct)))))
(let ((anon41_Else_correct true))
(let ((anon41_Then_correct true))
(let ((anon43_Else_correct true))
(let ((anon43_Then_correct true))
(let ((anon39_Then_correct  (=> (state PostHeap@0 ZeroMask) (and (and (and (and (=> (= (ControlFlow 0 36) 35) anon42_Else_correct) (=> (= (ControlFlow 0 36) 20) anon43_Then_correct)) (=> (= (ControlFlow 0 36) 21) anon43_Else_correct)) (=> (= (ControlFlow 0 36) 22) anon41_Then_correct)) (=> (= (ControlFlow 0 36) 23) anon41_Else_correct)))))
(let ((anon33_correct true))
(let ((anon59_Else_correct  (=> (and (not (isZeroOrSuccessor n_5_2)) (= (ControlFlow 0 15) 12)) anon33_correct)))
(let ((anon59_Then_correct  (=> (isZeroOrSuccessor n_5_2) (and (=> (= (ControlFlow 0 13) (- 0 14)) (= (concatenate_8374 (take_8364 n_5_2 (cons_7694 e_0_2 l_0_2)) (drop_8364 n_5_2 (cons_7694 e_0_2 l_0_2))) (cons_7694 e_0_2 l_0_2))) (=> (= (concatenate_8374 (take_8364 n_5_2 (cons_7694 e_0_2 l_0_2)) (drop_8364 n_5_2 (cons_7694 e_0_2 l_0_2))) (cons_7694 e_0_2 l_0_2)) (=> (= (ControlFlow 0 13) 12) anon33_correct))))))
(let ((anon35_correct true))
(let ((anon58_Else_correct  (=> (and (forall ((n_5_3_1 T@NaturalDomainType) ) (!  (=> (isZeroOrSuccessor n_5_3_1) (= (concatenate_8374 (take_8364 n_5_3_1 (cons_7694 e_0_2 l_0_2)) (drop_8364 n_5_3_1 (cons_7694 e_0_2 l_0_2))) (cons_7694 e_0_2 l_0_2)))
 :qid |stdinbpl.941:30|
 :skolemid |117|
 :pattern ( (isZeroOrSuccessor n_5_3_1))
 :pattern ( (concatenate_8374 (take_8364 n_5_3_1 (cons_7694 e_0_2 l_0_2)) (drop_8364 n_5_3_1 (cons_7694 e_0_2 l_0_2))))
)) (= (ControlFlow 0 11) 9)) anon35_correct)))
(let ((anon57_Then_correct  (=> (isZeroOrSuccessor e_0_2) (and (and (=> (= (ControlFlow 0 16) 11) anon58_Else_correct) (=> (= (ControlFlow 0 16) 13) anon59_Then_correct)) (=> (= (ControlFlow 0 16) 15) anon59_Else_correct)))))
(let ((anon57_Else_correct  (=> (and (not (isZeroOrSuccessor e_0_2)) (= (ControlFlow 0 10) 9)) anon35_correct)))
(let ((anon37_correct true))
(let ((anon56_Else_correct  (=> (and (forall ((e_0_3_1 T@NaturalDomainType) ) (!  (=> (isZeroOrSuccessor e_0_3_1) (forall ((n_5_4 T@NaturalDomainType) ) (!  (=> (isZeroOrSuccessor n_5_4) (= (concatenate_8374 (take_8364 n_5_4 (cons_7694 e_0_3_1 l_0_2)) (drop_8364 n_5_4 (cons_7694 e_0_3_1 l_0_2))) (cons_7694 e_0_3_1 l_0_2)))
 :qid |stdinbpl.950:60|
 :skolemid |118|
 :pattern ( (isZeroOrSuccessor n_5_4))
 :pattern ( (concatenate_8374 (take_8364 n_5_4 (cons_7694 e_0_3_1 l_0_2)) (drop_8364 n_5_4 (cons_7694 e_0_3_1 l_0_2))))
)))
 :qid |stdinbpl.948:26|
 :skolemid |119|
 :pattern ( (isZeroOrSuccessor e_0_3_1))
 :pattern ( (cons_7694 e_0_3_1 l_0_2))
)) (= (ControlFlow 0 8) 5)) anon37_correct)))
(let ((anon55_Then_correct  (=> (forall ((n_4_3 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_4_3 l_0_2) (drop_8364 n_4_3 l_0_2)) l_0_2)
 :qid |stdinbpl.928:21|
 :skolemid |116|
 :pattern ( (concatenate_8374 (take_8364 n_4_3 l_0_2) (drop_8364 n_4_3 l_0_2)))
)) (and (and (=> (= (ControlFlow 0 17) 8) anon56_Else_correct) (=> (= (ControlFlow 0 17) 16) anon57_Then_correct)) (=> (= (ControlFlow 0 17) 10) anon57_Else_correct)))))
(let ((anon55_Else_correct  (=> (and (not (forall ((n_4_3@@0 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_4_3@@0 l_0_2) (drop_8364 n_4_3@@0 l_0_2)) l_0_2)
 :qid |stdinbpl.928:21|
 :skolemid |116|
 :pattern ( (concatenate_8374 (take_8364 n_4_3@@0 l_0_2) (drop_8364 n_4_3@@0 l_0_2)))
))) (= (ControlFlow 0 7) 5)) anon37_correct)))
(let ((anon54_Then_correct  (=> (isNilOrCons_8352 l_0_2) (and (=> (= (ControlFlow 0 18) 17) anon55_Then_correct) (=> (= (ControlFlow 0 18) 7) anon55_Else_correct)))))
(let ((anon54_Else_correct  (=> (and (not (isNilOrCons_8352 l_0_2)) (= (ControlFlow 0 6) 5)) anon37_correct)))
(let ((anon53_Else_correct true))
(let ((anon51_Else_correct  (=> (forall ((t_0_3_1 T@NaturalDomainType) ) (! (forall ((n_3_4 T@NaturalDomainType) ) (! (= (concatenate_8374 (take_8364 n_3_4 (nil_7684 t_0_3_1)) (drop_8364 n_3_4 (nil_7684 t_0_3_1))) (nil_7684 t_0_3_1))
 :qid |stdinbpl.921:15|
 :skolemid |114|
 :pattern ( (concatenate_8374 (take_8364 n_3_4 (nil_7684 t_0_3_1)) (drop_8364 n_3_4 (nil_7684 t_0_3_1))))
))
 :qid |stdinbpl.919:20|
 :skolemid |115|
 :pattern ( (nil_7684 t_0_3_1))
)) (and (and (=> (= (ControlFlow 0 19) 4) anon53_Else_correct) (=> (= (ControlFlow 0 19) 18) anon54_Then_correct)) (=> (= (ControlFlow 0 19) 6) anon54_Else_correct)))))
(let ((anon52_Else_correct true))
(let ((anon52_Then_correct  (=> (= (ControlFlow 0 2) (- 0 1)) (= (concatenate_8374 (take_8364 n_3_2 (nil_7684 t_0_2)) (drop_8364 n_3_2 (nil_7684 t_0_2))) (nil_7684 t_0_2)))))
(let ((anon0_correct  (=> (and (state Heap@@15 ZeroMask) AssumePermUpperBound) (and (and (and (=> (= (ControlFlow 0 37) 36) anon39_Then_correct) (=> (= (ControlFlow 0 37) 19) anon51_Else_correct)) (=> (= (ControlFlow 0 37) 2) anon52_Then_correct)) (=> (= (ControlFlow 0 37) 3) anon52_Else_correct)))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 38) 37) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
