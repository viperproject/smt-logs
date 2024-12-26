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
(declare-sort T@Field_26818_53 0)
(declare-sort T@Field_26831_26832 0)
(declare-sort T@Field_32965_3798 0)
(declare-sort T@Field_16911_81002 0)
(declare-sort T@Field_16911_80869 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_26779 0)) (((PolymorphicMapType_26779 (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| (Array T@Ref T@Field_32965_3798 Real)) (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| (Array T@Ref T@Field_26818_53 Real)) (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| (Array T@Ref T@Field_26831_26832 Real)) (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| (Array T@Ref T@Field_16911_80869 Real)) (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| (Array T@Ref T@Field_16911_81002 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27307 0)) (((PolymorphicMapType_27307 (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (Array T@Ref T@Field_26818_53 Bool)) (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (Array T@Ref T@Field_26831_26832 Bool)) (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (Array T@Ref T@Field_32965_3798 Bool)) (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (Array T@Ref T@Field_16911_80869 Bool)) (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (Array T@Ref T@Field_16911_81002 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26758 0)) (((PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| (Array T@Ref T@Field_26818_53 Bool)) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| (Array T@Ref T@Field_26831_26832 T@Ref)) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| (Array T@Ref T@Field_32965_3798 Int)) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| (Array T@Ref T@Field_16911_81002 T@PolymorphicMapType_27307)) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| (Array T@Ref T@Field_16911_80869 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_26818_53)
(declare-fun f_7 () T@Field_32965_3798)
(declare-fun g () T@Field_32965_3798)
(declare-sort T@Seq_74571 0)
(declare-fun |Seq#Length_17307| (T@Seq_74571) Int)
(declare-fun |Seq#Drop_17307| (T@Seq_74571 Int) T@Seq_74571)
(declare-sort T@Seq_3659 0)
(declare-fun |Seq#Length_3659| (T@Seq_3659) Int)
(declare-fun |Seq#Drop_3659| (T@Seq_3659 Int) T@Seq_3659)
(declare-fun succHeap (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758) Bool)
(declare-fun state (T@PolymorphicMapType_26758 T@PolymorphicMapType_26779) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_26779) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_27307)
(declare-fun |Seq#Index_17307| (T@Seq_74571 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3659| (T@Seq_3659 Int) Int)
(declare-fun |Seq#Empty_17307| () T@Seq_74571)
(declare-fun |Seq#Empty_3659| () T@Seq_3659)
(declare-fun |inv'| (T@PolymorphicMapType_26758 Int) Bool)
(declare-fun dummyFunction_3996 (Bool) Bool)
(declare-fun |inv#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_17307| (T@Seq_74571 Int T@Ref) T@Seq_74571)
(declare-fun |Seq#Update_3659| (T@Seq_3659 Int Int) T@Seq_3659)
(declare-fun |Seq#Take_17307| (T@Seq_74571 Int) T@Seq_74571)
(declare-fun |Seq#Take_3659| (T@Seq_3659 Int) T@Seq_3659)
(declare-fun |Seq#Contains_3659| (T@Seq_3659 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3659)
(declare-fun |Seq#Contains_74571| (T@Seq_74571 T@Ref) Bool)
(declare-fun |Seq#Skolem_74571| (T@Seq_74571 T@Ref) Int)
(declare-fun |Seq#Skolem_3659| (T@Seq_3659 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758 T@PolymorphicMapType_26779) Bool)
(declare-fun IsPredicateField_16911_80960 (T@Field_16911_80869) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16911 (T@Field_16911_80869) T@Field_16911_81002)
(declare-fun HasDirectPerm_16911_80933 (T@PolymorphicMapType_26779 T@Ref T@Field_16911_80869) Bool)
(declare-fun IsWandField_16911_82707 (T@Field_16911_80869) Bool)
(declare-fun WandMaskField_16911 (T@Field_16911_80869) T@Field_16911_81002)
(declare-fun |Seq#Singleton_17307| (T@Ref) T@Seq_74571)
(declare-fun |Seq#Singleton_3659| (Int) T@Seq_3659)
(declare-fun |Seq#Append_74571| (T@Seq_74571 T@Seq_74571) T@Seq_74571)
(declare-fun |Seq#Append_3659| (T@Seq_3659 T@Seq_3659) T@Seq_3659)
(declare-fun dummyHeap () T@PolymorphicMapType_26758)
(declare-fun ZeroMask () T@PolymorphicMapType_26779)
(declare-fun InsidePredicate_26818_26818 (T@Field_16911_80869 T@FrameType T@Field_16911_80869 T@FrameType) Bool)
(declare-fun IsPredicateField_16911_3798 (T@Field_32965_3798) Bool)
(declare-fun IsWandField_16911_3798 (T@Field_32965_3798) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16911_86253 (T@Field_16911_81002) Bool)
(declare-fun IsWandField_16911_86269 (T@Field_16911_81002) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16911_26832 (T@Field_26831_26832) Bool)
(declare-fun IsWandField_16911_26832 (T@Field_26831_26832) Bool)
(declare-fun IsPredicateField_16911_53 (T@Field_26818_53) Bool)
(declare-fun IsWandField_16911_53 (T@Field_26818_53) Bool)
(declare-fun HasDirectPerm_16911_86707 (T@PolymorphicMapType_26779 T@Ref T@Field_16911_81002) Bool)
(declare-fun HasDirectPerm_16911_26832 (T@PolymorphicMapType_26779 T@Ref T@Field_26831_26832) Bool)
(declare-fun HasDirectPerm_16911_53 (T@PolymorphicMapType_26779 T@Ref T@Field_26818_53) Bool)
(declare-fun HasDirectPerm_16911_3798 (T@PolymorphicMapType_26779 T@Ref T@Field_32965_3798) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun inv_1 (T@PolymorphicMapType_26758 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_26779 T@PolymorphicMapType_26779 T@PolymorphicMapType_26779) Bool)
(declare-fun |Seq#Equal_74571| (T@Seq_74571 T@Seq_74571) Bool)
(declare-fun |Seq#Equal_3659| (T@Seq_3659 T@Seq_3659) Bool)
(declare-fun |inv#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_17307| (T@Seq_74571 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3659| (T@Seq_3659 Int) Bool)
(declare-fun |Seq#SkolemDiff_74571| (T@Seq_74571 T@Seq_74571) Int)
(declare-fun |Seq#SkolemDiff_3659| (T@Seq_3659 T@Seq_3659) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_74571) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17307| s)) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) (- (|Seq#Length_17307| s) n))) (=> (< (|Seq#Length_17307| s) n) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) (|Seq#Length_17307| s))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17307| (|Seq#Drop_17307| s n)))
 :pattern ( (|Seq#Length_17307| s) (|Seq#Drop_17307| s n))
)))
(assert (forall ((s@@0 T@Seq_3659) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3659| s@@0)) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) (- (|Seq#Length_3659| s@@0) n@@0))) (=> (< (|Seq#Length_3659| s@@0) n@@0) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) (|Seq#Length_3659| s@@0))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3659| s@@0) (|Seq#Drop_3659| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_26758) (Heap1 T@PolymorphicMapType_26758) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_26758) (Mask T@PolymorphicMapType_26779) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_26758) (Heap1@@0 T@PolymorphicMapType_26758) (Heap2 T@PolymorphicMapType_26758) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16911_81002) ) (!  (not (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16911_80869) ) (!  (not (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_32965_3798) ) (!  (not (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_26831_26832) ) (!  (not (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_26818_53) ) (!  (not (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_74571) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17307| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17307| (|Seq#Drop_17307| s@@1 n@@1) j) (|Seq#Index_17307| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17307| (|Seq#Drop_17307| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3659) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3659| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3659| (|Seq#Drop_3659| s@@2 n@@2) j@@0) (|Seq#Index_3659| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3659| (|Seq#Drop_3659| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17307| |Seq#Empty_17307|) 0))
(assert (= (|Seq#Length_3659| |Seq#Empty_3659|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_26758) (v_2 Int) ) (! (dummyFunction_3996 (|inv#triggerStateless| v_2))
 :qid |stdinbpl.689:15|
 :skolemid |59|
 :pattern ( (|inv'| Heap@@0 v_2))
)))
(assert (forall ((s@@3 T@Seq_74571) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17307| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3) (|Seq#Index_17307| s@@3 n@@3)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17307| s@@3 n@@3) (|Seq#Update_17307| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3659) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3659| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3659| s@@4 n@@4)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3659| s@@4 n@@4) (|Seq#Update_3659| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_74571) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17307| s@@5)) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17307| s@@5) n@@5) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) (|Seq#Length_17307| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17307| s@@5 n@@5) (|Seq#Length_17307| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3659) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3659| s@@6)) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3659| s@@6) n@@6) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) (|Seq#Length_3659| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3659| s@@6 n@@6) (|Seq#Length_3659| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3659| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.648:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3659| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_74571) (x T@Ref) ) (!  (=> (|Seq#Contains_74571| s@@7 x) (and (and (<= 0 (|Seq#Skolem_74571| s@@7 x)) (< (|Seq#Skolem_74571| s@@7 x) (|Seq#Length_17307| s@@7))) (= (|Seq#Index_17307| s@@7 (|Seq#Skolem_74571| s@@7 x)) x)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_74571| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3659) (x@@0 Int) ) (!  (=> (|Seq#Contains_3659| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3659| s@@8 x@@0)) (< (|Seq#Skolem_3659| s@@8 x@@0) (|Seq#Length_3659| s@@8))) (= (|Seq#Index_3659| s@@8 (|Seq#Skolem_3659| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3659| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_74571) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17307| s@@9 n@@7) s@@9))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17307| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3659) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3659| s@@10 n@@8) s@@10))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3659| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.343:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_26758) (ExhaleHeap T@PolymorphicMapType_26758) (Mask@@0 T@PolymorphicMapType_26779) (pm_f_30 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16911_80933 Mask@@0 null pm_f_30) (IsPredicateField_16911_80960 pm_f_30)) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@1) null (PredicateMaskField_16911 pm_f_30)) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap) null (PredicateMaskField_16911 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_16911_80960 pm_f_30) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap) null (PredicateMaskField_16911 pm_f_30)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_26758) (ExhaleHeap@@0 T@PolymorphicMapType_26758) (Mask@@1 T@PolymorphicMapType_26779) (pm_f_30@@0 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16911_80933 Mask@@1 null pm_f_30@@0) (IsWandField_16911_82707 pm_f_30@@0)) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@2) null (WandMaskField_16911 pm_f_30@@0)) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@0) null (WandMaskField_16911 pm_f_30@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_16911_82707 pm_f_30@@0) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@0) null (WandMaskField_16911 pm_f_30@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_74571| (|Seq#Singleton_17307| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_74571| (|Seq#Singleton_17307| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3659| (|Seq#Singleton_3659| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3659| (|Seq#Singleton_3659| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_74571) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17307| s@@11))) (= (|Seq#Index_17307| (|Seq#Take_17307| s@@11 n@@9) j@@3) (|Seq#Index_17307| s@@11 j@@3)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17307| (|Seq#Take_17307| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17307| s@@11 j@@3) (|Seq#Take_17307| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3659) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3659| s@@12))) (= (|Seq#Index_3659| (|Seq#Take_3659| s@@12 n@@10) j@@4) (|Seq#Index_3659| s@@12 j@@4)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3659| (|Seq#Take_3659| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3659| s@@12 j@@4) (|Seq#Take_3659| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_74571) (t T@Seq_74571) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17307| s@@13))) (< n@@11 (|Seq#Length_17307| (|Seq#Append_74571| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17307| s@@13)) (|Seq#Length_17307| s@@13)) n@@11) (= (|Seq#Take_17307| (|Seq#Append_74571| s@@13 t) n@@11) (|Seq#Append_74571| s@@13 (|Seq#Take_17307| t (|Seq#Sub| n@@11 (|Seq#Length_17307| s@@13)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17307| (|Seq#Append_74571| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3659) (t@@0 T@Seq_3659) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3659| s@@14))) (< n@@12 (|Seq#Length_3659| (|Seq#Append_3659| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3659| s@@14)) (|Seq#Length_3659| s@@14)) n@@12) (= (|Seq#Take_3659| (|Seq#Append_3659| s@@14 t@@0) n@@12) (|Seq#Append_3659| s@@14 (|Seq#Take_3659| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3659| s@@14)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3659| (|Seq#Append_3659| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_26758) (ExhaleHeap@@1 T@PolymorphicMapType_26758) (Mask@@2 T@PolymorphicMapType_26779) (o_57 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@3) o_57 $allocated) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@1) o_57 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@1) o_57 $allocated))
)))
(assert (forall ((p T@Field_16911_80869) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_26818_26818 p v_1 p w))
 :qid |stdinbpl.285:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26818_26818 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_74571) (s1 T@Seq_74571) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17307|)) (not (= s1 |Seq#Empty_17307|))) (<= (|Seq#Length_17307| s0) n@@13)) (< n@@13 (|Seq#Length_17307| (|Seq#Append_74571| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17307| s0)) (|Seq#Length_17307| s0)) n@@13) (= (|Seq#Index_17307| (|Seq#Append_74571| s0 s1) n@@13) (|Seq#Index_17307| s1 (|Seq#Sub| n@@13 (|Seq#Length_17307| s0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17307| (|Seq#Append_74571| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3659) (s1@@0 T@Seq_3659) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3659|)) (not (= s1@@0 |Seq#Empty_3659|))) (<= (|Seq#Length_3659| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3659| (|Seq#Append_3659| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3659| s0@@0)) (|Seq#Length_3659| s0@@0)) n@@14) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@0 s1@@0) n@@14) (|Seq#Index_3659| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3659| s0@@0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3659| (|Seq#Append_3659| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_16911_3798 f_7)))
(assert  (not (IsWandField_16911_3798 f_7)))
(assert  (not (IsPredicateField_16911_3798 g)))
(assert  (not (IsWandField_16911_3798 g)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_26758) (ExhaleHeap@@2 T@PolymorphicMapType_26758) (Mask@@3 T@PolymorphicMapType_26779) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_26779) (o_2@@4 T@Ref) (f_4@@4 T@Field_16911_81002) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_16911_86253 f_4@@4))) (not (IsWandField_16911_86269 f_4@@4))) (<= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_26779) (o_2@@5 T@Ref) (f_4@@5 T@Field_16911_80869) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_16911_80960 f_4@@5))) (not (IsWandField_16911_82707 f_4@@5))) (<= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_26779) (o_2@@6 T@Ref) (f_4@@6 T@Field_26831_26832) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_16911_26832 f_4@@6))) (not (IsWandField_16911_26832 f_4@@6))) (<= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_26779) (o_2@@7 T@Ref) (f_4@@7 T@Field_26818_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_16911_53 f_4@@7))) (not (IsWandField_16911_53 f_4@@7))) (<= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_26779) (o_2@@8 T@Ref) (f_4@@8 T@Field_32965_3798) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16911_3798 f_4@@8))) (not (IsWandField_16911_3798 f_4@@8))) (<= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_26779) (o_2@@9 T@Ref) (f_4@@9 T@Field_16911_81002) ) (! (= (HasDirectPerm_16911_86707 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_86707 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_26779) (o_2@@10 T@Ref) (f_4@@10 T@Field_16911_80869) ) (! (= (HasDirectPerm_16911_80933 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_80933 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_26779) (o_2@@11 T@Ref) (f_4@@11 T@Field_26831_26832) ) (! (= (HasDirectPerm_16911_26832 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_26832 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_26779) (o_2@@12 T@Ref) (f_4@@12 T@Field_26818_53) ) (! (= (HasDirectPerm_16911_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_26779) (o_2@@13 T@Ref) (f_4@@13 T@Field_32965_3798) ) (! (= (HasDirectPerm_16911_3798 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_3798 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_26758) (ExhaleHeap@@3 T@PolymorphicMapType_26758) (Mask@@14 T@PolymorphicMapType_26779) (pm_f_30@@1 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_16911_80933 Mask@@14 null pm_f_30@@1) (IsPredicateField_16911_80960 pm_f_30@@1)) (and (and (and (and (forall ((o2_30 T@Ref) (f_58 T@Field_26818_53) ) (!  (=> (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30 f_58) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@5) o2_30 f_58) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30 f_58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30 f_58))
)) (forall ((o2_30@@0 T@Ref) (f_58@@0 T@Field_26831_26832) ) (!  (=> (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@0 f_58@@0) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@5) o2_30@@0 f_58@@0) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@0 f_58@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@0 f_58@@0))
))) (forall ((o2_30@@1 T@Ref) (f_58@@1 T@Field_32965_3798) ) (!  (=> (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@1 f_58@@1) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@5) o2_30@@1 f_58@@1) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@1 f_58@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@1 f_58@@1))
))) (forall ((o2_30@@2 T@Ref) (f_58@@2 T@Field_16911_80869) ) (!  (=> (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@2 f_58@@2) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@5) o2_30@@2 f_58@@2) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@2 f_58@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@2 f_58@@2))
))) (forall ((o2_30@@3 T@Ref) (f_58@@3 T@Field_16911_81002) ) (!  (=> (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@3 f_58@@3) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) o2_30@@3 f_58@@3) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@3 f_58@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@3 f_58@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (IsPredicateField_16911_80960 pm_f_30@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_26758) (ExhaleHeap@@4 T@PolymorphicMapType_26758) (Mask@@15 T@PolymorphicMapType_26779) (pm_f_30@@2 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_16911_80933 Mask@@15 null pm_f_30@@2) (IsWandField_16911_82707 pm_f_30@@2)) (and (and (and (and (forall ((o2_30@@4 T@Ref) (f_58@@4 T@Field_26818_53) ) (!  (=> (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@4 f_58@@4) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@6) o2_30@@4 f_58@@4) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@4 f_58@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@4 f_58@@4))
)) (forall ((o2_30@@5 T@Ref) (f_58@@5 T@Field_26831_26832) ) (!  (=> (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@5 f_58@@5) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@6) o2_30@@5 f_58@@5) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@5 f_58@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@5 f_58@@5))
))) (forall ((o2_30@@6 T@Ref) (f_58@@6 T@Field_32965_3798) ) (!  (=> (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@6 f_58@@6) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@6) o2_30@@6 f_58@@6) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@6 f_58@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@6 f_58@@6))
))) (forall ((o2_30@@7 T@Ref) (f_58@@7 T@Field_16911_80869) ) (!  (=> (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@7 f_58@@7) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@6) o2_30@@7 f_58@@7) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@7 f_58@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@7 f_58@@7))
))) (forall ((o2_30@@8 T@Ref) (f_58@@8 T@Field_16911_81002) ) (!  (=> (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@8 f_58@@8) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) o2_30@@8 f_58@@8) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@8 f_58@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@8 f_58@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (IsWandField_16911_82707 pm_f_30@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.273:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3659| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.646:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3659| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_26758) (ExhaleHeap@@5 T@PolymorphicMapType_26758) (Mask@@16 T@PolymorphicMapType_26779) (o_57@@0 T@Ref) (f_58@@9 T@Field_16911_81002) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_16911_86707 Mask@@16 o_57@@0 f_58@@9) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@7) o_57@@0 f_58@@9) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@5) o_57@@0 f_58@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@5) o_57@@0 f_58@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_26758) (ExhaleHeap@@6 T@PolymorphicMapType_26758) (Mask@@17 T@PolymorphicMapType_26779) (o_57@@1 T@Ref) (f_58@@10 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_16911_80933 Mask@@17 o_57@@1 f_58@@10) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@8) o_57@@1 f_58@@10) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@6) o_57@@1 f_58@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@6) o_57@@1 f_58@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_26758) (ExhaleHeap@@7 T@PolymorphicMapType_26758) (Mask@@18 T@PolymorphicMapType_26779) (o_57@@2 T@Ref) (f_58@@11 T@Field_26831_26832) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_16911_26832 Mask@@18 o_57@@2 f_58@@11) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@9) o_57@@2 f_58@@11) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@7) o_57@@2 f_58@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@7) o_57@@2 f_58@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_26758) (ExhaleHeap@@8 T@PolymorphicMapType_26758) (Mask@@19 T@PolymorphicMapType_26779) (o_57@@3 T@Ref) (f_58@@12 T@Field_26818_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_16911_53 Mask@@19 o_57@@3 f_58@@12) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@10) o_57@@3 f_58@@12) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@8) o_57@@3 f_58@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@8) o_57@@3 f_58@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_26758) (ExhaleHeap@@9 T@PolymorphicMapType_26758) (Mask@@20 T@PolymorphicMapType_26779) (o_57@@4 T@Ref) (f_58@@13 T@Field_32965_3798) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_16911_3798 Mask@@20 o_57@@4 f_58@@13) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@11) o_57@@4 f_58@@13) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@9) o_57@@4 f_58@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@9) o_57@@4 f_58@@13))
)))
(assert (forall ((s0@@1 T@Seq_74571) (s1@@1 T@Seq_74571) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17307|)) (not (= s1@@1 |Seq#Empty_17307|))) (= (|Seq#Length_17307| (|Seq#Append_74571| s0@@1 s1@@1)) (+ (|Seq#Length_17307| s0@@1) (|Seq#Length_17307| s1@@1))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17307| (|Seq#Append_74571| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3659) (s1@@2 T@Seq_3659) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3659|)) (not (= s1@@2 |Seq#Empty_3659|))) (= (|Seq#Length_3659| (|Seq#Append_3659| s0@@2 s1@@2)) (+ (|Seq#Length_3659| s0@@2) (|Seq#Length_3659| s1@@2))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3659| (|Seq#Append_3659| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_16911_81002) ) (! (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16911_80869) ) (! (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_26831_26832) ) (! (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26818_53) ) (! (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_32965_3798) ) (! (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_26758) (Mask@@21 T@PolymorphicMapType_26779) (v_2@@0 Int) ) (!  (=> (and (state Heap@@12 Mask@@21) (< AssumeFunctionsAbove 0)) (= (inv_1 Heap@@12 v_2@@0) (= v_2@@0 0)))
 :qid |stdinbpl.695:15|
 :skolemid |60|
 :pattern ( (state Heap@@12 Mask@@21) (inv_1 Heap@@12 v_2@@0))
)))
(assert (forall ((s@@15 T@Seq_74571) (t@@1 T@Seq_74571) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17307| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17307| s@@15)) (|Seq#Length_17307| s@@15)) n@@15) (= (|Seq#Drop_17307| (|Seq#Append_74571| s@@15 t@@1) n@@15) (|Seq#Drop_17307| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17307| s@@15))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17307| (|Seq#Append_74571| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3659) (t@@2 T@Seq_3659) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3659| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3659| s@@16)) (|Seq#Length_3659| s@@16)) n@@16) (= (|Seq#Drop_3659| (|Seq#Append_3659| s@@16 t@@2) n@@16) (|Seq#Drop_3659| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3659| s@@16))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3659| (|Seq#Append_3659| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_26779) (SummandMask1 T@PolymorphicMapType_26779) (SummandMask2 T@PolymorphicMapType_26779) (o_2@@19 T@Ref) (f_4@@19 T@Field_16911_81002) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_26779) (SummandMask1@@0 T@PolymorphicMapType_26779) (SummandMask2@@0 T@PolymorphicMapType_26779) (o_2@@20 T@Ref) (f_4@@20 T@Field_16911_80869) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_26779) (SummandMask1@@1 T@PolymorphicMapType_26779) (SummandMask2@@1 T@PolymorphicMapType_26779) (o_2@@21 T@Ref) (f_4@@21 T@Field_26831_26832) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_26779) (SummandMask1@@2 T@PolymorphicMapType_26779) (SummandMask2@@2 T@PolymorphicMapType_26779) (o_2@@22 T@Ref) (f_4@@22 T@Field_26818_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_26779) (SummandMask1@@3 T@PolymorphicMapType_26779) (SummandMask2@@3 T@PolymorphicMapType_26779) (o_2@@23 T@Ref) (f_4@@23 T@Field_32965_3798) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.645:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_74571) (b T@Seq_74571) ) (!  (=> (|Seq#Equal_74571| a b) (= a b))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_74571| a b))
)))
(assert (forall ((a@@0 T@Seq_3659) (b@@0 T@Seq_3659) ) (!  (=> (|Seq#Equal_3659| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3659| a@@0 b@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_26758) (Mask@@22 T@PolymorphicMapType_26779) (v_2@@1 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|inv'| Heap@@13 v_2@@1) (|inv#frame| EmptyFrame v_2@@1)))
 :qid |stdinbpl.702:15|
 :skolemid |61|
 :pattern ( (state Heap@@13 Mask@@22) (|inv'| Heap@@13 v_2@@1))
)))
(assert (forall ((s@@17 T@Seq_74571) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17307| s@@17))) (|Seq#ContainsTrigger_17307| s@@17 (|Seq#Index_17307| s@@17 i@@3)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17307| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3659) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3659| s@@18))) (|Seq#ContainsTrigger_3659| s@@18 (|Seq#Index_3659| s@@18 i@@4)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3659| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_74571) (s1@@3 T@Seq_74571) ) (!  (and (=> (= s0@@3 |Seq#Empty_17307|) (= (|Seq#Append_74571| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17307|) (= (|Seq#Append_74571| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_74571| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3659) (s1@@4 T@Seq_3659) ) (!  (and (=> (= s0@@4 |Seq#Empty_3659|) (= (|Seq#Append_3659| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3659|) (= (|Seq#Append_3659| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3659| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17307| (|Seq#Singleton_17307| t@@3) 0) t@@3)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17307| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3659| (|Seq#Singleton_3659| t@@4) 0) t@@4)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3659| t@@4))
)))
(assert (forall ((s@@19 T@Seq_74571) ) (! (<= 0 (|Seq#Length_17307| s@@19))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17307| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3659) ) (! (<= 0 (|Seq#Length_3659| s@@20))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3659| s@@20))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_26758) (v_2@@2 Int) ) (!  (and (= (inv_1 Heap@@14 v_2@@2) (|inv'| Heap@@14 v_2@@2)) (dummyFunction_3996 (|inv#triggerStateless| v_2@@2)))
 :qid |stdinbpl.685:15|
 :skolemid |58|
 :pattern ( (inv_1 Heap@@14 v_2@@2))
)))
(assert (forall ((s0@@5 T@Seq_74571) (s1@@5 T@Seq_74571) ) (!  (=> (|Seq#Equal_74571| s0@@5 s1@@5) (and (= (|Seq#Length_17307| s0@@5) (|Seq#Length_17307| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17307| s0@@5))) (= (|Seq#Index_17307| s0@@5 j@@6) (|Seq#Index_17307| s1@@5 j@@6)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17307| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17307| s1@@5 j@@6))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_74571| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3659) (s1@@6 T@Seq_3659) ) (!  (=> (|Seq#Equal_3659| s0@@6 s1@@6) (and (= (|Seq#Length_3659| s0@@6) (|Seq#Length_3659| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3659| s0@@6))) (= (|Seq#Index_3659| s0@@6 j@@7) (|Seq#Index_3659| s1@@6 j@@7)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3659| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3659| s1@@6 j@@7))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3659| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17307| (|Seq#Singleton_17307| t@@5)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17307| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3659| (|Seq#Singleton_3659| t@@6)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3659| t@@6))
)))
(assert (forall ((s@@21 T@Seq_74571) (t@@7 T@Seq_74571) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17307| s@@21))) (= (|Seq#Take_17307| (|Seq#Append_74571| s@@21 t@@7) n@@17) (|Seq#Take_17307| s@@21 n@@17)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17307| (|Seq#Append_74571| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3659) (t@@8 T@Seq_3659) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3659| s@@22))) (= (|Seq#Take_3659| (|Seq#Append_3659| s@@22 t@@8) n@@18) (|Seq#Take_3659| s@@22 n@@18)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3659| (|Seq#Append_3659| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_74571) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17307| s@@23))) (= (|Seq#Length_17307| (|Seq#Update_17307| s@@23 i@@5 v@@2)) (|Seq#Length_17307| s@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17307| (|Seq#Update_17307| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17307| s@@23) (|Seq#Update_17307| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3659) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3659| s@@24))) (= (|Seq#Length_3659| (|Seq#Update_3659| s@@24 i@@6 v@@3)) (|Seq#Length_3659| s@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3659| (|Seq#Update_3659| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3659| s@@24) (|Seq#Update_3659| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_26758) (o_56 T@Ref) (f_59 T@Field_16911_80869) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@15) (store (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@15) o_56 f_59 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@15) (store (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@15) o_56 f_59 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_26758) (o_56@@0 T@Ref) (f_59@@0 T@Field_16911_81002) (v@@5 T@PolymorphicMapType_27307) ) (! (succHeap Heap@@16 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@16) (store (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@16) o_56@@0 f_59@@0 v@@5) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@16) (store (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@16) o_56@@0 f_59@@0 v@@5) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_26758) (o_56@@1 T@Ref) (f_59@@1 T@Field_32965_3798) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@17) (store (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@17) o_56@@1 f_59@@1 v@@6) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@17) (store (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@17) o_56@@1 f_59@@1 v@@6) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_26758) (o_56@@2 T@Ref) (f_59@@2 T@Field_26831_26832) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@18) (store (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@18) o_56@@2 f_59@@2 v@@7) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@18) (store (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@18) o_56@@2 f_59@@2 v@@7) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_26758) (o_56@@3 T@Ref) (f_59@@3 T@Field_26818_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_26758 (store (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@19) o_56@@3 f_59@@3 v@@8) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (store (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@19) o_56@@3 f_59@@3 v@@8) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@19)))
)))
(assert (forall ((s@@25 T@Seq_74571) (t@@9 T@Seq_74571) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17307| s@@25))) (= (|Seq#Drop_17307| (|Seq#Append_74571| s@@25 t@@9) n@@19) (|Seq#Append_74571| (|Seq#Drop_17307| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17307| (|Seq#Append_74571| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3659) (t@@10 T@Seq_3659) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3659| s@@26))) (= (|Seq#Drop_3659| (|Seq#Append_3659| s@@26 t@@10) n@@20) (|Seq#Append_3659| (|Seq#Drop_3659| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3659| (|Seq#Append_3659| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_74571) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17307| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17307| (|Seq#Drop_17307| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17307| s@@27 i@@7))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17307| s@@27 n@@21) (|Seq#Index_17307| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3659) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3659| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3659| (|Seq#Drop_3659| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3659| s@@28 i@@8))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3659| s@@28 n@@22) (|Seq#Index_3659| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_74571) (s1@@7 T@Seq_74571) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17307|)) (not (= s1@@7 |Seq#Empty_17307|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17307| s0@@7))) (= (|Seq#Index_17307| (|Seq#Append_74571| s0@@7 s1@@7) n@@23) (|Seq#Index_17307| s0@@7 n@@23)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17307| (|Seq#Append_74571| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17307| s0@@7 n@@23) (|Seq#Append_74571| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3659) (s1@@8 T@Seq_3659) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3659|)) (not (= s1@@8 |Seq#Empty_3659|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3659| s0@@8))) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@8 s1@@8) n@@24) (|Seq#Index_3659| s0@@8 n@@24)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3659| (|Seq#Append_3659| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3659| s0@@8 n@@24) (|Seq#Append_3659| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_74571) (s1@@9 T@Seq_74571) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17307|)) (not (= s1@@9 |Seq#Empty_17307|))) (<= 0 m)) (< m (|Seq#Length_17307| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17307| s0@@9)) (|Seq#Length_17307| s0@@9)) m) (= (|Seq#Index_17307| (|Seq#Append_74571| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17307| s0@@9))) (|Seq#Index_17307| s1@@9 m))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17307| s1@@9 m) (|Seq#Append_74571| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3659) (s1@@10 T@Seq_3659) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3659|)) (not (= s1@@10 |Seq#Empty_3659|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3659| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3659| s0@@10)) (|Seq#Length_3659| s0@@10)) m@@0) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3659| s0@@10))) (|Seq#Index_3659| s1@@10 m@@0))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3659| s1@@10 m@@0) (|Seq#Append_3659| s0@@10 s1@@10))
)))
(assert (forall ((o_56@@4 T@Ref) (f_57 T@Field_26831_26832) (Heap@@20 T@PolymorphicMapType_26758) ) (!  (=> (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@20) o_56@@4 $allocated) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@20) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@20) o_56@@4 f_57) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@20) o_56@@4 f_57))
)))
(assert (forall ((s@@29 T@Seq_74571) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17307| s@@29))) (= (|Seq#Index_17307| s@@29 i@@9) x@@3)) (|Seq#Contains_74571| s@@29 x@@3))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_74571| s@@29 x@@3) (|Seq#Index_17307| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3659) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3659| s@@30))) (= (|Seq#Index_3659| s@@30 i@@10) x@@4)) (|Seq#Contains_3659| s@@30 x@@4))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3659| s@@30 x@@4) (|Seq#Index_3659| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_74571) (s1@@11 T@Seq_74571) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_74571| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_74571| s0@@11 s1@@11))) (not (= (|Seq#Length_17307| s0@@11) (|Seq#Length_17307| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_74571| s0@@11 s1@@11))) (= (|Seq#Length_17307| s0@@11) (|Seq#Length_17307| s1@@11))) (= (|Seq#SkolemDiff_74571| s0@@11 s1@@11) (|Seq#SkolemDiff_74571| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_74571| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_74571| s0@@11 s1@@11) (|Seq#Length_17307| s0@@11))) (not (= (|Seq#Index_17307| s0@@11 (|Seq#SkolemDiff_74571| s0@@11 s1@@11)) (|Seq#Index_17307| s1@@11 (|Seq#SkolemDiff_74571| s0@@11 s1@@11))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_74571| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3659) (s1@@12 T@Seq_3659) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3659| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3659| s0@@12 s1@@12))) (not (= (|Seq#Length_3659| s0@@12) (|Seq#Length_3659| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3659| s0@@12 s1@@12))) (= (|Seq#Length_3659| s0@@12) (|Seq#Length_3659| s1@@12))) (= (|Seq#SkolemDiff_3659| s0@@12 s1@@12) (|Seq#SkolemDiff_3659| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3659| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3659| s0@@12 s1@@12) (|Seq#Length_3659| s0@@12))) (not (= (|Seq#Index_3659| s0@@12 (|Seq#SkolemDiff_3659| s0@@12 s1@@12)) (|Seq#Index_3659| s1@@12 (|Seq#SkolemDiff_3659| s0@@12 s1@@12))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3659| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_16911_80869) (v_1@@0 T@FrameType) (q T@Field_16911_80869) (w@@0 T@FrameType) (r T@Field_16911_80869) (u T@FrameType) ) (!  (=> (and (InsidePredicate_26818_26818 p@@1 v_1@@0 q w@@0) (InsidePredicate_26818_26818 q w@@0 r u)) (InsidePredicate_26818_26818 p@@1 v_1@@0 r u))
 :qid |stdinbpl.280:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26818_26818 p@@1 v_1@@0 q w@@0) (InsidePredicate_26818_26818 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_74571) ) (!  (=> (= (|Seq#Length_17307| s@@31) 0) (= s@@31 |Seq#Empty_17307|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17307| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3659) ) (!  (=> (= (|Seq#Length_3659| s@@32) 0) (= s@@32 |Seq#Empty_3659|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3659| s@@32))
)))
(assert (forall ((s@@33 T@Seq_74571) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17307| s@@33 n@@25) |Seq#Empty_17307|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17307| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3659) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3659| s@@34 n@@26) |Seq#Empty_3659|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3659| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun Heap@@21 () T@PolymorphicMapType_26758)
(declare-fun z_19 () T@Ref)
(declare-fun QPMask@3 () T@PolymorphicMapType_26779)
(declare-fun x@@5 () T@Ref)
(declare-fun y@@1 () T@Ref)
(declare-fun fun02_1 (Int) Int)
(declare-fun qpRange27 (T@Ref) Bool)
(declare-fun invRecv27 (T@Ref) T@Ref)
(declare-fun QPMask@2 () T@PolymorphicMapType_26779)
(declare-fun qpRange26 (T@Ref) Bool)
(declare-fun invRecv26 (T@Ref) T@Ref)
(declare-fun QPMask@1 () T@PolymorphicMapType_26779)
(declare-fun qpRange25 (T@Ref) Bool)
(declare-fun invRecv25 (T@Ref) T@Ref)
(declare-fun QPMask@0 () T@PolymorphicMapType_26779)
(declare-fun qpRange24 (T@Ref) Bool)
(declare-fun invRecv24 (T@Ref) T@Ref)
(set-info :boogie-vc-id test06)
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
 (=> (= (ControlFlow 0 0) 25) (let ((anon12_correct true))
(let ((anon20_Else_correct  (=> (and (>= 0 (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_19 f_7)) (= (ControlFlow 0 13) 9)) anon12_correct)))
(let ((anon20_Then_correct  (=> (> (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_19 f_7) 0) (and (=> (= (ControlFlow 0 11) (- 0 12)) (HasDirectPerm_16911_3798 QPMask@3 z_19 g)) (=> (HasDirectPerm_16911_3798 QPMask@3 z_19 g) (=> (= (ControlFlow 0 11) 9) anon12_correct))))))
(let ((anon19_Then_correct  (=> (or (= z_19 x@@5) (= z_19 y@@1)) (and (=> (= (ControlFlow 0 14) (- 0 15)) (HasDirectPerm_16911_3798 QPMask@3 z_19 f_7)) (=> (HasDirectPerm_16911_3798 QPMask@3 z_19 f_7) (and (=> (= (ControlFlow 0 14) 11) anon20_Then_correct) (=> (= (ControlFlow 0 14) 13) anon20_Else_correct)))))))
(let ((anon19_Else_correct  (=> (and (not (or (= z_19 x@@5) (= z_19 y@@1))) (= (ControlFlow 0 10) 9)) anon12_correct)))
(let ((anon18_Else_correct  (=> (forall ((z_9_1 T@Ref) ) (!  (=> (or (= z_9_1 x@@5) (= z_9_1 y@@1)) (and (> (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_9_1 f_7) 0) (> (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_9_1 g) 0)))
 :qid |stdinbpl.2668:20|
 :skolemid |234|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_9_1 f_7) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_9_1 g))
)) (=> (and (state Heap@@21 QPMask@3) (state Heap@@21 QPMask@3)) (and (=> (= (ControlFlow 0 6) (- 0 8)) (HasDirectPerm_16911_3798 QPMask@3 y@@1 f_7)) (=> (HasDirectPerm_16911_3798 QPMask@3 y@@1 f_7) (=> (= (fun02_1 (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) y@@1 f_7)) 42) (=> (and (state Heap@@21 QPMask@3) (state Heap@@21 QPMask@3)) (and (=> (= (ControlFlow 0 6) (- 0 7)) (HasDirectPerm_16911_3798 QPMask@3 y@@1 g)) (=> (HasDirectPerm_16911_3798 QPMask@3 y@@1 g) (=> (= (ControlFlow 0 6) (- 0 5)) (> (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) y@@1 g) 0))))))))))))
(let ((anon17_Else_correct  (and (=> (= (ControlFlow 0 16) (- 0 17)) (forall ((z_7 T@Ref) (z_7_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_7 z_7_1)) (= z_7 y@@1)) (= z_7_1 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_7 z_7_1)))
 :qid |stdinbpl.2611:15|
 :skolemid |228|
))) (=> (forall ((z_7@@0 T@Ref) (z_7_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_7@@0 z_7_1@@0)) (= z_7@@0 y@@1)) (= z_7_1@@0 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_7@@0 z_7_1@@0)))
 :qid |stdinbpl.2611:15|
 :skolemid |228|
)) (=> (and (and (forall ((z_7@@1 T@Ref) ) (!  (=> (and (= z_7@@1 y@@1) (< NoPerm FullPerm)) (and (qpRange27 z_7@@1) (= (invRecv27 z_7@@1) z_7@@1)))
 :qid |stdinbpl.2617:22|
 :skolemid |229|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_7@@1 g))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) z_7@@1 g))
)) (forall ((o_4 T@Ref) ) (!  (=> (and (and (= (invRecv27 o_4) y@@1) (< NoPerm FullPerm)) (qpRange27 o_4)) (= (invRecv27 o_4) o_4))
 :qid |stdinbpl.2621:22|
 :skolemid |230|
 :pattern ( (invRecv27 o_4))
))) (and (forall ((z_7@@2 T@Ref) ) (!  (=> (= z_7@@2 y@@1) (not (= z_7@@2 null)))
 :qid |stdinbpl.2627:22|
 :skolemid |231|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_7@@2 g))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) z_7@@2 g))
)) (forall ((o_4@@0 T@Ref) ) (!  (and (=> (and (and (= (invRecv27 o_4@@0) y@@1) (< NoPerm FullPerm)) (qpRange27 o_4@@0)) (and (=> (< NoPerm FullPerm) (= (invRecv27 o_4@@0) o_4@@0)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) o_4@@0 g) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@0 g) FullPerm)))) (=> (not (and (and (= (invRecv27 o_4@@0) y@@1) (< NoPerm FullPerm)) (qpRange27 o_4@@0))) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) o_4@@0 g) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@0 g))))
 :qid |stdinbpl.2633:22|
 :skolemid |232|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) o_4@@0 g))
)))) (=> (and (and (and (and (and (and (and (forall ((o_4@@1 T@Ref) (f_5 T@Field_26818_53) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@2) o_4@@1 f_5) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@3) o_4@@1 f_5)))
 :qid |stdinbpl.2637:29|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@2) o_4@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@3) o_4@@1 f_5))
)) (forall ((o_4@@2 T@Ref) (f_5@@0 T@Field_26831_26832) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@2) o_4@@2 f_5@@0) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@3) o_4@@2 f_5@@0)))
 :qid |stdinbpl.2637:29|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@2) o_4@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@3) o_4@@2 f_5@@0))
))) (forall ((o_4@@3 T@Ref) (f_5@@1 T@Field_32965_3798) ) (!  (=> (not (= f_5@@1 g)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@3 f_5@@1) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) o_4@@3 f_5@@1)))
 :qid |stdinbpl.2637:29|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@3) o_4@@3 f_5@@1))
))) (forall ((o_4@@4 T@Ref) (f_5@@2 T@Field_16911_80869) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@2) o_4@@4 f_5@@2) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@3) o_4@@4 f_5@@2)))
 :qid |stdinbpl.2637:29|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@2) o_4@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@3) o_4@@4 f_5@@2))
))) (forall ((o_4@@5 T@Ref) (f_5@@3 T@Field_16911_81002) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@2) o_4@@5 f_5@@3) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@3) o_4@@5 f_5@@3)))
 :qid |stdinbpl.2637:29|
 :skolemid |233|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@2) o_4@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@3) o_4@@5 f_5@@3))
))) (state Heap@@21 QPMask@3)) (and (state Heap@@21 QPMask@3) (state Heap@@21 QPMask@3))) (and (and (not (= x@@5 null)) (not (= y@@1 null))) (and (state Heap@@21 QPMask@3) (state Heap@@21 QPMask@3)))) (and (and (=> (= (ControlFlow 0 16) 6) anon18_Else_correct) (=> (= (ControlFlow 0 16) 14) anon19_Then_correct)) (=> (= (ControlFlow 0 16) 10) anon19_Else_correct))))))))
(let ((anon17_Then_correct true))
(let ((anon16_Else_correct  (and (=> (= (ControlFlow 0 18) (- 0 19)) (forall ((z_5 T@Ref) (z_5_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_5 z_5_1)) (= z_5 x@@5)) (= z_5_1 x@@5)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_5 z_5_1)))
 :qid |stdinbpl.2568:15|
 :skolemid |222|
))) (=> (forall ((z_5@@0 T@Ref) (z_5_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_5@@0 z_5_1@@0)) (= z_5@@0 x@@5)) (= z_5_1@@0 x@@5)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_5@@0 z_5_1@@0)))
 :qid |stdinbpl.2568:15|
 :skolemid |222|
)) (=> (and (and (forall ((z_5@@1 T@Ref) ) (!  (=> (and (= z_5@@1 x@@5) (< NoPerm FullPerm)) (and (qpRange26 z_5@@1) (= (invRecv26 z_5@@1) z_5@@1)))
 :qid |stdinbpl.2574:22|
 :skolemid |223|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_5@@1 g))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) z_5@@1 g))
)) (forall ((o_4@@6 T@Ref) ) (!  (=> (and (and (= (invRecv26 o_4@@6) x@@5) (< NoPerm FullPerm)) (qpRange26 o_4@@6)) (= (invRecv26 o_4@@6) o_4@@6))
 :qid |stdinbpl.2578:22|
 :skolemid |224|
 :pattern ( (invRecv26 o_4@@6))
))) (and (forall ((z_5@@2 T@Ref) ) (!  (=> (= z_5@@2 x@@5) (not (= z_5@@2 null)))
 :qid |stdinbpl.2584:22|
 :skolemid |225|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_5@@2 g))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) z_5@@2 g))
)) (forall ((o_4@@7 T@Ref) ) (!  (and (=> (and (and (= (invRecv26 o_4@@7) x@@5) (< NoPerm FullPerm)) (qpRange26 o_4@@7)) (and (=> (< NoPerm FullPerm) (= (invRecv26 o_4@@7) o_4@@7)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@7 g) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@7 g) FullPerm)))) (=> (not (and (and (= (invRecv26 o_4@@7) x@@5) (< NoPerm FullPerm)) (qpRange26 o_4@@7))) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@7 g) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@7 g))))
 :qid |stdinbpl.2590:22|
 :skolemid |226|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@7 g))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@8 T@Ref) (f_5@@4 T@Field_26818_53) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@1) o_4@@8 f_5@@4) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@2) o_4@@8 f_5@@4)))
 :qid |stdinbpl.2594:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@1) o_4@@8 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@2) o_4@@8 f_5@@4))
)) (forall ((o_4@@9 T@Ref) (f_5@@5 T@Field_26831_26832) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@1) o_4@@9 f_5@@5) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@2) o_4@@9 f_5@@5)))
 :qid |stdinbpl.2594:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@1) o_4@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@2) o_4@@9 f_5@@5))
))) (forall ((o_4@@10 T@Ref) (f_5@@6 T@Field_32965_3798) ) (!  (=> (not (= f_5@@6 g)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@10 f_5@@6) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@10 f_5@@6)))
 :qid |stdinbpl.2594:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@2) o_4@@10 f_5@@6))
))) (forall ((o_4@@11 T@Ref) (f_5@@7 T@Field_16911_80869) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@1) o_4@@11 f_5@@7) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@2) o_4@@11 f_5@@7)))
 :qid |stdinbpl.2594:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@1) o_4@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@2) o_4@@11 f_5@@7))
))) (forall ((o_4@@12 T@Ref) (f_5@@8 T@Field_16911_81002) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@1) o_4@@12 f_5@@8) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@2) o_4@@12 f_5@@8)))
 :qid |stdinbpl.2594:29|
 :skolemid |227|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@1) o_4@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@2) o_4@@12 f_5@@8))
))) (state Heap@@21 QPMask@2)) (and (state Heap@@21 QPMask@2) (state Heap@@21 QPMask@2))) (and (=> (= (ControlFlow 0 18) 4) anon17_Then_correct) (=> (= (ControlFlow 0 18) 16) anon17_Else_correct))))))))
(let ((anon16_Then_correct true))
(let ((anon15_Else_correct  (and (=> (= (ControlFlow 0 20) (- 0 21)) (forall ((z_3 T@Ref) (z_3_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3 z_3_1)) (= z_3 y@@1)) (= z_3_1 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3 z_3_1)))
 :qid |stdinbpl.2525:15|
 :skolemid |216|
))) (=> (forall ((z_3@@0 T@Ref) (z_3_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_3@@0 z_3_1@@0)) (= z_3@@0 y@@1)) (= z_3_1@@0 y@@1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_3@@0 z_3_1@@0)))
 :qid |stdinbpl.2525:15|
 :skolemid |216|
)) (=> (and (and (forall ((z_3@@1 T@Ref) ) (!  (=> (and (= z_3@@1 y@@1) (< NoPerm FullPerm)) (and (qpRange25 z_3@@1) (= (invRecv25 z_3@@1) z_3@@1)))
 :qid |stdinbpl.2531:22|
 :skolemid |217|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_3@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) z_3@@1 f_7))
)) (forall ((o_4@@13 T@Ref) ) (!  (=> (and (and (= (invRecv25 o_4@@13) y@@1) (< NoPerm FullPerm)) (qpRange25 o_4@@13)) (= (invRecv25 o_4@@13) o_4@@13))
 :qid |stdinbpl.2535:22|
 :skolemid |218|
 :pattern ( (invRecv25 o_4@@13))
))) (and (forall ((z_3@@2 T@Ref) ) (!  (=> (= z_3@@2 y@@1) (not (= z_3@@2 null)))
 :qid |stdinbpl.2541:22|
 :skolemid |219|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_3@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) z_3@@2 f_7))
)) (forall ((o_4@@14 T@Ref) ) (!  (and (=> (and (and (= (invRecv25 o_4@@14) y@@1) (< NoPerm FullPerm)) (qpRange25 o_4@@14)) (and (=> (< NoPerm FullPerm) (= (invRecv25 o_4@@14) o_4@@14)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@14 f_7) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@14 f_7) FullPerm)))) (=> (not (and (and (= (invRecv25 o_4@@14) y@@1) (< NoPerm FullPerm)) (qpRange25 o_4@@14))) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@14 f_7) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@14 f_7))))
 :qid |stdinbpl.2547:22|
 :skolemid |220|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@14 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@15 T@Ref) (f_5@@9 T@Field_26818_53) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@0) o_4@@15 f_5@@9) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@1) o_4@@15 f_5@@9)))
 :qid |stdinbpl.2551:29|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@0) o_4@@15 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@1) o_4@@15 f_5@@9))
)) (forall ((o_4@@16 T@Ref) (f_5@@10 T@Field_26831_26832) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@0) o_4@@16 f_5@@10) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@1) o_4@@16 f_5@@10)))
 :qid |stdinbpl.2551:29|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@0) o_4@@16 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@1) o_4@@16 f_5@@10))
))) (forall ((o_4@@17 T@Ref) (f_5@@11 T@Field_32965_3798) ) (!  (=> (not (= f_5@@11 f_7)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@17 f_5@@11) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@17 f_5@@11)))
 :qid |stdinbpl.2551:29|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@1) o_4@@17 f_5@@11))
))) (forall ((o_4@@18 T@Ref) (f_5@@12 T@Field_16911_80869) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@0) o_4@@18 f_5@@12) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@1) o_4@@18 f_5@@12)))
 :qid |stdinbpl.2551:29|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@0) o_4@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@1) o_4@@18 f_5@@12))
))) (forall ((o_4@@19 T@Ref) (f_5@@13 T@Field_16911_81002) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@0) o_4@@19 f_5@@13) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@1) o_4@@19 f_5@@13)))
 :qid |stdinbpl.2551:29|
 :skolemid |221|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@0) o_4@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@1) o_4@@19 f_5@@13))
))) (state Heap@@21 QPMask@1)) (and (state Heap@@21 QPMask@1) (state Heap@@21 QPMask@1))) (and (=> (= (ControlFlow 0 20) 3) anon16_Then_correct) (=> (= (ControlFlow 0 20) 18) anon16_Else_correct))))))))
(let ((anon15_Then_correct true))
(let ((anon14_Else_correct  (and (=> (= (ControlFlow 0 22) (- 0 23)) (forall ((z_1 T@Ref) (z_1_1 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1 z_1_1)) (= z_1 x@@5)) (= z_1_1 x@@5)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1 z_1_1)))
 :qid |stdinbpl.2482:15|
 :skolemid |210|
))) (=> (forall ((z_1@@0 T@Ref) (z_1_1@@0 T@Ref) ) (!  (=> (and (and (and (and (not (= z_1@@0 z_1_1@@0)) (= z_1@@0 x@@5)) (= z_1_1@@0 x@@5)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= z_1@@0 z_1_1@@0)))
 :qid |stdinbpl.2482:15|
 :skolemid |210|
)) (=> (and (and (forall ((z_1@@1 T@Ref) ) (!  (=> (and (= z_1@@1 x@@5) (< NoPerm FullPerm)) (and (qpRange24 z_1@@1) (= (invRecv24 z_1@@1) z_1@@1)))
 :qid |stdinbpl.2488:22|
 :skolemid |211|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_1@@1 f_7))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) z_1@@1 f_7))
)) (forall ((o_4@@20 T@Ref) ) (!  (=> (and (and (= (invRecv24 o_4@@20) x@@5) (< NoPerm FullPerm)) (qpRange24 o_4@@20)) (= (invRecv24 o_4@@20) o_4@@20))
 :qid |stdinbpl.2492:22|
 :skolemid |212|
 :pattern ( (invRecv24 o_4@@20))
))) (and (forall ((z_1@@2 T@Ref) ) (!  (=> (= z_1@@2 x@@5) (not (= z_1@@2 null)))
 :qid |stdinbpl.2498:22|
 :skolemid |213|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@21) z_1@@2 f_7))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) z_1@@2 f_7))
)) (forall ((o_4@@21 T@Ref) ) (!  (and (=> (and (and (= (invRecv24 o_4@@21) x@@5) (< NoPerm FullPerm)) (qpRange24 o_4@@21)) (and (=> (< NoPerm FullPerm) (= (invRecv24 o_4@@21) o_4@@21)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@21 f_7) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_4@@21 f_7) FullPerm)))) (=> (not (and (and (= (invRecv24 o_4@@21) x@@5) (< NoPerm FullPerm)) (qpRange24 o_4@@21))) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@21 f_7) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_4@@21 f_7))))
 :qid |stdinbpl.2504:22|
 :skolemid |214|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@21 f_7))
)))) (=> (and (and (and (and (and (and (forall ((o_4@@22 T@Ref) (f_5@@14 T@Field_26818_53) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_4@@22 f_5@@14) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@0) o_4@@22 f_5@@14)))
 :qid |stdinbpl.2508:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_4@@22 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| QPMask@0) o_4@@22 f_5@@14))
)) (forall ((o_4@@23 T@Ref) (f_5@@15 T@Field_26831_26832) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_4@@23 f_5@@15) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@0) o_4@@23 f_5@@15)))
 :qid |stdinbpl.2508:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_4@@23 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| QPMask@0) o_4@@23 f_5@@15))
))) (forall ((o_4@@24 T@Ref) (f_5@@16 T@Field_32965_3798) ) (!  (=> (not (= f_5@@16 f_7)) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_4@@24 f_5@@16) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@24 f_5@@16)))
 :qid |stdinbpl.2508:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_4@@24 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| QPMask@0) o_4@@24 f_5@@16))
))) (forall ((o_4@@25 T@Ref) (f_5@@17 T@Field_16911_80869) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_4@@25 f_5@@17) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@0) o_4@@25 f_5@@17)))
 :qid |stdinbpl.2508:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_4@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| QPMask@0) o_4@@25 f_5@@17))
))) (forall ((o_4@@26 T@Ref) (f_5@@18 T@Field_16911_81002) ) (!  (=> true (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_4@@26 f_5@@18) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@0) o_4@@26 f_5@@18)))
 :qid |stdinbpl.2508:29|
 :skolemid |215|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_4@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| QPMask@0) o_4@@26 f_5@@18))
))) (state Heap@@21 QPMask@0)) (and (state Heap@@21 QPMask@0) (state Heap@@21 QPMask@0))) (and (=> (= (ControlFlow 0 22) 2) anon15_Then_correct) (=> (= (ControlFlow 0 22) 20) anon15_Else_correct))))))))
(let ((anon14_Then_correct true))
(let ((anon0_correct  (=> (state Heap@@21 ZeroMask) (=> (and (and (= AssumeFunctionsAbove (- 0 1)) AssumePermUpperBound) (and (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@21) x@@5 $allocated) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@21) y@@1 $allocated))) (and (=> (= (ControlFlow 0 24) 1) anon14_Then_correct) (=> (= (ControlFlow 0 24) 22) anon14_Else_correct))))))
(let ((PreconditionGeneratedEntry_correct  (=> (= (ControlFlow 0 25) 24) anon0_correct)))
PreconditionGeneratedEntry_correct)))))))))))))))))
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
(declare-sort T@Field_26818_53 0)
(declare-sort T@Field_26831_26832 0)
(declare-sort T@Field_32965_3798 0)
(declare-sort T@Field_16911_81002 0)
(declare-sort T@Field_16911_80869 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_26779 0)) (((PolymorphicMapType_26779 (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| (Array T@Ref T@Field_32965_3798 Real)) (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| (Array T@Ref T@Field_26818_53 Real)) (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| (Array T@Ref T@Field_26831_26832 Real)) (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| (Array T@Ref T@Field_16911_80869 Real)) (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| (Array T@Ref T@Field_16911_81002 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_27307 0)) (((PolymorphicMapType_27307 (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (Array T@Ref T@Field_26818_53 Bool)) (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (Array T@Ref T@Field_26831_26832 Bool)) (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (Array T@Ref T@Field_32965_3798 Bool)) (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (Array T@Ref T@Field_16911_80869 Bool)) (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (Array T@Ref T@Field_16911_81002 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_26758 0)) (((PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| (Array T@Ref T@Field_26818_53 Bool)) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| (Array T@Ref T@Field_26831_26832 T@Ref)) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| (Array T@Ref T@Field_32965_3798 Int)) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| (Array T@Ref T@Field_16911_81002 T@PolymorphicMapType_27307)) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| (Array T@Ref T@Field_16911_80869 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_26818_53)
(declare-fun f_7 () T@Field_32965_3798)
(declare-fun g () T@Field_32965_3798)
(declare-sort T@Seq_74571 0)
(declare-fun |Seq#Length_17307| (T@Seq_74571) Int)
(declare-fun |Seq#Drop_17307| (T@Seq_74571 Int) T@Seq_74571)
(declare-sort T@Seq_3659 0)
(declare-fun |Seq#Length_3659| (T@Seq_3659) Int)
(declare-fun |Seq#Drop_3659| (T@Seq_3659 Int) T@Seq_3659)
(declare-fun succHeap (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758) Bool)
(declare-fun state (T@PolymorphicMapType_26758 T@PolymorphicMapType_26779) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_26779) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_27307)
(declare-fun |Seq#Index_17307| (T@Seq_74571 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3659| (T@Seq_3659 Int) Int)
(declare-fun |Seq#Empty_17307| () T@Seq_74571)
(declare-fun |Seq#Empty_3659| () T@Seq_3659)
(declare-fun |inv'| (T@PolymorphicMapType_26758 Int) Bool)
(declare-fun dummyFunction_3996 (Bool) Bool)
(declare-fun |inv#triggerStateless| (Int) Bool)
(declare-fun |Seq#Update_17307| (T@Seq_74571 Int T@Ref) T@Seq_74571)
(declare-fun |Seq#Update_3659| (T@Seq_3659 Int Int) T@Seq_3659)
(declare-fun |Seq#Take_17307| (T@Seq_74571 Int) T@Seq_74571)
(declare-fun |Seq#Take_3659| (T@Seq_3659 Int) T@Seq_3659)
(declare-fun |Seq#Contains_3659| (T@Seq_3659 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3659)
(declare-fun |Seq#Contains_74571| (T@Seq_74571 T@Ref) Bool)
(declare-fun |Seq#Skolem_74571| (T@Seq_74571 T@Ref) Int)
(declare-fun |Seq#Skolem_3659| (T@Seq_3659 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_26758 T@PolymorphicMapType_26758 T@PolymorphicMapType_26779) Bool)
(declare-fun IsPredicateField_16911_80960 (T@Field_16911_80869) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_16911 (T@Field_16911_80869) T@Field_16911_81002)
(declare-fun HasDirectPerm_16911_80933 (T@PolymorphicMapType_26779 T@Ref T@Field_16911_80869) Bool)
(declare-fun IsWandField_16911_82707 (T@Field_16911_80869) Bool)
(declare-fun WandMaskField_16911 (T@Field_16911_80869) T@Field_16911_81002)
(declare-fun |Seq#Singleton_17307| (T@Ref) T@Seq_74571)
(declare-fun |Seq#Singleton_3659| (Int) T@Seq_3659)
(declare-fun |Seq#Append_74571| (T@Seq_74571 T@Seq_74571) T@Seq_74571)
(declare-fun |Seq#Append_3659| (T@Seq_3659 T@Seq_3659) T@Seq_3659)
(declare-fun dummyHeap () T@PolymorphicMapType_26758)
(declare-fun ZeroMask () T@PolymorphicMapType_26779)
(declare-fun InsidePredicate_26818_26818 (T@Field_16911_80869 T@FrameType T@Field_16911_80869 T@FrameType) Bool)
(declare-fun IsPredicateField_16911_3798 (T@Field_32965_3798) Bool)
(declare-fun IsWandField_16911_3798 (T@Field_32965_3798) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_16911_86253 (T@Field_16911_81002) Bool)
(declare-fun IsWandField_16911_86269 (T@Field_16911_81002) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_16911_26832 (T@Field_26831_26832) Bool)
(declare-fun IsWandField_16911_26832 (T@Field_26831_26832) Bool)
(declare-fun IsPredicateField_16911_53 (T@Field_26818_53) Bool)
(declare-fun IsWandField_16911_53 (T@Field_26818_53) Bool)
(declare-fun HasDirectPerm_16911_86707 (T@PolymorphicMapType_26779 T@Ref T@Field_16911_81002) Bool)
(declare-fun HasDirectPerm_16911_26832 (T@PolymorphicMapType_26779 T@Ref T@Field_26831_26832) Bool)
(declare-fun HasDirectPerm_16911_53 (T@PolymorphicMapType_26779 T@Ref T@Field_26818_53) Bool)
(declare-fun HasDirectPerm_16911_3798 (T@PolymorphicMapType_26779 T@Ref T@Field_32965_3798) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun inv_1 (T@PolymorphicMapType_26758 Int) Bool)
(declare-fun AssumeFunctionsAbove () Int)
(declare-fun sumMask (T@PolymorphicMapType_26779 T@PolymorphicMapType_26779 T@PolymorphicMapType_26779) Bool)
(declare-fun |Seq#Equal_74571| (T@Seq_74571 T@Seq_74571) Bool)
(declare-fun |Seq#Equal_3659| (T@Seq_3659 T@Seq_3659) Bool)
(declare-fun |inv#frame| (T@FrameType Int) Bool)
(declare-fun |Seq#ContainsTrigger_17307| (T@Seq_74571 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3659| (T@Seq_3659 Int) Bool)
(declare-fun |Seq#SkolemDiff_74571| (T@Seq_74571 T@Seq_74571) Int)
(declare-fun |Seq#SkolemDiff_3659| (T@Seq_3659 T@Seq_3659) Int)
(assert (distinct f_7 g)
)
(assert (forall ((s T@Seq_74571) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_17307| s)) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) (- (|Seq#Length_17307| s) n))) (=> (< (|Seq#Length_17307| s) n) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_17307| (|Seq#Drop_17307| s n)) (|Seq#Length_17307| s))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_17307| (|Seq#Drop_17307| s n)))
 :pattern ( (|Seq#Length_17307| s) (|Seq#Drop_17307| s n))
)))
(assert (forall ((s@@0 T@Seq_3659) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3659| s@@0)) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) (- (|Seq#Length_3659| s@@0) n@@0))) (=> (< (|Seq#Length_3659| s@@0) n@@0) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)) (|Seq#Length_3659| s@@0))))
 :qid |stdinbpl.387:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3659| (|Seq#Drop_3659| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3659| s@@0) (|Seq#Drop_3659| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_26758) (Heap1 T@PolymorphicMapType_26758) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_26758) (Mask T@PolymorphicMapType_26779) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_26758) (Heap1@@0 T@PolymorphicMapType_26758) (Heap2 T@PolymorphicMapType_26758) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_16911_81002) ) (!  (not (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_16911_80869) ) (!  (not (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_32965_3798) ) (!  (not (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_26831_26832) ) (!  (not (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_26818_53) ) (!  (not (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((s@@1 T@Seq_74571) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_17307| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_17307| (|Seq#Drop_17307| s@@1 n@@1) j) (|Seq#Index_17307| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_17307| (|Seq#Drop_17307| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3659) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3659| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3659| (|Seq#Drop_3659| s@@2 n@@2) j@@0) (|Seq#Index_3659| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.408:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3659| (|Seq#Drop_3659| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_17307| |Seq#Empty_17307|) 0))
(assert (= (|Seq#Length_3659| |Seq#Empty_3659|) 0))
(assert (forall ((Heap@@0 T@PolymorphicMapType_26758) (v_2 Int) ) (! (dummyFunction_3996 (|inv#triggerStateless| v_2))
 :qid |stdinbpl.689:15|
 :skolemid |59|
 :pattern ( (|inv'| Heap@@0 v_2))
)))
(assert (forall ((s@@3 T@Seq_74571) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_17307| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3) (|Seq#Index_17307| s@@3 n@@3)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_17307| (|Seq#Update_17307| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_17307| s@@3 n@@3) (|Seq#Update_17307| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3659) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3659| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3659| s@@4 n@@4)))))
 :qid |stdinbpl.363:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3659| (|Seq#Update_3659| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3659| s@@4 n@@4) (|Seq#Update_3659| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_74571) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_17307| s@@5)) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_17307| s@@5) n@@5) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) (|Seq#Length_17307| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_17307| (|Seq#Take_17307| s@@5 n@@5)))
 :pattern ( (|Seq#Take_17307| s@@5 n@@5) (|Seq#Length_17307| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3659) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3659| s@@6)) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3659| s@@6) n@@6) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) (|Seq#Length_3659| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)) 0)))
 :qid |stdinbpl.374:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3659| (|Seq#Take_3659| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3659| s@@6 n@@6) (|Seq#Length_3659| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3659| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.648:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3659| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_74571) (x T@Ref) ) (!  (=> (|Seq#Contains_74571| s@@7 x) (and (and (<= 0 (|Seq#Skolem_74571| s@@7 x)) (< (|Seq#Skolem_74571| s@@7 x) (|Seq#Length_17307| s@@7))) (= (|Seq#Index_17307| s@@7 (|Seq#Skolem_74571| s@@7 x)) x)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_74571| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3659) (x@@0 Int) ) (!  (=> (|Seq#Contains_3659| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3659| s@@8 x@@0)) (< (|Seq#Skolem_3659| s@@8 x@@0) (|Seq#Length_3659| s@@8))) (= (|Seq#Index_3659| s@@8 (|Seq#Skolem_3659| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.506:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3659| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_74571) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_17307| s@@9 n@@7) s@@9))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_17307| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3659) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3659| s@@10 n@@8) s@@10))
 :qid |stdinbpl.490:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3659| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.343:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.341:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_26758) (ExhaleHeap T@PolymorphicMapType_26758) (Mask@@0 T@PolymorphicMapType_26779) (pm_f_30 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_16911_80933 Mask@@0 null pm_f_30) (IsPredicateField_16911_80960 pm_f_30)) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@1) null (PredicateMaskField_16911 pm_f_30)) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap) null (PredicateMaskField_16911 pm_f_30)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap Mask@@0) (IsPredicateField_16911_80960 pm_f_30) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap) null (PredicateMaskField_16911 pm_f_30)))
)))
(assert (forall ((Heap@@2 T@PolymorphicMapType_26758) (ExhaleHeap@@0 T@PolymorphicMapType_26758) (Mask@@1 T@PolymorphicMapType_26779) (pm_f_30@@0 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_16911_80933 Mask@@1 null pm_f_30@@0) (IsWandField_16911_82707 pm_f_30@@0)) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@2) null (WandMaskField_16911 pm_f_30@@0)) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@0) null (WandMaskField_16911 pm_f_30@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@0 Mask@@1) (IsWandField_16911_82707 pm_f_30@@0) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@0) null (WandMaskField_16911 pm_f_30@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_74571| (|Seq#Singleton_17307| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_74571| (|Seq#Singleton_17307| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3659| (|Seq#Singleton_3659| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.631:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3659| (|Seq#Singleton_3659| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_74571) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_17307| s@@11))) (= (|Seq#Index_17307| (|Seq#Take_17307| s@@11 n@@9) j@@3) (|Seq#Index_17307| s@@11 j@@3)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_17307| (|Seq#Take_17307| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_17307| s@@11 j@@3) (|Seq#Take_17307| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3659) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3659| s@@12))) (= (|Seq#Index_3659| (|Seq#Take_3659| s@@12 n@@10) j@@4) (|Seq#Index_3659| s@@12 j@@4)))
 :qid |stdinbpl.382:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3659| (|Seq#Take_3659| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3659| s@@12 j@@4) (|Seq#Take_3659| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_74571) (t T@Seq_74571) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_17307| s@@13))) (< n@@11 (|Seq#Length_17307| (|Seq#Append_74571| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_17307| s@@13)) (|Seq#Length_17307| s@@13)) n@@11) (= (|Seq#Take_17307| (|Seq#Append_74571| s@@13 t) n@@11) (|Seq#Append_74571| s@@13 (|Seq#Take_17307| t (|Seq#Sub| n@@11 (|Seq#Length_17307| s@@13)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_17307| (|Seq#Append_74571| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3659) (t@@0 T@Seq_3659) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3659| s@@14))) (< n@@12 (|Seq#Length_3659| (|Seq#Append_3659| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3659| s@@14)) (|Seq#Length_3659| s@@14)) n@@12) (= (|Seq#Take_3659| (|Seq#Append_3659| s@@14 t@@0) n@@12) (|Seq#Append_3659| s@@14 (|Seq#Take_3659| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3659| s@@14)))))))
 :qid |stdinbpl.467:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3659| (|Seq#Append_3659| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@3 T@PolymorphicMapType_26758) (ExhaleHeap@@1 T@PolymorphicMapType_26758) (Mask@@2 T@PolymorphicMapType_26779) (o_57 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@3) o_57 $allocated) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@1) o_57 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@1) o_57 $allocated))
)))
(assert (forall ((p T@Field_16911_80869) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_26818_26818 p v_1 p w))
 :qid |stdinbpl.285:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_26818_26818 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_74571) (s1 T@Seq_74571) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_17307|)) (not (= s1 |Seq#Empty_17307|))) (<= (|Seq#Length_17307| s0) n@@13)) (< n@@13 (|Seq#Length_17307| (|Seq#Append_74571| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_17307| s0)) (|Seq#Length_17307| s0)) n@@13) (= (|Seq#Index_17307| (|Seq#Append_74571| s0 s1) n@@13) (|Seq#Index_17307| s1 (|Seq#Sub| n@@13 (|Seq#Length_17307| s0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_17307| (|Seq#Append_74571| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3659) (s1@@0 T@Seq_3659) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3659|)) (not (= s1@@0 |Seq#Empty_3659|))) (<= (|Seq#Length_3659| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3659| (|Seq#Append_3659| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3659| s0@@0)) (|Seq#Length_3659| s0@@0)) n@@14) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@0 s1@@0) n@@14) (|Seq#Index_3659| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3659| s0@@0))))))
 :qid |stdinbpl.354:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3659| (|Seq#Append_3659| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_16911_3798 f_7)))
(assert  (not (IsWandField_16911_3798 f_7)))
(assert  (not (IsPredicateField_16911_3798 g)))
(assert  (not (IsWandField_16911_3798 g)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_26758) (ExhaleHeap@@2 T@PolymorphicMapType_26758) (Mask@@3 T@PolymorphicMapType_26779) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@4 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_26779) (o_2@@4 T@Ref) (f_4@@4 T@Field_16911_81002) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_16911_86253 f_4@@4))) (not (IsWandField_16911_86269 f_4@@4))) (<= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@4) o_2@@4 f_4@@4))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_26779) (o_2@@5 T@Ref) (f_4@@5 T@Field_16911_80869) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_16911_80960 f_4@@5))) (not (IsWandField_16911_82707 f_4@@5))) (<= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@5) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_26779) (o_2@@6 T@Ref) (f_4@@6 T@Field_26831_26832) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_16911_26832 f_4@@6))) (not (IsWandField_16911_26832 f_4@@6))) (<= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@6) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_26779) (o_2@@7 T@Ref) (f_4@@7 T@Field_26818_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_16911_53 f_4@@7))) (not (IsWandField_16911_53 f_4@@7))) (<= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@7) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_26779) (o_2@@8 T@Ref) (f_4@@8 T@Field_32965_3798) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_16911_3798 f_4@@8))) (not (IsWandField_16911_3798 f_4@@8))) (<= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@8) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_26779) (o_2@@9 T@Ref) (f_4@@9 T@Field_16911_81002) ) (! (= (HasDirectPerm_16911_86707 Mask@@9 o_2@@9 f_4@@9) (> (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| Mask@@9) o_2@@9 f_4@@9) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_86707 Mask@@9 o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_26779) (o_2@@10 T@Ref) (f_4@@10 T@Field_16911_80869) ) (! (= (HasDirectPerm_16911_80933 Mask@@10 o_2@@10 f_4@@10) (> (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| Mask@@10) o_2@@10 f_4@@10) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_80933 Mask@@10 o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_26779) (o_2@@11 T@Ref) (f_4@@11 T@Field_26831_26832) ) (! (= (HasDirectPerm_16911_26832 Mask@@11 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| Mask@@11) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_26832 Mask@@11 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_26779) (o_2@@12 T@Ref) (f_4@@12 T@Field_26818_53) ) (! (= (HasDirectPerm_16911_53 Mask@@12 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| Mask@@12) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_53 Mask@@12 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_26779) (o_2@@13 T@Ref) (f_4@@13 T@Field_32965_3798) ) (! (= (HasDirectPerm_16911_3798 Mask@@13 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| Mask@@13) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_16911_3798 Mask@@13 o_2@@13 f_4@@13))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_26758) (ExhaleHeap@@3 T@PolymorphicMapType_26758) (Mask@@14 T@PolymorphicMapType_26779) (pm_f_30@@1 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (=> (and (HasDirectPerm_16911_80933 Mask@@14 null pm_f_30@@1) (IsPredicateField_16911_80960 pm_f_30@@1)) (and (and (and (and (forall ((o2_30 T@Ref) (f_58 T@Field_26818_53) ) (!  (=> (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30 f_58) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@5) o2_30 f_58) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30 f_58)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30 f_58))
)) (forall ((o2_30@@0 T@Ref) (f_58@@0 T@Field_26831_26832) ) (!  (=> (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@0 f_58@@0) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@5) o2_30@@0 f_58@@0) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@0 f_58@@0)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@0 f_58@@0))
))) (forall ((o2_30@@1 T@Ref) (f_58@@1 T@Field_32965_3798) ) (!  (=> (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@1 f_58@@1) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@5) o2_30@@1 f_58@@1) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@1 f_58@@1)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@1 f_58@@1))
))) (forall ((o2_30@@2 T@Ref) (f_58@@2 T@Field_16911_80869) ) (!  (=> (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@2 f_58@@2) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@5) o2_30@@2 f_58@@2) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@2 f_58@@2)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@2 f_58@@2))
))) (forall ((o2_30@@3 T@Ref) (f_58@@3 T@Field_16911_81002) ) (!  (=> (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) null (PredicateMaskField_16911 pm_f_30@@1))) o2_30@@3 f_58@@3) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@5) o2_30@@3 f_58@@3) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@3 f_58@@3)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@3) o2_30@@3 f_58@@3))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@3 Mask@@14) (IsPredicateField_16911_80960 pm_f_30@@1))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_26758) (ExhaleHeap@@4 T@PolymorphicMapType_26758) (Mask@@15 T@PolymorphicMapType_26779) (pm_f_30@@2 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (=> (and (HasDirectPerm_16911_80933 Mask@@15 null pm_f_30@@2) (IsWandField_16911_82707 pm_f_30@@2)) (and (and (and (and (forall ((o2_30@@4 T@Ref) (f_58@@4 T@Field_26818_53) ) (!  (=> (select (|PolymorphicMapType_27307_26818_53#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@4 f_58@@4) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@6) o2_30@@4 f_58@@4) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@4 f_58@@4)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@4 f_58@@4))
)) (forall ((o2_30@@5 T@Ref) (f_58@@5 T@Field_26831_26832) ) (!  (=> (select (|PolymorphicMapType_27307_26818_26832#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@5 f_58@@5) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@6) o2_30@@5 f_58@@5) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@5 f_58@@5)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@5 f_58@@5))
))) (forall ((o2_30@@6 T@Ref) (f_58@@6 T@Field_32965_3798) ) (!  (=> (select (|PolymorphicMapType_27307_26818_3798#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@6 f_58@@6) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@6) o2_30@@6 f_58@@6) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@6 f_58@@6)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@6 f_58@@6))
))) (forall ((o2_30@@7 T@Ref) (f_58@@7 T@Field_16911_80869) ) (!  (=> (select (|PolymorphicMapType_27307_26818_80869#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@7 f_58@@7) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@6) o2_30@@7 f_58@@7) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@7 f_58@@7)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@7 f_58@@7))
))) (forall ((o2_30@@8 T@Ref) (f_58@@8 T@Field_16911_81002) ) (!  (=> (select (|PolymorphicMapType_27307_26818_82180#PolymorphicMapType_27307| (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) null (WandMaskField_16911 pm_f_30@@2))) o2_30@@8 f_58@@8) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@6) o2_30@@8 f_58@@8) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@8 f_58@@8)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@4) o2_30@@8 f_58@@8))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@4 Mask@@15) (IsWandField_16911_82707 pm_f_30@@2))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.273:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3659| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.646:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3659| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_26758) (ExhaleHeap@@5 T@PolymorphicMapType_26758) (Mask@@16 T@PolymorphicMapType_26779) (o_57@@0 T@Ref) (f_58@@9 T@Field_16911_81002) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (=> (HasDirectPerm_16911_86707 Mask@@16 o_57@@0 f_58@@9) (= (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@7) o_57@@0 f_58@@9) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@5) o_57@@0 f_58@@9))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@5 Mask@@16) (select (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| ExhaleHeap@@5) o_57@@0 f_58@@9))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_26758) (ExhaleHeap@@6 T@PolymorphicMapType_26758) (Mask@@17 T@PolymorphicMapType_26779) (o_57@@1 T@Ref) (f_58@@10 T@Field_16911_80869) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (=> (HasDirectPerm_16911_80933 Mask@@17 o_57@@1 f_58@@10) (= (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@8) o_57@@1 f_58@@10) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@6) o_57@@1 f_58@@10))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@6 Mask@@17) (select (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| ExhaleHeap@@6) o_57@@1 f_58@@10))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_26758) (ExhaleHeap@@7 T@PolymorphicMapType_26758) (Mask@@18 T@PolymorphicMapType_26779) (o_57@@2 T@Ref) (f_58@@11 T@Field_26831_26832) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (=> (HasDirectPerm_16911_26832 Mask@@18 o_57@@2 f_58@@11) (= (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@9) o_57@@2 f_58@@11) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@7) o_57@@2 f_58@@11))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@7 Mask@@18) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| ExhaleHeap@@7) o_57@@2 f_58@@11))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_26758) (ExhaleHeap@@8 T@PolymorphicMapType_26758) (Mask@@19 T@PolymorphicMapType_26779) (o_57@@3 T@Ref) (f_58@@12 T@Field_26818_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (=> (HasDirectPerm_16911_53 Mask@@19 o_57@@3 f_58@@12) (= (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@10) o_57@@3 f_58@@12) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@8) o_57@@3 f_58@@12))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@8 Mask@@19) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| ExhaleHeap@@8) o_57@@3 f_58@@12))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_26758) (ExhaleHeap@@9 T@PolymorphicMapType_26758) (Mask@@20 T@PolymorphicMapType_26779) (o_57@@4 T@Ref) (f_58@@13 T@Field_32965_3798) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (=> (HasDirectPerm_16911_3798 Mask@@20 o_57@@4 f_58@@13) (= (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@11) o_57@@4 f_58@@13) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@9) o_57@@4 f_58@@13))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@9 Mask@@20) (select (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| ExhaleHeap@@9) o_57@@4 f_58@@13))
)))
(assert (forall ((s0@@1 T@Seq_74571) (s1@@1 T@Seq_74571) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_17307|)) (not (= s1@@1 |Seq#Empty_17307|))) (= (|Seq#Length_17307| (|Seq#Append_74571| s0@@1 s1@@1)) (+ (|Seq#Length_17307| s0@@1) (|Seq#Length_17307| s1@@1))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_17307| (|Seq#Append_74571| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3659) (s1@@2 T@Seq_3659) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3659|)) (not (= s1@@2 |Seq#Empty_3659|))) (= (|Seq#Length_3659| (|Seq#Append_3659| s0@@2 s1@@2)) (+ (|Seq#Length_3659| s0@@2) (|Seq#Length_3659| s1@@2))))
 :qid |stdinbpl.323:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3659| (|Seq#Append_3659| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@14 T@Ref) (f_4@@14 T@Field_16911_81002) ) (! (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_2@@14 f_4@@14) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ZeroMask) o_2@@14 f_4@@14))
)))
(assert (forall ((o_2@@15 T@Ref) (f_4@@15 T@Field_16911_80869) ) (! (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_2@@15 f_4@@15) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ZeroMask) o_2@@15 f_4@@15))
)))
(assert (forall ((o_2@@16 T@Ref) (f_4@@16 T@Field_26831_26832) ) (! (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_2@@16 f_4@@16) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ZeroMask) o_2@@16 f_4@@16))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_26818_53) ) (! (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_32965_3798) ) (! (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_26758) (Mask@@21 T@PolymorphicMapType_26779) (v_2@@0 Int) ) (!  (=> (and (state Heap@@12 Mask@@21) (< AssumeFunctionsAbove 0)) (= (inv_1 Heap@@12 v_2@@0) (= v_2@@0 0)))
 :qid |stdinbpl.695:15|
 :skolemid |60|
 :pattern ( (state Heap@@12 Mask@@21) (inv_1 Heap@@12 v_2@@0))
)))
(assert (forall ((s@@15 T@Seq_74571) (t@@1 T@Seq_74571) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_17307| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_17307| s@@15)) (|Seq#Length_17307| s@@15)) n@@15) (= (|Seq#Drop_17307| (|Seq#Append_74571| s@@15 t@@1) n@@15) (|Seq#Drop_17307| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_17307| s@@15))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_17307| (|Seq#Append_74571| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3659) (t@@2 T@Seq_3659) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3659| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3659| s@@16)) (|Seq#Length_3659| s@@16)) n@@16) (= (|Seq#Drop_3659| (|Seq#Append_3659| s@@16 t@@2) n@@16) (|Seq#Drop_3659| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3659| s@@16))))))
 :qid |stdinbpl.480:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3659| (|Seq#Append_3659| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_26779) (SummandMask1 T@PolymorphicMapType_26779) (SummandMask2 T@PolymorphicMapType_26779) (o_2@@19 T@Ref) (f_4@@19 T@Field_16911_81002) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ResultMask) o_2@@19 f_4@@19) (+ (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask1) o_2@@19 f_4@@19) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask2) o_2@@19 f_4@@19))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| ResultMask) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask1) o_2@@19 f_4@@19))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_26779_16911_85124#PolymorphicMapType_26779| SummandMask2) o_2@@19 f_4@@19))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_26779) (SummandMask1@@0 T@PolymorphicMapType_26779) (SummandMask2@@0 T@PolymorphicMapType_26779) (o_2@@20 T@Ref) (f_4@@20 T@Field_16911_80869) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ResultMask@@0) o_2@@20 f_4@@20) (+ (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask1@@0) o_2@@20 f_4@@20) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask2@@0) o_2@@20 f_4@@20))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| ResultMask@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask1@@0) o_2@@20 f_4@@20))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_26779_16911_80869#PolymorphicMapType_26779| SummandMask2@@0) o_2@@20 f_4@@20))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_26779) (SummandMask1@@1 T@PolymorphicMapType_26779) (SummandMask2@@1 T@PolymorphicMapType_26779) (o_2@@21 T@Ref) (f_4@@21 T@Field_26831_26832) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ResultMask@@1) o_2@@21 f_4@@21) (+ (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask1@@1) o_2@@21 f_4@@21) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask2@@1) o_2@@21 f_4@@21))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| ResultMask@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask1@@1) o_2@@21 f_4@@21))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_26779_16911_26832#PolymorphicMapType_26779| SummandMask2@@1) o_2@@21 f_4@@21))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_26779) (SummandMask1@@2 T@PolymorphicMapType_26779) (SummandMask2@@2 T@PolymorphicMapType_26779) (o_2@@22 T@Ref) (f_4@@22 T@Field_26818_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ResultMask@@2) o_2@@22 f_4@@22) (+ (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask1@@2) o_2@@22 f_4@@22) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask2@@2) o_2@@22 f_4@@22))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| ResultMask@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask1@@2) o_2@@22 f_4@@22))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_26779_16911_53#PolymorphicMapType_26779| SummandMask2@@2) o_2@@22 f_4@@22))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_26779) (SummandMask1@@3 T@PolymorphicMapType_26779) (SummandMask2@@3 T@PolymorphicMapType_26779) (o_2@@23 T@Ref) (f_4@@23 T@Field_32965_3798) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ResultMask@@3) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask1@@3) o_2@@23 f_4@@23) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask2@@3) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| ResultMask@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask1@@3) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_26779_16911_3798#PolymorphicMapType_26779| SummandMask2@@3) o_2@@23 f_4@@23))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.645:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3659| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_74571) (b T@Seq_74571) ) (!  (=> (|Seq#Equal_74571| a b) (= a b))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_74571| a b))
)))
(assert (forall ((a@@0 T@Seq_3659) (b@@0 T@Seq_3659) ) (!  (=> (|Seq#Equal_3659| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.618:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3659| a@@0 b@@0))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_26758) (Mask@@22 T@PolymorphicMapType_26779) (v_2@@1 Int) ) (!  (=> (state Heap@@13 Mask@@22) (= (|inv'| Heap@@13 v_2@@1) (|inv#frame| EmptyFrame v_2@@1)))
 :qid |stdinbpl.702:15|
 :skolemid |61|
 :pattern ( (state Heap@@13 Mask@@22) (|inv'| Heap@@13 v_2@@1))
)))
(assert (forall ((s@@17 T@Seq_74571) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_17307| s@@17))) (|Seq#ContainsTrigger_17307| s@@17 (|Seq#Index_17307| s@@17 i@@3)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_17307| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3659) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3659| s@@18))) (|Seq#ContainsTrigger_3659| s@@18 (|Seq#Index_3659| s@@18 i@@4)))
 :qid |stdinbpl.511:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3659| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_74571) (s1@@3 T@Seq_74571) ) (!  (and (=> (= s0@@3 |Seq#Empty_17307|) (= (|Seq#Append_74571| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_17307|) (= (|Seq#Append_74571| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_74571| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3659) (s1@@4 T@Seq_3659) ) (!  (and (=> (= s0@@4 |Seq#Empty_3659|) (= (|Seq#Append_3659| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3659|) (= (|Seq#Append_3659| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.329:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3659| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_17307| (|Seq#Singleton_17307| t@@3) 0) t@@3)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_17307| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3659| (|Seq#Singleton_3659| t@@4) 0) t@@4)
 :qid |stdinbpl.333:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3659| t@@4))
)))
(assert (forall ((s@@19 T@Seq_74571) ) (! (<= 0 (|Seq#Length_17307| s@@19))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_17307| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3659) ) (! (<= 0 (|Seq#Length_3659| s@@20))
 :qid |stdinbpl.312:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3659| s@@20))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_26758) (v_2@@2 Int) ) (!  (and (= (inv_1 Heap@@14 v_2@@2) (|inv'| Heap@@14 v_2@@2)) (dummyFunction_3996 (|inv#triggerStateless| v_2@@2)))
 :qid |stdinbpl.685:15|
 :skolemid |58|
 :pattern ( (inv_1 Heap@@14 v_2@@2))
)))
(assert (forall ((s0@@5 T@Seq_74571) (s1@@5 T@Seq_74571) ) (!  (=> (|Seq#Equal_74571| s0@@5 s1@@5) (and (= (|Seq#Length_17307| s0@@5) (|Seq#Length_17307| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_17307| s0@@5))) (= (|Seq#Index_17307| s0@@5 j@@6) (|Seq#Index_17307| s1@@5 j@@6)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_17307| s0@@5 j@@6))
 :pattern ( (|Seq#Index_17307| s1@@5 j@@6))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_74571| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_3659) (s1@@6 T@Seq_3659) ) (!  (=> (|Seq#Equal_3659| s0@@6 s1@@6) (and (= (|Seq#Length_3659| s0@@6) (|Seq#Length_3659| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_3659| s0@@6))) (= (|Seq#Index_3659| s0@@6 j@@7) (|Seq#Index_3659| s1@@6 j@@7)))
 :qid |stdinbpl.608:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3659| s0@@6 j@@7))
 :pattern ( (|Seq#Index_3659| s1@@6 j@@7))
))))
 :qid |stdinbpl.605:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3659| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_17307| (|Seq#Singleton_17307| t@@5)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_17307| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3659| (|Seq#Singleton_3659| t@@6)) 1)
 :qid |stdinbpl.320:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3659| t@@6))
)))
(assert (forall ((s@@21 T@Seq_74571) (t@@7 T@Seq_74571) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_17307| s@@21))) (= (|Seq#Take_17307| (|Seq#Append_74571| s@@21 t@@7) n@@17) (|Seq#Take_17307| s@@21 n@@17)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_17307| (|Seq#Append_74571| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3659) (t@@8 T@Seq_3659) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3659| s@@22))) (= (|Seq#Take_3659| (|Seq#Append_3659| s@@22 t@@8) n@@18) (|Seq#Take_3659| s@@22 n@@18)))
 :qid |stdinbpl.462:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3659| (|Seq#Append_3659| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_74571) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_17307| s@@23))) (= (|Seq#Length_17307| (|Seq#Update_17307| s@@23 i@@5 v@@2)) (|Seq#Length_17307| s@@23)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_17307| (|Seq#Update_17307| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_17307| s@@23) (|Seq#Update_17307| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3659) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3659| s@@24))) (= (|Seq#Length_3659| (|Seq#Update_3659| s@@24 i@@6 v@@3)) (|Seq#Length_3659| s@@24)))
 :qid |stdinbpl.361:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3659| (|Seq#Update_3659| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3659| s@@24) (|Seq#Update_3659| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_26758) (o_56 T@Ref) (f_59 T@Field_16911_80869) (v@@4 T@FrameType) ) (! (succHeap Heap@@15 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@15) (store (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@15) o_56 f_59 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@15) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@15) (store (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@15) o_56 f_59 v@@4)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_26758) (o_56@@0 T@Ref) (f_59@@0 T@Field_16911_81002) (v@@5 T@PolymorphicMapType_27307) ) (! (succHeap Heap@@16 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@16) (store (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@16) o_56@@0 f_59@@0 v@@5) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@16) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@16) (store (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@16) o_56@@0 f_59@@0 v@@5) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_26758) (o_56@@1 T@Ref) (f_59@@1 T@Field_32965_3798) (v@@6 Int) ) (! (succHeap Heap@@17 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@17) (store (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@17) o_56@@1 f_59@@1 v@@6) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@17) (store (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@17) o_56@@1 f_59@@1 v@@6) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@17) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@17)))
)))
(assert (forall ((Heap@@18 T@PolymorphicMapType_26758) (o_56@@2 T@Ref) (f_59@@2 T@Field_26831_26832) (v@@7 T@Ref) ) (! (succHeap Heap@@18 (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@18) (store (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@18) o_56@@2 f_59@@2 v@@7) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@18)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@18) (store (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@18) o_56@@2 f_59@@2 v@@7) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@18) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@18)))
)))
(assert (forall ((Heap@@19 T@PolymorphicMapType_26758) (o_56@@3 T@Ref) (f_59@@3 T@Field_26818_53) (v@@8 Bool) ) (! (succHeap Heap@@19 (PolymorphicMapType_26758 (store (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@19) o_56@@3 f_59@@3 v@@8) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@19)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_26758 (store (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@19) o_56@@3 f_59@@3 v@@8) (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_3798#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_16911_81046#PolymorphicMapType_26758| Heap@@19) (|PolymorphicMapType_26758_26818_80869#PolymorphicMapType_26758| Heap@@19)))
)))
(assert (forall ((s@@25 T@Seq_74571) (t@@9 T@Seq_74571) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_17307| s@@25))) (= (|Seq#Drop_17307| (|Seq#Append_74571| s@@25 t@@9) n@@19) (|Seq#Append_74571| (|Seq#Drop_17307| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_17307| (|Seq#Append_74571| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3659) (t@@10 T@Seq_3659) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3659| s@@26))) (= (|Seq#Drop_3659| (|Seq#Append_3659| s@@26 t@@10) n@@20) (|Seq#Append_3659| (|Seq#Drop_3659| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.476:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3659| (|Seq#Append_3659| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_74571) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_17307| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_17307| (|Seq#Drop_17307| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_17307| s@@27 i@@7))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_17307| s@@27 n@@21) (|Seq#Index_17307| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3659) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3659| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3659| (|Seq#Drop_3659| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3659| s@@28 i@@8))))
 :qid |stdinbpl.412:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3659| s@@28 n@@22) (|Seq#Index_3659| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_74571) (s1@@7 T@Seq_74571) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_17307|)) (not (= s1@@7 |Seq#Empty_17307|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_17307| s0@@7))) (= (|Seq#Index_17307| (|Seq#Append_74571| s0@@7 s1@@7) n@@23) (|Seq#Index_17307| s0@@7 n@@23)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_17307| (|Seq#Append_74571| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_17307| s0@@7 n@@23) (|Seq#Append_74571| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3659) (s1@@8 T@Seq_3659) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3659|)) (not (= s1@@8 |Seq#Empty_3659|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3659| s0@@8))) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@8 s1@@8) n@@24) (|Seq#Index_3659| s0@@8 n@@24)))
 :qid |stdinbpl.352:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3659| (|Seq#Append_3659| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3659| s0@@8 n@@24) (|Seq#Append_3659| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_74571) (s1@@9 T@Seq_74571) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_17307|)) (not (= s1@@9 |Seq#Empty_17307|))) (<= 0 m)) (< m (|Seq#Length_17307| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_17307| s0@@9)) (|Seq#Length_17307| s0@@9)) m) (= (|Seq#Index_17307| (|Seq#Append_74571| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_17307| s0@@9))) (|Seq#Index_17307| s1@@9 m))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_17307| s1@@9 m) (|Seq#Append_74571| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3659) (s1@@10 T@Seq_3659) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3659|)) (not (= s1@@10 |Seq#Empty_3659|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3659| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3659| s0@@10)) (|Seq#Length_3659| s0@@10)) m@@0) (= (|Seq#Index_3659| (|Seq#Append_3659| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3659| s0@@10))) (|Seq#Index_3659| s1@@10 m@@0))))
 :qid |stdinbpl.357:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3659| s1@@10 m@@0) (|Seq#Append_3659| s0@@10 s1@@10))
)))
(assert (forall ((o_56@@4 T@Ref) (f_57 T@Field_26831_26832) (Heap@@20 T@PolymorphicMapType_26758) ) (!  (=> (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@20) o_56@@4 $allocated) (select (|PolymorphicMapType_26758_16594_53#PolymorphicMapType_26758| Heap@@20) (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@20) o_56@@4 f_57) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_26758_16597_16598#PolymorphicMapType_26758| Heap@@20) o_56@@4 f_57))
)))
(assert (forall ((s@@29 T@Seq_74571) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_17307| s@@29))) (= (|Seq#Index_17307| s@@29 i@@9) x@@3)) (|Seq#Contains_74571| s@@29 x@@3))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_74571| s@@29 x@@3) (|Seq#Index_17307| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3659) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3659| s@@30))) (= (|Seq#Index_3659| s@@30 i@@10) x@@4)) (|Seq#Contains_3659| s@@30 x@@4))
 :qid |stdinbpl.509:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3659| s@@30 x@@4) (|Seq#Index_3659| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_74571) (s1@@11 T@Seq_74571) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_74571| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_74571| s0@@11 s1@@11))) (not (= (|Seq#Length_17307| s0@@11) (|Seq#Length_17307| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_74571| s0@@11 s1@@11))) (= (|Seq#Length_17307| s0@@11) (|Seq#Length_17307| s1@@11))) (= (|Seq#SkolemDiff_74571| s0@@11 s1@@11) (|Seq#SkolemDiff_74571| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_74571| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_74571| s0@@11 s1@@11) (|Seq#Length_17307| s0@@11))) (not (= (|Seq#Index_17307| s0@@11 (|Seq#SkolemDiff_74571| s0@@11 s1@@11)) (|Seq#Index_17307| s1@@11 (|Seq#SkolemDiff_74571| s0@@11 s1@@11))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_74571| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3659) (s1@@12 T@Seq_3659) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3659| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3659| s0@@12 s1@@12))) (not (= (|Seq#Length_3659| s0@@12) (|Seq#Length_3659| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3659| s0@@12 s1@@12))) (= (|Seq#Length_3659| s0@@12) (|Seq#Length_3659| s1@@12))) (= (|Seq#SkolemDiff_3659| s0@@12 s1@@12) (|Seq#SkolemDiff_3659| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3659| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3659| s0@@12 s1@@12) (|Seq#Length_3659| s0@@12))) (not (= (|Seq#Index_3659| s0@@12 (|Seq#SkolemDiff_3659| s0@@12 s1@@12)) (|Seq#Index_3659| s1@@12 (|Seq#SkolemDiff_3659| s0@@12 s1@@12))))))
 :qid |stdinbpl.613:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3659| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_16911_80869) (v_1@@0 T@FrameType) (q T@Field_16911_80869) (w@@0 T@FrameType) (r T@Field_16911_80869) (u T@FrameType) ) (!  (=> (and (InsidePredicate_26818_26818 p@@1 v_1@@0 q w@@0) (InsidePredicate_26818_26818 q w@@0 r u)) (InsidePredicate_26818_26818 p@@1 v_1@@0 r u))
 :qid |stdinbpl.280:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_26818_26818 p@@1 v_1@@0 q w@@0) (InsidePredicate_26818_26818 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_74571) ) (!  (=> (= (|Seq#Length_17307| s@@31) 0) (= s@@31 |Seq#Empty_17307|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_17307| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3659) ) (!  (=> (= (|Seq#Length_3659| s@@32) 0) (= s@@32 |Seq#Empty_3659|))
 :qid |stdinbpl.316:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3659| s@@32))
)))
(assert (forall ((s@@33 T@Seq_74571) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_17307| s@@33 n@@25) |Seq#Empty_17307|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_17307| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3659) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3659| s@@34 n@@26) |Seq#Empty_3659|))
 :qid |stdinbpl.492:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3659| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
; Valid

