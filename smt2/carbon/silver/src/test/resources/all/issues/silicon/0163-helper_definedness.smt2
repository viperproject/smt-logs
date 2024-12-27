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
(declare-sort T@Field_6896_53 0)
(declare-sort T@Field_6909_6910 0)
(declare-sort T@Field_10223_1189 0)
(declare-sort T@Field_6896_18123 0)
(declare-sort T@Field_6896_17990 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6857 0)) (((PolymorphicMapType_6857 (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_53 Real)) (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| (Array T@Ref T@Field_6909_6910 Real)) (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| (Array T@Ref T@Field_10223_1189 Real)) (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_17990 Real)) (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_18123 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7385 0)) (((PolymorphicMapType_7385 (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_53 Bool)) (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (Array T@Ref T@Field_6909_6910 Bool)) (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (Array T@Ref T@Field_10223_1189 Bool)) (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_17990 Bool)) (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_18123 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6836 0)) (((PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_53 Bool)) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| (Array T@Ref T@Field_6909_6910 T@Ref)) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| (Array T@Ref T@Field_10223_1189 Int)) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_18123 T@PolymorphicMapType_7385)) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_17990 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6896_53)
(declare-fun x_36 () T@Field_10223_1189)
(declare-fun succHeap (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836) Bool)
(declare-fun state (T@PolymorphicMapType_6836 T@PolymorphicMapType_6857) Bool)
(declare-fun postInhale (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun otherRef (T@PolymorphicMapType_6836) T@Ref)
(declare-fun GoodMask (T@PolymorphicMapType_6857) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7385)
(declare-fun |inhaleTrue'| (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun dummyFunction_1370 (Int) Bool)
(declare-fun |inhaleTrue#triggerStateless| (T@Ref) Int)
(declare-fun |onlyWorksWithInhale'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithInhale#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithPreExhale'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithPreExhale#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithInhale2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithInhale2#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithPreExhale2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithPreExhale2#triggerStateless| (Int) Int)
(declare-fun |helper'| (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun |helper#triggerStateless| (T@Ref) Int)
(declare-fun |postInhale'| (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun dummyFunction_3945 (T@Ref) Bool)
(declare-fun |postInhale#triggerStateless| (T@Ref) T@Ref)
(declare-fun |main'| (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun |main#triggerStateless| (T@Ref) T@Ref)
(declare-fun |main2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |main2#triggerStateless| (Int) Int)
(declare-fun |main2#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |onlyWorksWithInhale#trigger| (T@FrameType Int) Bool)
(declare-fun onlyWorksWithInhale2 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun inhaleTrue (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun onlyWorksWithInhale (T@PolymorphicMapType_6836 Int) Int)
(declare-fun onlyWorksWithPreExhale (T@PolymorphicMapType_6836 Int) Int)
(declare-fun onlyWorksWithPreExhale2 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun helper (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun main_1 (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun main2_1 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836 T@PolymorphicMapType_6857) Bool)
(declare-fun IsPredicateField_6896_18081 (T@Field_6896_17990) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6896 (T@Field_6896_17990) T@Field_6896_18123)
(declare-fun HasDirectPerm_6896_18054 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_17990) Bool)
(declare-fun IsWandField_6896_19828 (T@Field_6896_17990) Bool)
(declare-fun WandMaskField_6896 (T@Field_6896_17990) T@Field_6896_18123)
(declare-fun |main#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |postInhale#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6836)
(declare-fun ZeroMask () T@PolymorphicMapType_6857)
(declare-fun InsidePredicate_6896_6896 (T@Field_6896_17990 T@FrameType T@Field_6896_17990 T@FrameType) Bool)
(declare-fun |onlyWorksWithInhale2#trigger| (T@FrameType Int) Bool)
(declare-fun IsPredicateField_3841_1189 (T@Field_10223_1189) Bool)
(declare-fun IsWandField_3841_1189 (T@Field_10223_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6896_23386 (T@Field_6896_18123) Bool)
(declare-fun IsWandField_6896_23402 (T@Field_6896_18123) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6896_6910 (T@Field_6909_6910) Bool)
(declare-fun IsWandField_6896_6910 (T@Field_6909_6910) Bool)
(declare-fun IsPredicateField_6896_53 (T@Field_6896_53) Bool)
(declare-fun IsWandField_6896_53 (T@Field_6896_53) Bool)
(declare-fun HasDirectPerm_6896_23840 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_18123) Bool)
(declare-fun HasDirectPerm_6896_1189 (T@PolymorphicMapType_6857 T@Ref T@Field_10223_1189) Bool)
(declare-fun HasDirectPerm_6896_6910 (T@PolymorphicMapType_6857 T@Ref T@Field_6909_6910) Bool)
(declare-fun HasDirectPerm_6896_53 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |otherRef'| (T@PolymorphicMapType_6836) T@Ref)
(declare-fun |otherRef#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_6857 T@PolymorphicMapType_6857 T@PolymorphicMapType_6857) Bool)
(declare-fun |inhaleTrue#frame| (T@FrameType T@Ref) Int)
(declare-fun |onlyWorksWithInhale#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithPreExhale#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithInhale2#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithPreExhale2#frame| (T@FrameType Int) Int)
(declare-fun |helper#frame| (T@FrameType T@Ref) Int)
(declare-fun |postInhale#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |main#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |main2#frame| (T@FrameType Int) Int)
(declare-fun |otherRef#frame| (T@FrameType) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_6836) (Heap1 T@PolymorphicMapType_6836) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6836) (Mask T@PolymorphicMapType_6857) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 7)) (= (postInhale Heap r_1) (otherRef Heap)))
 :qid |stdinbpl.638:15|
 :skolemid |52|
 :pattern ( (state Heap Mask) (postInhale Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6836) (Mask@@0 T@PolymorphicMapType_6857) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6836) (Heap1@@0 T@PolymorphicMapType_6836) (Heap2 T@PolymorphicMapType_6836) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6896_18123) ) (!  (not (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6896_17990) ) (!  (not (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10223_1189) ) (!  (not (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6909_6910) ) (!  (not (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6896_53) ) (!  (not (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6836) (this T@Ref) ) (! (dummyFunction_1370 (|inhaleTrue#triggerStateless| this))
 :qid |stdinbpl.207:15|
 :skolemid |23|
 :pattern ( (|inhaleTrue'| Heap@@1 this))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6836) (i Int) ) (! (dummyFunction_1370 (|onlyWorksWithInhale#triggerStateless| i))
 :qid |stdinbpl.269:15|
 :skolemid |27|
 :pattern ( (|onlyWorksWithInhale'| Heap@@2 i))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6836) (i2_1 Int) ) (! (dummyFunction_1370 (|onlyWorksWithPreExhale#triggerStateless| i2_1))
 :qid |stdinbpl.345:15|
 :skolemid |32|
 :pattern ( (|onlyWorksWithPreExhale'| Heap@@3 i2_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6836) (i@@0 Int) ) (! (dummyFunction_1370 (|onlyWorksWithInhale2#triggerStateless| i@@0))
 :qid |stdinbpl.408:15|
 :skolemid |36|
 :pattern ( (|onlyWorksWithInhale2'| Heap@@4 i@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6836) (i2_1@@0 Int) ) (! (dummyFunction_1370 (|onlyWorksWithPreExhale2#triggerStateless| i2_1@@0))
 :qid |stdinbpl.484:15|
 :skolemid |41|
 :pattern ( (|onlyWorksWithPreExhale2'| Heap@@5 i2_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6836) (r_1@@0 T@Ref) ) (! (dummyFunction_1370 (|helper#triggerStateless| r_1@@0))
 :qid |stdinbpl.549:15|
 :skolemid |45|
 :pattern ( (|helper'| Heap@@6 r_1@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6836) (r_1@@1 T@Ref) ) (! (dummyFunction_3945 (|postInhale#triggerStateless| r_1@@1))
 :qid |stdinbpl.632:15|
 :skolemid |51|
 :pattern ( (|postInhale'| Heap@@7 r_1@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6836) (r2 T@Ref) ) (! (dummyFunction_3945 (|main#triggerStateless| r2))
 :qid |stdinbpl.719:15|
 :skolemid |56|
 :pattern ( (|main'| Heap@@8 r2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6836) (i3_7 Int) ) (! (dummyFunction_1370 (|main2#triggerStateless| i3_7))
 :qid |stdinbpl.798:15|
 :skolemid |61|
 :pattern ( (|main2'| Heap@@9 i3_7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6836) (Mask@@1 T@PolymorphicMapType_6857) (i3_7@@0 Int) ) (!  (=> (and (state Heap@@10 Mask@@1) (or (< AssumeFunctionsAbove 0) (|main2#trigger| EmptyFrame i3_7@@0))) (> (|main2'| Heap@@10 i3_7@@0) 17))
 :qid |stdinbpl.817:15|
 :skolemid |64|
 :pattern ( (state Heap@@10 Mask@@1) (|main2'| Heap@@10 i3_7@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6836) (Mask@@2 T@PolymorphicMapType_6857) (i@@1 Int) ) (!  (=> (and (state Heap@@11 Mask@@2) (or (< AssumeFunctionsAbove 6) (|onlyWorksWithInhale#trigger| EmptyFrame i@@1))) (> (|onlyWorksWithInhale'| Heap@@11 i@@1) 17))
 :qid |stdinbpl.288:15|
 :skolemid |30|
 :pattern ( (state Heap@@11 Mask@@2) (|onlyWorksWithInhale'| Heap@@11 i@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6836) (Mask@@3 T@PolymorphicMapType_6857) (i@@2 Int) ) (!  (=> (and (state Heap@@12 Mask@@3) (< AssumeFunctionsAbove 5)) (=> (> i@@2 17) (= (onlyWorksWithInhale2 Heap@@12 i@@2) i@@2)))
 :qid |stdinbpl.414:15|
 :skolemid |37|
 :pattern ( (state Heap@@12 Mask@@3) (onlyWorksWithInhale2 Heap@@12 i@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6836) (this@@0 T@Ref) ) (!  (and (= (inhaleTrue Heap@@13 this@@0) (|inhaleTrue'| Heap@@13 this@@0)) (dummyFunction_1370 (|inhaleTrue#triggerStateless| this@@0)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (inhaleTrue Heap@@13 this@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6836) (i@@3 Int) ) (!  (and (= (onlyWorksWithInhale Heap@@14 i@@3) (|onlyWorksWithInhale'| Heap@@14 i@@3)) (dummyFunction_1370 (|onlyWorksWithInhale#triggerStateless| i@@3)))
 :qid |stdinbpl.265:15|
 :skolemid |26|
 :pattern ( (onlyWorksWithInhale Heap@@14 i@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6836) (i2_1@@1 Int) ) (!  (and (= (onlyWorksWithPreExhale Heap@@15 i2_1@@1) (|onlyWorksWithPreExhale'| Heap@@15 i2_1@@1)) (dummyFunction_1370 (|onlyWorksWithPreExhale#triggerStateless| i2_1@@1)))
 :qid |stdinbpl.341:15|
 :skolemid |31|
 :pattern ( (onlyWorksWithPreExhale Heap@@15 i2_1@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6836) (i@@4 Int) ) (!  (and (= (onlyWorksWithInhale2 Heap@@16 i@@4) (|onlyWorksWithInhale2'| Heap@@16 i@@4)) (dummyFunction_1370 (|onlyWorksWithInhale2#triggerStateless| i@@4)))
 :qid |stdinbpl.404:15|
 :skolemid |35|
 :pattern ( (onlyWorksWithInhale2 Heap@@16 i@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6836) (i2_1@@2 Int) ) (!  (and (= (onlyWorksWithPreExhale2 Heap@@17 i2_1@@2) (|onlyWorksWithPreExhale2'| Heap@@17 i2_1@@2)) (dummyFunction_1370 (|onlyWorksWithPreExhale2#triggerStateless| i2_1@@2)))
 :qid |stdinbpl.480:15|
 :skolemid |40|
 :pattern ( (onlyWorksWithPreExhale2 Heap@@17 i2_1@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6836) (r_1@@2 T@Ref) ) (!  (and (= (helper Heap@@18 r_1@@2) (|helper'| Heap@@18 r_1@@2)) (dummyFunction_1370 (|helper#triggerStateless| r_1@@2)))
 :qid |stdinbpl.545:15|
 :skolemid |44|
 :pattern ( (helper Heap@@18 r_1@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6836) (r_1@@3 T@Ref) ) (!  (and (= (postInhale Heap@@19 r_1@@3) (|postInhale'| Heap@@19 r_1@@3)) (dummyFunction_3945 (|postInhale#triggerStateless| r_1@@3)))
 :qid |stdinbpl.628:15|
 :skolemid |50|
 :pattern ( (postInhale Heap@@19 r_1@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6836) (r2@@0 T@Ref) ) (!  (and (= (main_1 Heap@@20 r2@@0) (|main'| Heap@@20 r2@@0)) (dummyFunction_3945 (|main#triggerStateless| r2@@0)))
 :qid |stdinbpl.715:15|
 :skolemid |55|
 :pattern ( (main_1 Heap@@20 r2@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6836) (i3_7@@1 Int) ) (!  (and (= (main2_1 Heap@@21 i3_7@@1) (|main2'| Heap@@21 i3_7@@1)) (dummyFunction_1370 (|main2#triggerStateless| i3_7@@1)))
 :qid |stdinbpl.794:15|
 :skolemid |60|
 :pattern ( (main2_1 Heap@@21 i3_7@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6836) (ExhaleHeap T@PolymorphicMapType_6836) (Mask@@4 T@PolymorphicMapType_6857) (pm_f T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_6896_18054 Mask@@4 null pm_f) (IsPredicateField_6896_18081 pm_f)) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@22) null (PredicateMaskField_6896 pm_f)) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap) null (PredicateMaskField_6896 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@4) (IsPredicateField_6896_18081 pm_f) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap) null (PredicateMaskField_6896 pm_f)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6836) (ExhaleHeap@@0 T@PolymorphicMapType_6836) (Mask@@5 T@PolymorphicMapType_6857) (pm_f@@0 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_6896_18054 Mask@@5 null pm_f@@0) (IsWandField_6896_19828 pm_f@@0)) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@23) null (WandMaskField_6896 pm_f@@0)) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@0) null (WandMaskField_6896 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@5) (IsWandField_6896_19828 pm_f@@0) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@0) null (WandMaskField_6896 pm_f@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6836) (Mask@@6 T@PolymorphicMapType_6857) (r2@@1 T@Ref) ) (!  (=> (and (state Heap@@24 Mask@@6) (or (< AssumeFunctionsAbove 4) (|main#trigger| EmptyFrame r2@@1))) (= (helper Heap@@24 (|main'| Heap@@24 r2@@1)) 2))
 :qid |stdinbpl.738:15|
 :skolemid |59|
 :pattern ( (state Heap@@24 Mask@@6) (|main'| Heap@@24 r2@@1))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6836) (Mask@@7 T@PolymorphicMapType_6857) (r_1@@4 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@7) (or (< AssumeFunctionsAbove 7) (|postInhale#trigger| EmptyFrame r_1@@4))) (= (helper Heap@@25 (|postInhale'| Heap@@25 r_1@@4)) 2))
 :qid |stdinbpl.651:15|
 :skolemid |54|
 :pattern ( (state Heap@@25 Mask@@7) (|postInhale'| Heap@@25 r_1@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6836) (ExhaleHeap@@1 T@PolymorphicMapType_6836) (Mask@@8 T@PolymorphicMapType_6857) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@26) o_1 $allocated) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_6896_17990) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6896_6896 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6896_6896 p v_1 p w))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6836) (Mask@@9 T@PolymorphicMapType_6857) (i@@5 Int) ) (!  (=> (and (state Heap@@27 Mask@@9) (or (< AssumeFunctionsAbove 5) (|onlyWorksWithInhale2#trigger| EmptyFrame i@@5))) (=> (> i@@5 17) (> (|onlyWorksWithInhale2'| Heap@@27 i@@5) 17)))
 :qid |stdinbpl.427:15|
 :skolemid |39|
 :pattern ( (state Heap@@27 Mask@@9) (|onlyWorksWithInhale2'| Heap@@27 i@@5))
)))
(assert  (not (IsPredicateField_3841_1189 x_36)))
(assert  (not (IsWandField_3841_1189 x_36)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6836) (ExhaleHeap@@2 T@PolymorphicMapType_6836) (Mask@@10 T@PolymorphicMapType_6857) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@28 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6857) (o_2@@4 T@Ref) (f_4@@4 T@Field_6896_18123) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6896_23386 f_4@@4))) (not (IsWandField_6896_23402 f_4@@4))) (<= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6857) (o_2@@5 T@Ref) (f_4@@5 T@Field_6896_17990) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6896_18081 f_4@@5))) (not (IsWandField_6896_19828 f_4@@5))) (<= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6857) (o_2@@6 T@Ref) (f_4@@6 T@Field_10223_1189) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3841_1189 f_4@@6))) (not (IsWandField_3841_1189 f_4@@6))) (<= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6857) (o_2@@7 T@Ref) (f_4@@7 T@Field_6909_6910) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6896_6910 f_4@@7))) (not (IsWandField_6896_6910 f_4@@7))) (<= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6857) (o_2@@8 T@Ref) (f_4@@8 T@Field_6896_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6896_53 f_4@@8))) (not (IsWandField_6896_53 f_4@@8))) (<= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6857) (o_2@@9 T@Ref) (f_4@@9 T@Field_6896_18123) ) (! (= (HasDirectPerm_6896_23840 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_23840 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6857) (o_2@@10 T@Ref) (f_4@@10 T@Field_6896_17990) ) (! (= (HasDirectPerm_6896_18054 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_18054 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6857) (o_2@@11 T@Ref) (f_4@@11 T@Field_10223_1189) ) (! (= (HasDirectPerm_6896_1189 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_1189 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6857) (o_2@@12 T@Ref) (f_4@@12 T@Field_6909_6910) ) (! (= (HasDirectPerm_6896_6910 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_6910 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6857) (o_2@@13 T@Ref) (f_4@@13 T@Field_6896_53) ) (! (= (HasDirectPerm_6896_53 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_53 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6836) (ExhaleHeap@@3 T@PolymorphicMapType_6836) (Mask@@21 T@PolymorphicMapType_6857) (pm_f@@1 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_6896_18054 Mask@@21 null pm_f@@1) (IsPredicateField_6896_18081 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6896_53) ) (!  (=> (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@29) o2 f_2) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6909_6910) ) (!  (=> (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10223_1189) ) (!  (=> (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6896_17990) ) (!  (=> (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6896_18123) ) (!  (=> (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) o2@@3 f_2@@3) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@21) (IsPredicateField_6896_18081 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6836) (ExhaleHeap@@4 T@PolymorphicMapType_6836) (Mask@@22 T@PolymorphicMapType_6857) (pm_f@@2 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_6896_18054 Mask@@22 null pm_f@@2) (IsWandField_6896_19828 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6896_53) ) (!  (=> (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6909_6910) ) (!  (=> (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10223_1189) ) (!  (=> (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_6896_17990) ) (!  (=> (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_6896_18123) ) (!  (=> (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@22) (IsWandField_6896_19828 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6836) (ExhaleHeap@@5 T@PolymorphicMapType_6836) (Mask@@23 T@PolymorphicMapType_6857) (o_1@@0 T@Ref) (f_2@@9 T@Field_6896_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_6896_23840 Mask@@23 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@31) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6836) (ExhaleHeap@@6 T@PolymorphicMapType_6836) (Mask@@24 T@PolymorphicMapType_6857) (o_1@@1 T@Ref) (f_2@@10 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_6896_18054 Mask@@24 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@32) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6836) (ExhaleHeap@@7 T@PolymorphicMapType_6836) (Mask@@25 T@PolymorphicMapType_6857) (o_1@@2 T@Ref) (f_2@@11 T@Field_10223_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_6896_1189 Mask@@25 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@33) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6836) (ExhaleHeap@@8 T@PolymorphicMapType_6836) (Mask@@26 T@PolymorphicMapType_6857) (o_1@@3 T@Ref) (f_2@@12 T@Field_6909_6910) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_6896_6910 Mask@@26 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@34) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6836) (ExhaleHeap@@9 T@PolymorphicMapType_6836) (Mask@@27 T@PolymorphicMapType_6857) (o_1@@4 T@Ref) (f_2@@13 T@Field_6896_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_6896_53 Mask@@27 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@35) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6836) ) (!  (and (= (otherRef Heap@@36) (|otherRef'| Heap@@36)) (dummyFunction_3945 |otherRef#triggerStateless|))
 :qid |stdinbpl.587:15|
 :skolemid |47|
 :pattern ( (otherRef Heap@@36))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6896_18123) ) (! (= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6896_17990) ) (! (= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10223_1189) ) (! (= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6909_6910) ) (! (= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6896_53) ) (! (= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6857) (SummandMask1 T@PolymorphicMapType_6857) (SummandMask2 T@PolymorphicMapType_6857) (o_2@@19 T@Ref) (f_4@@19 T@Field_6896_18123) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6857) (SummandMask1@@0 T@PolymorphicMapType_6857) (SummandMask2@@0 T@PolymorphicMapType_6857) (o_2@@20 T@Ref) (f_4@@20 T@Field_6896_17990) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6857) (SummandMask1@@1 T@PolymorphicMapType_6857) (SummandMask2@@1 T@PolymorphicMapType_6857) (o_2@@21 T@Ref) (f_4@@21 T@Field_10223_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6857) (SummandMask1@@2 T@PolymorphicMapType_6857) (SummandMask2@@2 T@PolymorphicMapType_6857) (o_2@@22 T@Ref) (f_4@@22 T@Field_6909_6910) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6857) (SummandMask1@@3 T@PolymorphicMapType_6857) (SummandMask2@@3 T@PolymorphicMapType_6857) (o_2@@23 T@Ref) (f_4@@23 T@Field_6896_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6836) (Mask@@28 T@PolymorphicMapType_6857) (this@@1 T@Ref) ) (!  (=> (state Heap@@37 Mask@@28) (= (|inhaleTrue'| Heap@@37 this@@1) (|inhaleTrue#frame| EmptyFrame this@@1)))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (state Heap@@37 Mask@@28) (|inhaleTrue'| Heap@@37 this@@1))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6836) (Mask@@29 T@PolymorphicMapType_6857) (i@@6 Int) ) (!  (=> (state Heap@@38 Mask@@29) (= (|onlyWorksWithInhale'| Heap@@38 i@@6) (|onlyWorksWithInhale#frame| EmptyFrame i@@6)))
 :qid |stdinbpl.282:15|
 :skolemid |29|
 :pattern ( (state Heap@@38 Mask@@29) (|onlyWorksWithInhale'| Heap@@38 i@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6836) (Mask@@30 T@PolymorphicMapType_6857) (i2_1@@3 Int) ) (!  (=> (state Heap@@39 Mask@@30) (= (|onlyWorksWithPreExhale'| Heap@@39 i2_1@@3) (|onlyWorksWithPreExhale#frame| EmptyFrame i2_1@@3)))
 :qid |stdinbpl.358:15|
 :skolemid |34|
 :pattern ( (state Heap@@39 Mask@@30) (|onlyWorksWithPreExhale'| Heap@@39 i2_1@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6836) (Mask@@31 T@PolymorphicMapType_6857) (i@@7 Int) ) (!  (=> (state Heap@@40 Mask@@31) (= (|onlyWorksWithInhale2'| Heap@@40 i@@7) (|onlyWorksWithInhale2#frame| EmptyFrame i@@7)))
 :qid |stdinbpl.421:15|
 :skolemid |38|
 :pattern ( (state Heap@@40 Mask@@31) (|onlyWorksWithInhale2'| Heap@@40 i@@7))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6836) (Mask@@32 T@PolymorphicMapType_6857) (i2_1@@4 Int) ) (!  (=> (state Heap@@41 Mask@@32) (= (|onlyWorksWithPreExhale2'| Heap@@41 i2_1@@4) (|onlyWorksWithPreExhale2#frame| EmptyFrame i2_1@@4)))
 :qid |stdinbpl.497:15|
 :skolemid |43|
 :pattern ( (state Heap@@41 Mask@@32) (|onlyWorksWithPreExhale2'| Heap@@41 i2_1@@4))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6836) (Mask@@33 T@PolymorphicMapType_6857) (r_1@@5 T@Ref) ) (!  (=> (state Heap@@42 Mask@@33) (= (|helper'| Heap@@42 r_1@@5) (|helper#frame| EmptyFrame r_1@@5)))
 :qid |stdinbpl.556:15|
 :skolemid |46|
 :pattern ( (state Heap@@42 Mask@@33) (|helper'| Heap@@42 r_1@@5))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6836) (Mask@@34 T@PolymorphicMapType_6857) (r_1@@6 T@Ref) ) (!  (=> (state Heap@@43 Mask@@34) (= (|postInhale'| Heap@@43 r_1@@6) (|postInhale#frame| EmptyFrame r_1@@6)))
 :qid |stdinbpl.645:15|
 :skolemid |53|
 :pattern ( (state Heap@@43 Mask@@34) (|postInhale'| Heap@@43 r_1@@6))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6836) (Mask@@35 T@PolymorphicMapType_6857) (r2@@2 T@Ref) ) (!  (=> (state Heap@@44 Mask@@35) (= (|main'| Heap@@44 r2@@2) (|main#frame| EmptyFrame r2@@2)))
 :qid |stdinbpl.732:15|
 :skolemid |58|
 :pattern ( (state Heap@@44 Mask@@35) (|main'| Heap@@44 r2@@2))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6836) (Mask@@36 T@PolymorphicMapType_6857) (i3_7@@2 Int) ) (!  (=> (state Heap@@45 Mask@@36) (= (|main2'| Heap@@45 i3_7@@2) (|main2#frame| EmptyFrame i3_7@@2)))
 :qid |stdinbpl.811:15|
 :skolemid |63|
 :pattern ( (state Heap@@45 Mask@@36) (|main2'| Heap@@45 i3_7@@2))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6836) ) (! (dummyFunction_3945 |otherRef#triggerStateless|)
 :qid |stdinbpl.591:15|
 :skolemid |48|
 :pattern ( (|otherRef'| Heap@@46))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6836) (Mask@@37 T@PolymorphicMapType_6857) ) (!  (=> (state Heap@@47 Mask@@37) (= (|otherRef'| Heap@@47) (|otherRef#frame| EmptyFrame)))
 :qid |stdinbpl.598:15|
 :skolemid |49|
 :pattern ( (state Heap@@47 Mask@@37) (|otherRef'| Heap@@47))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_6836) (o T@Ref) (f_3 T@Field_6896_17990) (v T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@48) (store (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@48) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@48) (store (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@48) o f_3 v)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6836) (o@@0 T@Ref) (f_3@@0 T@Field_6896_18123) (v@@0 T@PolymorphicMapType_7385) ) (! (succHeap Heap@@49 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@49) (store (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@49) (store (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6836) (o@@1 T@Ref) (f_3@@1 T@Field_10223_1189) (v@@1 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@50) (store (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@50) (store (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_6836) (o@@2 T@Ref) (f_3@@2 T@Field_6909_6910) (v@@2 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@51) (store (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@51) (store (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_6836) (o@@3 T@Ref) (f_3@@3 T@Field_6896_53) (v@@3 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_6836 (store (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (store (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@52)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6909_6910) (Heap@@53 T@PolymorphicMapType_6836) ) (!  (=> (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@53) o@@4 $allocated) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@53) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@53) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@53) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_6896_17990) (v_1@@0 T@FrameType) (q T@Field_6896_17990) (w@@0 T@FrameType) (r T@Field_6896_17990) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6896_6896 p@@1 v_1@@0 q w@@0) (InsidePredicate_6896_6896 q w@@0 r u)) (InsidePredicate_6896_6896 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6896_6896 p@@1 v_1@@0 q w@@0) (InsidePredicate_6896_6896 q w@@0 r u))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_6836) (Mask@@38 T@PolymorphicMapType_6857) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@54 Mask@@38) (< AssumeFunctionsAbove 3)) (= (inhaleTrue Heap@@54 this@@2) 0))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (state Heap@@54 Mask@@38) (inhaleTrue Heap@@54 this@@2))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_6836) (Mask@@39 T@PolymorphicMapType_6857) (i@@8 Int) ) (!  (=> (and (state Heap@@55 Mask@@39) (< AssumeFunctionsAbove 6)) (= (onlyWorksWithInhale Heap@@55 i@@8) i@@8))
 :qid |stdinbpl.275:15|
 :skolemid |28|
 :pattern ( (state Heap@@55 Mask@@39) (onlyWorksWithInhale Heap@@55 i@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@56 T@PolymorphicMapType_6836) (Mask@@40 T@PolymorphicMapType_6857) (i3_7@@3 Int) ) (!  (=> (and (state Heap@@56 Mask@@40) (< AssumeFunctionsAbove 0)) (= (main2_1 Heap@@56 i3_7@@3) (onlyWorksWithInhale Heap@@56 i3_7@@3)))
 :qid |stdinbpl.804:15|
 :skolemid |62|
 :pattern ( (state Heap@@56 Mask@@40) (main2_1 Heap@@56 i3_7@@3))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_6836) (Mask@@41 T@PolymorphicMapType_6857) (i2_1@@5 Int) ) (!  (=> (and (state Heap@@57 Mask@@41) (< AssumeFunctionsAbove 1)) (= (onlyWorksWithPreExhale2 Heap@@57 i2_1@@5) (onlyWorksWithInhale2 Heap@@57 i2_1@@5)))
 :qid |stdinbpl.490:15|
 :skolemid |42|
 :pattern ( (state Heap@@57 Mask@@41) (onlyWorksWithPreExhale2 Heap@@57 i2_1@@5))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_6836) (Mask@@42 T@PolymorphicMapType_6857) (i2_1@@6 Int) ) (!  (=> (and (state Heap@@58 Mask@@42) (< AssumeFunctionsAbove 2)) (= (onlyWorksWithPreExhale Heap@@58 i2_1@@6) (onlyWorksWithInhale Heap@@58 i2_1@@6)))
 :qid |stdinbpl.351:15|
 :skolemid |33|
 :pattern ( (state Heap@@58 Mask@@42) (onlyWorksWithPreExhale Heap@@58 i2_1@@6))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_6836) (Mask@@43 T@PolymorphicMapType_6857) (r2@@3 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@43) (< AssumeFunctionsAbove 4)) (= (main_1 Heap@@59 r2@@3) (postInhale Heap@@59 r2@@3)))
 :qid |stdinbpl.725:15|
 :skolemid |57|
 :pattern ( (state Heap@@59 Mask@@43) (main_1 Heap@@59 r2@@3))
)))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(set-info :boogie-vc-id |helper#definedness|)
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
(declare-sort T@Field_6896_53 0)
(declare-sort T@Field_6909_6910 0)
(declare-sort T@Field_10223_1189 0)
(declare-sort T@Field_6896_18123 0)
(declare-sort T@Field_6896_17990 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_6857 0)) (((PolymorphicMapType_6857 (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_53 Real)) (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| (Array T@Ref T@Field_6909_6910 Real)) (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| (Array T@Ref T@Field_10223_1189 Real)) (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_17990 Real)) (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| (Array T@Ref T@Field_6896_18123 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_7385 0)) (((PolymorphicMapType_7385 (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_53 Bool)) (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (Array T@Ref T@Field_6909_6910 Bool)) (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (Array T@Ref T@Field_10223_1189 Bool)) (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_17990 Bool)) (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (Array T@Ref T@Field_6896_18123 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_6836 0)) (((PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_53 Bool)) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| (Array T@Ref T@Field_6909_6910 T@Ref)) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| (Array T@Ref T@Field_10223_1189 Int)) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_18123 T@PolymorphicMapType_7385)) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| (Array T@Ref T@Field_6896_17990 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_6896_53)
(declare-fun x_36 () T@Field_10223_1189)
(declare-fun succHeap (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836) Bool)
(declare-fun state (T@PolymorphicMapType_6836 T@PolymorphicMapType_6857) Bool)
(declare-fun postInhale (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun otherRef (T@PolymorphicMapType_6836) T@Ref)
(declare-fun GoodMask (T@PolymorphicMapType_6857) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_7385)
(declare-fun |inhaleTrue'| (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun dummyFunction_1370 (Int) Bool)
(declare-fun |inhaleTrue#triggerStateless| (T@Ref) Int)
(declare-fun |onlyWorksWithInhale'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithInhale#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithPreExhale'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithPreExhale#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithInhale2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithInhale2#triggerStateless| (Int) Int)
(declare-fun |onlyWorksWithPreExhale2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |onlyWorksWithPreExhale2#triggerStateless| (Int) Int)
(declare-fun |helper'| (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun |helper#triggerStateless| (T@Ref) Int)
(declare-fun |postInhale'| (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun dummyFunction_3945 (T@Ref) Bool)
(declare-fun |postInhale#triggerStateless| (T@Ref) T@Ref)
(declare-fun |main'| (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun |main#triggerStateless| (T@Ref) T@Ref)
(declare-fun |main2'| (T@PolymorphicMapType_6836 Int) Int)
(declare-fun |main2#triggerStateless| (Int) Int)
(declare-fun |main2#trigger| (T@FrameType Int) Bool)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |onlyWorksWithInhale#trigger| (T@FrameType Int) Bool)
(declare-fun onlyWorksWithInhale2 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun inhaleTrue (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun onlyWorksWithInhale (T@PolymorphicMapType_6836 Int) Int)
(declare-fun onlyWorksWithPreExhale (T@PolymorphicMapType_6836 Int) Int)
(declare-fun onlyWorksWithPreExhale2 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun helper (T@PolymorphicMapType_6836 T@Ref) Int)
(declare-fun main_1 (T@PolymorphicMapType_6836 T@Ref) T@Ref)
(declare-fun main2_1 (T@PolymorphicMapType_6836 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_6836 T@PolymorphicMapType_6836 T@PolymorphicMapType_6857) Bool)
(declare-fun IsPredicateField_6896_18081 (T@Field_6896_17990) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_6896 (T@Field_6896_17990) T@Field_6896_18123)
(declare-fun HasDirectPerm_6896_18054 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_17990) Bool)
(declare-fun IsWandField_6896_19828 (T@Field_6896_17990) Bool)
(declare-fun WandMaskField_6896 (T@Field_6896_17990) T@Field_6896_18123)
(declare-fun |main#trigger| (T@FrameType T@Ref) Bool)
(declare-fun |postInhale#trigger| (T@FrameType T@Ref) Bool)
(declare-fun dummyHeap () T@PolymorphicMapType_6836)
(declare-fun ZeroMask () T@PolymorphicMapType_6857)
(declare-fun InsidePredicate_6896_6896 (T@Field_6896_17990 T@FrameType T@Field_6896_17990 T@FrameType) Bool)
(declare-fun |onlyWorksWithInhale2#trigger| (T@FrameType Int) Bool)
(declare-fun IsPredicateField_3841_1189 (T@Field_10223_1189) Bool)
(declare-fun IsWandField_3841_1189 (T@Field_10223_1189) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_6896_23386 (T@Field_6896_18123) Bool)
(declare-fun IsWandField_6896_23402 (T@Field_6896_18123) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_6896_6910 (T@Field_6909_6910) Bool)
(declare-fun IsWandField_6896_6910 (T@Field_6909_6910) Bool)
(declare-fun IsPredicateField_6896_53 (T@Field_6896_53) Bool)
(declare-fun IsWandField_6896_53 (T@Field_6896_53) Bool)
(declare-fun HasDirectPerm_6896_23840 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_18123) Bool)
(declare-fun HasDirectPerm_6896_1189 (T@PolymorphicMapType_6857 T@Ref T@Field_10223_1189) Bool)
(declare-fun HasDirectPerm_6896_6910 (T@PolymorphicMapType_6857 T@Ref T@Field_6909_6910) Bool)
(declare-fun HasDirectPerm_6896_53 (T@PolymorphicMapType_6857 T@Ref T@Field_6896_53) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun |otherRef'| (T@PolymorphicMapType_6836) T@Ref)
(declare-fun |otherRef#triggerStateless| () T@Ref)
(declare-fun sumMask (T@PolymorphicMapType_6857 T@PolymorphicMapType_6857 T@PolymorphicMapType_6857) Bool)
(declare-fun |inhaleTrue#frame| (T@FrameType T@Ref) Int)
(declare-fun |onlyWorksWithInhale#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithPreExhale#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithInhale2#frame| (T@FrameType Int) Int)
(declare-fun |onlyWorksWithPreExhale2#frame| (T@FrameType Int) Int)
(declare-fun |helper#frame| (T@FrameType T@Ref) Int)
(declare-fun |postInhale#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |main#frame| (T@FrameType T@Ref) T@Ref)
(declare-fun |main2#frame| (T@FrameType Int) Int)
(declare-fun |otherRef#frame| (T@FrameType) T@Ref)
(assert (forall ((Heap0 T@PolymorphicMapType_6836) (Heap1 T@PolymorphicMapType_6836) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_6836) (Mask T@PolymorphicMapType_6857) (r_1 T@Ref) ) (!  (=> (and (state Heap Mask) (< AssumeFunctionsAbove 7)) (= (postInhale Heap r_1) (otherRef Heap)))
 :qid |stdinbpl.638:15|
 :skolemid |52|
 :pattern ( (state Heap Mask) (postInhale Heap r_1))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_6836) (Mask@@0 T@PolymorphicMapType_6857) ) (!  (=> (state Heap@@0 Mask@@0) (GoodMask Mask@@0))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap@@0 Mask@@0))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_6836) (Heap1@@0 T@PolymorphicMapType_6836) (Heap2 T@PolymorphicMapType_6836) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_6896_18123) ) (!  (not (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_6896_17990) ) (!  (not (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_10223_1189) ) (!  (not (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_6909_6910) ) (!  (not (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_6896_53) ) (!  (not (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_6836) (this T@Ref) ) (! (dummyFunction_1370 (|inhaleTrue#triggerStateless| this))
 :qid |stdinbpl.207:15|
 :skolemid |23|
 :pattern ( (|inhaleTrue'| Heap@@1 this))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_6836) (i Int) ) (! (dummyFunction_1370 (|onlyWorksWithInhale#triggerStateless| i))
 :qid |stdinbpl.269:15|
 :skolemid |27|
 :pattern ( (|onlyWorksWithInhale'| Heap@@2 i))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_6836) (i2_1 Int) ) (! (dummyFunction_1370 (|onlyWorksWithPreExhale#triggerStateless| i2_1))
 :qid |stdinbpl.345:15|
 :skolemid |32|
 :pattern ( (|onlyWorksWithPreExhale'| Heap@@3 i2_1))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_6836) (i@@0 Int) ) (! (dummyFunction_1370 (|onlyWorksWithInhale2#triggerStateless| i@@0))
 :qid |stdinbpl.408:15|
 :skolemid |36|
 :pattern ( (|onlyWorksWithInhale2'| Heap@@4 i@@0))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_6836) (i2_1@@0 Int) ) (! (dummyFunction_1370 (|onlyWorksWithPreExhale2#triggerStateless| i2_1@@0))
 :qid |stdinbpl.484:15|
 :skolemid |41|
 :pattern ( (|onlyWorksWithPreExhale2'| Heap@@5 i2_1@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_6836) (r_1@@0 T@Ref) ) (! (dummyFunction_1370 (|helper#triggerStateless| r_1@@0))
 :qid |stdinbpl.549:15|
 :skolemid |45|
 :pattern ( (|helper'| Heap@@6 r_1@@0))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_6836) (r_1@@1 T@Ref) ) (! (dummyFunction_3945 (|postInhale#triggerStateless| r_1@@1))
 :qid |stdinbpl.632:15|
 :skolemid |51|
 :pattern ( (|postInhale'| Heap@@7 r_1@@1))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_6836) (r2 T@Ref) ) (! (dummyFunction_3945 (|main#triggerStateless| r2))
 :qid |stdinbpl.719:15|
 :skolemid |56|
 :pattern ( (|main'| Heap@@8 r2))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_6836) (i3_7 Int) ) (! (dummyFunction_1370 (|main2#triggerStateless| i3_7))
 :qid |stdinbpl.798:15|
 :skolemid |61|
 :pattern ( (|main2'| Heap@@9 i3_7))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_6836) (Mask@@1 T@PolymorphicMapType_6857) (i3_7@@0 Int) ) (!  (=> (and (state Heap@@10 Mask@@1) (or (< AssumeFunctionsAbove 0) (|main2#trigger| EmptyFrame i3_7@@0))) (> (|main2'| Heap@@10 i3_7@@0) 17))
 :qid |stdinbpl.817:15|
 :skolemid |64|
 :pattern ( (state Heap@@10 Mask@@1) (|main2'| Heap@@10 i3_7@@0))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_6836) (Mask@@2 T@PolymorphicMapType_6857) (i@@1 Int) ) (!  (=> (and (state Heap@@11 Mask@@2) (or (< AssumeFunctionsAbove 6) (|onlyWorksWithInhale#trigger| EmptyFrame i@@1))) (> (|onlyWorksWithInhale'| Heap@@11 i@@1) 17))
 :qid |stdinbpl.288:15|
 :skolemid |30|
 :pattern ( (state Heap@@11 Mask@@2) (|onlyWorksWithInhale'| Heap@@11 i@@1))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_6836) (Mask@@3 T@PolymorphicMapType_6857) (i@@2 Int) ) (!  (=> (and (state Heap@@12 Mask@@3) (< AssumeFunctionsAbove 5)) (=> (> i@@2 17) (= (onlyWorksWithInhale2 Heap@@12 i@@2) i@@2)))
 :qid |stdinbpl.414:15|
 :skolemid |37|
 :pattern ( (state Heap@@12 Mask@@3) (onlyWorksWithInhale2 Heap@@12 i@@2))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_6836) (this@@0 T@Ref) ) (!  (and (= (inhaleTrue Heap@@13 this@@0) (|inhaleTrue'| Heap@@13 this@@0)) (dummyFunction_1370 (|inhaleTrue#triggerStateless| this@@0)))
 :qid |stdinbpl.203:15|
 :skolemid |22|
 :pattern ( (inhaleTrue Heap@@13 this@@0))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_6836) (i@@3 Int) ) (!  (and (= (onlyWorksWithInhale Heap@@14 i@@3) (|onlyWorksWithInhale'| Heap@@14 i@@3)) (dummyFunction_1370 (|onlyWorksWithInhale#triggerStateless| i@@3)))
 :qid |stdinbpl.265:15|
 :skolemid |26|
 :pattern ( (onlyWorksWithInhale Heap@@14 i@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_6836) (i2_1@@1 Int) ) (!  (and (= (onlyWorksWithPreExhale Heap@@15 i2_1@@1) (|onlyWorksWithPreExhale'| Heap@@15 i2_1@@1)) (dummyFunction_1370 (|onlyWorksWithPreExhale#triggerStateless| i2_1@@1)))
 :qid |stdinbpl.341:15|
 :skolemid |31|
 :pattern ( (onlyWorksWithPreExhale Heap@@15 i2_1@@1))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_6836) (i@@4 Int) ) (!  (and (= (onlyWorksWithInhale2 Heap@@16 i@@4) (|onlyWorksWithInhale2'| Heap@@16 i@@4)) (dummyFunction_1370 (|onlyWorksWithInhale2#triggerStateless| i@@4)))
 :qid |stdinbpl.404:15|
 :skolemid |35|
 :pattern ( (onlyWorksWithInhale2 Heap@@16 i@@4))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_6836) (i2_1@@2 Int) ) (!  (and (= (onlyWorksWithPreExhale2 Heap@@17 i2_1@@2) (|onlyWorksWithPreExhale2'| Heap@@17 i2_1@@2)) (dummyFunction_1370 (|onlyWorksWithPreExhale2#triggerStateless| i2_1@@2)))
 :qid |stdinbpl.480:15|
 :skolemid |40|
 :pattern ( (onlyWorksWithPreExhale2 Heap@@17 i2_1@@2))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_6836) (r_1@@2 T@Ref) ) (!  (and (= (helper Heap@@18 r_1@@2) (|helper'| Heap@@18 r_1@@2)) (dummyFunction_1370 (|helper#triggerStateless| r_1@@2)))
 :qid |stdinbpl.545:15|
 :skolemid |44|
 :pattern ( (helper Heap@@18 r_1@@2))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_6836) (r_1@@3 T@Ref) ) (!  (and (= (postInhale Heap@@19 r_1@@3) (|postInhale'| Heap@@19 r_1@@3)) (dummyFunction_3945 (|postInhale#triggerStateless| r_1@@3)))
 :qid |stdinbpl.628:15|
 :skolemid |50|
 :pattern ( (postInhale Heap@@19 r_1@@3))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_6836) (r2@@0 T@Ref) ) (!  (and (= (main_1 Heap@@20 r2@@0) (|main'| Heap@@20 r2@@0)) (dummyFunction_3945 (|main#triggerStateless| r2@@0)))
 :qid |stdinbpl.715:15|
 :skolemid |55|
 :pattern ( (main_1 Heap@@20 r2@@0))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_6836) (i3_7@@1 Int) ) (!  (and (= (main2_1 Heap@@21 i3_7@@1) (|main2'| Heap@@21 i3_7@@1)) (dummyFunction_1370 (|main2#triggerStateless| i3_7@@1)))
 :qid |stdinbpl.794:15|
 :skolemid |60|
 :pattern ( (main2_1 Heap@@21 i3_7@@1))
)))
(assert (forall ((Heap@@22 T@PolymorphicMapType_6836) (ExhaleHeap T@PolymorphicMapType_6836) (Mask@@4 T@PolymorphicMapType_6857) (pm_f T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@4) (=> (and (HasDirectPerm_6896_18054 Mask@@4 null pm_f) (IsPredicateField_6896_18081 pm_f)) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@22) null (PredicateMaskField_6896 pm_f)) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap) null (PredicateMaskField_6896 pm_f)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@22 ExhaleHeap Mask@@4) (IsPredicateField_6896_18081 pm_f) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap) null (PredicateMaskField_6896 pm_f)))
)))
(assert (forall ((Heap@@23 T@PolymorphicMapType_6836) (ExhaleHeap@@0 T@PolymorphicMapType_6836) (Mask@@5 T@PolymorphicMapType_6857) (pm_f@@0 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@5) (=> (and (HasDirectPerm_6896_18054 Mask@@5 null pm_f@@0) (IsWandField_6896_19828 pm_f@@0)) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@23) null (WandMaskField_6896 pm_f@@0)) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@0) null (WandMaskField_6896 pm_f@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@23 ExhaleHeap@@0 Mask@@5) (IsWandField_6896_19828 pm_f@@0) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@0) null (WandMaskField_6896 pm_f@@0)))
)))
(assert (forall ((Heap@@24 T@PolymorphicMapType_6836) (Mask@@6 T@PolymorphicMapType_6857) (r2@@1 T@Ref) ) (!  (=> (and (state Heap@@24 Mask@@6) (or (< AssumeFunctionsAbove 4) (|main#trigger| EmptyFrame r2@@1))) (= (helper Heap@@24 (|main'| Heap@@24 r2@@1)) 2))
 :qid |stdinbpl.738:15|
 :skolemid |59|
 :pattern ( (state Heap@@24 Mask@@6) (|main'| Heap@@24 r2@@1))
)))
(assert (forall ((Heap@@25 T@PolymorphicMapType_6836) (Mask@@7 T@PolymorphicMapType_6857) (r_1@@4 T@Ref) ) (!  (=> (and (state Heap@@25 Mask@@7) (or (< AssumeFunctionsAbove 7) (|postInhale#trigger| EmptyFrame r_1@@4))) (= (helper Heap@@25 (|postInhale'| Heap@@25 r_1@@4)) 2))
 :qid |stdinbpl.651:15|
 :skolemid |54|
 :pattern ( (state Heap@@25 Mask@@7) (|postInhale'| Heap@@25 r_1@@4))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@26 T@PolymorphicMapType_6836) (ExhaleHeap@@1 T@PolymorphicMapType_6836) (Mask@@8 T@PolymorphicMapType_6857) (o_1 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@1 Mask@@8) (=> (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@26) o_1 $allocated) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@1) o_1 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@26 ExhaleHeap@@1 Mask@@8) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@1) o_1 $allocated))
)))
(assert (forall ((p T@Field_6896_17990) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_6896_6896 p v_1 p w))
 :qid |stdinbpl.183:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_6896_6896 p v_1 p w))
)))
(assert (forall ((Heap@@27 T@PolymorphicMapType_6836) (Mask@@9 T@PolymorphicMapType_6857) (i@@5 Int) ) (!  (=> (and (state Heap@@27 Mask@@9) (or (< AssumeFunctionsAbove 5) (|onlyWorksWithInhale2#trigger| EmptyFrame i@@5))) (=> (> i@@5 17) (> (|onlyWorksWithInhale2'| Heap@@27 i@@5) 17)))
 :qid |stdinbpl.427:15|
 :skolemid |39|
 :pattern ( (state Heap@@27 Mask@@9) (|onlyWorksWithInhale2'| Heap@@27 i@@5))
)))
(assert  (not (IsPredicateField_3841_1189 x_36)))
(assert  (not (IsWandField_3841_1189 x_36)))
(assert (forall ((Heap@@28 T@PolymorphicMapType_6836) (ExhaleHeap@@2 T@PolymorphicMapType_6836) (Mask@@10 T@PolymorphicMapType_6857) ) (!  (=> (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@10) (succHeap Heap@@28 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@28 ExhaleHeap@@2 Mask@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_6857) (o_2@@4 T@Ref) (f_4@@4 T@Field_6896_18123) ) (!  (=> (GoodMask Mask@@11) (and (>= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@11) AssumePermUpperBound) (not (IsPredicateField_6896_23386 f_4@@4))) (not (IsWandField_6896_23402 f_4@@4))) (<= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@11) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@11) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_6857) (o_2@@5 T@Ref) (f_4@@5 T@Field_6896_17990) ) (!  (=> (GoodMask Mask@@12) (and (>= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@12) AssumePermUpperBound) (not (IsPredicateField_6896_18081 f_4@@5))) (not (IsWandField_6896_19828 f_4@@5))) (<= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@12) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@12) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_6857) (o_2@@6 T@Ref) (f_4@@6 T@Field_10223_1189) ) (!  (=> (GoodMask Mask@@13) (and (>= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@13) AssumePermUpperBound) (not (IsPredicateField_3841_1189 f_4@@6))) (not (IsWandField_3841_1189 f_4@@6))) (<= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@13) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@13) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_6857) (o_2@@7 T@Ref) (f_4@@7 T@Field_6909_6910) ) (!  (=> (GoodMask Mask@@14) (and (>= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@14) AssumePermUpperBound) (not (IsPredicateField_6896_6910 f_4@@7))) (not (IsWandField_6896_6910 f_4@@7))) (<= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@14) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@14) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_6857) (o_2@@8 T@Ref) (f_4@@8 T@Field_6896_53) ) (!  (=> (GoodMask Mask@@15) (and (>= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@15) AssumePermUpperBound) (not (IsPredicateField_6896_53 f_4@@8))) (not (IsWandField_6896_53 f_4@@8))) (<= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@15) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@15) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_6857) (o_2@@9 T@Ref) (f_4@@9 T@Field_6896_18123) ) (! (= (HasDirectPerm_6896_23840 Mask@@16 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| Mask@@16) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_23840 Mask@@16 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@17 T@PolymorphicMapType_6857) (o_2@@10 T@Ref) (f_4@@10 T@Field_6896_17990) ) (! (= (HasDirectPerm_6896_18054 Mask@@17 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| Mask@@17) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_18054 Mask@@17 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@18 T@PolymorphicMapType_6857) (o_2@@11 T@Ref) (f_4@@11 T@Field_10223_1189) ) (! (= (HasDirectPerm_6896_1189 Mask@@18 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| Mask@@18) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_1189 Mask@@18 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@19 T@PolymorphicMapType_6857) (o_2@@12 T@Ref) (f_4@@12 T@Field_6909_6910) ) (! (= (HasDirectPerm_6896_6910 Mask@@19 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| Mask@@19) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_6910 Mask@@19 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@20 T@PolymorphicMapType_6857) (o_2@@13 T@Ref) (f_4@@13 T@Field_6896_53) ) (! (= (HasDirectPerm_6896_53 Mask@@20 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| Mask@@20) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_6896_53 Mask@@20 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@29 T@PolymorphicMapType_6836) (ExhaleHeap@@3 T@PolymorphicMapType_6836) (Mask@@21 T@PolymorphicMapType_6857) (pm_f@@1 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@21) (=> (and (HasDirectPerm_6896_18054 Mask@@21 null pm_f@@1) (IsPredicateField_6896_18081 pm_f@@1)) (and (and (and (and (forall ((o2 T@Ref) (f_2 T@Field_6896_53) ) (!  (=> (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2 f_2) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@29) o2 f_2) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@3) o2 f_2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@3) o2 f_2))
)) (forall ((o2@@0 T@Ref) (f_2@@0 T@Field_6909_6910) ) (!  (=> (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@0 f_2@@0) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@29) o2@@0 f_2@@0) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@0 f_2@@0)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@0 f_2@@0))
))) (forall ((o2@@1 T@Ref) (f_2@@1 T@Field_10223_1189) ) (!  (=> (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@1 f_2@@1) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@29) o2@@1 f_2@@1) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@1 f_2@@1)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@1 f_2@@1))
))) (forall ((o2@@2 T@Ref) (f_2@@2 T@Field_6896_17990) ) (!  (=> (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@2 f_2@@2) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@29) o2@@2 f_2@@2) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@2 f_2@@2)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@2 f_2@@2))
))) (forall ((o2@@3 T@Ref) (f_2@@3 T@Field_6896_18123) ) (!  (=> (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) null (PredicateMaskField_6896 pm_f@@1))) o2@@3 f_2@@3) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@29) o2@@3 f_2@@3) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@3 f_2@@3)))
 :qid |stdinbpl.54:134|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@3) o2@@3 f_2@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@29 ExhaleHeap@@3 Mask@@21) (IsPredicateField_6896_18081 pm_f@@1))
)))
(assert (forall ((Heap@@30 T@PolymorphicMapType_6836) (ExhaleHeap@@4 T@PolymorphicMapType_6836) (Mask@@22 T@PolymorphicMapType_6857) (pm_f@@2 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@22) (=> (and (HasDirectPerm_6896_18054 Mask@@22 null pm_f@@2) (IsWandField_6896_19828 pm_f@@2)) (and (and (and (and (forall ((o2@@4 T@Ref) (f_2@@4 T@Field_6896_53) ) (!  (=> (select (|PolymorphicMapType_7385_6896_53#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@4 f_2@@4) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@30) o2@@4 f_2@@4) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@4 f_2@@4)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@4 f_2@@4))
)) (forall ((o2@@5 T@Ref) (f_2@@5 T@Field_6909_6910) ) (!  (=> (select (|PolymorphicMapType_7385_6896_6910#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@5 f_2@@5) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@30) o2@@5 f_2@@5) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@5 f_2@@5)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@5 f_2@@5))
))) (forall ((o2@@6 T@Ref) (f_2@@6 T@Field_10223_1189) ) (!  (=> (select (|PolymorphicMapType_7385_6896_1189#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@6 f_2@@6) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@30) o2@@6 f_2@@6) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@6 f_2@@6)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@6 f_2@@6))
))) (forall ((o2@@7 T@Ref) (f_2@@7 T@Field_6896_17990) ) (!  (=> (select (|PolymorphicMapType_7385_6896_17990#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@7 f_2@@7) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@30) o2@@7 f_2@@7) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@7 f_2@@7)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@7 f_2@@7))
))) (forall ((o2@@8 T@Ref) (f_2@@8 T@Field_6896_18123) ) (!  (=> (select (|PolymorphicMapType_7385_6896_19301#PolymorphicMapType_7385| (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) null (WandMaskField_6896 pm_f@@2))) o2@@8 f_2@@8) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@30) o2@@8 f_2@@8) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@8 f_2@@8)))
 :qid |stdinbpl.67:129|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@4) o2@@8 f_2@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@30 ExhaleHeap@@4 Mask@@22) (IsWandField_6896_19828 pm_f@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.171:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((Heap@@31 T@PolymorphicMapType_6836) (ExhaleHeap@@5 T@PolymorphicMapType_6836) (Mask@@23 T@PolymorphicMapType_6857) (o_1@@0 T@Ref) (f_2@@9 T@Field_6896_18123) ) (!  (=> (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@23) (=> (HasDirectPerm_6896_23840 Mask@@23 o_1@@0 f_2@@9) (= (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@31) o_1@@0 f_2@@9) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@5) o_1@@0 f_2@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@31 ExhaleHeap@@5 Mask@@23) (select (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| ExhaleHeap@@5) o_1@@0 f_2@@9))
)))
(assert (forall ((Heap@@32 T@PolymorphicMapType_6836) (ExhaleHeap@@6 T@PolymorphicMapType_6836) (Mask@@24 T@PolymorphicMapType_6857) (o_1@@1 T@Ref) (f_2@@10 T@Field_6896_17990) ) (!  (=> (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@24) (=> (HasDirectPerm_6896_18054 Mask@@24 o_1@@1 f_2@@10) (= (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@32) o_1@@1 f_2@@10) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@6) o_1@@1 f_2@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@32 ExhaleHeap@@6 Mask@@24) (select (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| ExhaleHeap@@6) o_1@@1 f_2@@10))
)))
(assert (forall ((Heap@@33 T@PolymorphicMapType_6836) (ExhaleHeap@@7 T@PolymorphicMapType_6836) (Mask@@25 T@PolymorphicMapType_6857) (o_1@@2 T@Ref) (f_2@@11 T@Field_10223_1189) ) (!  (=> (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@25) (=> (HasDirectPerm_6896_1189 Mask@@25 o_1@@2 f_2@@11) (= (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@33) o_1@@2 f_2@@11) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@7) o_1@@2 f_2@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@33 ExhaleHeap@@7 Mask@@25) (select (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| ExhaleHeap@@7) o_1@@2 f_2@@11))
)))
(assert (forall ((Heap@@34 T@PolymorphicMapType_6836) (ExhaleHeap@@8 T@PolymorphicMapType_6836) (Mask@@26 T@PolymorphicMapType_6857) (o_1@@3 T@Ref) (f_2@@12 T@Field_6909_6910) ) (!  (=> (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@26) (=> (HasDirectPerm_6896_6910 Mask@@26 o_1@@3 f_2@@12) (= (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@34) o_1@@3 f_2@@12) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@8) o_1@@3 f_2@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@34 ExhaleHeap@@8 Mask@@26) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| ExhaleHeap@@8) o_1@@3 f_2@@12))
)))
(assert (forall ((Heap@@35 T@PolymorphicMapType_6836) (ExhaleHeap@@9 T@PolymorphicMapType_6836) (Mask@@27 T@PolymorphicMapType_6857) (o_1@@4 T@Ref) (f_2@@13 T@Field_6896_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@27) (=> (HasDirectPerm_6896_53 Mask@@27 o_1@@4 f_2@@13) (= (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@35) o_1@@4 f_2@@13) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@9) o_1@@4 f_2@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@35 ExhaleHeap@@9 Mask@@27) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| ExhaleHeap@@9) o_1@@4 f_2@@13))
)))
(assert (forall ((Heap@@36 T@PolymorphicMapType_6836) ) (!  (and (= (otherRef Heap@@36) (|otherRef'| Heap@@36)) (dummyFunction_3945 |otherRef#triggerStateless|))
 :qid |stdinbpl.587:15|
 :skolemid |47|
 :pattern ( (otherRef Heap@@36))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_6896_18123) ) (! (= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_6896_17990) ) (! (= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_10223_1189) ) (! (= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_6909_6910) ) (! (= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_6896_53) ) (! (= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_6857) (SummandMask1 T@PolymorphicMapType_6857) (SummandMask2 T@PolymorphicMapType_6857) (o_2@@19 T@Ref) (f_4@@19 T@Field_6896_18123) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_6857_6896_22257#PolymorphicMapType_6857| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_6857) (SummandMask1@@0 T@PolymorphicMapType_6857) (SummandMask2@@0 T@PolymorphicMapType_6857) (o_2@@20 T@Ref) (f_4@@20 T@Field_6896_17990) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_6857_6896_17990#PolymorphicMapType_6857| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_6857) (SummandMask1@@1 T@PolymorphicMapType_6857) (SummandMask2@@1 T@PolymorphicMapType_6857) (o_2@@21 T@Ref) (f_4@@21 T@Field_10223_1189) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_6857_6896_1189#PolymorphicMapType_6857| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_6857) (SummandMask1@@2 T@PolymorphicMapType_6857) (SummandMask2@@2 T@PolymorphicMapType_6857) (o_2@@22 T@Ref) (f_4@@22 T@Field_6909_6910) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_6857_6896_6910#PolymorphicMapType_6857| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_6857) (SummandMask1@@3 T@PolymorphicMapType_6857) (SummandMask2@@3 T@PolymorphicMapType_6857) (o_2@@23 T@Ref) (f_4@@23 T@Field_6896_53) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_6857_6896_53#PolymorphicMapType_6857| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((Heap@@37 T@PolymorphicMapType_6836) (Mask@@28 T@PolymorphicMapType_6857) (this@@1 T@Ref) ) (!  (=> (state Heap@@37 Mask@@28) (= (|inhaleTrue'| Heap@@37 this@@1) (|inhaleTrue#frame| EmptyFrame this@@1)))
 :qid |stdinbpl.220:15|
 :skolemid |25|
 :pattern ( (state Heap@@37 Mask@@28) (|inhaleTrue'| Heap@@37 this@@1))
)))
(assert (forall ((Heap@@38 T@PolymorphicMapType_6836) (Mask@@29 T@PolymorphicMapType_6857) (i@@6 Int) ) (!  (=> (state Heap@@38 Mask@@29) (= (|onlyWorksWithInhale'| Heap@@38 i@@6) (|onlyWorksWithInhale#frame| EmptyFrame i@@6)))
 :qid |stdinbpl.282:15|
 :skolemid |29|
 :pattern ( (state Heap@@38 Mask@@29) (|onlyWorksWithInhale'| Heap@@38 i@@6))
)))
(assert (forall ((Heap@@39 T@PolymorphicMapType_6836) (Mask@@30 T@PolymorphicMapType_6857) (i2_1@@3 Int) ) (!  (=> (state Heap@@39 Mask@@30) (= (|onlyWorksWithPreExhale'| Heap@@39 i2_1@@3) (|onlyWorksWithPreExhale#frame| EmptyFrame i2_1@@3)))
 :qid |stdinbpl.358:15|
 :skolemid |34|
 :pattern ( (state Heap@@39 Mask@@30) (|onlyWorksWithPreExhale'| Heap@@39 i2_1@@3))
)))
(assert (forall ((Heap@@40 T@PolymorphicMapType_6836) (Mask@@31 T@PolymorphicMapType_6857) (i@@7 Int) ) (!  (=> (state Heap@@40 Mask@@31) (= (|onlyWorksWithInhale2'| Heap@@40 i@@7) (|onlyWorksWithInhale2#frame| EmptyFrame i@@7)))
 :qid |stdinbpl.421:15|
 :skolemid |38|
 :pattern ( (state Heap@@40 Mask@@31) (|onlyWorksWithInhale2'| Heap@@40 i@@7))
)))
(assert (forall ((Heap@@41 T@PolymorphicMapType_6836) (Mask@@32 T@PolymorphicMapType_6857) (i2_1@@4 Int) ) (!  (=> (state Heap@@41 Mask@@32) (= (|onlyWorksWithPreExhale2'| Heap@@41 i2_1@@4) (|onlyWorksWithPreExhale2#frame| EmptyFrame i2_1@@4)))
 :qid |stdinbpl.497:15|
 :skolemid |43|
 :pattern ( (state Heap@@41 Mask@@32) (|onlyWorksWithPreExhale2'| Heap@@41 i2_1@@4))
)))
(assert (forall ((Heap@@42 T@PolymorphicMapType_6836) (Mask@@33 T@PolymorphicMapType_6857) (r_1@@5 T@Ref) ) (!  (=> (state Heap@@42 Mask@@33) (= (|helper'| Heap@@42 r_1@@5) (|helper#frame| EmptyFrame r_1@@5)))
 :qid |stdinbpl.556:15|
 :skolemid |46|
 :pattern ( (state Heap@@42 Mask@@33) (|helper'| Heap@@42 r_1@@5))
)))
(assert (forall ((Heap@@43 T@PolymorphicMapType_6836) (Mask@@34 T@PolymorphicMapType_6857) (r_1@@6 T@Ref) ) (!  (=> (state Heap@@43 Mask@@34) (= (|postInhale'| Heap@@43 r_1@@6) (|postInhale#frame| EmptyFrame r_1@@6)))
 :qid |stdinbpl.645:15|
 :skolemid |53|
 :pattern ( (state Heap@@43 Mask@@34) (|postInhale'| Heap@@43 r_1@@6))
)))
(assert (forall ((Heap@@44 T@PolymorphicMapType_6836) (Mask@@35 T@PolymorphicMapType_6857) (r2@@2 T@Ref) ) (!  (=> (state Heap@@44 Mask@@35) (= (|main'| Heap@@44 r2@@2) (|main#frame| EmptyFrame r2@@2)))
 :qid |stdinbpl.732:15|
 :skolemid |58|
 :pattern ( (state Heap@@44 Mask@@35) (|main'| Heap@@44 r2@@2))
)))
(assert (forall ((Heap@@45 T@PolymorphicMapType_6836) (Mask@@36 T@PolymorphicMapType_6857) (i3_7@@2 Int) ) (!  (=> (state Heap@@45 Mask@@36) (= (|main2'| Heap@@45 i3_7@@2) (|main2#frame| EmptyFrame i3_7@@2)))
 :qid |stdinbpl.811:15|
 :skolemid |63|
 :pattern ( (state Heap@@45 Mask@@36) (|main2'| Heap@@45 i3_7@@2))
)))
(assert (forall ((Heap@@46 T@PolymorphicMapType_6836) ) (! (dummyFunction_3945 |otherRef#triggerStateless|)
 :qid |stdinbpl.591:15|
 :skolemid |48|
 :pattern ( (|otherRef'| Heap@@46))
)))
(assert (forall ((Heap@@47 T@PolymorphicMapType_6836) (Mask@@37 T@PolymorphicMapType_6857) ) (!  (=> (state Heap@@47 Mask@@37) (= (|otherRef'| Heap@@47) (|otherRef#frame| EmptyFrame)))
 :qid |stdinbpl.598:15|
 :skolemid |49|
 :pattern ( (state Heap@@47 Mask@@37) (|otherRef'| Heap@@47))
)))
(assert (forall ((Heap@@48 T@PolymorphicMapType_6836) (o T@Ref) (f_3 T@Field_6896_17990) (v T@FrameType) ) (! (succHeap Heap@@48 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@48) (store (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@48) o f_3 v)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@48) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@48) (store (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@48) o f_3 v)))
)))
(assert (forall ((Heap@@49 T@PolymorphicMapType_6836) (o@@0 T@Ref) (f_3@@0 T@Field_6896_18123) (v@@0 T@PolymorphicMapType_7385) ) (! (succHeap Heap@@49 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@49) (store (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@49)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@49) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@49) (store (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@49) o@@0 f_3@@0 v@@0) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@49)))
)))
(assert (forall ((Heap@@50 T@PolymorphicMapType_6836) (o@@1 T@Ref) (f_3@@1 T@Field_10223_1189) (v@@1 Int) ) (! (succHeap Heap@@50 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@50) (store (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@50)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@50) (store (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@50) o@@1 f_3@@1 v@@1) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@50) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@50)))
)))
(assert (forall ((Heap@@51 T@PolymorphicMapType_6836) (o@@2 T@Ref) (f_3@@2 T@Field_6909_6910) (v@@2 T@Ref) ) (! (succHeap Heap@@51 (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@51) (store (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@51)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@51) (store (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@51) o@@2 f_3@@2 v@@2) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@51) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@51)))
)))
(assert (forall ((Heap@@52 T@PolymorphicMapType_6836) (o@@3 T@Ref) (f_3@@3 T@Field_6896_53) (v@@3 Bool) ) (! (succHeap Heap@@52 (PolymorphicMapType_6836 (store (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@52)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_6836 (store (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@52) o@@3 f_3@@3 v@@3) (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_1189#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_18167#PolymorphicMapType_6836| Heap@@52) (|PolymorphicMapType_6836_6896_17990#PolymorphicMapType_6836| Heap@@52)))
)))
(assert (forall ((o@@4 T@Ref) (f T@Field_6909_6910) (Heap@@53 T@PolymorphicMapType_6836) ) (!  (=> (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@53) o@@4 $allocated) (select (|PolymorphicMapType_6836_3713_53#PolymorphicMapType_6836| Heap@@53) (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@53) o@@4 f) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_6836_3716_3717#PolymorphicMapType_6836| Heap@@53) o@@4 f))
)))
(assert (forall ((p@@1 T@Field_6896_17990) (v_1@@0 T@FrameType) (q T@Field_6896_17990) (w@@0 T@FrameType) (r T@Field_6896_17990) (u T@FrameType) ) (!  (=> (and (InsidePredicate_6896_6896 p@@1 v_1@@0 q w@@0) (InsidePredicate_6896_6896 q w@@0 r u)) (InsidePredicate_6896_6896 p@@1 v_1@@0 r u))
 :qid |stdinbpl.178:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_6896_6896 p@@1 v_1@@0 q w@@0) (InsidePredicate_6896_6896 q w@@0 r u))
)))
(assert (forall ((Heap@@54 T@PolymorphicMapType_6836) (Mask@@38 T@PolymorphicMapType_6857) (this@@2 T@Ref) ) (!  (=> (and (state Heap@@54 Mask@@38) (< AssumeFunctionsAbove 3)) (= (inhaleTrue Heap@@54 this@@2) 0))
 :qid |stdinbpl.213:15|
 :skolemid |24|
 :pattern ( (state Heap@@54 Mask@@38) (inhaleTrue Heap@@54 this@@2))
)))
(assert (forall ((Heap@@55 T@PolymorphicMapType_6836) (Mask@@39 T@PolymorphicMapType_6857) (i@@8 Int) ) (!  (=> (and (state Heap@@55 Mask@@39) (< AssumeFunctionsAbove 6)) (= (onlyWorksWithInhale Heap@@55 i@@8) i@@8))
 :qid |stdinbpl.275:15|
 :skolemid |28|
 :pattern ( (state Heap@@55 Mask@@39) (onlyWorksWithInhale Heap@@55 i@@8))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(assert (forall ((Heap@@56 T@PolymorphicMapType_6836) (Mask@@40 T@PolymorphicMapType_6857) (i3_7@@3 Int) ) (!  (=> (and (state Heap@@56 Mask@@40) (< AssumeFunctionsAbove 0)) (= (main2_1 Heap@@56 i3_7@@3) (onlyWorksWithInhale Heap@@56 i3_7@@3)))
 :qid |stdinbpl.804:15|
 :skolemid |62|
 :pattern ( (state Heap@@56 Mask@@40) (main2_1 Heap@@56 i3_7@@3))
)))
(assert (forall ((Heap@@57 T@PolymorphicMapType_6836) (Mask@@41 T@PolymorphicMapType_6857) (i2_1@@5 Int) ) (!  (=> (and (state Heap@@57 Mask@@41) (< AssumeFunctionsAbove 1)) (= (onlyWorksWithPreExhale2 Heap@@57 i2_1@@5) (onlyWorksWithInhale2 Heap@@57 i2_1@@5)))
 :qid |stdinbpl.490:15|
 :skolemid |42|
 :pattern ( (state Heap@@57 Mask@@41) (onlyWorksWithPreExhale2 Heap@@57 i2_1@@5))
)))
(assert (forall ((Heap@@58 T@PolymorphicMapType_6836) (Mask@@42 T@PolymorphicMapType_6857) (i2_1@@6 Int) ) (!  (=> (and (state Heap@@58 Mask@@42) (< AssumeFunctionsAbove 2)) (= (onlyWorksWithPreExhale Heap@@58 i2_1@@6) (onlyWorksWithInhale Heap@@58 i2_1@@6)))
 :qid |stdinbpl.351:15|
 :skolemid |33|
 :pattern ( (state Heap@@58 Mask@@42) (onlyWorksWithPreExhale Heap@@58 i2_1@@6))
)))
(assert (forall ((Heap@@59 T@PolymorphicMapType_6836) (Mask@@43 T@PolymorphicMapType_6857) (r2@@3 T@Ref) ) (!  (=> (and (state Heap@@59 Mask@@43) (< AssumeFunctionsAbove 4)) (= (main_1 Heap@@59 r2@@3) (postInhale Heap@@59 r2@@3)))
 :qid |stdinbpl.725:15|
 :skolemid |57|
 :pattern ( (state Heap@@59 Mask@@43) (main_1 Heap@@59 r2@@3))
)))
; Valid

