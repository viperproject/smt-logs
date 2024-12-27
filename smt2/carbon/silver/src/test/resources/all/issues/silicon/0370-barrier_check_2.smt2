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
(declare-sort T@Field_11491_53 0)
(declare-sort T@Field_11504_11505 0)
(declare-sort T@Field_17517_3102 0)
(declare-sort T@Field_7225_34230 0)
(declare-sort T@Field_7225_34097 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_11452 0)) (((PolymorphicMapType_11452 (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| (Array T@Ref T@Field_17517_3102 Real)) (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| (Array T@Ref T@Field_11491_53 Real)) (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| (Array T@Ref T@Field_11504_11505 Real)) (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| (Array T@Ref T@Field_7225_34097 Real)) (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| (Array T@Ref T@Field_7225_34230 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11980 0)) (((PolymorphicMapType_11980 (|PolymorphicMapType_11980_11491_53#PolymorphicMapType_11980| (Array T@Ref T@Field_11491_53 Bool)) (|PolymorphicMapType_11980_11491_11505#PolymorphicMapType_11980| (Array T@Ref T@Field_11504_11505 Bool)) (|PolymorphicMapType_11980_11491_3102#PolymorphicMapType_11980| (Array T@Ref T@Field_17517_3102 Bool)) (|PolymorphicMapType_11980_11491_34097#PolymorphicMapType_11980| (Array T@Ref T@Field_7225_34097 Bool)) (|PolymorphicMapType_11980_11491_35408#PolymorphicMapType_11980| (Array T@Ref T@Field_7225_34230 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_11431 0)) (((PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| (Array T@Ref T@Field_11491_53 Bool)) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| (Array T@Ref T@Field_11504_11505 T@Ref)) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| (Array T@Ref T@Field_17517_3102 Int)) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| (Array T@Ref T@Field_7225_34230 T@PolymorphicMapType_11980)) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| (Array T@Ref T@Field_7225_34097 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_11491_53)
(declare-fun Integer__item () T@Field_17517_3102)
(declare-sort T@Seq_17567 0)
(declare-fun |Seq#Length_7231| (T@Seq_17567) Int)
(declare-fun |Seq#Drop_7231| (T@Seq_17567 Int) T@Seq_17567)
(declare-sort T@Seq_2963 0)
(declare-fun |Seq#Length_2963| (T@Seq_2963) Int)
(declare-fun |Seq#Drop_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun succHeap (T@PolymorphicMapType_11431 T@PolymorphicMapType_11431) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_11431 T@PolymorphicMapType_11431) Bool)
(declare-fun state (T@PolymorphicMapType_11431 T@PolymorphicMapType_11452) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_11452) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_11980)
(declare-fun |Seq#Index_7231| (T@Seq_17567 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_2963| (T@Seq_2963 Int) Int)
(declare-fun |Seq#Empty_7231| () T@Seq_17567)
(declare-fun |Seq#Empty_2963| () T@Seq_2963)
(declare-sort T@VCTOptionDomainType_17569 0)
(declare-fun |getVCTOption1'| (T@PolymorphicMapType_11431 T@VCTOptionDomainType_17569) T@Seq_17567)
(declare-fun dummyFunction_17684 (T@Seq_17567) Bool)
(declare-fun |getVCTOption1#triggerStateless| (T@VCTOptionDomainType_17569) T@Seq_17567)
(declare-fun |Seq#Update_7231| (T@Seq_17567 Int T@Ref) T@Seq_17567)
(declare-fun |Seq#Update_2963| (T@Seq_2963 Int Int) T@Seq_2963)
(declare-fun |Seq#Take_7231| (T@Seq_17567 Int) T@Seq_17567)
(declare-fun |Seq#Take_2963| (T@Seq_2963 Int) T@Seq_2963)
(declare-fun |Seq#Contains_2963| (T@Seq_2963 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_2963)
(declare-fun |Seq#Contains_17567| (T@Seq_17567 T@Ref) Bool)
(declare-fun |Seq#Skolem_17567| (T@Seq_17567 T@Ref) Int)
(declare-fun |Seq#Skolem_2963| (T@Seq_2963 Int) Int)
(declare-fun getVCTOption1 (T@PolymorphicMapType_11431 T@VCTOptionDomainType_17569) T@Seq_17567)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_11431 T@PolymorphicMapType_11431 T@PolymorphicMapType_11452) Bool)
(declare-fun IsPredicateField_7225_34188 (T@Field_7225_34097) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_7225 (T@Field_7225_34097) T@Field_7225_34230)
(declare-fun HasDirectPerm_7225_34161 (T@PolymorphicMapType_11452 T@Ref T@Field_7225_34097) Bool)
(declare-fun IsWandField_7225_35935 (T@Field_7225_34097) Bool)
(declare-fun WandMaskField_7225 (T@Field_7225_34097) T@Field_7225_34230)
(declare-fun |Seq#Singleton_7231| (T@Ref) T@Seq_17567)
(declare-fun |Seq#Singleton_2963| (Int) T@Seq_2963)
(declare-fun |Seq#Append_17567| (T@Seq_17567 T@Seq_17567) T@Seq_17567)
(declare-fun |Seq#Append_2963| (T@Seq_2963 T@Seq_2963) T@Seq_2963)
(declare-fun dummyHeap () T@PolymorphicMapType_11431)
(declare-fun ZeroMask () T@PolymorphicMapType_11452)
(declare-fun InsidePredicate_11491_11491 (T@Field_7225_34097 T@FrameType T@Field_7225_34097 T@FrameType) Bool)
(declare-fun IsPredicateField_7225_3102 (T@Field_17517_3102) Bool)
(declare-fun IsWandField_7225_3102 (T@Field_17517_3102) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_7225_39481 (T@Field_7225_34230) Bool)
(declare-fun IsWandField_7225_39497 (T@Field_7225_34230) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_7225_11505 (T@Field_11504_11505) Bool)
(declare-fun IsWandField_7225_11505 (T@Field_11504_11505) Bool)
(declare-fun IsPredicateField_7225_53 (T@Field_11491_53) Bool)
(declare-fun IsWandField_7225_53 (T@Field_11491_53) Bool)
(declare-fun HasDirectPerm_7225_39935 (T@PolymorphicMapType_11452 T@Ref T@Field_7225_34230) Bool)
(declare-fun HasDirectPerm_7225_11505 (T@PolymorphicMapType_11452 T@Ref T@Field_11504_11505) Bool)
(declare-fun HasDirectPerm_7225_53 (T@PolymorphicMapType_11452 T@Ref T@Field_11491_53) Bool)
(declare-fun HasDirectPerm_7225_3102 (T@PolymorphicMapType_11452 T@Ref T@Field_17517_3102) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_11452 T@PolymorphicMapType_11452 T@PolymorphicMapType_11452) Bool)
(declare-fun |Seq#Equal_17567| (T@Seq_17567 T@Seq_17567) Bool)
(declare-fun |Seq#Equal_2963| (T@Seq_2963 T@Seq_2963) Bool)
(declare-fun |Seq#ContainsTrigger_7231| (T@Seq_17567 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_2963| (T@Seq_2963 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun VCTNone_17858 () T@VCTOptionDomainType_17569)
(declare-fun getVCTOption_17909 (T@VCTOptionDomainType_17569) T@Seq_17567)
(declare-fun |getVCTOption1#frame| (T@FrameType T@VCTOptionDomainType_17569) T@Seq_17567)
(declare-fun |Seq#SkolemDiff_17567| (T@Seq_17567 T@Seq_17567) Int)
(declare-fun |Seq#SkolemDiff_2963| (T@Seq_2963 T@Seq_2963) Int)
(assert (forall ((s T@Seq_17567) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_7231| s)) (= (|Seq#Length_7231| (|Seq#Drop_7231| s n)) (- (|Seq#Length_7231| s) n))) (=> (< (|Seq#Length_7231| s) n) (= (|Seq#Length_7231| (|Seq#Drop_7231| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_7231| (|Seq#Drop_7231| s n)) (|Seq#Length_7231| s))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_7231| (|Seq#Drop_7231| s n)))
 :pattern ( (|Seq#Length_7231| s) (|Seq#Drop_7231| s n))
)))
(assert (forall ((s@@0 T@Seq_2963) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_2963| s@@0)) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (- (|Seq#Length_2963| s@@0) n@@0))) (=> (< (|Seq#Length_2963| s@@0) n@@0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)) (|Seq#Length_2963| s@@0))))
 :qid |stdinbpl.300:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_2963| (|Seq#Drop_2963| s@@0 n@@0)))
 :pattern ( (|Seq#Length_2963| s@@0) (|Seq#Drop_2963| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_11431) (Heap1 T@PolymorphicMapType_11431) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_11431) (Mask T@PolymorphicMapType_11452) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_11431) (Heap1@@0 T@PolymorphicMapType_11431) (Heap2 T@PolymorphicMapType_11431) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_7225_34230) ) (!  (not (select (|PolymorphicMapType_11980_11491_35408#PolymorphicMapType_11980| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11980_11491_35408#PolymorphicMapType_11980| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_7225_34097) ) (!  (not (select (|PolymorphicMapType_11980_11491_34097#PolymorphicMapType_11980| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11980_11491_34097#PolymorphicMapType_11980| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_17517_3102) ) (!  (not (select (|PolymorphicMapType_11980_11491_3102#PolymorphicMapType_11980| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11980_11491_3102#PolymorphicMapType_11980| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_11504_11505) ) (!  (not (select (|PolymorphicMapType_11980_11491_11505#PolymorphicMapType_11980| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11980_11491_11505#PolymorphicMapType_11980| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_11491_53) ) (!  (not (select (|PolymorphicMapType_11980_11491_53#PolymorphicMapType_11980| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_11980_11491_53#PolymorphicMapType_11980| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_17567) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_7231| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_7231| (|Seq#Drop_7231| s@@1 n@@1) j) (|Seq#Index_7231| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_7231| (|Seq#Drop_7231| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_2963) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_2963| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0) (|Seq#Index_2963| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.321:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_2963| (|Seq#Drop_2963| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_7231| |Seq#Empty_7231|) 0))
(assert (= (|Seq#Length_2963| |Seq#Empty_2963|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_11431) (x T@VCTOptionDomainType_17569) ) (! (dummyFunction_17684 (|getVCTOption1#triggerStateless| x))
 :qid |stdinbpl.599:15|
 :skolemid |59|
 :pattern ( (|getVCTOption1'| Heap@@0 x))
)))
(assert (forall ((s@@3 T@Seq_17567) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_7231| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_7231| (|Seq#Update_7231| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_7231| (|Seq#Update_7231| s@@3 i v) n@@3) (|Seq#Index_7231| s@@3 n@@3)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_7231| (|Seq#Update_7231| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_7231| s@@3 n@@3) (|Seq#Update_7231| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_2963) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_2963| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_2963| s@@4 n@@4)))))
 :qid |stdinbpl.276:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_2963| (|Seq#Update_2963| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_2963| s@@4 n@@4) (|Seq#Update_2963| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_17567) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_7231| s@@5)) (= (|Seq#Length_7231| (|Seq#Take_7231| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_7231| s@@5) n@@5) (= (|Seq#Length_7231| (|Seq#Take_7231| s@@5 n@@5)) (|Seq#Length_7231| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_7231| (|Seq#Take_7231| s@@5 n@@5)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_7231| (|Seq#Take_7231| s@@5 n@@5)))
 :pattern ( (|Seq#Take_7231| s@@5 n@@5) (|Seq#Length_7231| s@@5))
)))
(assert (forall ((s@@6 T@Seq_2963) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_2963| s@@6)) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_2963| s@@6) n@@6) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) (|Seq#Length_2963| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)) 0)))
 :qid |stdinbpl.287:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_2963| (|Seq#Take_2963| s@@6 n@@6)))
 :pattern ( (|Seq#Take_2963| s@@6 n@@6) (|Seq#Length_2963| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.561:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_2963| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_17567) (x@@0 T@Ref) ) (!  (=> (|Seq#Contains_17567| s@@7 x@@0) (and (and (<= 0 (|Seq#Skolem_17567| s@@7 x@@0)) (< (|Seq#Skolem_17567| s@@7 x@@0) (|Seq#Length_7231| s@@7))) (= (|Seq#Index_7231| s@@7 (|Seq#Skolem_17567| s@@7 x@@0)) x@@0)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_17567| s@@7 x@@0))
)))
(assert (forall ((s@@8 T@Seq_2963) (x@@1 Int) ) (!  (=> (|Seq#Contains_2963| s@@8 x@@1) (and (and (<= 0 (|Seq#Skolem_2963| s@@8 x@@1)) (< (|Seq#Skolem_2963| s@@8 x@@1) (|Seq#Length_2963| s@@8))) (= (|Seq#Index_2963| s@@8 (|Seq#Skolem_2963| s@@8 x@@1)) x@@1)))
 :qid |stdinbpl.419:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_2963| s@@8 x@@1))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_11431) (x@@2 T@VCTOptionDomainType_17569) ) (!  (and (= (getVCTOption1 Heap@@1 x@@2) (|getVCTOption1'| Heap@@1 x@@2)) (dummyFunction_17684 (|getVCTOption1#triggerStateless| x@@2)))
 :qid |stdinbpl.595:15|
 :skolemid |58|
 :pattern ( (getVCTOption1 Heap@@1 x@@2))
)))
(assert (forall ((s@@9 T@Seq_17567) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_7231| s@@9 n@@7) s@@9))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_7231| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_2963) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_2963| s@@10 n@@8) s@@10))
 :qid |stdinbpl.403:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_2963| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.256:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.254:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_11431) (ExhaleHeap T@PolymorphicMapType_11431) (Mask@@0 T@PolymorphicMapType_11452) (pm_f_22 T@Field_7225_34097) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_7225_34161 Mask@@0 null pm_f_22) (IsPredicateField_7225_34188 pm_f_22)) (= (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@2) null (PredicateMaskField_7225 pm_f_22)) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap) null (PredicateMaskField_7225 pm_f_22)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@0) (IsPredicateField_7225_34188 pm_f_22) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap) null (PredicateMaskField_7225 pm_f_22)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_11431) (ExhaleHeap@@0 T@PolymorphicMapType_11431) (Mask@@1 T@PolymorphicMapType_11452) (pm_f_22@@0 T@Field_7225_34097) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_7225_34161 Mask@@1 null pm_f_22@@0) (IsWandField_7225_35935 pm_f_22@@0)) (= (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@3) null (WandMaskField_7225 pm_f_22@@0)) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@0) null (WandMaskField_7225 pm_f_22@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@1) (IsWandField_7225_35935 pm_f_22@@0) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@0) null (WandMaskField_7225 pm_f_22@@0)))
)))
(assert (forall ((x@@3 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_17567| (|Seq#Singleton_7231| x@@3) y) (= x@@3 y))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_17567| (|Seq#Singleton_7231| x@@3) y))
)))
(assert (forall ((x@@4 Int) (y@@0 Int) ) (! (= (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@4) y@@0) (= x@@4 y@@0))
 :qid |stdinbpl.544:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_2963| (|Seq#Singleton_2963| x@@4) y@@0))
)))
(assert (forall ((s@@11 T@Seq_17567) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_7231| s@@11))) (= (|Seq#Index_7231| (|Seq#Take_7231| s@@11 n@@9) j@@3) (|Seq#Index_7231| s@@11 j@@3)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_7231| (|Seq#Take_7231| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_7231| s@@11 j@@3) (|Seq#Take_7231| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_2963) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_2963| s@@12))) (= (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4) (|Seq#Index_2963| s@@12 j@@4)))
 :qid |stdinbpl.295:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_2963| (|Seq#Take_2963| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_2963| s@@12 j@@4) (|Seq#Take_2963| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_17567) (t T@Seq_17567) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_7231| s@@13))) (< n@@11 (|Seq#Length_7231| (|Seq#Append_17567| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_7231| s@@13)) (|Seq#Length_7231| s@@13)) n@@11) (= (|Seq#Take_7231| (|Seq#Append_17567| s@@13 t) n@@11) (|Seq#Append_17567| s@@13 (|Seq#Take_7231| t (|Seq#Sub| n@@11 (|Seq#Length_7231| s@@13)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_7231| (|Seq#Append_17567| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_2963) (t@@0 T@Seq_2963) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_2963| s@@14))) (< n@@12 (|Seq#Length_2963| (|Seq#Append_2963| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)) (|Seq#Length_2963| s@@14)) n@@12) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12) (|Seq#Append_2963| s@@14 (|Seq#Take_2963| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_2963| s@@14)))))))
 :qid |stdinbpl.380:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_11431) (ExhaleHeap@@1 T@PolymorphicMapType_11431) (Mask@@2 T@PolymorphicMapType_11452) (o_46 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@4) o_46 $allocated) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@1) o_46 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@1) o_46 $allocated))
)))
(assert (forall ((p T@Field_7225_34097) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_11491_11491 p v_1 p w))
 :qid |stdinbpl.198:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_11491_11491 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_17567) (s1 T@Seq_17567) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_7231|)) (not (= s1 |Seq#Empty_7231|))) (<= (|Seq#Length_7231| s0) n@@13)) (< n@@13 (|Seq#Length_7231| (|Seq#Append_17567| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_7231| s0)) (|Seq#Length_7231| s0)) n@@13) (= (|Seq#Index_7231| (|Seq#Append_17567| s0 s1) n@@13) (|Seq#Index_7231| s1 (|Seq#Sub| n@@13 (|Seq#Length_7231| s0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_7231| (|Seq#Append_17567| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_2963) (s1@@0 T@Seq_2963) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_2963|)) (not (= s1@@0 |Seq#Empty_2963|))) (<= (|Seq#Length_2963| s0@@0) n@@14)) (< n@@14 (|Seq#Length_2963| (|Seq#Append_2963| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0)) (|Seq#Length_2963| s0@@0)) n@@14) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14) (|Seq#Index_2963| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_2963| s0@@0))))))
 :qid |stdinbpl.267:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_7225_3102 Integer__item)))
(assert  (not (IsWandField_7225_3102 Integer__item)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_11431) (ExhaleHeap@@2 T@PolymorphicMapType_11431) (Mask@@3 T@PolymorphicMapType_11452) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_11452) (o_2@@4 T@Ref) (f_4@@4 T@Field_7225_34230) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_7225_39481 f_4@@4))) (not (IsWandField_7225_39497 f_4@@4))) (<= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_11452) (o_2@@5 T@Ref) (f_4@@5 T@Field_7225_34097) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_7225_34188 f_4@@5))) (not (IsWandField_7225_35935 f_4@@5))) (<= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_11452) (o_2@@6 T@Ref) (f_4@@6 T@Field_11504_11505) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_7225_11505 f_4@@6))) (not (IsWandField_7225_11505 f_4@@6))) (<= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_11452) (o_2@@7 T@Ref) (f_4@@7 T@Field_11491_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_7225_53 f_4@@7))) (not (IsWandField_7225_53 f_4@@7))) (<= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_11452) (o_2@@8 T@Ref) (f_4@@8 T@Field_17517_3102) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_7225_3102 f_4@@8))) (not (IsWandField_7225_3102 f_4@@8))) (<= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_11452) (o_2@@9 T@Ref) (f_4@@9 T@Field_7225_34230) ) (! (= (HasDirectPerm_7225_39935 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7225_39935 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_11452) (o_2@@10 T@Ref) (f_4@@10 T@Field_7225_34097) ) (! (= (HasDirectPerm_7225_34161 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7225_34161 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_11452) (o_2@@11 T@Ref) (f_4@@11 T@Field_11504_11505) ) (! (= (HasDirectPerm_7225_11505 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7225_11505 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_11452) (o_2@@12 T@Ref) (f_4@@12 T@Field_11491_53) ) (! (= (HasDirectPerm_7225_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7225_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_11452) (o_2@@13 T@Ref) (f_4@@13 T@Field_17517_3102) ) (! (= (HasDirectPerm_7225_3102 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_7225_3102 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_11431) (ExhaleHeap@@3 T@PolymorphicMapType_11431) (Mask@@14 T@PolymorphicMapType_11452) (pm_f_22@@1 T@Field_7225_34097) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_7225_34161 Mask@@14 null pm_f_22@@1) (IsPredicateField_7225_34188 pm_f_22@@1)) (and (and (and (and (forall ((o2_22 T@Ref) (f_37 T@Field_11491_53) ) (!  (=> (select (|PolymorphicMapType_11980_11491_53#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) null (PredicateMaskField_7225 pm_f_22@@1))) o2_22 f_37) (= (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@6) o2_22 f_37) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22 f_37)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22 f_37))
)) (forall ((o2_22@@0 T@Ref) (f_37@@0 T@Field_11504_11505) ) (!  (=> (select (|PolymorphicMapType_11980_11491_11505#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) null (PredicateMaskField_7225 pm_f_22@@1))) o2_22@@0 f_37@@0) (= (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@6) o2_22@@0 f_37@@0) (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@0 f_37@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@0 f_37@@0))
))) (forall ((o2_22@@1 T@Ref) (f_37@@1 T@Field_17517_3102) ) (!  (=> (select (|PolymorphicMapType_11980_11491_3102#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) null (PredicateMaskField_7225 pm_f_22@@1))) o2_22@@1 f_37@@1) (= (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@6) o2_22@@1 f_37@@1) (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@1 f_37@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@1 f_37@@1))
))) (forall ((o2_22@@2 T@Ref) (f_37@@2 T@Field_7225_34097) ) (!  (=> (select (|PolymorphicMapType_11980_11491_34097#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) null (PredicateMaskField_7225 pm_f_22@@1))) o2_22@@2 f_37@@2) (= (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@6) o2_22@@2 f_37@@2) (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@2 f_37@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@2 f_37@@2))
))) (forall ((o2_22@@3 T@Ref) (f_37@@3 T@Field_7225_34230) ) (!  (=> (select (|PolymorphicMapType_11980_11491_35408#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) null (PredicateMaskField_7225 pm_f_22@@1))) o2_22@@3 f_37@@3) (= (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@6) o2_22@@3 f_37@@3) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@3 f_37@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@3) o2_22@@3 f_37@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@14) (IsPredicateField_7225_34188 pm_f_22@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_11431) (ExhaleHeap@@4 T@PolymorphicMapType_11431) (Mask@@15 T@PolymorphicMapType_11452) (pm_f_22@@2 T@Field_7225_34097) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_7225_34161 Mask@@15 null pm_f_22@@2) (IsWandField_7225_35935 pm_f_22@@2)) (and (and (and (and (forall ((o2_22@@4 T@Ref) (f_37@@4 T@Field_11491_53) ) (!  (=> (select (|PolymorphicMapType_11980_11491_53#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) null (WandMaskField_7225 pm_f_22@@2))) o2_22@@4 f_37@@4) (= (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@7) o2_22@@4 f_37@@4) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@4 f_37@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@4 f_37@@4))
)) (forall ((o2_22@@5 T@Ref) (f_37@@5 T@Field_11504_11505) ) (!  (=> (select (|PolymorphicMapType_11980_11491_11505#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) null (WandMaskField_7225 pm_f_22@@2))) o2_22@@5 f_37@@5) (= (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@7) o2_22@@5 f_37@@5) (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@5 f_37@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@5 f_37@@5))
))) (forall ((o2_22@@6 T@Ref) (f_37@@6 T@Field_17517_3102) ) (!  (=> (select (|PolymorphicMapType_11980_11491_3102#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) null (WandMaskField_7225 pm_f_22@@2))) o2_22@@6 f_37@@6) (= (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@7) o2_22@@6 f_37@@6) (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@6 f_37@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@6 f_37@@6))
))) (forall ((o2_22@@7 T@Ref) (f_37@@7 T@Field_7225_34097) ) (!  (=> (select (|PolymorphicMapType_11980_11491_34097#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) null (WandMaskField_7225 pm_f_22@@2))) o2_22@@7 f_37@@7) (= (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@7) o2_22@@7 f_37@@7) (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@7 f_37@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@7 f_37@@7))
))) (forall ((o2_22@@8 T@Ref) (f_37@@8 T@Field_7225_34230) ) (!  (=> (select (|PolymorphicMapType_11980_11491_35408#PolymorphicMapType_11980| (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) null (WandMaskField_7225 pm_f_22@@2))) o2_22@@8 f_37@@8) (= (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@7) o2_22@@8 f_37@@8) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@8 f_37@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@4) o2_22@@8 f_37@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@15) (IsWandField_7225_35935 pm_f_22@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.186:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.559:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_2963| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_11431) (ExhaleHeap@@5 T@PolymorphicMapType_11431) (Mask@@16 T@PolymorphicMapType_11452) (o_46@@0 T@Ref) (f_37@@9 T@Field_7225_34230) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_7225_39935 Mask@@16 o_46@@0 f_37@@9) (= (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@8) o_46@@0 f_37@@9) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@5) o_46@@0 f_37@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| ExhaleHeap@@5) o_46@@0 f_37@@9))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_11431) (ExhaleHeap@@6 T@PolymorphicMapType_11431) (Mask@@17 T@PolymorphicMapType_11452) (o_46@@1 T@Ref) (f_37@@10 T@Field_7225_34097) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_7225_34161 Mask@@17 o_46@@1 f_37@@10) (= (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@9) o_46@@1 f_37@@10) (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@6) o_46@@1 f_37@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| ExhaleHeap@@6) o_46@@1 f_37@@10))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_11431) (ExhaleHeap@@7 T@PolymorphicMapType_11431) (Mask@@18 T@PolymorphicMapType_11452) (o_46@@2 T@Ref) (f_37@@11 T@Field_11504_11505) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_7225_11505 Mask@@18 o_46@@2 f_37@@11) (= (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@10) o_46@@2 f_37@@11) (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@7) o_46@@2 f_37@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| ExhaleHeap@@7) o_46@@2 f_37@@11))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_11431) (ExhaleHeap@@8 T@PolymorphicMapType_11431) (Mask@@19 T@PolymorphicMapType_11452) (o_46@@3 T@Ref) (f_37@@12 T@Field_11491_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_7225_53 Mask@@19 o_46@@3 f_37@@12) (= (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@11) o_46@@3 f_37@@12) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@8) o_46@@3 f_37@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| ExhaleHeap@@8) o_46@@3 f_37@@12))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_11431) (ExhaleHeap@@9 T@PolymorphicMapType_11431) (Mask@@20 T@PolymorphicMapType_11452) (o_46@@4 T@Ref) (f_37@@13 T@Field_17517_3102) ) (!  (=> (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_7225_3102 Mask@@20 o_46@@4 f_37@@13) (= (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@12) o_46@@4 f_37@@13) (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@9) o_46@@4 f_37@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@12 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| ExhaleHeap@@9) o_46@@4 f_37@@13))
)))
(assert (forall ((s0@@1 T@Seq_17567) (s1@@1 T@Seq_17567) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_7231|)) (not (= s1@@1 |Seq#Empty_7231|))) (= (|Seq#Length_7231| (|Seq#Append_17567| s0@@1 s1@@1)) (+ (|Seq#Length_7231| s0@@1) (|Seq#Length_7231| s1@@1))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_7231| (|Seq#Append_17567| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_2963) (s1@@2 T@Seq_2963) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_2963|)) (not (= s1@@2 |Seq#Empty_2963|))) (= (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)) (+ (|Seq#Length_2963| s0@@2) (|Seq#Length_2963| s1@@2))))
 :qid |stdinbpl.236:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_2963| (|Seq#Append_2963| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_7225_34230) ) (! (= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_7225_34097) ) (! (= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_11504_11505) ) (! (= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_11491_53) ) (! (= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_17517_3102) ) (! (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((s@@15 T@Seq_17567) (t@@1 T@Seq_17567) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_7231| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_7231| s@@15)) (|Seq#Length_7231| s@@15)) n@@15) (= (|Seq#Drop_7231| (|Seq#Append_17567| s@@15 t@@1) n@@15) (|Seq#Drop_7231| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_7231| s@@15))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_7231| (|Seq#Append_17567| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_2963) (t@@2 T@Seq_2963) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_2963| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16)) (|Seq#Length_2963| s@@16)) n@@16) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16) (|Seq#Drop_2963| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_2963| s@@16))))))
 :qid |stdinbpl.393:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_11452) (SummandMask1 T@PolymorphicMapType_11452) (SummandMask2 T@PolymorphicMapType_11452) (o_2@@19 T@Ref) (f_4@@19 T@Field_7225_34230) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_11452) (SummandMask1@@0 T@PolymorphicMapType_11452) (SummandMask2@@0 T@PolymorphicMapType_11452) (o_2@@20 T@Ref) (f_4@@20 T@Field_7225_34097) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_11452) (SummandMask1@@1 T@PolymorphicMapType_11452) (SummandMask2@@1 T@PolymorphicMapType_11452) (o_2@@21 T@Ref) (f_4@@21 T@Field_11504_11505) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_11452) (SummandMask1@@2 T@PolymorphicMapType_11452) (SummandMask2@@2 T@PolymorphicMapType_11452) (o_2@@22 T@Ref) (f_4@@22 T@Field_11491_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_11452) (SummandMask1@@3 T@PolymorphicMapType_11452) (SummandMask2@@3 T@PolymorphicMapType_11452) (o_2@@23 T@Ref) (f_4@@23 T@Field_17517_3102) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.558:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_2963| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_17567) (b T@Seq_17567) ) (!  (=> (|Seq#Equal_17567| a b) (= a b))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_17567| a b))
)))
(assert (forall ((a@@0 T@Seq_2963) (b@@0 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.531:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_2963| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_17567) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_7231| s@@17))) (|Seq#ContainsTrigger_7231| s@@17 (|Seq#Index_7231| s@@17 i@@3)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_7231| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_2963) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_2963| s@@18))) (|Seq#ContainsTrigger_2963| s@@18 (|Seq#Index_2963| s@@18 i@@4)))
 :qid |stdinbpl.424:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_2963| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_17567) (s1@@3 T@Seq_17567) ) (!  (and (=> (= s0@@3 |Seq#Empty_7231|) (= (|Seq#Append_17567| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_7231|) (= (|Seq#Append_17567| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_17567| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_2963) (s1@@4 T@Seq_2963) ) (!  (and (=> (= s0@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_2963|) (= (|Seq#Append_2963| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.242:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_2963| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_7231| (|Seq#Singleton_7231| t@@3) 0) t@@3)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_7231| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_2963| (|Seq#Singleton_2963| t@@4) 0) t@@4)
 :qid |stdinbpl.246:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_2963| t@@4))
)))
(assert (forall ((s@@19 T@Seq_17567) ) (! (<= 0 (|Seq#Length_7231| s@@19))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_7231| s@@19))
)))
(assert (forall ((s@@20 T@Seq_2963) ) (! (<= 0 (|Seq#Length_2963| s@@20))
 :qid |stdinbpl.225:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_2963| s@@20))
)))
(assert (forall ((s0@@5 T@Seq_17567) (s1@@5 T@Seq_17567) ) (!  (=> (|Seq#Equal_17567| s0@@5 s1@@5) (and (= (|Seq#Length_7231| s0@@5) (|Seq#Length_7231| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_7231| s0@@5))) (= (|Seq#Index_7231| s0@@5 j@@6) (|Seq#Index_7231| s1@@5 j@@6)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_7231| s0@@5 j@@6))
 :pattern ( (|Seq#Index_7231| s1@@5 j@@6))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_17567| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_2963) (s1@@6 T@Seq_2963) ) (!  (=> (|Seq#Equal_2963| s0@@6 s1@@6) (and (= (|Seq#Length_2963| s0@@6) (|Seq#Length_2963| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_2963| s0@@6))) (= (|Seq#Index_2963| s0@@6 j@@7) (|Seq#Index_2963| s1@@6 j@@7)))
 :qid |stdinbpl.521:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_2963| s0@@6 j@@7))
 :pattern ( (|Seq#Index_2963| s1@@6 j@@7))
))))
 :qid |stdinbpl.518:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_2963| s0@@6 s1@@6))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_11431) (Mask@@21 T@PolymorphicMapType_11452) (x@@5 T@VCTOptionDomainType_17569) ) (!  (=> (and (state Heap@@13 Mask@@21) (< AssumeFunctionsAbove 0)) (=> (not (= x@@5 VCTNone_17858)) (= (getVCTOption1 Heap@@13 x@@5) (getVCTOption_17909 x@@5))))
 :qid |stdinbpl.605:15|
 :skolemid |60|
 :pattern ( (state Heap@@13 Mask@@21) (getVCTOption1 Heap@@13 x@@5))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_7231| (|Seq#Singleton_7231| t@@5)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_7231| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_2963| (|Seq#Singleton_2963| t@@6)) 1)
 :qid |stdinbpl.233:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_2963| t@@6))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_11431) (Mask@@22 T@PolymorphicMapType_11452) (x@@6 T@VCTOptionDomainType_17569) ) (!  (=> (state Heap@@14 Mask@@22) (= (|getVCTOption1'| Heap@@14 x@@6) (|getVCTOption1#frame| EmptyFrame x@@6)))
 :qid |stdinbpl.612:15|
 :skolemid |61|
 :pattern ( (state Heap@@14 Mask@@22) (|getVCTOption1'| Heap@@14 x@@6))
)))
(assert (forall ((s@@21 T@Seq_17567) (t@@7 T@Seq_17567) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_7231| s@@21))) (= (|Seq#Take_7231| (|Seq#Append_17567| s@@21 t@@7) n@@17) (|Seq#Take_7231| s@@21 n@@17)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_7231| (|Seq#Append_17567| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_2963) (t@@8 T@Seq_2963) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_2963| s@@22))) (= (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18) (|Seq#Take_2963| s@@22 n@@18)))
 :qid |stdinbpl.375:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_2963| (|Seq#Append_2963| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_17567) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_7231| s@@23))) (= (|Seq#Length_7231| (|Seq#Update_7231| s@@23 i@@5 v@@2)) (|Seq#Length_7231| s@@23)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_7231| (|Seq#Update_7231| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_7231| s@@23) (|Seq#Update_7231| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_2963) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_2963| s@@24))) (= (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)) (|Seq#Length_2963| s@@24)))
 :qid |stdinbpl.274:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_2963| (|Seq#Update_2963| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_2963| s@@24) (|Seq#Update_2963| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_11431) (o_12 T@Ref) (f_24 T@Field_7225_34097) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@15) (store (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@15) o_12 f_24 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@15) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@15) (store (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@15) o_12 f_24 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_11431) (o_12@@0 T@Ref) (f_24@@0 T@Field_7225_34230) (v@@5 T@PolymorphicMapType_11980) ) (! (succHeap Heap@@16 (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@16) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@16) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@16) (store (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@16) o_12@@0 f_24@@0 v@@5) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@16) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@16) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@16) (store (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@16) o_12@@0 f_24@@0 v@@5) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_11431) (o_12@@1 T@Ref) (f_24@@1 T@Field_17517_3102) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@17) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@17) (store (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@17) o_12@@1 f_24@@1 v@@6) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@17) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@17) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@17) (store (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@17) o_12@@1 f_24@@1 v@@6) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@17) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_11431) (o_12@@2 T@Ref) (f_24@@2 T@Field_11504_11505) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@18) (store (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@18) o_12@@2 f_24@@2 v@@7) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@18) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@18) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11431 (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@18) (store (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@18) o_12@@2 f_24@@2 v@@7) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@18) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@18) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_11431) (o_12@@3 T@Ref) (f_24@@3 T@Field_11491_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_11431 (store (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@19) o_12@@3 f_24@@3 v@@8) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_11431 (store (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@19) o_12@@3 f_24@@3 v@@8) (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_7225_34274#PolymorphicMapType_11431| Heap@@19) (|PolymorphicMapType_11431_11491_34097#PolymorphicMapType_11431| Heap@@19)))
)))
(assert (forall ((s@@25 T@Seq_17567) (t@@9 T@Seq_17567) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_7231| s@@25))) (= (|Seq#Drop_7231| (|Seq#Append_17567| s@@25 t@@9) n@@19) (|Seq#Append_17567| (|Seq#Drop_7231| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_7231| (|Seq#Append_17567| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_2963) (t@@10 T@Seq_2963) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_2963| s@@26))) (= (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20) (|Seq#Append_2963| (|Seq#Drop_2963| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.389:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_2963| (|Seq#Append_2963| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_17567) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_7231| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_7231| (|Seq#Drop_7231| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_7231| s@@27 i@@7))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_7231| s@@27 n@@21) (|Seq#Index_7231| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_2963) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_2963| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_2963| (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_2963| s@@28 i@@8))))
 :qid |stdinbpl.325:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_2963| s@@28 n@@22) (|Seq#Index_2963| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_17567) (s1@@7 T@Seq_17567) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_7231|)) (not (= s1@@7 |Seq#Empty_7231|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_7231| s0@@7))) (= (|Seq#Index_7231| (|Seq#Append_17567| s0@@7 s1@@7) n@@23) (|Seq#Index_7231| s0@@7 n@@23)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_7231| (|Seq#Append_17567| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_7231| s0@@7 n@@23) (|Seq#Append_17567| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_2963) (s1@@8 T@Seq_2963) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_2963|)) (not (= s1@@8 |Seq#Empty_2963|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_2963| s0@@8))) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24) (|Seq#Index_2963| s0@@8 n@@24)))
 :qid |stdinbpl.265:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_2963| (|Seq#Append_2963| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_2963| s0@@8 n@@24) (|Seq#Append_2963| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_17567) (s1@@9 T@Seq_17567) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_7231|)) (not (= s1@@9 |Seq#Empty_7231|))) (<= 0 m)) (< m (|Seq#Length_7231| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_7231| s0@@9)) (|Seq#Length_7231| s0@@9)) m) (= (|Seq#Index_7231| (|Seq#Append_17567| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_7231| s0@@9))) (|Seq#Index_7231| s1@@9 m))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_7231| s1@@9 m) (|Seq#Append_17567| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_2963) (s1@@10 T@Seq_2963) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_2963|)) (not (= s1@@10 |Seq#Empty_2963|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_2963| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10)) (|Seq#Length_2963| s0@@10)) m@@0) (= (|Seq#Index_2963| (|Seq#Append_2963| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_2963| s0@@10))) (|Seq#Index_2963| s1@@10 m@@0))))
 :qid |stdinbpl.270:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_2963| s1@@10 m@@0) (|Seq#Append_2963| s0@@10 s1@@10))
)))
(assert (forall ((o_12@@4 T@Ref) (f_16 T@Field_11504_11505) (Heap@@20 T@PolymorphicMapType_11431) ) (!  (=> (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@20) o_12@@4 $allocated) (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@20) (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@20) o_12@@4 f_16) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_11431_7030_7031#PolymorphicMapType_11431| Heap@@20) o_12@@4 f_16))
)))
(assert (forall ((s@@29 T@Seq_17567) (x@@7 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_7231| s@@29))) (= (|Seq#Index_7231| s@@29 i@@9) x@@7)) (|Seq#Contains_17567| s@@29 x@@7))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_17567| s@@29 x@@7) (|Seq#Index_7231| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_2963) (x@@8 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_2963| s@@30))) (= (|Seq#Index_2963| s@@30 i@@10) x@@8)) (|Seq#Contains_2963| s@@30 x@@8))
 :qid |stdinbpl.422:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_2963| s@@30 x@@8) (|Seq#Index_2963| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_17567) (s1@@11 T@Seq_17567) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_17567| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17567| s0@@11 s1@@11))) (not (= (|Seq#Length_7231| s0@@11) (|Seq#Length_7231| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_17567| s0@@11 s1@@11))) (= (|Seq#Length_7231| s0@@11) (|Seq#Length_7231| s1@@11))) (= (|Seq#SkolemDiff_17567| s0@@11 s1@@11) (|Seq#SkolemDiff_17567| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_17567| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_17567| s0@@11 s1@@11) (|Seq#Length_7231| s0@@11))) (not (= (|Seq#Index_7231| s0@@11 (|Seq#SkolemDiff_17567| s0@@11 s1@@11)) (|Seq#Index_7231| s1@@11 (|Seq#SkolemDiff_17567| s0@@11 s1@@11))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_17567| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_2963) (s1@@12 T@Seq_2963) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_2963| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (not (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_2963| s0@@12 s1@@12))) (= (|Seq#Length_2963| s0@@12) (|Seq#Length_2963| s1@@12))) (= (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#SkolemDiff_2963| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_2963| s0@@12 s1@@12) (|Seq#Length_2963| s0@@12))) (not (= (|Seq#Index_2963| s0@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12)) (|Seq#Index_2963| s1@@12 (|Seq#SkolemDiff_2963| s0@@12 s1@@12))))))
 :qid |stdinbpl.526:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_2963| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_7225_34097) (v_1@@0 T@FrameType) (q T@Field_7225_34097) (w@@0 T@FrameType) (r T@Field_7225_34097) (u T@FrameType) ) (!  (=> (and (InsidePredicate_11491_11491 p@@1 v_1@@0 q w@@0) (InsidePredicate_11491_11491 q w@@0 r u)) (InsidePredicate_11491_11491 p@@1 v_1@@0 r u))
 :qid |stdinbpl.193:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_11491_11491 p@@1 v_1@@0 q w@@0) (InsidePredicate_11491_11491 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_17567) ) (!  (=> (= (|Seq#Length_7231| s@@31) 0) (= s@@31 |Seq#Empty_7231|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_7231| s@@31))
)))
(assert (forall ((s@@32 T@Seq_2963) ) (!  (=> (= (|Seq#Length_2963| s@@32) 0) (= s@@32 |Seq#Empty_2963|))
 :qid |stdinbpl.229:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_2963| s@@32))
)))
(assert (forall ((s@@33 T@Seq_17567) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_7231| s@@33 n@@25) |Seq#Empty_7231|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_7231| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_2963) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_2963| s@@34 n@@26) |Seq#Empty_2963|))
 :qid |stdinbpl.405:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_2963| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun output () T@VCTOptionDomainType_17569)
(declare-fun j_7 () Int)
(declare-fun PostHeap@0 () T@PolymorphicMapType_11431)
(declare-fun QPMask@2 () T@PolymorphicMapType_11452)
(declare-fun tid_4 () Int)
(declare-fun wildcard () Real)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun k_7 () Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_11431)
(declare-fun QPMask@0 () T@PolymorphicMapType_11452)
(declare-fun tid_20 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun tid_24 () Int)
(declare-fun j_5 () Int)
(declare-fun i_14 () Int)
(declare-fun diz () T@Ref)
(set-info :boogie-vc-id barrier_check_2)
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
 (=> (= (ControlFlow 0 0) 95) (let ((anon92_Then_correct  (=> (= (ControlFlow 0 83) (- 0 82)) (not (= output VCTNone_17858)))))
(let ((anon89_Then_correct  (=> (= (ControlFlow 0 79) (- 0 78)) (not (= output VCTNone_17858)))))
(let ((anon94_Then_correct  (=> (= (ControlFlow 0 71) (- 0 70)) (not (= output VCTNone_17858)))))
(let ((anon55_correct true))
(let ((anon94_Else_correct  (and (=> (= (ControlFlow 0 72) (- 0 75)) (>= j_7 0)) (=> (>= j_7 0) (and (=> (= (ControlFlow 0 72) (- 0 74)) (< j_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (=> (< j_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))) (and (=> (= (ControlFlow 0 72) (- 0 73)) (HasDirectPerm_7225_3102 QPMask@2 (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) j_7) Integer__item)) (=> (HasDirectPerm_7225_3102 QPMask@2 (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) j_7) Integer__item) (=> (= (ControlFlow 0 72) 68) anon55_correct)))))))))
(let ((anon93_Then_correct  (=> (and (<= 0 tid_4) (and (< tid_4 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))) (and (<= 0 j_7) (< j_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))))) (and (=> (= (ControlFlow 0 76) 71) anon94_Then_correct) (=> (= (ControlFlow 0 76) 72) anon94_Else_correct)))))
(let ((anon93_Else_correct  (=> (and (not (and (<= 0 tid_4) (and (< tid_4 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))) (and (<= 0 j_7) (< j_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))))) (= (ControlFlow 0 69) 68)) anon55_correct)))
(let ((anon91_Then_correct  (=> (<= 0 j_7) (and (and (=> (= (ControlFlow 0 84) 83) anon92_Then_correct) (=> (= (ControlFlow 0 84) 76) anon93_Then_correct)) (=> (= (ControlFlow 0 84) 69) anon93_Else_correct)))))
(let ((anon91_Else_correct  (=> (< j_7 0) (and (=> (= (ControlFlow 0 81) 76) anon93_Then_correct) (=> (= (ControlFlow 0 81) 69) anon93_Else_correct)))))
(let ((anon90_Then_correct  (=> (< tid_4 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))) (and (=> (= (ControlFlow 0 85) 84) anon91_Then_correct) (=> (= (ControlFlow 0 85) 81) anon91_Else_correct)))))
(let ((anon90_Else_correct  (=> (<= (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)) tid_4) (and (=> (= (ControlFlow 0 80) 76) anon93_Then_correct) (=> (= (ControlFlow 0 80) 69) anon93_Else_correct)))))
(let ((anon88_Then_correct  (=> (<= 0 tid_4) (and (and (=> (= (ControlFlow 0 86) 79) anon89_Then_correct) (=> (= (ControlFlow 0 86) 85) anon90_Then_correct)) (=> (= (ControlFlow 0 86) 80) anon90_Else_correct)))))
(let ((anon88_Else_correct  (=> (< tid_4 0) (and (=> (= (ControlFlow 0 77) 76) anon93_Then_correct) (=> (= (ControlFlow 0 77) 69) anon93_Else_correct)))))
(let ((anon87_Else_correct true))
(let ((anon82_Else_correct  (and (=> (= (ControlFlow 0 87) (- 0 88)) (forall ((k_1_1 Int) (k_1_2 Int) ) (!  (=> (and (and (and (and (not (= k_1_1 k_1_2)) (and (<= 0 k_1_1) (< k_1_1 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))) (and (<= 0 k_1_2) (< k_1_2 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_1) (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_2))))
 :qid |stdinbpl.896:15|
 :skolemid |70|
))) (=> (forall ((k_1_1@@0 Int) (k_1_2@@0 Int) ) (!  (=> (and (and (and (and (not (= k_1_1@@0 k_1_2@@0)) (and (<= 0 k_1_1@@0) (< k_1_1@@0 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))) (and (<= 0 k_1_2@@0) (< k_1_2@@0 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))) (< NoPerm wildcard)) (< NoPerm wildcard)) (not (= (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_1@@0) (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_2@@0))))
 :qid |stdinbpl.896:15|
 :skolemid |70|
)) (=> (and (and (forall ((k_1_1@@1 Int) ) (!  (=> (and (<= 0 k_1_1@@1) (< k_1_1@@1 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (and (qpRange2 (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_1@@1)) (= (invRecv2 (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_1@@1)) k_1_1@@1)))
 :qid |stdinbpl.902:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) k_1_1@@1))
 :pattern ( (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| PostHeap@0) (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) k_1_1@@1) Integer__item))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv2 o_4)) (< (invRecv2 o_4) (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (qpRange2 o_4)) (= (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) (invRecv2 o_4)) o_4))
 :qid |stdinbpl.906:22|
 :skolemid |72|
 :pattern ( (invRecv2 o_4))
))) (and (forall ((k_1_1@@2 Int) ) (!  (=> (and (<= 0 k_1_1@@2) (< k_1_1@@2 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (not (= (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) k_1_1@@2) null)))
 :qid |stdinbpl.912:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) k_1_1@@2))
 :pattern ( (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| PostHeap@0) (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) k_1_1@@2) Integer__item))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (qpRange2 o_4@@0)) (and (= (|Seq#Index_7231| (getVCTOption1 PostHeap@0 output) (invRecv2 o_4@@0)) o_4@@0) (< (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@0 Integer__item) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@2) o_4@@0 Integer__item)))) (=> (not (and (and (<= 0 (invRecv2 o_4@@0)) (< (invRecv2 o_4@@0) (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (qpRange2 o_4@@0))) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@2) o_4@@0 Integer__item) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@0 Integer__item))))
 :qid |stdinbpl.918:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@2) o_4@@0 Integer__item))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_11491_53) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_4@@1 f_5) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| QPMask@2) o_4@@1 f_5)))
 :qid |stdinbpl.922:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| QPMask@2) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_11504_11505) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_4@@2 f_5@@0) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| QPMask@2) o_4@@2 f_5@@0)))
 :qid |stdinbpl.922:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| QPMask@2) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_17517_3102) ) (!  (=> (not (= f_5@@1 Integer__item)) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@3 f_5@@1) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@2) o_4@@3 f_5@@1)))
 :qid |stdinbpl.922:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@2) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_7225_34097) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_4@@4 f_5@@2) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| QPMask@2) o_4@@4 f_5@@2)))
 :qid |stdinbpl.922:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| QPMask@2) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_7225_34230) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_4@@5 f_5@@3) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| QPMask@2) o_4@@5 f_5@@3)))
 :qid |stdinbpl.922:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| QPMask@2) o_4@@5 f_5@@3))
))) (state PostHeap@0 QPMask@2)) (and (state PostHeap@0 QPMask@2) (state PostHeap@0 QPMask@2))) (and (and (=> (= (ControlFlow 0 87) 67) anon87_Else_correct) (=> (= (ControlFlow 0 87) 86) anon88_Then_correct)) (=> (= (ControlFlow 0 87) 77) anon88_Else_correct))))))))
(let ((anon84_Then_correct  (=> (= (ControlFlow 0 65) (- 0 64)) (not (= output VCTNone_17858)))))
(let ((anon86_Then_correct  (=> (= (ControlFlow 0 58) (- 0 57)) (not (= output VCTNone_17858)))))
(let ((anon42_correct true))
(let ((anon86_Else_correct  (and (=> (= (ControlFlow 0 59) (- 0 61)) (>= k_7 0)) (=> (>= k_7 0) (and (=> (= (ControlFlow 0 59) (- 0 60)) (< k_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (=> (< k_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))) (=> (= (ControlFlow 0 59) 55) anon42_correct)))))))
(let ((anon85_Then_correct  (=> (and (<= 0 k_7) (< k_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output)))) (and (=> (= (ControlFlow 0 62) 58) anon86_Then_correct) (=> (= (ControlFlow 0 62) 59) anon86_Else_correct)))))
(let ((anon85_Else_correct  (=> (and (not (and (<= 0 k_7) (< k_7 (|Seq#Length_7231| (getVCTOption1 PostHeap@0 output))))) (= (ControlFlow 0 56) 55)) anon42_correct)))
(let ((anon83_Then_correct  (=> (<= 0 k_7) (and (and (=> (= (ControlFlow 0 66) 65) anon84_Then_correct) (=> (= (ControlFlow 0 66) 62) anon85_Then_correct)) (=> (= (ControlFlow 0 66) 56) anon85_Else_correct)))))
(let ((anon83_Else_correct  (=> (< k_7 0) (and (=> (= (ControlFlow 0 63) 62) anon85_Then_correct) (=> (= (ControlFlow 0 63) 56) anon85_Else_correct)))))
(let ((anon81_Then_correct  (=> (and (and (state PostHeap@0 ZeroMask) (not (= VCTNone_17858 output))) (and (state PostHeap@0 ZeroMask) (state PostHeap@0 ZeroMask))) (and (and (=> (= (ControlFlow 0 89) 87) anon82_Else_correct) (=> (= (ControlFlow 0 89) 66) anon83_Then_correct)) (=> (= (ControlFlow 0 89) 63) anon83_Else_correct)))))
(let ((anon81_Else_correct true))
(let ((anon76_Else_correct  (=> (and (forall ((tid_3 Int) ) (!  (=> (and (<= 0 tid_3) (< tid_3 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (= (select (|PolymorphicMapType_11431_7225_3102#PolymorphicMapType_11431| Heap@@21) (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_3) Integer__item) tid_3))
 :qid |stdinbpl.844:20|
 :skolemid |69|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) tid_3))
)) (state Heap@@21 QPMask@0)) (and (=> (= (ControlFlow 0 90) 89) anon81_Then_correct) (=> (= (ControlFlow 0 90) 50) anon81_Else_correct)))))
(let ((anon78_Then_correct  (=> (= (ControlFlow 0 47) (- 0 46)) (not (= output VCTNone_17858)))))
(let ((anon80_Then_correct  (=> (= (ControlFlow 0 39) (- 0 38)) (not (= output VCTNone_17858)))))
(let ((anon32_correct true))
(let ((anon80_Else_correct  (and (=> (= (ControlFlow 0 40) (- 0 43)) (>= tid_20 0)) (=> (>= tid_20 0) (and (=> (= (ControlFlow 0 40) (- 0 42)) (< tid_20 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (=> (< tid_20 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (=> (= (ControlFlow 0 40) (- 0 41)) (HasDirectPerm_7225_3102 QPMask@0 (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_20) Integer__item)) (=> (HasDirectPerm_7225_3102 QPMask@0 (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_20) Integer__item) (=> (= (ControlFlow 0 40) 36) anon32_correct)))))))))
(let ((anon79_Then_correct  (=> (and (<= 0 tid_20) (< tid_20 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (and (=> (= (ControlFlow 0 44) 39) anon80_Then_correct) (=> (= (ControlFlow 0 44) 40) anon80_Else_correct)))))
(let ((anon79_Else_correct  (=> (and (not (and (<= 0 tid_20) (< tid_20 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (= (ControlFlow 0 37) 36)) anon32_correct)))
(let ((anon77_Then_correct  (=> (<= 0 tid_20) (and (and (=> (= (ControlFlow 0 48) 47) anon78_Then_correct) (=> (= (ControlFlow 0 48) 44) anon79_Then_correct)) (=> (= (ControlFlow 0 48) 37) anon79_Else_correct)))))
(let ((anon77_Else_correct  (=> (< tid_20 0) (and (=> (= (ControlFlow 0 45) 44) anon79_Then_correct) (=> (= (ControlFlow 0 45) 37) anon79_Else_correct)))))
(let ((anon71_Else_correct  (and (=> (= (ControlFlow 0 91) (- 0 92)) (forall ((tid_1 Int) (tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= tid_1 tid_1_1)) (and (<= 0 tid_1) (< tid_1 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (and (<= 0 tid_1_1) (< tid_1_1 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1) (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1_1))))
 :qid |stdinbpl.777:15|
 :skolemid |63|
))) (=> (forall ((tid_1@@0 Int) (tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_1@@0 tid_1_1@@0)) (and (<= 0 tid_1@@0) (< tid_1@@0 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (and (<= 0 tid_1_1@@0) (< tid_1_1@@0 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1@@0) (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1_1@@0))))
 :qid |stdinbpl.777:15|
 :skolemid |63|
)) (=> (and (and (forall ((tid_1@@1 Int) ) (!  (=> (and (and (<= 0 tid_1@@1) (< tid_1@@1 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1@@1)) (= (invRecv1 (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1@@1)) tid_1@@1)))
 :qid |stdinbpl.783:22|
 :skolemid |64|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) tid_1@@1))
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) tid_1@@1))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_4@@6)) (< (invRecv1 o_4@@6) (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (< NoPerm FullPerm)) (qpRange1 o_4@@6)) (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) (invRecv1 o_4@@6)) o_4@@6))
 :qid |stdinbpl.787:22|
 :skolemid |65|
 :pattern ( (invRecv1 o_4@@6))
))) (and (forall ((tid_1@@2 Int) ) (!  (=> (and (<= 0 tid_1@@2) (< tid_1@@2 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (not (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) tid_1@@2) null)))
 :qid |stdinbpl.793:22|
 :skolemid |66|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) tid_1@@2))
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) tid_1@@2))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_4@@7)) (< (invRecv1 o_4@@7) (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (< NoPerm FullPerm)) (qpRange1 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) (invRecv1 o_4@@7)) o_4@@7)) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@0) o_4@@7 Integer__item) (+ (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@7 Integer__item) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_4@@7)) (< (invRecv1 o_4@@7) (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (< NoPerm FullPerm)) (qpRange1 o_4@@7))) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@0) o_4@@7 Integer__item) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@7 Integer__item))))
 :qid |stdinbpl.799:22|
 :skolemid |67|
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@0) o_4@@7 Integer__item))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_11491_53) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_4@@8 f_5@@4) (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| QPMask@0) o_4@@8 f_5@@4)))
 :qid |stdinbpl.803:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| ZeroMask) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_11452_7225_53#PolymorphicMapType_11452| QPMask@0) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_11504_11505) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_4@@9 f_5@@5) (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| QPMask@0) o_4@@9 f_5@@5)))
 :qid |stdinbpl.803:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| ZeroMask) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_11452_7225_11505#PolymorphicMapType_11452| QPMask@0) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_17517_3102) ) (!  (=> (not (= f_5@@6 Integer__item)) (= (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@10 f_5@@6) (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@0) o_4@@10 f_5@@6)))
 :qid |stdinbpl.803:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| ZeroMask) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_11452_7225_3102#PolymorphicMapType_11452| QPMask@0) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_7225_34097) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_4@@11 f_5@@7) (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| QPMask@0) o_4@@11 f_5@@7)))
 :qid |stdinbpl.803:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| ZeroMask) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_11452_7225_34097#PolymorphicMapType_11452| QPMask@0) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_7225_34230) ) (!  (=> true (= (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_4@@12 f_5@@8) (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| QPMask@0) o_4@@12 f_5@@8)))
 :qid |stdinbpl.803:29|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| ZeroMask) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_11452_7225_38352#PolymorphicMapType_11452| QPMask@0) o_4@@12 f_5@@8))
))) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (and (=> (= (ControlFlow 0 91) 90) anon76_Else_correct) (=> (= (ControlFlow 0 91) 48) anon77_Then_correct)) (=> (= (ControlFlow 0 91) 45) anon77_Else_correct))))))))
(let ((anon73_Then_correct  (=> (= (ControlFlow 0 34) (- 0 33)) (not (= output VCTNone_17858)))))
(let ((anon75_Then_correct  (=> (= (ControlFlow 0 27) (- 0 26)) (not (= output VCTNone_17858)))))
(let ((anon23_correct true))
(let ((anon75_Else_correct  (and (=> (= (ControlFlow 0 28) (- 0 30)) (>= tid_24 0)) (=> (>= tid_24 0) (and (=> (= (ControlFlow 0 28) (- 0 29)) (< tid_24 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (=> (< tid_24 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (=> (= (ControlFlow 0 28) 24) anon23_correct)))))))
(let ((anon74_Then_correct  (=> (and (<= 0 tid_24) (< tid_24 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (and (=> (= (ControlFlow 0 31) 27) anon75_Then_correct) (=> (= (ControlFlow 0 31) 28) anon75_Else_correct)))))
(let ((anon74_Else_correct  (=> (and (not (and (<= 0 tid_24) (< tid_24 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))))) (= (ControlFlow 0 25) 24)) anon23_correct)))
(let ((anon72_Then_correct  (=> (<= 0 tid_24) (and (and (=> (= (ControlFlow 0 35) 34) anon73_Then_correct) (=> (= (ControlFlow 0 35) 31) anon74_Then_correct)) (=> (= (ControlFlow 0 35) 25) anon74_Else_correct)))))
(let ((anon72_Else_correct  (=> (< tid_24 0) (and (=> (= (ControlFlow 0 32) 31) anon74_Then_correct) (=> (= (ControlFlow 0 32) 25) anon74_Else_correct)))))
(let ((anon62_Else_correct  (=> (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) i_1) (|Seq#Index_7231| (getVCTOption1 Heap@@21 output) j_1))))
 :qid |stdinbpl.738:20|
 :skolemid |62|
 :pattern ( (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) i_1) (|Seq#Index_7231| (|getVCTOption1#frame| EmptyFrame output) j_1))
)) (=> (and (state Heap@@21 ZeroMask) (state Heap@@21 ZeroMask)) (and (and (=> (= (ControlFlow 0 93) 91) anon71_Else_correct) (=> (= (ControlFlow 0 93) 35) anon72_Then_correct)) (=> (= (ControlFlow 0 93) 32) anon72_Else_correct))))))
(let ((anon67_Then_correct  (=> (= (ControlFlow 0 20) (- 0 19)) (not (= output VCTNone_17858)))))
(let ((anon64_Then_correct  (=> (= (ControlFlow 0 16) (- 0 15)) (not (= output VCTNone_17858)))))
(let ((anon70_Then_correct  (=> (= (ControlFlow 0 6) (- 0 5)) (not (= output VCTNone_17858)))))
(let ((anon69_Then_correct  (=> (= (ControlFlow 0 4) (- 0 3)) (not (= output VCTNone_17858)))))
(let ((anon14_correct true))
(let ((anon70_Else_correct  (and (=> (= (ControlFlow 0 7) (- 0 9)) (>= j_5 0)) (=> (>= j_5 0) (and (=> (= (ControlFlow 0 7) (- 0 8)) (< j_5 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (=> (< j_5 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (=> (= (ControlFlow 0 7) 1) anon14_correct)))))))
(let ((anon69_Else_correct  (and (=> (= (ControlFlow 0 10) (- 0 12)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 10) (- 0 11)) (< i_14 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)))) (=> (< i_14 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (=> (= (ControlFlow 0 10) 6) anon70_Then_correct) (=> (= (ControlFlow 0 10) 7) anon70_Else_correct))))))))
(let ((anon68_Then_correct  (=> (and (>= i_14 0) (and (< i_14 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (not (= i_14 j_5)))))) (and (=> (= (ControlFlow 0 13) 4) anon69_Then_correct) (=> (= (ControlFlow 0 13) 10) anon69_Else_correct)))))
(let ((anon68_Else_correct  (=> (and (not (and (>= i_14 0) (and (< i_14 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (>= j_5 0) (and (< j_5 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (not (= i_14 j_5))))))) (= (ControlFlow 0 2) 1)) anon14_correct)))
(let ((anon66_Then_correct  (=> (>= j_5 0) (and (and (=> (= (ControlFlow 0 21) 20) anon67_Then_correct) (=> (= (ControlFlow 0 21) 13) anon68_Then_correct)) (=> (= (ControlFlow 0 21) 2) anon68_Else_correct)))))
(let ((anon66_Else_correct  (=> (> 0 j_5) (and (=> (= (ControlFlow 0 18) 13) anon68_Then_correct) (=> (= (ControlFlow 0 18) 2) anon68_Else_correct)))))
(let ((anon65_Then_correct  (=> (< i_14 (|Seq#Length_7231| (getVCTOption1 Heap@@21 output))) (and (=> (= (ControlFlow 0 22) 21) anon66_Then_correct) (=> (= (ControlFlow 0 22) 18) anon66_Else_correct)))))
(let ((anon65_Else_correct  (=> (<= (|Seq#Length_7231| (getVCTOption1 Heap@@21 output)) i_14) (and (=> (= (ControlFlow 0 17) 13) anon68_Then_correct) (=> (= (ControlFlow 0 17) 2) anon68_Else_correct)))))
(let ((anon63_Then_correct  (=> (>= i_14 0) (and (and (=> (= (ControlFlow 0 23) 16) anon64_Then_correct) (=> (= (ControlFlow 0 23) 22) anon65_Then_correct)) (=> (= (ControlFlow 0 23) 17) anon65_Else_correct)))))
(let ((anon63_Else_correct  (=> (> 0 i_14) (and (=> (= (ControlFlow 0 14) 13) anon68_Then_correct) (=> (= (ControlFlow 0 14) 2) anon68_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (=> (and (and (select (|PolymorphicMapType_11431_7027_53#PolymorphicMapType_11431| Heap@@21) diz $allocated) (not (= VCTNone_17858 output))) (and (state Heap@@21 ZeroMask) (state Heap@@21 ZeroMask))) (and (and (=> (= (ControlFlow 0 94) 93) anon62_Else_correct) (=> (= (ControlFlow 0 94) 23) anon63_Then_correct)) (=> (= (ControlFlow 0 94) 14) anon63_Else_correct)))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard 0.0) true) (= (ControlFlow 0 95) 94)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid