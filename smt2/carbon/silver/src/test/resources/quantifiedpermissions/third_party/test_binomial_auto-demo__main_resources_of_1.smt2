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
(declare-sort T@Field_47269_53 0)
(declare-sort T@Field_47282_47283 0)
(declare-sort T@Field_53321_53326 0)
(declare-sort T@Seq_53324 0)
(declare-sort T@Field_53435_3405 0)
(declare-sort T@Field_26303_158492 0)
(declare-sort T@Field_26303_158359 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_47230 0)) (((PolymorphicMapType_47230 (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| (Array T@Ref T@Field_53321_53326 Real)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| (Array T@Ref T@Field_53435_3405 Real)) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| (Array T@Ref T@Field_47269_53 Real)) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| (Array T@Ref T@Field_47282_47283 Real)) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| (Array T@Ref T@Field_26303_158359 Real)) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| (Array T@Ref T@Field_26303_158492 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47758 0)) (((PolymorphicMapType_47758 (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (Array T@Ref T@Field_47269_53 Bool)) (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (Array T@Ref T@Field_47282_47283 Bool)) (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (Array T@Ref T@Field_53321_53326 Bool)) (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (Array T@Ref T@Field_53435_3405 Bool)) (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (Array T@Ref T@Field_26303_158359 Bool)) (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (Array T@Ref T@Field_26303_158492 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47209 0)) (((PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| (Array T@Ref T@Field_47269_53 Bool)) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| (Array T@Ref T@Field_47282_47283 T@Ref)) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| (Array T@Ref T@Field_53321_53326 T@Seq_53324)) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| (Array T@Ref T@Field_53435_3405 Int)) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| (Array T@Ref T@Field_26303_158492 T@PolymorphicMapType_47758)) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| (Array T@Ref T@Field_26303_158359 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_47269_53)
(declare-fun demo__ar () T@Field_53321_53326)
(declare-fun demo__tmp () T@Field_53321_53326)
(declare-fun Ref__Integer_value () T@Field_53435_3405)
(declare-fun |Seq#Length_26304| (T@Seq_53324) Int)
(declare-fun |Seq#Drop_26304| (T@Seq_53324 Int) T@Seq_53324)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun succHeap (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209) Bool)
(declare-fun state (T@PolymorphicMapType_47209 T@PolymorphicMapType_47230) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_47230) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_47758)
(declare-fun |demo__bin'| (T@PolymorphicMapType_47209 Int Int) Int)
(declare-fun dummyFunction_3670 (Int) Bool)
(declare-fun |demo__bin#triggerStateless| (Int Int) Int)
(declare-fun |Seq#Index_26304| (T@Seq_53324 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |demo__bin#frame| (T@FrameType Int Int) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_26304| () T@Seq_53324)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_26304| (T@Seq_53324 Int T@Ref) T@Seq_53324)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_26304| (T@Seq_53324 Int) T@Seq_53324)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_53324| (T@Seq_53324 T@Ref) Bool)
(declare-fun |Seq#Skolem_53324| (T@Seq_53324 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209 T@PolymorphicMapType_47230) Bool)
(declare-fun IsPredicateField_26303_158450 (T@Field_26303_158359) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26303 (T@Field_26303_158359) T@Field_26303_158492)
(declare-fun HasDirectPerm_26303_158423 (T@PolymorphicMapType_47230 T@Ref T@Field_26303_158359) Bool)
(declare-fun IsWandField_26303_160401 (T@Field_26303_158359) Bool)
(declare-fun WandMaskField_26303 (T@Field_26303_158359) T@Field_26303_158492)
(declare-fun |Seq#Singleton_26304| (T@Ref) T@Seq_53324)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun |Seq#Append_53324| (T@Seq_53324 T@Seq_53324) T@Seq_53324)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun dummyHeap () T@PolymorphicMapType_47209)
(declare-fun ZeroMask () T@PolymorphicMapType_47230)
(declare-fun InsidePredicate_47269_47269 (T@Field_26303_158359 T@FrameType T@Field_26303_158359 T@FrameType) Bool)
(declare-fun IsPredicateField_26303_53348 (T@Field_53321_53326) Bool)
(declare-fun IsWandField_26303_53374 (T@Field_53321_53326) Bool)
(declare-fun IsPredicateField_26311_3405 (T@Field_53435_3405) Bool)
(declare-fun IsWandField_26311_3405 (T@Field_53435_3405) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26303_164535 (T@Field_26303_158492) Bool)
(declare-fun IsWandField_26303_164551 (T@Field_26303_158492) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26303_47283 (T@Field_47282_47283) Bool)
(declare-fun IsWandField_26303_47283 (T@Field_47282_47283) Bool)
(declare-fun IsPredicateField_26303_53 (T@Field_47269_53) Bool)
(declare-fun IsWandField_26303_53 (T@Field_47269_53) Bool)
(declare-fun HasDirectPerm_26303_165072 (T@PolymorphicMapType_47230 T@Ref T@Field_26303_158492) Bool)
(declare-fun HasDirectPerm_26303_47283 (T@PolymorphicMapType_47230 T@Ref T@Field_47282_47283) Bool)
(declare-fun HasDirectPerm_26303_53 (T@PolymorphicMapType_47230 T@Ref T@Field_47269_53) Bool)
(declare-fun HasDirectPerm_26311_3405 (T@PolymorphicMapType_47230 T@Ref T@Field_53435_3405) Bool)
(declare-fun HasDirectPerm_26303_55407 (T@PolymorphicMapType_47230 T@Ref T@Field_53321_53326) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun demo__bin (T@PolymorphicMapType_47209 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_47230 T@PolymorphicMapType_47230 T@PolymorphicMapType_47230) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun |Seq#Equal_26304| (T@Seq_53324 T@Seq_53324) Bool)
(declare-fun |Seq#ContainsTrigger_26304| (T@Seq_53324 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_53324| (T@Seq_53324 T@Seq_53324) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(assert (distinct demo__ar demo__tmp)
)
(assert (forall ((s T@Seq_53324) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_26304| s)) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) (- (|Seq#Length_26304| s) n))) (=> (< (|Seq#Length_26304| s) n) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) (|Seq#Length_26304| s))))
 :qid |stdinbpl.336:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_26304| (|Seq#Drop_26304| s n)))
 :pattern ( (|Seq#Length_26304| s) (|Seq#Drop_26304| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.336:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_47209) (Heap1 T@PolymorphicMapType_47209) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_47209) (Mask T@PolymorphicMapType_47230) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_47209) (Heap1@@0 T@PolymorphicMapType_47209) (Heap2 T@PolymorphicMapType_47209) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26303_158492) ) (!  (not (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26303_158359) ) (!  (not (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_53435_3405) ) (!  (not (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_53321_53326) ) (!  (not (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_47282_47283) ) (!  (not (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_47269_53) ) (!  (not (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_47209) (N Int) (k Int) ) (! (dummyFunction_3670 (|demo__bin#triggerStateless| N k))
 :qid |stdinbpl.628:15|
 :skolemid |59|
 :pattern ( (|demo__bin'| Heap@@0 N k))
)))
(assert (forall ((s@@1 T@Seq_53324) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_26304| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_26304| (|Seq#Drop_26304| s@@1 n@@1) j) (|Seq#Index_26304| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.357:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_26304| (|Seq#Drop_26304| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.357:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47209) (Mask@@0 T@PolymorphicMapType_47230) (N@@0 Int) (k@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|demo__bin'| Heap@@1 N@@0 k@@0) (|demo__bin#frame| EmptyFrame N@@0 k@@0)))
 :qid |stdinbpl.641:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|demo__bin'| Heap@@1 N@@0 k@@0))
)))
(assert (= (|Seq#Length_26304| |Seq#Empty_26304|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_53324) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_26304| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3) (|Seq#Index_26304| s@@3 n@@3)))))
 :qid |stdinbpl.312:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_26304| s@@3 n@@3) (|Seq#Update_26304| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.312:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_53324) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_26304| s@@5)) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_26304| s@@5) n@@5) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) (|Seq#Length_26304| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) 0)))
 :qid |stdinbpl.323:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)))
 :pattern ( (|Seq#Take_26304| s@@5 n@@5) (|Seq#Length_26304| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.323:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.597:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_53324) (x T@Ref) ) (!  (=> (|Seq#Contains_53324| s@@7 x) (and (and (<= 0 (|Seq#Skolem_53324| s@@7 x)) (< (|Seq#Skolem_53324| s@@7 x) (|Seq#Length_26304| s@@7))) (= (|Seq#Index_26304| s@@7 (|Seq#Skolem_53324| s@@7 x)) x)))
 :qid |stdinbpl.455:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_53324| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.455:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_53324) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_26304| s@@9 n@@7) s@@9))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_26304| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.292:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.290:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_47209) (ExhaleHeap T@PolymorphicMapType_47209) (Mask@@1 T@PolymorphicMapType_47230) (pm_f_17 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_26303_158423 Mask@@1 null pm_f_17) (IsPredicateField_26303_158450 pm_f_17)) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@2) null (PredicateMaskField_26303 pm_f_17)) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap) null (PredicateMaskField_26303 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_26303_158450 pm_f_17) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap) null (PredicateMaskField_26303 pm_f_17)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_47209) (ExhaleHeap@@0 T@PolymorphicMapType_47209) (Mask@@2 T@PolymorphicMapType_47230) (pm_f_17@@0 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_26303_158423 Mask@@2 null pm_f_17@@0) (IsWandField_26303_160401 pm_f_17@@0)) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@3) null (WandMaskField_26303 pm_f_17@@0)) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@0) null (WandMaskField_26303 pm_f_17@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_26303_160401 pm_f_17@@0) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@0) null (WandMaskField_26303 pm_f_17@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_53324| (|Seq#Singleton_26304| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.580:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_53324| (|Seq#Singleton_26304| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.580:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_53324) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_26304| s@@11))) (= (|Seq#Index_26304| (|Seq#Take_26304| s@@11 n@@9) j@@3) (|Seq#Index_26304| s@@11 j@@3)))
 :qid |stdinbpl.331:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_26304| (|Seq#Take_26304| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_26304| s@@11 j@@3) (|Seq#Take_26304| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.331:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_53324) (t T@Seq_53324) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_26304| s@@13))) (< n@@11 (|Seq#Length_26304| (|Seq#Append_53324| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_26304| s@@13)) (|Seq#Length_26304| s@@13)) n@@11) (= (|Seq#Take_26304| (|Seq#Append_53324| s@@13 t) n@@11) (|Seq#Append_53324| s@@13 (|Seq#Take_26304| t (|Seq#Sub| n@@11 (|Seq#Length_26304| s@@13)))))))
 :qid |stdinbpl.416:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_26304| (|Seq#Append_53324| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.416:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_47209) (ExhaleHeap@@1 T@PolymorphicMapType_47209) (Mask@@3 T@PolymorphicMapType_47230) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@4) o_37 $allocated) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_26303_158359) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_47269_47269 p v_1 p w))
 :qid |stdinbpl.234:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_47269_47269 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_53324) (s1 T@Seq_53324) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_26304|)) (not (= s1 |Seq#Empty_26304|))) (<= (|Seq#Length_26304| s0) n@@13)) (< n@@13 (|Seq#Length_26304| (|Seq#Append_53324| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_26304| s0)) (|Seq#Length_26304| s0)) n@@13) (= (|Seq#Index_26304| (|Seq#Append_53324| s0 s1) n@@13) (|Seq#Index_26304| s1 (|Seq#Sub| n@@13 (|Seq#Length_26304| s0))))))
 :qid |stdinbpl.303:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_26304| (|Seq#Append_53324| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.303:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_26303_53348 demo__ar)))
(assert  (not (IsWandField_26303_53374 demo__ar)))
(assert  (not (IsPredicateField_26303_53348 demo__tmp)))
(assert  (not (IsWandField_26303_53374 demo__tmp)))
(assert  (not (IsPredicateField_26311_3405 Ref__Integer_value)))
(assert  (not (IsWandField_26311_3405 Ref__Integer_value)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47209) (ExhaleHeap@@2 T@PolymorphicMapType_47209) (Mask@@4 T@PolymorphicMapType_47230) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_47230) (o_2@@5 T@Ref) (f_4@@5 T@Field_26303_158492) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_26303_164535 f_4@@5))) (not (IsWandField_26303_164551 f_4@@5))) (<= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_47230) (o_2@@6 T@Ref) (f_4@@6 T@Field_26303_158359) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_26303_158450 f_4@@6))) (not (IsWandField_26303_160401 f_4@@6))) (<= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_47230) (o_2@@7 T@Ref) (f_4@@7 T@Field_47282_47283) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_26303_47283 f_4@@7))) (not (IsWandField_26303_47283 f_4@@7))) (<= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_47230) (o_2@@8 T@Ref) (f_4@@8 T@Field_47269_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_26303_53 f_4@@8))) (not (IsWandField_26303_53 f_4@@8))) (<= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_47230) (o_2@@9 T@Ref) (f_4@@9 T@Field_53435_3405) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_26311_3405 f_4@@9))) (not (IsWandField_26311_3405 f_4@@9))) (<= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_47230) (o_2@@10 T@Ref) (f_4@@10 T@Field_53321_53326) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_26303_53348 f_4@@10))) (not (IsWandField_26303_53374 f_4@@10))) (<= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_47230) (o_2@@11 T@Ref) (f_4@@11 T@Field_26303_158492) ) (! (= (HasDirectPerm_26303_165072 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_165072 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_47230) (o_2@@12 T@Ref) (f_4@@12 T@Field_26303_158359) ) (! (= (HasDirectPerm_26303_158423 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_158423 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_47230) (o_2@@13 T@Ref) (f_4@@13 T@Field_47282_47283) ) (! (= (HasDirectPerm_26303_47283 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_47283 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_47230) (o_2@@14 T@Ref) (f_4@@14 T@Field_47269_53) ) (! (= (HasDirectPerm_26303_53 Mask@@14 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@14) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_53 Mask@@14 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_47230) (o_2@@15 T@Ref) (f_4@@15 T@Field_53435_3405) ) (! (= (HasDirectPerm_26311_3405 Mask@@15 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@15) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26311_3405 Mask@@15 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_47230) (o_2@@16 T@Ref) (f_4@@16 T@Field_53321_53326) ) (! (= (HasDirectPerm_26303_55407 Mask@@16 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@16) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_55407 Mask@@16 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.222:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.595:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47209) (ExhaleHeap@@3 T@PolymorphicMapType_47209) (Mask@@17 T@PolymorphicMapType_47230) (o_37@@0 T@Ref) (f_18 T@Field_26303_158492) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (=> (HasDirectPerm_26303_165072 Mask@@17 o_37@@0 f_18) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@6) o_37@@0 f_18) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@3) o_37@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@3) o_37@@0 f_18))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47209) (ExhaleHeap@@4 T@PolymorphicMapType_47209) (Mask@@18 T@PolymorphicMapType_47230) (o_37@@1 T@Ref) (f_18@@0 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (=> (HasDirectPerm_26303_158423 Mask@@18 o_37@@1 f_18@@0) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@7) o_37@@1 f_18@@0) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@4) o_37@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@4) o_37@@1 f_18@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47209) (ExhaleHeap@@5 T@PolymorphicMapType_47209) (Mask@@19 T@PolymorphicMapType_47230) (o_37@@2 T@Ref) (f_18@@1 T@Field_47282_47283) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_26303_47283 Mask@@19 o_37@@2 f_18@@1) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@8) o_37@@2 f_18@@1) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@5) o_37@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@5) o_37@@2 f_18@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47209) (ExhaleHeap@@6 T@PolymorphicMapType_47209) (Mask@@20 T@PolymorphicMapType_47230) (o_37@@3 T@Ref) (f_18@@2 T@Field_47269_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_26303_53 Mask@@20 o_37@@3 f_18@@2) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@9) o_37@@3 f_18@@2) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@6) o_37@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@6) o_37@@3 f_18@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_47209) (ExhaleHeap@@7 T@PolymorphicMapType_47209) (Mask@@21 T@PolymorphicMapType_47230) (o_37@@4 T@Ref) (f_18@@3 T@Field_53435_3405) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_26311_3405 Mask@@21 o_37@@4 f_18@@3) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@10) o_37@@4 f_18@@3) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@7) o_37@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@7) o_37@@4 f_18@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47209) (ExhaleHeap@@8 T@PolymorphicMapType_47209) (Mask@@22 T@PolymorphicMapType_47230) (o_37@@5 T@Ref) (f_18@@4 T@Field_53321_53326) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_26303_55407 Mask@@22 o_37@@5 f_18@@4) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@11) o_37@@5 f_18@@4) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@8) o_37@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@8) o_37@@5 f_18@@4))
)))
(assert (forall ((s0@@1 T@Seq_53324) (s1@@1 T@Seq_53324) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_26304|)) (not (= s1@@1 |Seq#Empty_26304|))) (= (|Seq#Length_26304| (|Seq#Append_53324| s0@@1 s1@@1)) (+ (|Seq#Length_26304| s0@@1) (|Seq#Length_26304| s1@@1))))
 :qid |stdinbpl.272:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_26304| (|Seq#Append_53324| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.272:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26303_158492) ) (! (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26303_158359) ) (! (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_47282_47283) ) (! (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_47269_53) ) (! (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_53435_3405) ) (! (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_53321_53326) ) (! (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_53324) (t@@1 T@Seq_53324) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_26304| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_26304| s@@15)) (|Seq#Length_26304| s@@15)) n@@15) (= (|Seq#Drop_26304| (|Seq#Append_53324| s@@15 t@@1) n@@15) (|Seq#Drop_26304| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_26304| s@@15))))))
 :qid |stdinbpl.429:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_26304| (|Seq#Append_53324| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.429:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_47209) (N@@1 Int) (k@@1 Int) ) (!  (and (= (demo__bin Heap@@12 N@@1 k@@1) (|demo__bin'| Heap@@12 N@@1 k@@1)) (dummyFunction_3670 (|demo__bin#triggerStateless| N@@1 k@@1)))
 :qid |stdinbpl.624:15|
 :skolemid |58|
 :pattern ( (demo__bin Heap@@12 N@@1 k@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_47230) (SummandMask1 T@PolymorphicMapType_47230) (SummandMask2 T@PolymorphicMapType_47230) (o_2@@23 T@Ref) (f_4@@23 T@Field_26303_158492) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_47230) (SummandMask1@@0 T@PolymorphicMapType_47230) (SummandMask2@@0 T@PolymorphicMapType_47230) (o_2@@24 T@Ref) (f_4@@24 T@Field_26303_158359) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_47230) (SummandMask1@@1 T@PolymorphicMapType_47230) (SummandMask2@@1 T@PolymorphicMapType_47230) (o_2@@25 T@Ref) (f_4@@25 T@Field_47282_47283) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_47230) (SummandMask1@@2 T@PolymorphicMapType_47230) (SummandMask2@@2 T@PolymorphicMapType_47230) (o_2@@26 T@Ref) (f_4@@26 T@Field_47269_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_47230) (SummandMask1@@3 T@PolymorphicMapType_47230) (SummandMask2@@3 T@PolymorphicMapType_47230) (o_2@@27 T@Ref) (f_4@@27 T@Field_53435_3405) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_47230) (SummandMask1@@4 T@PolymorphicMapType_47230) (SummandMask2@@4 T@PolymorphicMapType_47230) (o_2@@28 T@Ref) (f_4@@28 T@Field_53321_53326) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.594:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3251) (b T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a b) (= a b))
 :qid |stdinbpl.567:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a b))
)))
(assert (forall ((a@@0 T@Seq_53324) (b@@0 T@Seq_53324) ) (!  (=> (|Seq#Equal_26304| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.567:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_26304| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_53324) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_26304| s@@17))) (|Seq#ContainsTrigger_26304| s@@17 (|Seq#Index_26304| s@@17 i@@3)))
 :qid |stdinbpl.460:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_26304| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@4)))
 :qid |stdinbpl.460:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_53324) (s1@@3 T@Seq_53324) ) (!  (and (=> (= s0@@3 |Seq#Empty_26304|) (= (|Seq#Append_53324| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_26304|) (= (|Seq#Append_53324| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.278:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_53324| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.278:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_26304| (|Seq#Singleton_26304| t@@3) 0) t@@3)
 :qid |stdinbpl.282:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_26304| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.282:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_53324) ) (! (<= 0 (|Seq#Length_26304| s@@19))
 :qid |stdinbpl.261:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_26304| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.261:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47209) (ExhaleHeap@@9 T@PolymorphicMapType_47209) (Mask@@23 T@PolymorphicMapType_47230) (pm_f_17@@1 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (=> (and (HasDirectPerm_26303_158423 Mask@@23 null pm_f_17@@1) (IsPredicateField_26303_158450 pm_f_17@@1)) (and (and (and (and (and (forall ((o2_17 T@Ref) (f_18@@5 T@Field_47269_53) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17 f_18@@5) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@13) o2_17 f_18@@5) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17 f_18@@5))
)) (forall ((o2_17@@0 T@Ref) (f_18@@6 T@Field_47282_47283) ) (!  (=> (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@0 f_18@@6) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@13) o2_17@@0 f_18@@6) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@0 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@0 f_18@@6))
))) (forall ((o2_17@@1 T@Ref) (f_18@@7 T@Field_53321_53326) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@1 f_18@@7) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@13) o2_17@@1 f_18@@7) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@1 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@1 f_18@@7))
))) (forall ((o2_17@@2 T@Ref) (f_18@@8 T@Field_53435_3405) ) (!  (=> (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@2 f_18@@8) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@13) o2_17@@2 f_18@@8) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@2 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@2 f_18@@8))
))) (forall ((o2_17@@3 T@Ref) (f_18@@9 T@Field_26303_158359) ) (!  (=> (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@3 f_18@@9) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@13) o2_17@@3 f_18@@9) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@3 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@3 f_18@@9))
))) (forall ((o2_17@@4 T@Ref) (f_18@@10 T@Field_26303_158492) ) (!  (=> (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@4 f_18@@10) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) o2_17@@4 f_18@@10) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@4 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@4 f_18@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (IsPredicateField_26303_158450 pm_f_17@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47209) (ExhaleHeap@@10 T@PolymorphicMapType_47209) (Mask@@24 T@PolymorphicMapType_47230) (pm_f_17@@2 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (=> (and (HasDirectPerm_26303_158423 Mask@@24 null pm_f_17@@2) (IsWandField_26303_160401 pm_f_17@@2)) (and (and (and (and (and (forall ((o2_17@@5 T@Ref) (f_18@@11 T@Field_47269_53) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@5 f_18@@11) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@14) o2_17@@5 f_18@@11) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@5 f_18@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@5 f_18@@11))
)) (forall ((o2_17@@6 T@Ref) (f_18@@12 T@Field_47282_47283) ) (!  (=> (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@6 f_18@@12) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@14) o2_17@@6 f_18@@12) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@6 f_18@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@6 f_18@@12))
))) (forall ((o2_17@@7 T@Ref) (f_18@@13 T@Field_53321_53326) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@7 f_18@@13) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@14) o2_17@@7 f_18@@13) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@7 f_18@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@7 f_18@@13))
))) (forall ((o2_17@@8 T@Ref) (f_18@@14 T@Field_53435_3405) ) (!  (=> (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@8 f_18@@14) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@14) o2_17@@8 f_18@@14) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@8 f_18@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@8 f_18@@14))
))) (forall ((o2_17@@9 T@Ref) (f_18@@15 T@Field_26303_158359) ) (!  (=> (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@9 f_18@@15) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@14) o2_17@@9 f_18@@15) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@9 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@9 f_18@@15))
))) (forall ((o2_17@@10 T@Ref) (f_18@@16 T@Field_26303_158492) ) (!  (=> (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@10 f_18@@16) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) o2_17@@10 f_18@@16) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@10 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@10 f_18@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (IsWandField_26303_160401 pm_f_17@@2))
)))
(assert (forall ((s0@@5 T@Seq_3251) (s1@@5 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@5 s1@@5) (and (= (|Seq#Length_3251| s0@@5) (|Seq#Length_3251| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3251| s0@@5))) (= (|Seq#Index_3251| s0@@5 j@@6) (|Seq#Index_3251| s1@@5 j@@6)))
 :qid |stdinbpl.557:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3251| s1@@5 j@@6))
))))
 :qid |stdinbpl.554:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_53324) (s1@@6 T@Seq_53324) ) (!  (=> (|Seq#Equal_26304| s0@@6 s1@@6) (and (= (|Seq#Length_26304| s0@@6) (|Seq#Length_26304| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_26304| s0@@6))) (= (|Seq#Index_26304| s0@@6 j@@7) (|Seq#Index_26304| s1@@6 j@@7)))
 :qid |stdinbpl.557:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_26304| s0@@6 j@@7))
 :pattern ( (|Seq#Index_26304| s1@@6 j@@7))
))))
 :qid |stdinbpl.554:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_26304| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_26304| (|Seq#Singleton_26304| t@@5)) 1)
 :qid |stdinbpl.269:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_26304| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.269:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((s@@21 T@Seq_53324) (t@@7 T@Seq_53324) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_26304| s@@21))) (= (|Seq#Take_26304| (|Seq#Append_53324| s@@21 t@@7) n@@17) (|Seq#Take_26304| s@@21 n@@17)))
 :qid |stdinbpl.411:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_26304| (|Seq#Append_53324| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.411:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_53324) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_26304| s@@23))) (= (|Seq#Length_26304| (|Seq#Update_26304| s@@23 i@@5 v@@2)) (|Seq#Length_26304| s@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_26304| (|Seq#Update_26304| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_26304| s@@23) (|Seq#Update_26304| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@6 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47209) (Mask@@25 T@PolymorphicMapType_47230) (N@@2 Int) (k@@2 Int) ) (!  (=> (and (state Heap@@15 Mask@@25) (< AssumeFunctionsAbove 0)) (=> (and (and (>= N@@2 0) (<= 0 k@@2)) (<= k@@2 N@@2)) (= (demo__bin Heap@@15 N@@2 k@@2) (ite  (or (= k@@2 0) (or (= k@@2 N@@2) (<= N@@2 0))) 1 (+ (|demo__bin'| Heap@@15 (- N@@2 1) (- k@@2 1)) (|demo__bin'| Heap@@15 (- N@@2 1) k@@2))))))
 :qid |stdinbpl.634:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@25) (demo__bin Heap@@15 N@@2 k@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47209) (o_36 T@Ref) (f_29 T@Field_26303_158359) (v@@4 T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@16) (store (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@16) o_36 f_29 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@16) (store (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@16) o_36 f_29 v@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47209) (o_36@@0 T@Ref) (f_29@@0 T@Field_26303_158492) (v@@5 T@PolymorphicMapType_47758) ) (! (succHeap Heap@@17 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@17) (store (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@17) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@17) (store (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@17) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_47209) (o_36@@1 T@Ref) (f_29@@1 T@Field_53435_3405) (v@@6 Int) ) (! (succHeap Heap@@18 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@18) (store (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@18) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@18) (store (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@18) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_47209) (o_36@@2 T@Ref) (f_29@@2 T@Field_53321_53326) (v@@7 T@Seq_53324) ) (! (succHeap Heap@@19 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@19) (store (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@19) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@19) (store (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@19) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_47209) (o_36@@3 T@Ref) (f_29@@3 T@Field_47282_47283) (v@@8 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@20) (store (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@20) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@20) (store (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@20) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_47209) (o_36@@4 T@Ref) (f_29@@4 T@Field_47269_53) (v@@9 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_47209 (store (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@21) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (store (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@21) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_53324) (t@@9 T@Seq_53324) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_26304| s@@25))) (= (|Seq#Drop_26304| (|Seq#Append_53324| s@@25 t@@9) n@@19) (|Seq#Append_53324| (|Seq#Drop_26304| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.425:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_26304| (|Seq#Append_53324| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.425:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_53324) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_26304| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_26304| (|Seq#Drop_26304| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_26304| s@@27 i@@7))))
 :qid |stdinbpl.361:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_26304| s@@27 n@@21) (|Seq#Index_26304| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3251| s@@28 i@@8))))
 :qid |stdinbpl.361:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_53324) (s1@@7 T@Seq_53324) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_26304|)) (not (= s1@@7 |Seq#Empty_26304|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_26304| s0@@7))) (= (|Seq#Index_26304| (|Seq#Append_53324| s0@@7 s1@@7) n@@23) (|Seq#Index_26304| s0@@7 n@@23)))
 :qid |stdinbpl.301:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_26304| (|Seq#Append_53324| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_26304| s0@@7 n@@23) (|Seq#Append_53324| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.301:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_53324) (s1@@9 T@Seq_53324) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_26304|)) (not (= s1@@9 |Seq#Empty_26304|))) (<= 0 m)) (< m (|Seq#Length_26304| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_26304| s0@@9)) (|Seq#Length_26304| s0@@9)) m) (= (|Seq#Index_26304| (|Seq#Append_53324| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_26304| s0@@9))) (|Seq#Index_26304| s1@@9 m))))
 :qid |stdinbpl.306:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_26304| s1@@9 m) (|Seq#Append_53324| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_36@@5 T@Ref) (f_50 T@Field_47282_47283) (Heap@@22 T@PolymorphicMapType_47209) ) (!  (=> (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@22) o_36@@5 $allocated) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@22) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@22) o_36@@5 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@22) o_36@@5 f_50))
)))
(assert (forall ((s@@29 T@Seq_53324) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_26304| s@@29))) (= (|Seq#Index_26304| s@@29 i@@9) x@@3)) (|Seq#Contains_53324| s@@29 x@@3))
 :qid |stdinbpl.458:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_53324| s@@29 x@@3) (|Seq#Index_26304| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@10) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.458:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_53324) (s1@@11 T@Seq_53324) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_26304| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26304| s0@@11 s1@@11))) (not (= (|Seq#Length_26304| s0@@11) (|Seq#Length_26304| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26304| s0@@11 s1@@11))) (= (|Seq#Length_26304| s0@@11) (|Seq#Length_26304| s1@@11))) (= (|Seq#SkolemDiff_53324| s0@@11 s1@@11) (|Seq#SkolemDiff_53324| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_53324| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_53324| s0@@11 s1@@11) (|Seq#Length_26304| s0@@11))) (not (= (|Seq#Index_26304| s0@@11 (|Seq#SkolemDiff_53324| s0@@11 s1@@11)) (|Seq#Index_26304| s1@@11 (|Seq#SkolemDiff_53324| s0@@11 s1@@11))))))
 :qid |stdinbpl.562:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_26304| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.562:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_26303_158359) (v_1@@0 T@FrameType) (q T@Field_26303_158359) (w@@0 T@FrameType) (r T@Field_26303_158359) (u T@FrameType) ) (!  (=> (and (InsidePredicate_47269_47269 p@@1 v_1@@0 q w@@0) (InsidePredicate_47269_47269 q w@@0 r u)) (InsidePredicate_47269_47269 p@@1 v_1@@0 r u))
 :qid |stdinbpl.229:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47269_47269 p@@1 v_1@@0 q w@@0) (InsidePredicate_47269_47269 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_53324) ) (!  (=> (= (|Seq#Length_26304| s@@31) 0) (= s@@31 |Seq#Empty_26304|))
 :qid |stdinbpl.265:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_26304| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.265:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_53324) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_26304| s@@33 n@@25) |Seq#Empty_26304|))
 :qid |stdinbpl.441:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_26304| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.441:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun tid_12 () Int)
(declare-fun gsize () Int)
(declare-fun QPMask@4 () T@PolymorphicMapType_47230)
(declare-fun diz () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_47209)
(declare-fun qpRange3 (T@Ref) Bool)
(declare-fun invRecv3 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_47230)
(declare-fun tid_4 () Int)
(declare-fun tcount () Int)
(declare-fun gid () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_47230)
(declare-fun wildcard@3 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_47230)
(declare-fun Heap@@23 () T@PolymorphicMapType_47209)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_47230)
(declare-fun wildcard@5 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_47230)
(declare-fun neverTriggered5 (Int) Bool)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun QPMask@2 () T@PolymorphicMapType_47230)
(declare-fun neverTriggered6 (Int) Bool)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_47230)
(declare-fun tid_8 () Int)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_47230)
(declare-fun tid_3 () Int)
(declare-fun i_3 () Int)
(declare-fun j_15 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(declare-fun current_thread_id () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_47230)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id demo__main_resources_of_1)
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
 (=> (= (ControlFlow 0 0) 93) (let ((anon32_correct true))
(let ((anon53_Else_correct  (=> (and (not (and (<= 0 tid_12) (< tid_12 (- gsize 1)))) (= (ControlFlow 0 74) 69)) anon32_correct)))
(let ((anon53_Then_correct  (=> (and (<= 0 tid_12) (< tid_12 (- gsize 1))) (and (=> (= (ControlFlow 0 70) (- 0 73)) (HasDirectPerm_26303_55407 QPMask@4 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 QPMask@4 diz demo__tmp) (and (=> (= (ControlFlow 0 70) (- 0 72)) (>= tid_12 0)) (=> (>= tid_12 0) (and (=> (= (ControlFlow 0 70) (- 0 71)) (< tid_12 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp)))) (=> (< tid_12 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp))) (=> (= (ControlFlow 0 70) 69) anon32_correct))))))))))
(let ((anon52_Else_correct  (=> (= (ControlFlow 0 68) (- 0 67)) (forall ((tid_7_2 Int) (tid_7_3 Int) ) (!  (=> (and (and (and (and (not (= tid_7_2 tid_7_3)) (and (<= 0 tid_7_2) (< tid_7_2 (- gsize 1)))) (and (<= 0 tid_7_3) (< tid_7_3 (- gsize 1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp) tid_7_2) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp) tid_7_3))))
 :qid |stdinbpl.3019:15|
 :skolemid |82|
)))))
(let ((anon50_Else_correct  (and (=> (= (ControlFlow 0 75) (- 0 76)) (forall ((tid_5 Int) (tid_5_1 Int) ) (!  (=> (and (and (and (and (not (= tid_5 tid_5_1)) (and (<= 0 tid_5) (< tid_5 gsize))) (and (<= 0 tid_5_1) (< tid_5_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5_1))))
 :qid |stdinbpl.2971:15|
 :skolemid |76|
))) (=> (forall ((tid_5@@0 Int) (tid_5_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_5@@0 tid_5_1@@0)) (and (<= 0 tid_5@@0) (< tid_5@@0 gsize))) (and (<= 0 tid_5_1@@0) (< tid_5_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@0) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5_1@@0))))
 :qid |stdinbpl.2971:15|
 :skolemid |76|
)) (=> (and (and (forall ((tid_5@@1 Int) ) (!  (=> (and (and (<= 0 tid_5@@1) (< tid_5@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange3 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@1)) (= (invRecv3 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@1)) tid_5@@1)))
 :qid |stdinbpl.2977:22|
 :skolemid |77|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@1))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv3 o_9)) (< (invRecv3 o_9) gsize)) (< NoPerm FullPerm)) (qpRange3 o_9)) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) (invRecv3 o_9)) o_9))
 :qid |stdinbpl.2981:22|
 :skolemid |78|
 :pattern ( (invRecv3 o_9))
))) (and (forall ((tid_5@@2 Int) ) (!  (=> (and (<= 0 tid_5@@2) (< tid_5@@2 gsize)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@2) null)))
 :qid |stdinbpl.2987:22|
 :skolemid |79|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@2))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) tid_5@@2))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) gsize)) (< NoPerm FullPerm)) (qpRange3 o_9@@0)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) (invRecv3 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@4) o_9@@0 Ref__Integer_value) (+ (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| PostMask@1) o_9@@0 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv3 o_9@@0)) (< (invRecv3 o_9@@0) gsize)) (< NoPerm FullPerm)) (qpRange3 o_9@@0))) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@4) o_9@@0 Ref__Integer_value) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| PostMask@1) o_9@@0 Ref__Integer_value))))
 :qid |stdinbpl.2993:22|
 :skolemid |80|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@4) o_9@@0 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_47269_53) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| PostMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@4) o_9@@1 f_5)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| PostMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@4) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_47282_47283) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| PostMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@4) o_9@@2 f_5@@0)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| PostMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@4) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_53321_53326) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| PostMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@4) o_9@@3 f_5@@1)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| PostMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@4) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_53435_3405) ) (!  (=> (not (= f_5@@2 Ref__Integer_value)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| PostMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@4) o_9@@4 f_5@@2)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| PostMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@4) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_26303_158359) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| PostMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@4) o_9@@5 f_5@@3)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| PostMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@4) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_26303_158492) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| PostMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@4) o_9@@6 f_5@@4)))
 :qid |stdinbpl.2997:29|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| PostMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@4) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@4) (state PostHeap@0 QPMask@4))) (and (and (=> (= (ControlFlow 0 75) 68) anon52_Else_correct) (=> (= (ControlFlow 0 75) 70) anon53_Then_correct)) (=> (= (ControlFlow 0 75) 74) anon53_Else_correct))))))))
(let ((anon28_correct true))
(let ((anon51_Else_correct  (=> (and (not (and (<= 0 tid_4) (< tid_4 gsize))) (= (ControlFlow 0 66) 61)) anon28_correct)))
(let ((anon51_Then_correct  (=> (and (<= 0 tid_4) (< tid_4 gsize)) (and (=> (= (ControlFlow 0 62) (- 0 65)) (HasDirectPerm_26303_55407 PostMask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 PostMask@1 diz demo__ar) (and (=> (= (ControlFlow 0 62) (- 0 64)) (>= tid_4 0)) (=> (>= tid_4 0) (and (=> (= (ControlFlow 0 62) (- 0 63)) (< tid_4 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar)))) (=> (< tid_4 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar))) (=> (= (ControlFlow 0 62) 61) anon28_correct))))))))))
(let ((anon49_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= tcount gsize)) (=> (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= diz null)) (= PostMask@0 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) diz demo__ar (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) diz demo__ar) wildcard@2)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)))) (and (=> (= (ControlFlow 0 77) (- 0 83)) (HasDirectPerm_26303_55407 PostMask@0 diz demo__ar)) (=> (HasDirectPerm_26303_55407 PostMask@0 diz demo__ar) (=> (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= diz null)) (= PostMask@1 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| PostMask@0) diz demo__tmp (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| PostMask@0) diz demo__tmp) wildcard@3)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| PostMask@0) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| PostMask@0) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| PostMask@0) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| PostMask@0) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 77) (- 0 82)) (HasDirectPerm_26303_55407 PostMask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 PostMask@1 diz demo__tmp) (=> (and (and (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp)) gsize) (state PostHeap@0 PostMask@1)) (and (> gsize 1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 77) (- 0 81)) (HasDirectPerm_26303_55407 PostMask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 PostMask@1 diz demo__ar) (and (=> (= (ControlFlow 0 77) (- 0 80)) (HasDirectPerm_26303_55407 QPMask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 QPMask@1 diz demo__ar) (=> (and (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__ar) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 77) (- 0 79)) (HasDirectPerm_26303_55407 PostMask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 PostMask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 77) (- 0 78)) (HasDirectPerm_26303_55407 QPMask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 QPMask@1 diz demo__tmp) (=> (and (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| PostHeap@0) diz demo__tmp) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 77) 75) anon50_Else_correct) (=> (= (ControlFlow 0 77) 62) anon51_Then_correct)) (=> (= (ControlFlow 0 77) 66) anon51_Else_correct))))))))))))))))))))))))
(let ((anon49_Else_correct  (and (=> (= (ControlFlow 0 48) (- 0 60)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 48) (- 0 59)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 48) (- 0 58)) (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) diz demo__ar) NoPerm)) (=> (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) diz demo__ar) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) diz demo__ar)) (= Mask@2 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) diz demo__ar (- (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) diz demo__ar) wildcard@4)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@1) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@1) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@1) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@1)))) (and (=> (= (ControlFlow 0 48) (- 0 57)) (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) gsize)) (=> (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) gsize) (and (=> (= (ControlFlow 0 48) (- 0 56)) (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@2) diz demo__tmp) NoPerm)) (=> (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@2) diz demo__tmp) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@2) diz demo__tmp)) (= Mask@3 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@2) diz demo__tmp (- (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@2) diz demo__tmp) wildcard@5)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@2) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@2) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@2) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@2) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@2)))) (and (=> (= (ControlFlow 0 48) (- 0 55)) (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) gsize)) (=> (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) gsize) (and (=> (= (ControlFlow 0 48) (- 0 54)) (> gsize 1)) (=> (> gsize 1) (and (=> (= (ControlFlow 0 48) (- 0 53)) (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (=> (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) (and (=> (= (ControlFlow 0 48) (- 0 52)) (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (=> (|Seq#Equal_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) (and (=> (= (ControlFlow 0 48) (- 0 51)) (forall ((tid_8_1 Int) (tid_8_2 Int) ) (!  (=> (and (and (and (and (not (= tid_8_1 tid_8_2)) (and (<= 0 tid_8_1) (< tid_8_1 gsize))) (and (<= 0 tid_8_2) (< tid_8_2 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_2))))
 :qid |stdinbpl.3090:17|
 :skolemid |88|
 :pattern ( (neverTriggered5 tid_8_1) (neverTriggered5 tid_8_2))
))) (=> (forall ((tid_8_1@@0 Int) (tid_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_8_1@@0 tid_8_2@@0)) (and (<= 0 tid_8_1@@0) (< tid_8_1@@0 gsize))) (and (<= 0 tid_8_2@@0) (< tid_8_2@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@0) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_2@@0))))
 :qid |stdinbpl.3090:17|
 :skolemid |88|
 :pattern ( (neverTriggered5 tid_8_1@@0) (neverTriggered5 tid_8_2@@0))
)) (and (=> (= (ControlFlow 0 48) (- 0 50)) (forall ((tid_8_1@@1 Int) ) (!  (=> (and (<= 0 tid_8_1@@1) (< tid_8_1@@1 gsize)) (>= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@3) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3097:17|
 :skolemid |89|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@1))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@1))
))) (=> (forall ((tid_8_1@@2 Int) ) (!  (=> (and (<= 0 tid_8_1@@2) (< tid_8_1@@2 gsize)) (>= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@3) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@2) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3097:17|
 :skolemid |89|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@2))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@2))
)) (=> (forall ((tid_8_1@@3 Int) ) (!  (=> (and (and (<= 0 tid_8_1@@3) (< tid_8_1@@3 gsize)) (< NoPerm FullPerm)) (and (qpRange5 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@3)) (= (invRecv5 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@3)) tid_8_1@@3)))
 :qid |stdinbpl.3103:22|
 :skolemid |90|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@3))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_8_1@@3))
)) (=> (and (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (<= 0 (invRecv5 o_9@@7)) (< (invRecv5 o_9@@7) gsize)) (and (< NoPerm FullPerm) (qpRange5 o_9@@7))) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (invRecv5 o_9@@7)) o_9@@7))
 :qid |stdinbpl.3107:22|
 :skolemid |91|
 :pattern ( (invRecv5 o_9@@7))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (<= 0 (invRecv5 o_9@@8)) (< (invRecv5 o_9@@8) gsize)) (and (< NoPerm FullPerm) (qpRange5 o_9@@8))) (and (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (invRecv5 o_9@@8)) o_9@@8) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) o_9@@8 Ref__Integer_value) (- (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@3) o_9@@8 Ref__Integer_value) FullPerm)))) (=> (not (and (and (<= 0 (invRecv5 o_9@@8)) (< (invRecv5 o_9@@8) gsize)) (and (< NoPerm FullPerm) (qpRange5 o_9@@8)))) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) o_9@@8 Ref__Integer_value) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@3) o_9@@8 Ref__Integer_value))))
 :qid |stdinbpl.3113:22|
 :skolemid |92|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) o_9@@8 Ref__Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_47269_53) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@3) o_9@@9 f_5@@5) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@2) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_47282_47283) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@3) o_9@@10 f_5@@6) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_53321_53326) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@3) o_9@@11 f_5@@7) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_53435_3405) ) (!  (=> (not (= f_5@@8 Ref__Integer_value)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@3) o_9@@12 f_5@@8) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_26303_158359) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@3) o_9@@13 f_5@@9) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@2) o_9@@13 f_5@@9)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@2) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_26303_158492) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@3) o_9@@14 f_5@@10) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@2) o_9@@14 f_5@@10)))
 :qid |stdinbpl.3119:29|
 :skolemid |93|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@2) o_9@@14 f_5@@10))
))) (and (=> (= (ControlFlow 0 48) (- 0 49)) (forall ((tid_9_1 Int) (tid_9_2 Int) ) (!  (=> (and (and (and (and (not (= tid_9_1 tid_9_2)) (and (<= 0 tid_9_1) (< tid_9_1 (- gsize 1)))) (and (<= 0 tid_9_2) (< tid_9_2 (- gsize 1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_2))))
 :qid |stdinbpl.3131:17|
 :skolemid |94|
 :pattern ( (neverTriggered6 tid_9_1) (neverTriggered6 tid_9_2))
))) (=> (forall ((tid_9_1@@0 Int) (tid_9_2@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_9_1@@0 tid_9_2@@0)) (and (<= 0 tid_9_1@@0) (< tid_9_1@@0 (- gsize 1)))) (and (<= 0 tid_9_2@@0) (< tid_9_2@@0 (- gsize 1)))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_1@@0) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_2@@0))))
 :qid |stdinbpl.3131:17|
 :skolemid |94|
 :pattern ( (neverTriggered6 tid_9_1@@0) (neverTriggered6 tid_9_2@@0))
)) (=> (= (ControlFlow 0 48) (- 0 47)) (forall ((tid_9_1@@1 Int) ) (!  (=> (and (<= 0 tid_9_1@@1) (< tid_9_1@@1 (- gsize 1))) (>= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@2) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_1@@1) Ref__Integer_value) FullPerm))
 :qid |stdinbpl.3138:17|
 :skolemid |95|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_1@@1))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_9_1@@1))
))))))))))))))))))))))))))))))))))))
(let ((anon47_Else_correct  (and (=> (= (ControlFlow 0 84) (- 0 85)) (forall ((tid_3_1 Int) (tid_3_2 Int) ) (!  (=> (and (and (and (and (not (= tid_3_1 tid_3_2)) (and (<= 0 tid_3_1) (< tid_3_1 gsize))) (and (<= 0 tid_3_2) (< tid_3_2 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_2))))
 :qid |stdinbpl.2866:15|
 :skolemid |70|
))) (=> (forall ((tid_3_1@@0 Int) (tid_3_2@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_3_1@@0 tid_3_2@@0)) (and (<= 0 tid_3_1@@0) (< tid_3_1@@0 gsize))) (and (<= 0 tid_3_2@@0) (< tid_3_2@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@0) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_2@@0))))
 :qid |stdinbpl.2866:15|
 :skolemid |70|
)) (=> (and (and (forall ((tid_3_1@@1 Int) ) (!  (=> (and (and (<= 0 tid_3_1@@1) (< tid_3_1@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange2 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@1)) (= (invRecv2 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@1)) tid_3_1@@1)))
 :qid |stdinbpl.2872:22|
 :skolemid |71|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@1))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv2 o_9@@15)) (< (invRecv2 o_9@@15) gsize)) (< NoPerm FullPerm)) (qpRange2 o_9@@15)) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) (invRecv2 o_9@@15)) o_9@@15))
 :qid |stdinbpl.2876:22|
 :skolemid |72|
 :pattern ( (invRecv2 o_9@@15))
))) (and (forall ((tid_3_1@@2 Int) ) (!  (=> (and (<= 0 tid_3_1@@2) (< tid_3_1@@2 gsize)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@2) null)))
 :qid |stdinbpl.2882:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@2))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) tid_3_1@@2))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv2 o_9@@16)) (< (invRecv2 o_9@@16) gsize)) (< NoPerm FullPerm)) (qpRange2 o_9@@16)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) (invRecv2 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) o_9@@16 Ref__Integer_value) (+ (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@16 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv2 o_9@@16)) (< (invRecv2 o_9@@16) gsize)) (< NoPerm FullPerm)) (qpRange2 o_9@@16))) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) o_9@@16 Ref__Integer_value) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@16 Ref__Integer_value))))
 :qid |stdinbpl.2888:22|
 :skolemid |74|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) o_9@@16 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_47269_53) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@0) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@1) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_47282_47283) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@0) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_53321_53326) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@0) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@1) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_53435_3405) ) (!  (=> (not (= f_5@@14 Ref__Integer_value)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@20 f_5@@14) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) o_9@@20 f_5@@14)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@1) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_26303_158359) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@0) o_9@@21 f_5@@15) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@1) o_9@@21 f_5@@15)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@0) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@1) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_26303_158492) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@0) o_9@@22 f_5@@16) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@1) o_9@@22 f_5@@16)))
 :qid |stdinbpl.2892:29|
 :skolemid |75|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@0) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@1) o_9@@22 f_5@@16))
))) (and (state Heap@@23 QPMask@1) (state Heap@@23 QPMask@1))) (and (=> (= (ControlFlow 0 84) 77) anon49_Then_correct) (=> (= (ControlFlow 0 84) 48) anon49_Else_correct))))))))
(let ((anon23_correct true))
(let ((anon48_Else_correct  (=> (and (not (and (<= 0 tid_8) (< tid_8 gsize))) (= (ControlFlow 0 46) 41)) anon23_correct)))
(let ((anon48_Then_correct  (=> (and (<= 0 tid_8) (< tid_8 gsize)) (and (=> (= (ControlFlow 0 42) (- 0 45)) (HasDirectPerm_26303_55407 QPMask@0 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 QPMask@0 diz demo__tmp) (and (=> (= (ControlFlow 0 42) (- 0 44)) (>= tid_8 0)) (=> (>= tid_8 0) (and (=> (= (ControlFlow 0 42) (- 0 43)) (< tid_8 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)))) (=> (< tid_8 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (=> (= (ControlFlow 0 42) 41) anon23_correct))))))))))
(let ((anon45_Else_correct  (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((tid_1 Int) (tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= tid_1 tid_1_1)) (and (<= 0 tid_1) (< tid_1 gsize))) (and (<= 0 tid_1_1) (< tid_1_1 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1_1))))
 :qid |stdinbpl.2818:15|
 :skolemid |64|
))) (=> (forall ((tid_1@@0 Int) (tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_1@@0 tid_1_1@@0)) (and (<= 0 tid_1@@0) (< tid_1@@0 gsize))) (and (<= 0 tid_1_1@@0) (< tid_1_1@@0 gsize))) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@0) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1_1@@0))))
 :qid |stdinbpl.2818:15|
 :skolemid |64|
)) (=> (and (and (forall ((tid_1@@1 Int) ) (!  (=> (and (and (<= 0 tid_1@@1) (< tid_1@@1 gsize)) (< NoPerm FullPerm)) (and (qpRange1 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@1)) (= (invRecv1 (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@1)) tid_1@@1)))
 :qid |stdinbpl.2824:22|
 :skolemid |65|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@1))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (and (<= 0 (invRecv1 o_9@@23)) (< (invRecv1 o_9@@23) gsize)) (< NoPerm FullPerm)) (qpRange1 o_9@@23)) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (invRecv1 o_9@@23)) o_9@@23))
 :qid |stdinbpl.2828:22|
 :skolemid |66|
 :pattern ( (invRecv1 o_9@@23))
))) (and (forall ((tid_1@@2 Int) ) (!  (=> (and (<= 0 tid_1@@2) (< tid_1@@2 gsize)) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@2) null)))
 :qid |stdinbpl.2834:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@2))
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) tid_1@@2))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (and (<= 0 (invRecv1 o_9@@24)) (< (invRecv1 o_9@@24) gsize)) (< NoPerm FullPerm)) (qpRange1 o_9@@24)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) (invRecv1 o_9@@24)) o_9@@24)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@24 Ref__Integer_value) (+ (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@1) o_9@@24 Ref__Integer_value) FullPerm)))) (=> (not (and (and (and (<= 0 (invRecv1 o_9@@24)) (< (invRecv1 o_9@@24) gsize)) (< NoPerm FullPerm)) (qpRange1 o_9@@24))) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@24 Ref__Integer_value) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@1) o_9@@24 Ref__Integer_value))))
 :qid |stdinbpl.2840:22|
 :skolemid |68|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@24 Ref__Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_47269_53) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@1) o_9@@25 f_5@@17) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@0) o_9@@25 f_5@@17)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@1) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| QPMask@0) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_47282_47283) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@1) o_9@@26 f_5@@18) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@0) o_9@@26 f_5@@18)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@1) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| QPMask@0) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_53321_53326) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@1) o_9@@27 f_5@@19) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@0) o_9@@27 f_5@@19)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@1) o_9@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| QPMask@0) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_53435_3405) ) (!  (=> (not (= f_5@@20 Ref__Integer_value)) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@1) o_9@@28 f_5@@20) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@28 f_5@@20)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@1) o_9@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| QPMask@0) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_26303_158359) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@1) o_9@@29 f_5@@21) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@0) o_9@@29 f_5@@21)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@1) o_9@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| QPMask@0) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_26303_158492) ) (!  (=> true (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@1) o_9@@30 f_5@@22) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@0) o_9@@30 f_5@@22)))
 :qid |stdinbpl.2844:29|
 :skolemid |69|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@1) o_9@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| QPMask@0) o_9@@30 f_5@@22))
))) (and (state Heap@@23 QPMask@0) (state Heap@@23 QPMask@0))) (and (and (=> (= (ControlFlow 0 86) 84) anon47_Else_correct) (=> (= (ControlFlow 0 86) 42) anon48_Then_correct)) (=> (= (ControlFlow 0 86) 46) anon48_Else_correct))))))))
(let ((anon19_correct true))
(let ((anon46_Else_correct  (=> (and (not (and (<= 0 tid_3) (< tid_3 gsize))) (= (ControlFlow 0 40) 35)) anon19_correct)))
(let ((anon46_Then_correct  (=> (and (<= 0 tid_3) (< tid_3 gsize)) (and (=> (= (ControlFlow 0 36) (- 0 39)) (HasDirectPerm_26303_55407 Mask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 36) (- 0 38)) (>= tid_3 0)) (=> (>= tid_3 0) (and (=> (= (ControlFlow 0 36) (- 0 37)) (< tid_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)))) (=> (< tid_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (=> (= (ControlFlow 0 36) 35) anon19_correct))))))))))
(let ((anon40_Else_correct  (=> (and (forall ((i_3_2 Int) (j_3 Int) ) (!  (=> (and (>= i_3_2 0) (and (< i_3_2 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (and (>= j_3 0) (and (< j_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (not (= i_3_2 j_3)))))) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) i_3_2) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) j_3))))
 :qid |stdinbpl.2798:20|
 :skolemid |63|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) i_3_2) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp) j_3))
)) (state Heap@@23 Mask@1)) (and (and (=> (= (ControlFlow 0 88) 86) anon45_Else_correct) (=> (= (ControlFlow 0 88) 36) anon46_Then_correct)) (=> (= (ControlFlow 0 88) 40) anon46_Else_correct)))))
(let ((anon15_correct true))
(let ((anon44_Else_correct  (=> (and (not (and (>= i_3 0) (and (< i_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (and (>= j_15 0) (and (< j_15 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (not (= i_3 j_15))))))) (= (ControlFlow 0 26) 18)) anon15_correct)))
(let ((anon44_Then_correct  (=> (and (>= i_3 0) (and (< i_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (and (>= j_15 0) (and (< j_15 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (not (= i_3 j_15)))))) (and (=> (= (ControlFlow 0 19) (- 0 25)) (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 19) (- 0 24)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 19) (- 0 23)) (< i_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)))) (=> (< i_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (and (=> (= (ControlFlow 0 19) (- 0 22)) (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 19) (- 0 21)) (>= j_15 0)) (=> (>= j_15 0) (and (=> (= (ControlFlow 0 19) (- 0 20)) (< j_15 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)))) (=> (< j_15 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (=> (= (ControlFlow 0 19) 18) anon15_correct))))))))))))))))
(let ((anon43_Else_correct  (=> (> 0 j_15) (and (=> (= (ControlFlow 0 31) 19) anon44_Then_correct) (=> (= (ControlFlow 0 31) 26) anon44_Else_correct)))))
(let ((anon43_Then_correct  (=> (>= j_15 0) (and (=> (= (ControlFlow 0 29) (- 0 30)) (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 29) 19) anon44_Then_correct) (=> (= (ControlFlow 0 29) 26) anon44_Else_correct)))))))
(let ((anon42_Then_correct  (=> (< i_3 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp))) (and (=> (= (ControlFlow 0 32) 29) anon43_Then_correct) (=> (= (ControlFlow 0 32) 31) anon43_Else_correct)))))
(let ((anon42_Else_correct  (=> (<= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) i_3) (and (=> (= (ControlFlow 0 28) 19) anon44_Then_correct) (=> (= (ControlFlow 0 28) 26) anon44_Else_correct)))))
(let ((anon41_Then_correct  (=> (>= i_3 0) (and (=> (= (ControlFlow 0 33) (- 0 34)) (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp) (and (=> (= (ControlFlow 0 33) 32) anon42_Then_correct) (=> (= (ControlFlow 0 33) 28) anon42_Else_correct)))))))
(let ((anon41_Else_correct  (=> (> 0 i_3) (and (=> (= (ControlFlow 0 27) 19) anon44_Then_correct) (=> (= (ControlFlow 0 27) 26) anon44_Else_correct)))))
(let ((anon35_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (>= i_1 0) (and (< i_1 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (and (>= j_1 0) (and (< j_1 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (not (= i_1 j_1)))))) (not (= (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) i_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) j_1))))
 :qid |stdinbpl.2764:20|
 :skolemid |62|
 :pattern ( (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) i_1) (|Seq#Index_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar) j_1))
)) (state Heap@@23 Mask@1)) (and (and (=> (= (ControlFlow 0 89) 88) anon40_Else_correct) (=> (= (ControlFlow 0 89) 33) anon41_Then_correct)) (=> (= (ControlFlow 0 89) 27) anon41_Else_correct)))))
(let ((anon7_correct true))
(let ((anon39_Else_correct  (=> (and (not (and (>= i_18 0) (and (< i_18 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (and (>= j_14 0) (and (< j_14 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (not (= i_18 j_14))))))) (= (ControlFlow 0 9) 1)) anon7_correct)))
(let ((anon39_Then_correct  (=> (and (>= i_18 0) (and (< i_18 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (and (>= j_14 0) (and (< j_14 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (not (= i_18 j_14)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_26303_55407 Mask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_18 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)))) (=> (< i_18 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_26303_55407 Mask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)))) (=> (< j_14 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (=> (= (ControlFlow 0 2) 1) anon7_correct))))))))))))))))
(let ((anon38_Else_correct  (=> (> 0 j_14) (and (=> (= (ControlFlow 0 14) 2) anon39_Then_correct) (=> (= (ControlFlow 0 14) 9) anon39_Else_correct)))))
(let ((anon38_Then_correct  (=> (>= j_14 0) (and (=> (= (ControlFlow 0 12) (- 0 13)) (HasDirectPerm_26303_55407 Mask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 12) 2) anon39_Then_correct) (=> (= (ControlFlow 0 12) 9) anon39_Else_correct)))))))
(let ((anon37_Then_correct  (=> (< i_18 (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar))) (and (=> (= (ControlFlow 0 15) 12) anon38_Then_correct) (=> (= (ControlFlow 0 15) 14) anon38_Else_correct)))))
(let ((anon37_Else_correct  (=> (<= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) i_18) (and (=> (= (ControlFlow 0 11) 2) anon39_Then_correct) (=> (= (ControlFlow 0 11) 9) anon39_Else_correct)))))
(let ((anon36_Then_correct  (=> (>= i_18 0) (and (=> (= (ControlFlow 0 16) (- 0 17)) (HasDirectPerm_26303_55407 Mask@1 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__ar) (and (=> (= (ControlFlow 0 16) 15) anon37_Then_correct) (=> (= (ControlFlow 0 16) 11) anon37_Else_correct)))))))
(let ((anon36_Else_correct  (=> (> 0 i_18) (and (=> (= (ControlFlow 0 10) 2) anon39_Then_correct) (=> (= (ControlFlow 0 10) 9) anon39_Else_correct)))))
(let ((anon0_correct  (=> (state Heap@@23 ZeroMask) (=> (and (and (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@23) diz $allocated) (not (= diz null)))) (and (and (state Heap@@23 ZeroMask) (>= current_thread_id 0)) (and (state Heap@@23 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@23 ZeroMask) (= gid 0)) (and (state Heap@@23 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= diz null)) (= Mask@0 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) diz demo__ar (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) diz demo__ar) wildcard@0)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask)))) (and (state Heap@@23 Mask@0) (state Heap@@23 Mask@0))))) (and (=> (= (ControlFlow 0 90) (- 0 92)) (HasDirectPerm_26303_55407 Mask@0 diz demo__ar)) (=> (HasDirectPerm_26303_55407 Mask@0 diz demo__ar) (=> (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__ar)) gsize) (=> (and (state Heap@@23 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= diz null)) (= Mask@1 (PolymorphicMapType_47230 (store (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@0) diz demo__tmp (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@0) diz demo__tmp) wildcard@1)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@0) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@0) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@0) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@0) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@0)))) (and (state Heap@@23 Mask@1) (state Heap@@23 Mask@1))) (and (=> (= (ControlFlow 0 90) (- 0 91)) (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp)) (=> (HasDirectPerm_26303_55407 Mask@1 diz demo__tmp) (=> (and (and (= (|Seq#Length_26304| (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@23) diz demo__tmp)) gsize) (state Heap@@23 Mask@1)) (and (> gsize 1) (state Heap@@23 Mask@1))) (and (and (=> (= (ControlFlow 0 90) 89) anon35_Else_correct) (=> (= (ControlFlow 0 90) 16) anon36_Then_correct)) (=> (= (ControlFlow 0 90) 10) anon36_Else_correct))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 93) 90)) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))))))))))))))))))))))))))
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
(declare-sort T@Field_47269_53 0)
(declare-sort T@Field_47282_47283 0)
(declare-sort T@Field_53321_53326 0)
(declare-sort T@Seq_53324 0)
(declare-sort T@Field_53435_3405 0)
(declare-sort T@Field_26303_158492 0)
(declare-sort T@Field_26303_158359 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_47230 0)) (((PolymorphicMapType_47230 (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| (Array T@Ref T@Field_53321_53326 Real)) (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| (Array T@Ref T@Field_53435_3405 Real)) (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| (Array T@Ref T@Field_47269_53 Real)) (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| (Array T@Ref T@Field_47282_47283 Real)) (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| (Array T@Ref T@Field_26303_158359 Real)) (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| (Array T@Ref T@Field_26303_158492 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47758 0)) (((PolymorphicMapType_47758 (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (Array T@Ref T@Field_47269_53 Bool)) (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (Array T@Ref T@Field_47282_47283 Bool)) (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (Array T@Ref T@Field_53321_53326 Bool)) (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (Array T@Ref T@Field_53435_3405 Bool)) (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (Array T@Ref T@Field_26303_158359 Bool)) (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (Array T@Ref T@Field_26303_158492 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_47209 0)) (((PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| (Array T@Ref T@Field_47269_53 Bool)) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| (Array T@Ref T@Field_47282_47283 T@Ref)) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| (Array T@Ref T@Field_53321_53326 T@Seq_53324)) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| (Array T@Ref T@Field_53435_3405 Int)) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| (Array T@Ref T@Field_26303_158492 T@PolymorphicMapType_47758)) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| (Array T@Ref T@Field_26303_158359 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_47269_53)
(declare-fun demo__ar () T@Field_53321_53326)
(declare-fun demo__tmp () T@Field_53321_53326)
(declare-fun Ref__Integer_value () T@Field_53435_3405)
(declare-fun |Seq#Length_26304| (T@Seq_53324) Int)
(declare-fun |Seq#Drop_26304| (T@Seq_53324 Int) T@Seq_53324)
(declare-sort T@Seq_3251 0)
(declare-fun |Seq#Length_3251| (T@Seq_3251) Int)
(declare-fun |Seq#Drop_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun succHeap (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209) Bool)
(declare-fun state (T@PolymorphicMapType_47209 T@PolymorphicMapType_47230) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_47230) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_47758)
(declare-fun |demo__bin'| (T@PolymorphicMapType_47209 Int Int) Int)
(declare-fun dummyFunction_3670 (Int) Bool)
(declare-fun |demo__bin#triggerStateless| (Int Int) Int)
(declare-fun |Seq#Index_26304| (T@Seq_53324 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3251| (T@Seq_3251 Int) Int)
(declare-fun |demo__bin#frame| (T@FrameType Int Int) Int)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun |Seq#Empty_26304| () T@Seq_53324)
(declare-fun |Seq#Empty_3251| () T@Seq_3251)
(declare-fun |Seq#Update_26304| (T@Seq_53324 Int T@Ref) T@Seq_53324)
(declare-fun |Seq#Update_3251| (T@Seq_3251 Int Int) T@Seq_3251)
(declare-fun |Seq#Take_26304| (T@Seq_53324 Int) T@Seq_53324)
(declare-fun |Seq#Take_3251| (T@Seq_3251 Int) T@Seq_3251)
(declare-fun |Seq#Contains_3251| (T@Seq_3251 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3251)
(declare-fun |Seq#Contains_53324| (T@Seq_53324 T@Ref) Bool)
(declare-fun |Seq#Skolem_53324| (T@Seq_53324 T@Ref) Int)
(declare-fun |Seq#Skolem_3251| (T@Seq_3251 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_47209 T@PolymorphicMapType_47209 T@PolymorphicMapType_47230) Bool)
(declare-fun IsPredicateField_26303_158450 (T@Field_26303_158359) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_26303 (T@Field_26303_158359) T@Field_26303_158492)
(declare-fun HasDirectPerm_26303_158423 (T@PolymorphicMapType_47230 T@Ref T@Field_26303_158359) Bool)
(declare-fun IsWandField_26303_160401 (T@Field_26303_158359) Bool)
(declare-fun WandMaskField_26303 (T@Field_26303_158359) T@Field_26303_158492)
(declare-fun |Seq#Singleton_26304| (T@Ref) T@Seq_53324)
(declare-fun |Seq#Singleton_3251| (Int) T@Seq_3251)
(declare-fun |Seq#Append_53324| (T@Seq_53324 T@Seq_53324) T@Seq_53324)
(declare-fun |Seq#Append_3251| (T@Seq_3251 T@Seq_3251) T@Seq_3251)
(declare-fun dummyHeap () T@PolymorphicMapType_47209)
(declare-fun ZeroMask () T@PolymorphicMapType_47230)
(declare-fun InsidePredicate_47269_47269 (T@Field_26303_158359 T@FrameType T@Field_26303_158359 T@FrameType) Bool)
(declare-fun IsPredicateField_26303_53348 (T@Field_53321_53326) Bool)
(declare-fun IsWandField_26303_53374 (T@Field_53321_53326) Bool)
(declare-fun IsPredicateField_26311_3405 (T@Field_53435_3405) Bool)
(declare-fun IsWandField_26311_3405 (T@Field_53435_3405) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_26303_164535 (T@Field_26303_158492) Bool)
(declare-fun IsWandField_26303_164551 (T@Field_26303_158492) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_26303_47283 (T@Field_47282_47283) Bool)
(declare-fun IsWandField_26303_47283 (T@Field_47282_47283) Bool)
(declare-fun IsPredicateField_26303_53 (T@Field_47269_53) Bool)
(declare-fun IsWandField_26303_53 (T@Field_47269_53) Bool)
(declare-fun HasDirectPerm_26303_165072 (T@PolymorphicMapType_47230 T@Ref T@Field_26303_158492) Bool)
(declare-fun HasDirectPerm_26303_47283 (T@PolymorphicMapType_47230 T@Ref T@Field_47282_47283) Bool)
(declare-fun HasDirectPerm_26303_53 (T@PolymorphicMapType_47230 T@Ref T@Field_47269_53) Bool)
(declare-fun HasDirectPerm_26311_3405 (T@PolymorphicMapType_47230 T@Ref T@Field_53435_3405) Bool)
(declare-fun HasDirectPerm_26303_55407 (T@PolymorphicMapType_47230 T@Ref T@Field_53321_53326) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun demo__bin (T@PolymorphicMapType_47209 Int Int) Int)
(declare-fun sumMask (T@PolymorphicMapType_47230 T@PolymorphicMapType_47230 T@PolymorphicMapType_47230) Bool)
(declare-fun |Seq#Equal_3251| (T@Seq_3251 T@Seq_3251) Bool)
(declare-fun |Seq#Equal_26304| (T@Seq_53324 T@Seq_53324) Bool)
(declare-fun |Seq#ContainsTrigger_26304| (T@Seq_53324 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3251| (T@Seq_3251 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun |Seq#SkolemDiff_53324| (T@Seq_53324 T@Seq_53324) Int)
(declare-fun |Seq#SkolemDiff_3251| (T@Seq_3251 T@Seq_3251) Int)
(assert (distinct demo__ar demo__tmp)
)
(assert (forall ((s T@Seq_53324) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_26304| s)) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) (- (|Seq#Length_26304| s) n))) (=> (< (|Seq#Length_26304| s) n) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_26304| (|Seq#Drop_26304| s n)) (|Seq#Length_26304| s))))
 :qid |stdinbpl.336:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_26304| (|Seq#Drop_26304| s n)))
 :pattern ( (|Seq#Length_26304| s) (|Seq#Drop_26304| s n))
)))
(assert (forall ((s@@0 T@Seq_3251) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3251| s@@0)) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (- (|Seq#Length_3251| s@@0) n@@0))) (=> (< (|Seq#Length_3251| s@@0) n@@0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)) (|Seq#Length_3251| s@@0))))
 :qid |stdinbpl.336:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3251| (|Seq#Drop_3251| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3251| s@@0) (|Seq#Drop_3251| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_47209) (Heap1 T@PolymorphicMapType_47209) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_47209) (Mask T@PolymorphicMapType_47230) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_47209) (Heap1@@0 T@PolymorphicMapType_47209) (Heap2 T@PolymorphicMapType_47209) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_26303_158492) ) (!  (not (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_26303_158359) ) (!  (not (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_53435_3405) ) (!  (not (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_53321_53326) ) (!  (not (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_47282_47283) ) (!  (not (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_47269_53) ) (!  (not (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_47209) (N Int) (k Int) ) (! (dummyFunction_3670 (|demo__bin#triggerStateless| N k))
 :qid |stdinbpl.628:15|
 :skolemid |59|
 :pattern ( (|demo__bin'| Heap@@0 N k))
)))
(assert (forall ((s@@1 T@Seq_53324) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_26304| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_26304| (|Seq#Drop_26304| s@@1 n@@1) j) (|Seq#Index_26304| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.357:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_26304| (|Seq#Drop_26304| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3251) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3251| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0) (|Seq#Index_3251| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.357:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3251| (|Seq#Drop_3251| s@@2 n@@2) j@@0))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_47209) (Mask@@0 T@PolymorphicMapType_47230) (N@@0 Int) (k@@0 Int) ) (!  (=> (state Heap@@1 Mask@@0) (= (|demo__bin'| Heap@@1 N@@0 k@@0) (|demo__bin#frame| EmptyFrame N@@0 k@@0)))
 :qid |stdinbpl.641:15|
 :skolemid |61|
 :pattern ( (state Heap@@1 Mask@@0) (|demo__bin'| Heap@@1 N@@0 k@@0))
)))
(assert (= (|Seq#Length_26304| |Seq#Empty_26304|) 0))
(assert (= (|Seq#Length_3251| |Seq#Empty_3251|) 0))
(assert (forall ((s@@3 T@Seq_53324) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_26304| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3) (|Seq#Index_26304| s@@3 n@@3)))))
 :qid |stdinbpl.312:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_26304| (|Seq#Update_26304| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_26304| s@@3 n@@3) (|Seq#Update_26304| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3251) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3251| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3251| s@@4 n@@4)))))
 :qid |stdinbpl.312:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3251| (|Seq#Update_3251| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3251| s@@4 n@@4) (|Seq#Update_3251| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_53324) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_26304| s@@5)) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_26304| s@@5) n@@5) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) (|Seq#Length_26304| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)) 0)))
 :qid |stdinbpl.323:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_26304| (|Seq#Take_26304| s@@5 n@@5)))
 :pattern ( (|Seq#Take_26304| s@@5 n@@5) (|Seq#Length_26304| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3251) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3251| s@@6)) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3251| s@@6) n@@6) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) (|Seq#Length_3251| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)) 0)))
 :qid |stdinbpl.323:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3251| (|Seq#Take_3251| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3251| s@@6 n@@6) (|Seq#Length_3251| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.597:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3251| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_53324) (x T@Ref) ) (!  (=> (|Seq#Contains_53324| s@@7 x) (and (and (<= 0 (|Seq#Skolem_53324| s@@7 x)) (< (|Seq#Skolem_53324| s@@7 x) (|Seq#Length_26304| s@@7))) (= (|Seq#Index_26304| s@@7 (|Seq#Skolem_53324| s@@7 x)) x)))
 :qid |stdinbpl.455:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_53324| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3251) (x@@0 Int) ) (!  (=> (|Seq#Contains_3251| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3251| s@@8 x@@0)) (< (|Seq#Skolem_3251| s@@8 x@@0) (|Seq#Length_3251| s@@8))) (= (|Seq#Index_3251| s@@8 (|Seq#Skolem_3251| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.455:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3251| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_53324) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_26304| s@@9 n@@7) s@@9))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_26304| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3251) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3251| s@@10 n@@8) s@@10))
 :qid |stdinbpl.439:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3251| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.292:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.290:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_47209) (ExhaleHeap T@PolymorphicMapType_47209) (Mask@@1 T@PolymorphicMapType_47230) (pm_f_17 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (=> (and (HasDirectPerm_26303_158423 Mask@@1 null pm_f_17) (IsPredicateField_26303_158450 pm_f_17)) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@2) null (PredicateMaskField_26303 pm_f_17)) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap) null (PredicateMaskField_26303 pm_f_17)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap Mask@@1) (IsPredicateField_26303_158450 pm_f_17) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap) null (PredicateMaskField_26303 pm_f_17)))
)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_47209) (ExhaleHeap@@0 T@PolymorphicMapType_47209) (Mask@@2 T@PolymorphicMapType_47230) (pm_f_17@@0 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (=> (and (HasDirectPerm_26303_158423 Mask@@2 null pm_f_17@@0) (IsWandField_26303_160401 pm_f_17@@0)) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@3) null (WandMaskField_26303 pm_f_17@@0)) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@0) null (WandMaskField_26303 pm_f_17@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@0 Mask@@2) (IsWandField_26303_160401 pm_f_17@@0) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@0) null (WandMaskField_26303 pm_f_17@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_53324| (|Seq#Singleton_26304| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.580:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_53324| (|Seq#Singleton_26304| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.580:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3251| (|Seq#Singleton_3251| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_53324) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_26304| s@@11))) (= (|Seq#Index_26304| (|Seq#Take_26304| s@@11 n@@9) j@@3) (|Seq#Index_26304| s@@11 j@@3)))
 :qid |stdinbpl.331:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_26304| (|Seq#Take_26304| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_26304| s@@11 j@@3) (|Seq#Take_26304| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3251) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3251| s@@12))) (= (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4) (|Seq#Index_3251| s@@12 j@@4)))
 :qid |stdinbpl.331:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3251| (|Seq#Take_3251| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3251| s@@12 j@@4) (|Seq#Take_3251| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_53324) (t T@Seq_53324) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_26304| s@@13))) (< n@@11 (|Seq#Length_26304| (|Seq#Append_53324| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_26304| s@@13)) (|Seq#Length_26304| s@@13)) n@@11) (= (|Seq#Take_26304| (|Seq#Append_53324| s@@13 t) n@@11) (|Seq#Append_53324| s@@13 (|Seq#Take_26304| t (|Seq#Sub| n@@11 (|Seq#Length_26304| s@@13)))))))
 :qid |stdinbpl.416:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_26304| (|Seq#Append_53324| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3251) (t@@0 T@Seq_3251) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3251| s@@14))) (< n@@12 (|Seq#Length_3251| (|Seq#Append_3251| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)) (|Seq#Length_3251| s@@14)) n@@12) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12) (|Seq#Append_3251| s@@14 (|Seq#Take_3251| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3251| s@@14)))))))
 :qid |stdinbpl.416:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@4 T@PolymorphicMapType_47209) (ExhaleHeap@@1 T@PolymorphicMapType_47209) (Mask@@3 T@PolymorphicMapType_47230) (o_37 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (=> (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@4) o_37 $allocated) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@1) o_37 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@1 Mask@@3) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@1) o_37 $allocated))
)))
(assert (forall ((p T@Field_26303_158359) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_47269_47269 p v_1 p w))
 :qid |stdinbpl.234:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_47269_47269 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_53324) (s1 T@Seq_53324) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_26304|)) (not (= s1 |Seq#Empty_26304|))) (<= (|Seq#Length_26304| s0) n@@13)) (< n@@13 (|Seq#Length_26304| (|Seq#Append_53324| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_26304| s0)) (|Seq#Length_26304| s0)) n@@13) (= (|Seq#Index_26304| (|Seq#Append_53324| s0 s1) n@@13) (|Seq#Index_26304| s1 (|Seq#Sub| n@@13 (|Seq#Length_26304| s0))))))
 :qid |stdinbpl.303:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_26304| (|Seq#Append_53324| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3251) (s1@@0 T@Seq_3251) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3251|)) (not (= s1@@0 |Seq#Empty_3251|))) (<= (|Seq#Length_3251| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3251| (|Seq#Append_3251| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0)) (|Seq#Length_3251| s0@@0)) n@@14) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14) (|Seq#Index_3251| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3251| s0@@0))))))
 :qid |stdinbpl.303:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_26303_53348 demo__ar)))
(assert  (not (IsWandField_26303_53374 demo__ar)))
(assert  (not (IsPredicateField_26303_53348 demo__tmp)))
(assert  (not (IsWandField_26303_53374 demo__tmp)))
(assert  (not (IsPredicateField_26311_3405 Ref__Integer_value)))
(assert  (not (IsWandField_26311_3405 Ref__Integer_value)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_47209) (ExhaleHeap@@2 T@PolymorphicMapType_47209) (Mask@@4 T@PolymorphicMapType_47230) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4) (succHeap Heap@@5 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@2 Mask@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_47230) (o_2@@5 T@Ref) (f_4@@5 T@Field_26303_158492) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_26303_164535 f_4@@5))) (not (IsWandField_26303_164551 f_4@@5))) (<= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_47230) (o_2@@6 T@Ref) (f_4@@6 T@Field_26303_158359) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_26303_158450 f_4@@6))) (not (IsWandField_26303_160401 f_4@@6))) (<= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_47230) (o_2@@7 T@Ref) (f_4@@7 T@Field_47282_47283) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_26303_47283 f_4@@7))) (not (IsWandField_26303_47283 f_4@@7))) (<= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_47230) (o_2@@8 T@Ref) (f_4@@8 T@Field_47269_53) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_26303_53 f_4@@8))) (not (IsWandField_26303_53 f_4@@8))) (<= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_47230) (o_2@@9 T@Ref) (f_4@@9 T@Field_53435_3405) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_26311_3405 f_4@@9))) (not (IsWandField_26311_3405 f_4@@9))) (<= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@9) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_47230) (o_2@@10 T@Ref) (f_4@@10 T@Field_53321_53326) ) (!  (=> (GoodMask Mask@@10) (and (>= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@10) AssumePermUpperBound) (not (IsPredicateField_26303_53348 f_4@@10))) (not (IsWandField_26303_53374 f_4@@10))) (<= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@10) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@10) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_47230) (o_2@@11 T@Ref) (f_4@@11 T@Field_26303_158492) ) (! (= (HasDirectPerm_26303_165072 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_165072 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_47230) (o_2@@12 T@Ref) (f_4@@12 T@Field_26303_158359) ) (! (= (HasDirectPerm_26303_158423 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_158423 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_47230) (o_2@@13 T@Ref) (f_4@@13 T@Field_47282_47283) ) (! (= (HasDirectPerm_26303_47283 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_47283 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_47230) (o_2@@14 T@Ref) (f_4@@14 T@Field_47269_53) ) (! (= (HasDirectPerm_26303_53 Mask@@14 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| Mask@@14) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_53 Mask@@14 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_47230) (o_2@@15 T@Ref) (f_4@@15 T@Field_53435_3405) ) (! (= (HasDirectPerm_26311_3405 Mask@@15 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| Mask@@15) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26311_3405 Mask@@15 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@16 T@PolymorphicMapType_47230) (o_2@@16 T@Ref) (f_4@@16 T@Field_53321_53326) ) (! (= (HasDirectPerm_26303_55407 Mask@@16 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| Mask@@16) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_26303_55407 Mask@@16 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.222:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.595:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3251| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_47209) (ExhaleHeap@@3 T@PolymorphicMapType_47209) (Mask@@17 T@PolymorphicMapType_47230) (o_37@@0 T@Ref) (f_18 T@Field_26303_158492) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (=> (HasDirectPerm_26303_165072 Mask@@17 o_37@@0 f_18) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@6) o_37@@0 f_18) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@3) o_37@@0 f_18))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@3 Mask@@17) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@3) o_37@@0 f_18))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_47209) (ExhaleHeap@@4 T@PolymorphicMapType_47209) (Mask@@18 T@PolymorphicMapType_47230) (o_37@@1 T@Ref) (f_18@@0 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (=> (HasDirectPerm_26303_158423 Mask@@18 o_37@@1 f_18@@0) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@7) o_37@@1 f_18@@0) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@4) o_37@@1 f_18@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@4 Mask@@18) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@4) o_37@@1 f_18@@0))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_47209) (ExhaleHeap@@5 T@PolymorphicMapType_47209) (Mask@@19 T@PolymorphicMapType_47230) (o_37@@2 T@Ref) (f_18@@1 T@Field_47282_47283) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (=> (HasDirectPerm_26303_47283 Mask@@19 o_37@@2 f_18@@1) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@8) o_37@@2 f_18@@1) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@5) o_37@@2 f_18@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@5 Mask@@19) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@5) o_37@@2 f_18@@1))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_47209) (ExhaleHeap@@6 T@PolymorphicMapType_47209) (Mask@@20 T@PolymorphicMapType_47230) (o_37@@3 T@Ref) (f_18@@2 T@Field_47269_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (=> (HasDirectPerm_26303_53 Mask@@20 o_37@@3 f_18@@2) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@9) o_37@@3 f_18@@2) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@6) o_37@@3 f_18@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@6 Mask@@20) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@6) o_37@@3 f_18@@2))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_47209) (ExhaleHeap@@7 T@PolymorphicMapType_47209) (Mask@@21 T@PolymorphicMapType_47230) (o_37@@4 T@Ref) (f_18@@3 T@Field_53435_3405) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (=> (HasDirectPerm_26311_3405 Mask@@21 o_37@@4 f_18@@3) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@10) o_37@@4 f_18@@3) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@7) o_37@@4 f_18@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@7 Mask@@21) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@7) o_37@@4 f_18@@3))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_47209) (ExhaleHeap@@8 T@PolymorphicMapType_47209) (Mask@@22 T@PolymorphicMapType_47230) (o_37@@5 T@Ref) (f_18@@4 T@Field_53321_53326) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (=> (HasDirectPerm_26303_55407 Mask@@22 o_37@@5 f_18@@4) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@11) o_37@@5 f_18@@4) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@8) o_37@@5 f_18@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@8 Mask@@22) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@8) o_37@@5 f_18@@4))
)))
(assert (forall ((s0@@1 T@Seq_53324) (s1@@1 T@Seq_53324) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_26304|)) (not (= s1@@1 |Seq#Empty_26304|))) (= (|Seq#Length_26304| (|Seq#Append_53324| s0@@1 s1@@1)) (+ (|Seq#Length_26304| s0@@1) (|Seq#Length_26304| s1@@1))))
 :qid |stdinbpl.272:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_26304| (|Seq#Append_53324| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3251) (s1@@2 T@Seq_3251) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3251|)) (not (= s1@@2 |Seq#Empty_3251|))) (= (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)) (+ (|Seq#Length_3251| s0@@2) (|Seq#Length_3251| s1@@2))))
 :qid |stdinbpl.272:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3251| (|Seq#Append_3251| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26303_158492) ) (! (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_26303_158359) ) (! (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_47282_47283) ) (! (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_47269_53) ) (! (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_53435_3405) ) (! (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_53321_53326) ) (! (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_53324) (t@@1 T@Seq_53324) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_26304| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_26304| s@@15)) (|Seq#Length_26304| s@@15)) n@@15) (= (|Seq#Drop_26304| (|Seq#Append_53324| s@@15 t@@1) n@@15) (|Seq#Drop_26304| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_26304| s@@15))))))
 :qid |stdinbpl.429:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_26304| (|Seq#Append_53324| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3251) (t@@2 T@Seq_3251) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3251| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16)) (|Seq#Length_3251| s@@16)) n@@16) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16) (|Seq#Drop_3251| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3251| s@@16))))))
 :qid |stdinbpl.429:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@16 t@@2) n@@16))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_47209) (N@@1 Int) (k@@1 Int) ) (!  (and (= (demo__bin Heap@@12 N@@1 k@@1) (|demo__bin'| Heap@@12 N@@1 k@@1)) (dummyFunction_3670 (|demo__bin#triggerStateless| N@@1 k@@1)))
 :qid |stdinbpl.624:15|
 :skolemid |58|
 :pattern ( (demo__bin Heap@@12 N@@1 k@@1))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_47230) (SummandMask1 T@PolymorphicMapType_47230) (SummandMask2 T@PolymorphicMapType_47230) (o_2@@23 T@Ref) (f_4@@23 T@Field_26303_158492) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_47230_26303_163186#PolymorphicMapType_47230| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_47230) (SummandMask1@@0 T@PolymorphicMapType_47230) (SummandMask2@@0 T@PolymorphicMapType_47230) (o_2@@24 T@Ref) (f_4@@24 T@Field_26303_158359) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_47230_26303_158359#PolymorphicMapType_47230| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_47230) (SummandMask1@@1 T@PolymorphicMapType_47230) (SummandMask2@@1 T@PolymorphicMapType_47230) (o_2@@25 T@Ref) (f_4@@25 T@Field_47282_47283) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_47230_26303_47283#PolymorphicMapType_47230| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_47230) (SummandMask1@@2 T@PolymorphicMapType_47230) (SummandMask2@@2 T@PolymorphicMapType_47230) (o_2@@26 T@Ref) (f_4@@26 T@Field_47269_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_47230_26303_53#PolymorphicMapType_47230| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_47230) (SummandMask1@@3 T@PolymorphicMapType_47230) (SummandMask2@@3 T@PolymorphicMapType_47230) (o_2@@27 T@Ref) (f_4@@27 T@Field_53435_3405) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_47230_26311_3405#PolymorphicMapType_47230| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_47230) (SummandMask1@@4 T@PolymorphicMapType_47230) (SummandMask2@@4 T@PolymorphicMapType_47230) (o_2@@28 T@Ref) (f_4@@28 T@Field_53321_53326) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_47230_26303_55255#PolymorphicMapType_47230| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.594:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3251| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3251) (b T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| a b) (= a b))
 :qid |stdinbpl.567:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3251| a b))
)))
(assert (forall ((a@@0 T@Seq_53324) (b@@0 T@Seq_53324) ) (!  (=> (|Seq#Equal_26304| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.567:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_26304| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_53324) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_26304| s@@17))) (|Seq#ContainsTrigger_26304| s@@17 (|Seq#Index_26304| s@@17 i@@3)))
 :qid |stdinbpl.460:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_26304| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3251) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3251| s@@18))) (|Seq#ContainsTrigger_3251| s@@18 (|Seq#Index_3251| s@@18 i@@4)))
 :qid |stdinbpl.460:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3251| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_53324) (s1@@3 T@Seq_53324) ) (!  (and (=> (= s0@@3 |Seq#Empty_26304|) (= (|Seq#Append_53324| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_26304|) (= (|Seq#Append_53324| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.278:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_53324| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3251) (s1@@4 T@Seq_3251) ) (!  (and (=> (= s0@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3251|) (= (|Seq#Append_3251| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.278:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3251| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_26304| (|Seq#Singleton_26304| t@@3) 0) t@@3)
 :qid |stdinbpl.282:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_26304| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3251| (|Seq#Singleton_3251| t@@4) 0) t@@4)
 :qid |stdinbpl.282:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3251| t@@4))
)))
(assert (forall ((s@@19 T@Seq_53324) ) (! (<= 0 (|Seq#Length_26304| s@@19))
 :qid |stdinbpl.261:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_26304| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3251) ) (! (<= 0 (|Seq#Length_3251| s@@20))
 :qid |stdinbpl.261:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3251| s@@20))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_47209) (ExhaleHeap@@9 T@PolymorphicMapType_47209) (Mask@@23 T@PolymorphicMapType_47230) (pm_f_17@@1 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (=> (and (HasDirectPerm_26303_158423 Mask@@23 null pm_f_17@@1) (IsPredicateField_26303_158450 pm_f_17@@1)) (and (and (and (and (and (forall ((o2_17 T@Ref) (f_18@@5 T@Field_47269_53) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17 f_18@@5) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@13) o2_17 f_18@@5) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17 f_18@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17 f_18@@5))
)) (forall ((o2_17@@0 T@Ref) (f_18@@6 T@Field_47282_47283) ) (!  (=> (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@0 f_18@@6) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@13) o2_17@@0 f_18@@6) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@0 f_18@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@0 f_18@@6))
))) (forall ((o2_17@@1 T@Ref) (f_18@@7 T@Field_53321_53326) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@1 f_18@@7) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@13) o2_17@@1 f_18@@7) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@1 f_18@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@1 f_18@@7))
))) (forall ((o2_17@@2 T@Ref) (f_18@@8 T@Field_53435_3405) ) (!  (=> (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@2 f_18@@8) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@13) o2_17@@2 f_18@@8) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@2 f_18@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@2 f_18@@8))
))) (forall ((o2_17@@3 T@Ref) (f_18@@9 T@Field_26303_158359) ) (!  (=> (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@3 f_18@@9) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@13) o2_17@@3 f_18@@9) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@3 f_18@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@3 f_18@@9))
))) (forall ((o2_17@@4 T@Ref) (f_18@@10 T@Field_26303_158492) ) (!  (=> (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) null (PredicateMaskField_26303 pm_f_17@@1))) o2_17@@4 f_18@@10) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@13) o2_17@@4 f_18@@10) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@4 f_18@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@9) o2_17@@4 f_18@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@13 ExhaleHeap@@9 Mask@@23) (IsPredicateField_26303_158450 pm_f_17@@1))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_47209) (ExhaleHeap@@10 T@PolymorphicMapType_47209) (Mask@@24 T@PolymorphicMapType_47230) (pm_f_17@@2 T@Field_26303_158359) ) (!  (=> (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (=> (and (HasDirectPerm_26303_158423 Mask@@24 null pm_f_17@@2) (IsWandField_26303_160401 pm_f_17@@2)) (and (and (and (and (and (forall ((o2_17@@5 T@Ref) (f_18@@11 T@Field_47269_53) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@5 f_18@@11) (= (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@14) o2_17@@5 f_18@@11) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@5 f_18@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@5 f_18@@11))
)) (forall ((o2_17@@6 T@Ref) (f_18@@12 T@Field_47282_47283) ) (!  (=> (select (|PolymorphicMapType_47758_47269_47283#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@6 f_18@@12) (= (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@14) o2_17@@6 f_18@@12) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@6 f_18@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@6 f_18@@12))
))) (forall ((o2_17@@7 T@Ref) (f_18@@13 T@Field_53321_53326) ) (!  (=> (select (|PolymorphicMapType_47758_47269_53326#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@7 f_18@@13) (= (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@14) o2_17@@7 f_18@@13) (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@7 f_18@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@7 f_18@@13))
))) (forall ((o2_17@@8 T@Ref) (f_18@@14 T@Field_53435_3405) ) (!  (=> (select (|PolymorphicMapType_47758_47269_3405#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@8 f_18@@14) (= (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@14) o2_17@@8 f_18@@14) (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@8 f_18@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@8 f_18@@14))
))) (forall ((o2_17@@9 T@Ref) (f_18@@15 T@Field_26303_158359) ) (!  (=> (select (|PolymorphicMapType_47758_47269_158359#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@9 f_18@@15) (= (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@14) o2_17@@9 f_18@@15) (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@9 f_18@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@9 f_18@@15))
))) (forall ((o2_17@@10 T@Ref) (f_18@@16 T@Field_26303_158492) ) (!  (=> (select (|PolymorphicMapType_47758_47269_159874#PolymorphicMapType_47758| (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) null (WandMaskField_26303 pm_f_17@@2))) o2_17@@10 f_18@@16) (= (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@14) o2_17@@10 f_18@@16) (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@10 f_18@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| ExhaleHeap@@10) o2_17@@10 f_18@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@14 ExhaleHeap@@10 Mask@@24) (IsWandField_26303_160401 pm_f_17@@2))
)))
(assert (forall ((s0@@5 T@Seq_3251) (s1@@5 T@Seq_3251) ) (!  (=> (|Seq#Equal_3251| s0@@5 s1@@5) (and (= (|Seq#Length_3251| s0@@5) (|Seq#Length_3251| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3251| s0@@5))) (= (|Seq#Index_3251| s0@@5 j@@6) (|Seq#Index_3251| s1@@5 j@@6)))
 :qid |stdinbpl.557:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3251| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3251| s1@@5 j@@6))
))))
 :qid |stdinbpl.554:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3251| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_53324) (s1@@6 T@Seq_53324) ) (!  (=> (|Seq#Equal_26304| s0@@6 s1@@6) (and (= (|Seq#Length_26304| s0@@6) (|Seq#Length_26304| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_26304| s0@@6))) (= (|Seq#Index_26304| s0@@6 j@@7) (|Seq#Index_26304| s1@@6 j@@7)))
 :qid |stdinbpl.557:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_26304| s0@@6 j@@7))
 :pattern ( (|Seq#Index_26304| s1@@6 j@@7))
))))
 :qid |stdinbpl.554:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_26304| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_26304| (|Seq#Singleton_26304| t@@5)) 1)
 :qid |stdinbpl.269:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_26304| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3251| (|Seq#Singleton_3251| t@@6)) 1)
 :qid |stdinbpl.269:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3251| t@@6))
)))
(assert (forall ((s@@21 T@Seq_53324) (t@@7 T@Seq_53324) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_26304| s@@21))) (= (|Seq#Take_26304| (|Seq#Append_53324| s@@21 t@@7) n@@17) (|Seq#Take_26304| s@@21 n@@17)))
 :qid |stdinbpl.411:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_26304| (|Seq#Append_53324| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3251) (t@@8 T@Seq_3251) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3251| s@@22))) (= (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18) (|Seq#Take_3251| s@@22 n@@18)))
 :qid |stdinbpl.411:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3251| (|Seq#Append_3251| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_53324) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_26304| s@@23))) (= (|Seq#Length_26304| (|Seq#Update_26304| s@@23 i@@5 v@@2)) (|Seq#Length_26304| s@@23)))
 :qid |stdinbpl.310:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_26304| (|Seq#Update_26304| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_26304| s@@23) (|Seq#Update_26304| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3251) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3251| s@@24))) (= (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@6 v@@3)) (|Seq#Length_3251| s@@24)))
 :qid |stdinbpl.310:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3251| (|Seq#Update_3251| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3251| s@@24) (|Seq#Update_3251| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_47209) (Mask@@25 T@PolymorphicMapType_47230) (N@@2 Int) (k@@2 Int) ) (!  (=> (and (state Heap@@15 Mask@@25) (< AssumeFunctionsAbove 0)) (=> (and (and (>= N@@2 0) (<= 0 k@@2)) (<= k@@2 N@@2)) (= (demo__bin Heap@@15 N@@2 k@@2) (ite  (or (= k@@2 0) (or (= k@@2 N@@2) (<= N@@2 0))) 1 (+ (|demo__bin'| Heap@@15 (- N@@2 1) (- k@@2 1)) (|demo__bin'| Heap@@15 (- N@@2 1) k@@2))))))
 :qid |stdinbpl.634:15|
 :skolemid |60|
 :pattern ( (state Heap@@15 Mask@@25) (demo__bin Heap@@15 N@@2 k@@2))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_47209) (o_36 T@Ref) (f_29 T@Field_26303_158359) (v@@4 T@FrameType) ) (! (succHeap Heap@@16 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@16) (store (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@16) o_36 f_29 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@16) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@16) (store (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@16) o_36 f_29 v@@4)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_47209) (o_36@@0 T@Ref) (f_29@@0 T@Field_26303_158492) (v@@5 T@PolymorphicMapType_47758) ) (! (succHeap Heap@@17 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@17) (store (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@17) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@17) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@17) (store (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@17) o_36@@0 f_29@@0 v@@5) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_47209) (o_36@@1 T@Ref) (f_29@@1 T@Field_53435_3405) (v@@6 Int) ) (! (succHeap Heap@@18 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@18) (store (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@18) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@18) (store (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@18) o_36@@1 f_29@@1 v@@6) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@18) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_47209) (o_36@@2 T@Ref) (f_29@@2 T@Field_53321_53326) (v@@7 T@Seq_53324) ) (! (succHeap Heap@@19 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@19) (store (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@19) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@19) (store (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@19) o_36@@2 f_29@@2 v@@7) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@19) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@19)))
)))
(assert (forall ((Heap@@20 T@PolymorphicMapType_47209) (o_36@@3 T@Ref) (f_29@@3 T@Field_47282_47283) (v@@8 T@Ref) ) (! (succHeap Heap@@20 (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@20) (store (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@20) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@20)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@20) (store (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@20) o_36@@3 f_29@@3 v@@8) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@20) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@20)))
)))
(assert (forall ((Heap@@21 T@PolymorphicMapType_47209) (o_36@@4 T@Ref) (f_29@@4 T@Field_47269_53) (v@@9 Bool) ) (! (succHeap Heap@@21 (PolymorphicMapType_47209 (store (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@21) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@21)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_47209 (store (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@21) o_36@@4 f_29@@4 v@@9) (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_55474#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26311_3405#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_26303_158536#PolymorphicMapType_47209| Heap@@21) (|PolymorphicMapType_47209_47269_158359#PolymorphicMapType_47209| Heap@@21)))
)))
(assert (forall ((s@@25 T@Seq_53324) (t@@9 T@Seq_53324) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_26304| s@@25))) (= (|Seq#Drop_26304| (|Seq#Append_53324| s@@25 t@@9) n@@19) (|Seq#Append_53324| (|Seq#Drop_26304| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.425:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_26304| (|Seq#Append_53324| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3251) (t@@10 T@Seq_3251) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3251| s@@26))) (= (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20) (|Seq#Append_3251| (|Seq#Drop_3251| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.425:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3251| (|Seq#Append_3251| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_53324) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_26304| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_26304| (|Seq#Drop_26304| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_26304| s@@27 i@@7))))
 :qid |stdinbpl.361:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_26304| s@@27 n@@21) (|Seq#Index_26304| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3251) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3251| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3251| (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3251| s@@28 i@@8))))
 :qid |stdinbpl.361:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3251| s@@28 n@@22) (|Seq#Index_3251| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_53324) (s1@@7 T@Seq_53324) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_26304|)) (not (= s1@@7 |Seq#Empty_26304|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_26304| s0@@7))) (= (|Seq#Index_26304| (|Seq#Append_53324| s0@@7 s1@@7) n@@23) (|Seq#Index_26304| s0@@7 n@@23)))
 :qid |stdinbpl.301:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_26304| (|Seq#Append_53324| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_26304| s0@@7 n@@23) (|Seq#Append_53324| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3251) (s1@@8 T@Seq_3251) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3251|)) (not (= s1@@8 |Seq#Empty_3251|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3251| s0@@8))) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24) (|Seq#Index_3251| s0@@8 n@@24)))
 :qid |stdinbpl.301:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3251| (|Seq#Append_3251| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3251| s0@@8 n@@24) (|Seq#Append_3251| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_53324) (s1@@9 T@Seq_53324) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_26304|)) (not (= s1@@9 |Seq#Empty_26304|))) (<= 0 m)) (< m (|Seq#Length_26304| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_26304| s0@@9)) (|Seq#Length_26304| s0@@9)) m) (= (|Seq#Index_26304| (|Seq#Append_53324| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_26304| s0@@9))) (|Seq#Index_26304| s1@@9 m))))
 :qid |stdinbpl.306:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_26304| s1@@9 m) (|Seq#Append_53324| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3251) (s1@@10 T@Seq_3251) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3251|)) (not (= s1@@10 |Seq#Empty_3251|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3251| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10)) (|Seq#Length_3251| s0@@10)) m@@0) (= (|Seq#Index_3251| (|Seq#Append_3251| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3251| s0@@10))) (|Seq#Index_3251| s1@@10 m@@0))))
 :qid |stdinbpl.306:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3251| s1@@10 m@@0) (|Seq#Append_3251| s0@@10 s1@@10))
)))
(assert (forall ((o_36@@5 T@Ref) (f_50 T@Field_47282_47283) (Heap@@22 T@PolymorphicMapType_47209) ) (!  (=> (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@22) o_36@@5 $allocated) (select (|PolymorphicMapType_47209_26083_53#PolymorphicMapType_47209| Heap@@22) (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@22) o_36@@5 f_50) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_47209_26086_26087#PolymorphicMapType_47209| Heap@@22) o_36@@5 f_50))
)))
(assert (forall ((s@@29 T@Seq_53324) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_26304| s@@29))) (= (|Seq#Index_26304| s@@29 i@@9) x@@3)) (|Seq#Contains_53324| s@@29 x@@3))
 :qid |stdinbpl.458:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_53324| s@@29 x@@3) (|Seq#Index_26304| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3251) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3251| s@@30))) (= (|Seq#Index_3251| s@@30 i@@10) x@@4)) (|Seq#Contains_3251| s@@30 x@@4))
 :qid |stdinbpl.458:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3251| s@@30 x@@4) (|Seq#Index_3251| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_53324) (s1@@11 T@Seq_53324) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_26304| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26304| s0@@11 s1@@11))) (not (= (|Seq#Length_26304| s0@@11) (|Seq#Length_26304| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_26304| s0@@11 s1@@11))) (= (|Seq#Length_26304| s0@@11) (|Seq#Length_26304| s1@@11))) (= (|Seq#SkolemDiff_53324| s0@@11 s1@@11) (|Seq#SkolemDiff_53324| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_53324| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_53324| s0@@11 s1@@11) (|Seq#Length_26304| s0@@11))) (not (= (|Seq#Index_26304| s0@@11 (|Seq#SkolemDiff_53324| s0@@11 s1@@11)) (|Seq#Index_26304| s1@@11 (|Seq#SkolemDiff_53324| s0@@11 s1@@11))))))
 :qid |stdinbpl.562:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_26304| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3251) (s1@@12 T@Seq_3251) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3251| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (not (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3251| s0@@12 s1@@12))) (= (|Seq#Length_3251| s0@@12) (|Seq#Length_3251| s1@@12))) (= (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#SkolemDiff_3251| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3251| s0@@12 s1@@12) (|Seq#Length_3251| s0@@12))) (not (= (|Seq#Index_3251| s0@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12)) (|Seq#Index_3251| s1@@12 (|Seq#SkolemDiff_3251| s0@@12 s1@@12))))))
 :qid |stdinbpl.562:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3251| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_26303_158359) (v_1@@0 T@FrameType) (q T@Field_26303_158359) (w@@0 T@FrameType) (r T@Field_26303_158359) (u T@FrameType) ) (!  (=> (and (InsidePredicate_47269_47269 p@@1 v_1@@0 q w@@0) (InsidePredicate_47269_47269 q w@@0 r u)) (InsidePredicate_47269_47269 p@@1 v_1@@0 r u))
 :qid |stdinbpl.229:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_47269_47269 p@@1 v_1@@0 q w@@0) (InsidePredicate_47269_47269 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_53324) ) (!  (=> (= (|Seq#Length_26304| s@@31) 0) (= s@@31 |Seq#Empty_26304|))
 :qid |stdinbpl.265:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_26304| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3251) ) (!  (=> (= (|Seq#Length_3251| s@@32) 0) (= s@@32 |Seq#Empty_3251|))
 :qid |stdinbpl.265:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3251| s@@32))
)))
(assert (forall ((s@@33 T@Seq_53324) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_26304| s@@33 n@@25) |Seq#Empty_26304|))
 :qid |stdinbpl.441:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_26304| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3251) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3251| s@@34 n@@26) |Seq#Empty_3251|))
 :qid |stdinbpl.441:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3251| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

