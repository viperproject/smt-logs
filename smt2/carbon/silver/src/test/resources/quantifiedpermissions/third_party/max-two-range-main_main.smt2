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
(declare-sort T@Field_43926_53 0)
(declare-sort T@Field_43939_43940 0)
(declare-sort T@Field_49987_49992 0)
(declare-sort T@Seq_49990 0)
(declare-sort T@Field_50101_3522 0)
(declare-sort T@Field_25883_145426 0)
(declare-sort T@Field_25883_145293 0)
(declare-sort T@FrameType 0)
(declare-datatypes ((T@PolymorphicMapType_43887 0)) (((PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| (Array T@Ref T@Field_49987_49992 Real)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| (Array T@Ref T@Field_50101_3522 Real)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| (Array T@Ref T@Field_43926_53 Real)) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| (Array T@Ref T@Field_43939_43940 Real)) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| (Array T@Ref T@Field_25883_145293 Real)) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| (Array T@Ref T@Field_25883_145426 Real)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_44415 0)) (((PolymorphicMapType_44415 (|PolymorphicMapType_44415_43926_53#PolymorphicMapType_44415| (Array T@Ref T@Field_43926_53 Bool)) (|PolymorphicMapType_44415_43926_43940#PolymorphicMapType_44415| (Array T@Ref T@Field_43939_43940 Bool)) (|PolymorphicMapType_44415_43926_49992#PolymorphicMapType_44415| (Array T@Ref T@Field_49987_49992 Bool)) (|PolymorphicMapType_44415_43926_3522#PolymorphicMapType_44415| (Array T@Ref T@Field_50101_3522 Bool)) (|PolymorphicMapType_44415_43926_145293#PolymorphicMapType_44415| (Array T@Ref T@Field_25883_145293 Bool)) (|PolymorphicMapType_44415_43926_146808#PolymorphicMapType_44415| (Array T@Ref T@Field_25883_145426 Bool)) ) ) ))
(declare-datatypes ((T@PolymorphicMapType_43866 0)) (((PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| (Array T@Ref T@Field_43926_53 Bool)) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| (Array T@Ref T@Field_43939_43940 T@Ref)) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| (Array T@Ref T@Field_49987_49992 T@Seq_49990)) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| (Array T@Ref T@Field_50101_3522 Int)) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| (Array T@Ref T@Field_25883_145426 T@PolymorphicMapType_44415)) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| (Array T@Ref T@Field_25883_145293 T@FrameType)) ) ) ))
(declare-fun $allocated () T@Field_43926_53)
(declare-fun src () T@Field_49987_49992)
(declare-fun dst () T@Field_49987_49992)
(declare-fun Integer_value () T@Field_50101_3522)
(declare-fun |Seq#Length_25884| (T@Seq_49990) Int)
(declare-fun |Seq#Drop_25884| (T@Seq_49990 Int) T@Seq_49990)
(declare-sort T@Seq_3368 0)
(declare-fun |Seq#Length_3368| (T@Seq_3368) Int)
(declare-fun |Seq#Drop_3368| (T@Seq_3368 Int) T@Seq_3368)
(declare-fun succHeap (T@PolymorphicMapType_43866 T@PolymorphicMapType_43866) Bool)
(declare-fun succHeapTrans (T@PolymorphicMapType_43866 T@PolymorphicMapType_43866) Bool)
(declare-fun state (T@PolymorphicMapType_43866 T@PolymorphicMapType_43887) Bool)
(declare-fun GoodMask (T@PolymorphicMapType_43887) Bool)
(declare-fun ZeroPMask () T@PolymorphicMapType_44415)
(declare-fun |Seq#Index_25884| (T@Seq_49990 Int) T@Ref)
(declare-fun |Seq#Sub| (Int Int) Int)
(declare-fun |Seq#Add| (Int Int) Int)
(declare-fun |Seq#Index_3368| (T@Seq_3368 Int) Int)
(declare-fun |Seq#Empty_25884| () T@Seq_49990)
(declare-fun |Seq#Empty_3368| () T@Seq_3368)
(declare-fun |Seq#Update_25884| (T@Seq_49990 Int T@Ref) T@Seq_49990)
(declare-fun |Seq#Update_3368| (T@Seq_3368 Int Int) T@Seq_3368)
(declare-fun |Seq#Take_25884| (T@Seq_49990 Int) T@Seq_49990)
(declare-fun |Seq#Take_3368| (T@Seq_3368 Int) T@Seq_3368)
(declare-fun |Seq#Contains_3368| (T@Seq_3368 Int) Bool)
(declare-fun |Seq#Range| (Int Int) T@Seq_3368)
(declare-fun |Seq#Contains_49990| (T@Seq_49990 T@Ref) Bool)
(declare-fun |Seq#Skolem_49990| (T@Seq_49990 T@Ref) Int)
(declare-fun |Seq#Skolem_3368| (T@Seq_3368 Int) Int)
(declare-fun IdenticalOnKnownLocations (T@PolymorphicMapType_43866 T@PolymorphicMapType_43866 T@PolymorphicMapType_43887) Bool)
(declare-fun IsPredicateField_25883_145384 (T@Field_25883_145293) Bool)
(declare-fun null () T@Ref)
(declare-fun PredicateMaskField_25883 (T@Field_25883_145293) T@Field_25883_145426)
(declare-fun HasDirectPerm_25883_145357 (T@PolymorphicMapType_43887 T@Ref T@Field_25883_145293) Bool)
(declare-fun IsWandField_25883_147335 (T@Field_25883_145293) Bool)
(declare-fun WandMaskField_25883 (T@Field_25883_145293) T@Field_25883_145426)
(declare-fun |Seq#Singleton_25884| (T@Ref) T@Seq_49990)
(declare-fun |Seq#Singleton_3368| (Int) T@Seq_3368)
(declare-fun |Seq#Append_49990| (T@Seq_49990 T@Seq_49990) T@Seq_49990)
(declare-fun |Seq#Append_3368| (T@Seq_3368 T@Seq_3368) T@Seq_3368)
(declare-fun dummyHeap () T@PolymorphicMapType_43866)
(declare-fun ZeroMask () T@PolymorphicMapType_43887)
(declare-fun InsidePredicate_43926_43926 (T@Field_25883_145293 T@FrameType T@Field_25883_145293 T@FrameType) Bool)
(declare-fun IsPredicateField_25883_50014 (T@Field_49987_49992) Bool)
(declare-fun IsWandField_25883_50040 (T@Field_49987_49992) Bool)
(declare-fun IsPredicateField_25891_3522 (T@Field_50101_3522) Bool)
(declare-fun IsWandField_25891_3522 (T@Field_50101_3522) Bool)
(declare-fun NoPerm () Real)
(declare-fun AssumePermUpperBound () Bool)
(declare-fun IsPredicateField_25883_151469 (T@Field_25883_145426) Bool)
(declare-fun IsWandField_25883_151485 (T@Field_25883_145426) Bool)
(declare-fun FullPerm () Real)
(declare-fun IsPredicateField_25883_43940 (T@Field_43939_43940) Bool)
(declare-fun IsWandField_25883_43940 (T@Field_43939_43940) Bool)
(declare-fun IsPredicateField_25883_53 (T@Field_43926_53) Bool)
(declare-fun IsWandField_25883_53 (T@Field_43926_53) Bool)
(declare-fun HasDirectPerm_25883_152006 (T@PolymorphicMapType_43887 T@Ref T@Field_25883_145426) Bool)
(declare-fun HasDirectPerm_25883_43940 (T@PolymorphicMapType_43887 T@Ref T@Field_43939_43940) Bool)
(declare-fun HasDirectPerm_25883_53 (T@PolymorphicMapType_43887 T@Ref T@Field_43926_53) Bool)
(declare-fun HasDirectPerm_25891_3522 (T@PolymorphicMapType_43887 T@Ref T@Field_50101_3522) Bool)
(declare-fun HasDirectPerm_25883_50807 (T@PolymorphicMapType_43887 T@Ref T@Field_49987_49992) Bool)
(declare-fun ConditionalFrame (Real T@FrameType) T@FrameType)
(declare-fun EmptyFrame () T@FrameType)
(declare-fun sumMask (T@PolymorphicMapType_43887 T@PolymorphicMapType_43887 T@PolymorphicMapType_43887) Bool)
(declare-fun |Seq#Equal_3368| (T@Seq_3368 T@Seq_3368) Bool)
(declare-fun |Seq#Equal_25884| (T@Seq_49990 T@Seq_49990) Bool)
(declare-fun |Seq#ContainsTrigger_25884| (T@Seq_49990 T@Ref) Bool)
(declare-fun |Seq#ContainsTrigger_3368| (T@Seq_3368 Int) Bool)
(declare-fun |Seq#SkolemDiff_49990| (T@Seq_49990 T@Seq_49990) Int)
(declare-fun |Seq#SkolemDiff_3368| (T@Seq_3368 T@Seq_3368) Int)
(assert (distinct src dst)
)
(assert (forall ((s T@Seq_49990) (n Int) ) (!  (and (=> (<= 0 n) (and (=> (<= n (|Seq#Length_25884| s)) (= (|Seq#Length_25884| (|Seq#Drop_25884| s n)) (- (|Seq#Length_25884| s) n))) (=> (< (|Seq#Length_25884| s) n) (= (|Seq#Length_25884| (|Seq#Drop_25884| s n)) 0)))) (=> (< n 0) (= (|Seq#Length_25884| (|Seq#Drop_25884| s n)) (|Seq#Length_25884| s))))
 :qid |stdinbpl.348:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_25884| (|Seq#Drop_25884| s n)))
 :pattern ( (|Seq#Length_25884| s) (|Seq#Drop_25884| s n))
)))
(assert (forall ((s@@0 T@Seq_3368) (n@@0 Int) ) (!  (and (=> (<= 0 n@@0) (and (=> (<= n@@0 (|Seq#Length_3368| s@@0)) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) (- (|Seq#Length_3368| s@@0) n@@0))) (=> (< (|Seq#Length_3368| s@@0) n@@0) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) 0)))) (=> (< n@@0 0) (= (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)) (|Seq#Length_3368| s@@0))))
 :qid |stdinbpl.348:18|
 :skolemid |38|
 :pattern ( (|Seq#Length_3368| (|Seq#Drop_3368| s@@0 n@@0)))
 :pattern ( (|Seq#Length_3368| s@@0) (|Seq#Drop_3368| s@@0 n@@0))
)))
(assert (forall ((Heap0 T@PolymorphicMapType_43866) (Heap1 T@PolymorphicMapType_43866) ) (!  (=> (succHeap Heap0 Heap1) (succHeapTrans Heap0 Heap1))
 :qid |stdinbpl.88:15|
 :skolemid |11|
 :pattern ( (succHeap Heap0 Heap1))
)))
(assert (forall ((Heap T@PolymorphicMapType_43866) (Mask T@PolymorphicMapType_43887) ) (!  (=> (state Heap Mask) (GoodMask Mask))
 :qid |stdinbpl.125:15|
 :skolemid |15|
 :pattern ( (state Heap Mask))
)))
(assert (forall ((Heap0@@0 T@PolymorphicMapType_43866) (Heap1@@0 T@PolymorphicMapType_43866) (Heap2 T@PolymorphicMapType_43866) ) (!  (=> (and (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2)) (succHeapTrans Heap0@@0 Heap2))
 :qid |stdinbpl.93:15|
 :skolemid |12|
 :pattern ( (succHeapTrans Heap0@@0 Heap1@@0) (succHeap Heap1@@0 Heap2))
)))
(assert (forall ((o_2 T@Ref) (f_4 T@Field_25883_145426) ) (!  (not (select (|PolymorphicMapType_44415_43926_146808#PolymorphicMapType_44415| ZeroPMask) o_2 f_4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_146808#PolymorphicMapType_44415| ZeroPMask) o_2 f_4))
)))
(assert (forall ((o_2@@0 T@Ref) (f_4@@0 T@Field_25883_145293) ) (!  (not (select (|PolymorphicMapType_44415_43926_145293#PolymorphicMapType_44415| ZeroPMask) o_2@@0 f_4@@0))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_145293#PolymorphicMapType_44415| ZeroPMask) o_2@@0 f_4@@0))
)))
(assert (forall ((o_2@@1 T@Ref) (f_4@@1 T@Field_50101_3522) ) (!  (not (select (|PolymorphicMapType_44415_43926_3522#PolymorphicMapType_44415| ZeroPMask) o_2@@1 f_4@@1))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_3522#PolymorphicMapType_44415| ZeroPMask) o_2@@1 f_4@@1))
)))
(assert (forall ((o_2@@2 T@Ref) (f_4@@2 T@Field_49987_49992) ) (!  (not (select (|PolymorphicMapType_44415_43926_49992#PolymorphicMapType_44415| ZeroPMask) o_2@@2 f_4@@2))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_49992#PolymorphicMapType_44415| ZeroPMask) o_2@@2 f_4@@2))
)))
(assert (forall ((o_2@@3 T@Ref) (f_4@@3 T@Field_43939_43940) ) (!  (not (select (|PolymorphicMapType_44415_43926_43940#PolymorphicMapType_44415| ZeroPMask) o_2@@3 f_4@@3))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_43940#PolymorphicMapType_44415| ZeroPMask) o_2@@3 f_4@@3))
)))
(assert (forall ((o_2@@4 T@Ref) (f_4@@4 T@Field_43926_53) ) (!  (not (select (|PolymorphicMapType_44415_43926_53#PolymorphicMapType_44415| ZeroPMask) o_2@@4 f_4@@4))
 :qid |stdinbpl.112:22|
 :skolemid |14|
 :pattern ( (select (|PolymorphicMapType_44415_43926_53#PolymorphicMapType_44415| ZeroPMask) o_2@@4 f_4@@4))
)))
(assert (forall ((s@@1 T@Seq_49990) (n@@1 Int) (j Int) ) (!  (=> (and (and (< 0 n@@1) (<= 0 j)) (< j (- (|Seq#Length_25884| s@@1) n@@1))) (and (= (|Seq#Sub| (|Seq#Add| j n@@1) n@@1) j) (= (|Seq#Index_25884| (|Seq#Drop_25884| s@@1 n@@1) j) (|Seq#Index_25884| s@@1 (|Seq#Add| j n@@1)))))
 :qid |stdinbpl.369:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_25884| (|Seq#Drop_25884| s@@1 n@@1) j))
)))
(assert (forall ((s@@2 T@Seq_3368) (n@@2 Int) (j@@0 Int) ) (!  (=> (and (and (< 0 n@@2) (<= 0 j@@0)) (< j@@0 (- (|Seq#Length_3368| s@@2) n@@2))) (and (= (|Seq#Sub| (|Seq#Add| j@@0 n@@2) n@@2) j@@0) (= (|Seq#Index_3368| (|Seq#Drop_3368| s@@2 n@@2) j@@0) (|Seq#Index_3368| s@@2 (|Seq#Add| j@@0 n@@2)))))
 :qid |stdinbpl.369:18|
 :skolemid |39|
 :pattern ( (|Seq#Index_3368| (|Seq#Drop_3368| s@@2 n@@2) j@@0))
)))
(assert (= (|Seq#Length_25884| |Seq#Empty_25884|) 0))
(assert (= (|Seq#Length_3368| |Seq#Empty_3368|) 0))
(assert (forall ((s@@3 T@Seq_49990) (i Int) (v T@Ref) (n@@3 Int) ) (!  (=> (and (<= 0 n@@3) (< n@@3 (|Seq#Length_25884| s@@3))) (and (=> (= i n@@3) (= (|Seq#Index_25884| (|Seq#Update_25884| s@@3 i v) n@@3) v)) (=> (not (= i n@@3)) (= (|Seq#Index_25884| (|Seq#Update_25884| s@@3 i v) n@@3) (|Seq#Index_25884| s@@3 n@@3)))))
 :qid |stdinbpl.324:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_25884| (|Seq#Update_25884| s@@3 i v) n@@3))
 :pattern ( (|Seq#Index_25884| s@@3 n@@3) (|Seq#Update_25884| s@@3 i v))
)))
(assert (forall ((s@@4 T@Seq_3368) (i@@0 Int) (v@@0 Int) (n@@4 Int) ) (!  (=> (and (<= 0 n@@4) (< n@@4 (|Seq#Length_3368| s@@4))) (and (=> (= i@@0 n@@4) (= (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4) v@@0)) (=> (not (= i@@0 n@@4)) (= (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4) (|Seq#Index_3368| s@@4 n@@4)))))
 :qid |stdinbpl.324:18|
 :skolemid |35|
 :pattern ( (|Seq#Index_3368| (|Seq#Update_3368| s@@4 i@@0 v@@0) n@@4))
 :pattern ( (|Seq#Index_3368| s@@4 n@@4) (|Seq#Update_3368| s@@4 i@@0 v@@0))
)))
(assert (forall ((s@@5 T@Seq_49990) (n@@5 Int) ) (!  (and (=> (<= 0 n@@5) (and (=> (<= n@@5 (|Seq#Length_25884| s@@5)) (= (|Seq#Length_25884| (|Seq#Take_25884| s@@5 n@@5)) n@@5)) (=> (< (|Seq#Length_25884| s@@5) n@@5) (= (|Seq#Length_25884| (|Seq#Take_25884| s@@5 n@@5)) (|Seq#Length_25884| s@@5))))) (=> (< n@@5 0) (= (|Seq#Length_25884| (|Seq#Take_25884| s@@5 n@@5)) 0)))
 :qid |stdinbpl.335:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_25884| (|Seq#Take_25884| s@@5 n@@5)))
 :pattern ( (|Seq#Take_25884| s@@5 n@@5) (|Seq#Length_25884| s@@5))
)))
(assert (forall ((s@@6 T@Seq_3368) (n@@6 Int) ) (!  (and (=> (<= 0 n@@6) (and (=> (<= n@@6 (|Seq#Length_3368| s@@6)) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) n@@6)) (=> (< (|Seq#Length_3368| s@@6) n@@6) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) (|Seq#Length_3368| s@@6))))) (=> (< n@@6 0) (= (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)) 0)))
 :qid |stdinbpl.335:18|
 :skolemid |36|
 :pattern ( (|Seq#Length_3368| (|Seq#Take_3368| s@@6 n@@6)))
 :pattern ( (|Seq#Take_3368| s@@6 n@@6) (|Seq#Length_3368| s@@6))
)))
(assert (forall ((q@min Int) (q@max Int) (v@@1 Int) ) (! (= (|Seq#Contains_3368| (|Seq#Range| q@min q@max) v@@1)  (and (<= q@min v@@1) (< v@@1 q@max)))
 :qid |stdinbpl.609:15|
 :skolemid |57|
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| q@min q@max) v@@1))
)))
(assert (forall ((s@@7 T@Seq_49990) (x T@Ref) ) (!  (=> (|Seq#Contains_49990| s@@7 x) (and (and (<= 0 (|Seq#Skolem_49990| s@@7 x)) (< (|Seq#Skolem_49990| s@@7 x) (|Seq#Length_25884| s@@7))) (= (|Seq#Index_25884| s@@7 (|Seq#Skolem_49990| s@@7 x)) x)))
 :qid |stdinbpl.467:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_49990| s@@7 x))
)))
(assert (forall ((s@@8 T@Seq_3368) (x@@0 Int) ) (!  (=> (|Seq#Contains_3368| s@@8 x@@0) (and (and (<= 0 (|Seq#Skolem_3368| s@@8 x@@0)) (< (|Seq#Skolem_3368| s@@8 x@@0) (|Seq#Length_3368| s@@8))) (= (|Seq#Index_3368| s@@8 (|Seq#Skolem_3368| s@@8 x@@0)) x@@0)))
 :qid |stdinbpl.467:18|
 :skolemid |47|
 :pattern ( (|Seq#Contains_3368| s@@8 x@@0))
)))
(assert (forall ((s@@9 T@Seq_49990) (n@@7 Int) ) (!  (=> (<= n@@7 0) (= (|Seq#Drop_25884| s@@9 n@@7) s@@9))
 :qid |stdinbpl.451:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_25884| s@@9 n@@7))
)))
(assert (forall ((s@@10 T@Seq_3368) (n@@8 Int) ) (!  (=> (<= n@@8 0) (= (|Seq#Drop_3368| s@@10 n@@8) s@@10))
 :qid |stdinbpl.451:18|
 :skolemid |45|
 :pattern ( (|Seq#Drop_3368| s@@10 n@@8))
)))
(assert (forall ((i@@1 Int) (j@@1 Int) ) (! (= (|Seq#Sub| i@@1 j@@1) (- i@@1 j@@1))
 :qid |stdinbpl.304:15|
 :skolemid |30|
 :pattern ( (|Seq#Sub| i@@1 j@@1))
)))
(assert (forall ((i@@2 Int) (j@@2 Int) ) (! (= (|Seq#Add| i@@2 j@@2) (+ i@@2 j@@2))
 :qid |stdinbpl.302:15|
 :skolemid |29|
 :pattern ( (|Seq#Add| i@@2 j@@2))
)))
(assert (forall ((Heap@@0 T@PolymorphicMapType_43866) (ExhaleHeap T@PolymorphicMapType_43866) (Mask@@0 T@PolymorphicMapType_43887) (pm_f_54 T@Field_25883_145293) ) (!  (=> (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (=> (and (HasDirectPerm_25883_145357 Mask@@0 null pm_f_54) (IsPredicateField_25883_145384 pm_f_54)) (= (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@0) null (PredicateMaskField_25883 pm_f_54)) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap) null (PredicateMaskField_25883 pm_f_54)))))
 :qid |stdinbpl.47:19|
 :skolemid |2|
 :pattern ( (IdenticalOnKnownLocations Heap@@0 ExhaleHeap Mask@@0) (IsPredicateField_25883_145384 pm_f_54) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap) null (PredicateMaskField_25883 pm_f_54)))
)))
(assert (forall ((Heap@@1 T@PolymorphicMapType_43866) (ExhaleHeap@@0 T@PolymorphicMapType_43866) (Mask@@1 T@PolymorphicMapType_43887) (pm_f_54@@0 T@Field_25883_145293) ) (!  (=> (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (=> (and (HasDirectPerm_25883_145357 Mask@@1 null pm_f_54@@0) (IsWandField_25883_147335 pm_f_54@@0)) (= (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@1) null (WandMaskField_25883 pm_f_54@@0)) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@0) null (WandMaskField_25883 pm_f_54@@0)))))
 :qid |stdinbpl.60:19|
 :skolemid |5|
 :pattern ( (IdenticalOnKnownLocations Heap@@1 ExhaleHeap@@0 Mask@@1) (IsWandField_25883_147335 pm_f_54@@0) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@0) null (WandMaskField_25883 pm_f_54@@0)))
)))
(assert (forall ((x@@1 T@Ref) (y T@Ref) ) (! (= (|Seq#Contains_49990| (|Seq#Singleton_25884| x@@1) y) (= x@@1 y))
 :qid |stdinbpl.592:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_49990| (|Seq#Singleton_25884| x@@1) y))
)))
(assert (forall ((x@@2 Int) (y@@0 Int) ) (! (= (|Seq#Contains_3368| (|Seq#Singleton_3368| x@@2) y@@0) (= x@@2 y@@0))
 :qid |stdinbpl.592:18|
 :skolemid |54|
 :pattern ( (|Seq#Contains_3368| (|Seq#Singleton_3368| x@@2) y@@0))
)))
(assert (forall ((s@@11 T@Seq_49990) (n@@9 Int) (j@@3 Int) ) (!  (=> (and (and (<= 0 j@@3) (< j@@3 n@@9)) (< j@@3 (|Seq#Length_25884| s@@11))) (= (|Seq#Index_25884| (|Seq#Take_25884| s@@11 n@@9) j@@3) (|Seq#Index_25884| s@@11 j@@3)))
 :qid |stdinbpl.343:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_25884| (|Seq#Take_25884| s@@11 n@@9) j@@3))
 :pattern ( (|Seq#Index_25884| s@@11 j@@3) (|Seq#Take_25884| s@@11 n@@9))
)))
(assert (forall ((s@@12 T@Seq_3368) (n@@10 Int) (j@@4 Int) ) (!  (=> (and (and (<= 0 j@@4) (< j@@4 n@@10)) (< j@@4 (|Seq#Length_3368| s@@12))) (= (|Seq#Index_3368| (|Seq#Take_3368| s@@12 n@@10) j@@4) (|Seq#Index_3368| s@@12 j@@4)))
 :qid |stdinbpl.343:18|
 :skolemid |37|
 :pattern ( (|Seq#Index_3368| (|Seq#Take_3368| s@@12 n@@10) j@@4))
 :pattern ( (|Seq#Index_3368| s@@12 j@@4) (|Seq#Take_3368| s@@12 n@@10))
)))
(assert (forall ((s@@13 T@Seq_49990) (t T@Seq_49990) (n@@11 Int) ) (!  (=> (and (and (> n@@11 0) (> n@@11 (|Seq#Length_25884| s@@13))) (< n@@11 (|Seq#Length_25884| (|Seq#Append_49990| s@@13 t)))) (and (= (|Seq#Add| (|Seq#Sub| n@@11 (|Seq#Length_25884| s@@13)) (|Seq#Length_25884| s@@13)) n@@11) (= (|Seq#Take_25884| (|Seq#Append_49990| s@@13 t) n@@11) (|Seq#Append_49990| s@@13 (|Seq#Take_25884| t (|Seq#Sub| n@@11 (|Seq#Length_25884| s@@13)))))))
 :qid |stdinbpl.428:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_25884| (|Seq#Append_49990| s@@13 t) n@@11))
)))
(assert (forall ((s@@14 T@Seq_3368) (t@@0 T@Seq_3368) (n@@12 Int) ) (!  (=> (and (and (> n@@12 0) (> n@@12 (|Seq#Length_3368| s@@14))) (< n@@12 (|Seq#Length_3368| (|Seq#Append_3368| s@@14 t@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@12 (|Seq#Length_3368| s@@14)) (|Seq#Length_3368| s@@14)) n@@12) (= (|Seq#Take_3368| (|Seq#Append_3368| s@@14 t@@0) n@@12) (|Seq#Append_3368| s@@14 (|Seq#Take_3368| t@@0 (|Seq#Sub| n@@12 (|Seq#Length_3368| s@@14)))))))
 :qid |stdinbpl.428:18|
 :skolemid |42|
 :pattern ( (|Seq#Take_3368| (|Seq#Append_3368| s@@14 t@@0) n@@12))
)))
(assert (state dummyHeap ZeroMask))
(assert (forall ((Heap@@2 T@PolymorphicMapType_43866) (ExhaleHeap@@1 T@PolymorphicMapType_43866) (Mask@@2 T@PolymorphicMapType_43887) (o_44 T@Ref) ) (!  (=> (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (=> (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@2) o_44 $allocated) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@1) o_44 $allocated)))
 :qid |stdinbpl.73:15|
 :skolemid |8|
 :pattern ( (IdenticalOnKnownLocations Heap@@2 ExhaleHeap@@1 Mask@@2) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@1) o_44 $allocated))
)))
(assert (forall ((p T@Field_25883_145293) (v_1 T@FrameType) (w T@FrameType) ) (!  (not (InsidePredicate_43926_43926 p v_1 p w))
 :qid |stdinbpl.246:19|
 :skolemid |21|
 :pattern ( (InsidePredicate_43926_43926 p v_1 p w))
)))
(assert (forall ((s0 T@Seq_49990) (s1 T@Seq_49990) (n@@13 Int) ) (!  (=> (and (and (and (not (= s0 |Seq#Empty_25884|)) (not (= s1 |Seq#Empty_25884|))) (<= (|Seq#Length_25884| s0) n@@13)) (< n@@13 (|Seq#Length_25884| (|Seq#Append_49990| s0 s1)))) (and (= (|Seq#Add| (|Seq#Sub| n@@13 (|Seq#Length_25884| s0)) (|Seq#Length_25884| s0)) n@@13) (= (|Seq#Index_25884| (|Seq#Append_49990| s0 s1) n@@13) (|Seq#Index_25884| s1 (|Seq#Sub| n@@13 (|Seq#Length_25884| s0))))))
 :qid |stdinbpl.315:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_25884| (|Seq#Append_49990| s0 s1) n@@13))
)))
(assert (forall ((s0@@0 T@Seq_3368) (s1@@0 T@Seq_3368) (n@@14 Int) ) (!  (=> (and (and (and (not (= s0@@0 |Seq#Empty_3368|)) (not (= s1@@0 |Seq#Empty_3368|))) (<= (|Seq#Length_3368| s0@@0) n@@14)) (< n@@14 (|Seq#Length_3368| (|Seq#Append_3368| s0@@0 s1@@0)))) (and (= (|Seq#Add| (|Seq#Sub| n@@14 (|Seq#Length_3368| s0@@0)) (|Seq#Length_3368| s0@@0)) n@@14) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@0 s1@@0) n@@14) (|Seq#Index_3368| s1@@0 (|Seq#Sub| n@@14 (|Seq#Length_3368| s0@@0))))))
 :qid |stdinbpl.315:18|
 :skolemid |32|
 :pattern ( (|Seq#Index_3368| (|Seq#Append_3368| s0@@0 s1@@0) n@@14))
)))
(assert  (not (IsPredicateField_25883_50014 src)))
(assert  (not (IsWandField_25883_50040 src)))
(assert  (not (IsPredicateField_25883_50014 dst)))
(assert  (not (IsWandField_25883_50040 dst)))
(assert  (not (IsPredicateField_25891_3522 Integer_value)))
(assert  (not (IsWandField_25891_3522 Integer_value)))
(assert (forall ((Heap@@3 T@PolymorphicMapType_43866) (ExhaleHeap@@2 T@PolymorphicMapType_43866) (Mask@@3 T@PolymorphicMapType_43887) ) (!  (=> (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3) (succHeap Heap@@3 ExhaleHeap@@2))
 :qid |stdinbpl.83:15|
 :skolemid |10|
 :pattern ( (IdenticalOnKnownLocations Heap@@3 ExhaleHeap@@2 Mask@@3))
)))
(assert (forall ((Mask@@4 T@PolymorphicMapType_43887) (o_2@@5 T@Ref) (f_4@@5 T@Field_25883_145426) ) (!  (=> (GoodMask Mask@@4) (and (>= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@@4) o_2@@5 f_4@@5) NoPerm) (=> (and (and (and (GoodMask Mask@@4) AssumePermUpperBound) (not (IsPredicateField_25883_151469 f_4@@5))) (not (IsWandField_25883_151485 f_4@@5))) (<= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@@4) o_2@@5 f_4@@5) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@4) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@@4) o_2@@5 f_4@@5))
)))
(assert (forall ((Mask@@5 T@PolymorphicMapType_43887) (o_2@@6 T@Ref) (f_4@@6 T@Field_25883_145293) ) (!  (=> (GoodMask Mask@@5) (and (>= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@@5) o_2@@6 f_4@@6) NoPerm) (=> (and (and (and (GoodMask Mask@@5) AssumePermUpperBound) (not (IsPredicateField_25883_145384 f_4@@6))) (not (IsWandField_25883_147335 f_4@@6))) (<= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@@5) o_2@@6 f_4@@6) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@5) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@@5) o_2@@6 f_4@@6))
)))
(assert (forall ((Mask@@6 T@PolymorphicMapType_43887) (o_2@@7 T@Ref) (f_4@@7 T@Field_43939_43940) ) (!  (=> (GoodMask Mask@@6) (and (>= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@@6) o_2@@7 f_4@@7) NoPerm) (=> (and (and (and (GoodMask Mask@@6) AssumePermUpperBound) (not (IsPredicateField_25883_43940 f_4@@7))) (not (IsWandField_25883_43940 f_4@@7))) (<= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@@6) o_2@@7 f_4@@7) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@6) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@@6) o_2@@7 f_4@@7))
)))
(assert (forall ((Mask@@7 T@PolymorphicMapType_43887) (o_2@@8 T@Ref) (f_4@@8 T@Field_43926_53) ) (!  (=> (GoodMask Mask@@7) (and (>= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@@7) o_2@@8 f_4@@8) NoPerm) (=> (and (and (and (GoodMask Mask@@7) AssumePermUpperBound) (not (IsPredicateField_25883_53 f_4@@8))) (not (IsWandField_25883_53 f_4@@8))) (<= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@@7) o_2@@8 f_4@@8) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@7) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@@7) o_2@@8 f_4@@8))
)))
(assert (forall ((Mask@@8 T@PolymorphicMapType_43887) (o_2@@9 T@Ref) (f_4@@9 T@Field_50101_3522) ) (!  (=> (GoodMask Mask@@8) (and (>= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@@8) o_2@@9 f_4@@9) NoPerm) (=> (and (and (and (GoodMask Mask@@8) AssumePermUpperBound) (not (IsPredicateField_25891_3522 f_4@@9))) (not (IsWandField_25891_3522 f_4@@9))) (<= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@@8) o_2@@9 f_4@@9) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@8) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@@8) o_2@@9 f_4@@9))
)))
(assert (forall ((Mask@@9 T@PolymorphicMapType_43887) (o_2@@10 T@Ref) (f_4@@10 T@Field_49987_49992) ) (!  (=> (GoodMask Mask@@9) (and (>= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@@9) o_2@@10 f_4@@10) NoPerm) (=> (and (and (and (GoodMask Mask@@9) AssumePermUpperBound) (not (IsPredicateField_25883_50014 f_4@@10))) (not (IsWandField_25883_50040 f_4@@10))) (<= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@@9) o_2@@10 f_4@@10) FullPerm))))
 :qid |stdinbpl.129:22|
 :skolemid |16|
 :pattern ( (GoodMask Mask@@9) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@@9) o_2@@10 f_4@@10))
)))
(assert (forall ((Mask@@10 T@PolymorphicMapType_43887) (o_2@@11 T@Ref) (f_4@@11 T@Field_25883_145426) ) (! (= (HasDirectPerm_25883_152006 Mask@@10 o_2@@11 f_4@@11) (> (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@@10) o_2@@11 f_4@@11) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25883_152006 Mask@@10 o_2@@11 f_4@@11))
)))
(assert (forall ((Mask@@11 T@PolymorphicMapType_43887) (o_2@@12 T@Ref) (f_4@@12 T@Field_25883_145293) ) (! (= (HasDirectPerm_25883_145357 Mask@@11 o_2@@12 f_4@@12) (> (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@@11) o_2@@12 f_4@@12) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25883_145357 Mask@@11 o_2@@12 f_4@@12))
)))
(assert (forall ((Mask@@12 T@PolymorphicMapType_43887) (o_2@@13 T@Ref) (f_4@@13 T@Field_43939_43940) ) (! (= (HasDirectPerm_25883_43940 Mask@@12 o_2@@13 f_4@@13) (> (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@@12) o_2@@13 f_4@@13) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25883_43940 Mask@@12 o_2@@13 f_4@@13))
)))
(assert (forall ((Mask@@13 T@PolymorphicMapType_43887) (o_2@@14 T@Ref) (f_4@@14 T@Field_43926_53) ) (! (= (HasDirectPerm_25883_53 Mask@@13 o_2@@14 f_4@@14) (> (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@@13) o_2@@14 f_4@@14) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25883_53 Mask@@13 o_2@@14 f_4@@14))
)))
(assert (forall ((Mask@@14 T@PolymorphicMapType_43887) (o_2@@15 T@Ref) (f_4@@15 T@Field_50101_3522) ) (! (= (HasDirectPerm_25891_3522 Mask@@14 o_2@@15 f_4@@15) (> (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@@14) o_2@@15 f_4@@15) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25891_3522 Mask@@14 o_2@@15 f_4@@15))
)))
(assert (forall ((Mask@@15 T@PolymorphicMapType_43887) (o_2@@16 T@Ref) (f_4@@16 T@Field_49987_49992) ) (! (= (HasDirectPerm_25883_50807 Mask@@15 o_2@@16 f_4@@16) (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@@15) o_2@@16 f_4@@16) NoPerm))
 :qid |stdinbpl.134:22|
 :skolemid |17|
 :pattern ( (HasDirectPerm_25883_50807 Mask@@15 o_2@@16 f_4@@16))
)))
(assert (forall ((p@@0 Real) (f_6 T@FrameType) ) (! (= (ConditionalFrame p@@0 f_6) (ite (> p@@0 0.0) f_6 EmptyFrame))
 :qid |stdinbpl.234:15|
 :skolemid |19|
 :pattern ( (ConditionalFrame p@@0 f_6))
)))
(assert (forall ((q@min@@0 Int) (q@max@@0 Int) (j@@5 Int) ) (!  (=> (and (<= 0 j@@5) (< j@@5 (- q@max@@0 q@min@@0))) (= (|Seq#Index_3368| (|Seq#Range| q@min@@0 q@max@@0) j@@5) (+ q@min@@0 j@@5)))
 :qid |stdinbpl.607:15|
 :skolemid |56|
 :pattern ( (|Seq#Index_3368| (|Seq#Range| q@min@@0 q@max@@0) j@@5))
)))
(assert (forall ((Heap@@4 T@PolymorphicMapType_43866) (ExhaleHeap@@3 T@PolymorphicMapType_43866) (Mask@@16 T@PolymorphicMapType_43887) (o_44@@0 T@Ref) (f_58 T@Field_25883_145426) ) (!  (=> (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (=> (HasDirectPerm_25883_152006 Mask@@16 o_44@@0 f_58) (= (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@4) o_44@@0 f_58) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@3) o_44@@0 f_58))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@4 ExhaleHeap@@3 Mask@@16) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@3) o_44@@0 f_58))
)))
(assert (forall ((Heap@@5 T@PolymorphicMapType_43866) (ExhaleHeap@@4 T@PolymorphicMapType_43866) (Mask@@17 T@PolymorphicMapType_43887) (o_44@@1 T@Ref) (f_58@@0 T@Field_25883_145293) ) (!  (=> (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (=> (HasDirectPerm_25883_145357 Mask@@17 o_44@@1 f_58@@0) (= (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@5) o_44@@1 f_58@@0) (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@4) o_44@@1 f_58@@0))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@5 ExhaleHeap@@4 Mask@@17) (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@4) o_44@@1 f_58@@0))
)))
(assert (forall ((Heap@@6 T@PolymorphicMapType_43866) (ExhaleHeap@@5 T@PolymorphicMapType_43866) (Mask@@18 T@PolymorphicMapType_43887) (o_44@@2 T@Ref) (f_58@@1 T@Field_43939_43940) ) (!  (=> (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (=> (HasDirectPerm_25883_43940 Mask@@18 o_44@@2 f_58@@1) (= (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@6) o_44@@2 f_58@@1) (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@5) o_44@@2 f_58@@1))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@6 ExhaleHeap@@5 Mask@@18) (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@5) o_44@@2 f_58@@1))
)))
(assert (forall ((Heap@@7 T@PolymorphicMapType_43866) (ExhaleHeap@@6 T@PolymorphicMapType_43866) (Mask@@19 T@PolymorphicMapType_43887) (o_44@@3 T@Ref) (f_58@@2 T@Field_43926_53) ) (!  (=> (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (=> (HasDirectPerm_25883_53 Mask@@19 o_44@@3 f_58@@2) (= (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@7) o_44@@3 f_58@@2) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@6) o_44@@3 f_58@@2))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@7 ExhaleHeap@@6 Mask@@19) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@6) o_44@@3 f_58@@2))
)))
(assert (forall ((Heap@@8 T@PolymorphicMapType_43866) (ExhaleHeap@@7 T@PolymorphicMapType_43866) (Mask@@20 T@PolymorphicMapType_43887) (o_44@@4 T@Ref) (f_58@@3 T@Field_50101_3522) ) (!  (=> (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (=> (HasDirectPerm_25891_3522 Mask@@20 o_44@@4 f_58@@3) (= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@8) o_44@@4 f_58@@3) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@7) o_44@@4 f_58@@3))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@8 ExhaleHeap@@7 Mask@@20) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@7) o_44@@4 f_58@@3))
)))
(assert (forall ((Heap@@9 T@PolymorphicMapType_43866) (ExhaleHeap@@8 T@PolymorphicMapType_43866) (Mask@@21 T@PolymorphicMapType_43887) (o_44@@5 T@Ref) (f_58@@4 T@Field_49987_49992) ) (!  (=> (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (=> (HasDirectPerm_25883_50807 Mask@@21 o_44@@5 f_58@@4) (= (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@9) o_44@@5 f_58@@4) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@8) o_44@@5 f_58@@4))))
 :qid |stdinbpl.42:22|
 :skolemid |1|
 :pattern ( (IdenticalOnKnownLocations Heap@@9 ExhaleHeap@@8 Mask@@21) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@8) o_44@@5 f_58@@4))
)))
(assert (forall ((s0@@1 T@Seq_49990) (s1@@1 T@Seq_49990) ) (!  (=> (and (not (= s0@@1 |Seq#Empty_25884|)) (not (= s1@@1 |Seq#Empty_25884|))) (= (|Seq#Length_25884| (|Seq#Append_49990| s0@@1 s1@@1)) (+ (|Seq#Length_25884| s0@@1) (|Seq#Length_25884| s1@@1))))
 :qid |stdinbpl.284:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_25884| (|Seq#Append_49990| s0@@1 s1@@1)))
)))
(assert (forall ((s0@@2 T@Seq_3368) (s1@@2 T@Seq_3368) ) (!  (=> (and (not (= s0@@2 |Seq#Empty_3368|)) (not (= s1@@2 |Seq#Empty_3368|))) (= (|Seq#Length_3368| (|Seq#Append_3368| s0@@2 s1@@2)) (+ (|Seq#Length_3368| s0@@2) (|Seq#Length_3368| s1@@2))))
 :qid |stdinbpl.284:18|
 :skolemid |26|
 :pattern ( (|Seq#Length_3368| (|Seq#Append_3368| s0@@2 s1@@2)))
)))
(assert (forall ((o_2@@17 T@Ref) (f_4@@17 T@Field_25883_145426) ) (! (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask) o_2@@17 f_4@@17) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask) o_2@@17 f_4@@17))
)))
(assert (forall ((o_2@@18 T@Ref) (f_4@@18 T@Field_25883_145293) ) (! (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) o_2@@18 f_4@@18) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) o_2@@18 f_4@@18))
)))
(assert (forall ((o_2@@19 T@Ref) (f_4@@19 T@Field_43939_43940) ) (! (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) o_2@@19 f_4@@19) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) o_2@@19 f_4@@19))
)))
(assert (forall ((o_2@@20 T@Ref) (f_4@@20 T@Field_43926_53) ) (! (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) o_2@@20 f_4@@20) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) o_2@@20 f_4@@20))
)))
(assert (forall ((o_2@@21 T@Ref) (f_4@@21 T@Field_50101_3522) ) (! (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) o_2@@21 f_4@@21) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) o_2@@21 f_4@@21))
)))
(assert (forall ((o_2@@22 T@Ref) (f_4@@22 T@Field_49987_49992) ) (! (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) o_2@@22 f_4@@22) NoPerm)
 :qid |stdinbpl.106:22|
 :skolemid |13|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) o_2@@22 f_4@@22))
)))
(assert (forall ((s@@15 T@Seq_49990) (t@@1 T@Seq_49990) (n@@15 Int) ) (!  (=> (and (> n@@15 0) (> n@@15 (|Seq#Length_25884| s@@15))) (and (= (|Seq#Add| (|Seq#Sub| n@@15 (|Seq#Length_25884| s@@15)) (|Seq#Length_25884| s@@15)) n@@15) (= (|Seq#Drop_25884| (|Seq#Append_49990| s@@15 t@@1) n@@15) (|Seq#Drop_25884| t@@1 (|Seq#Sub| n@@15 (|Seq#Length_25884| s@@15))))))
 :qid |stdinbpl.441:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_25884| (|Seq#Append_49990| s@@15 t@@1) n@@15))
)))
(assert (forall ((s@@16 T@Seq_3368) (t@@2 T@Seq_3368) (n@@16 Int) ) (!  (=> (and (> n@@16 0) (> n@@16 (|Seq#Length_3368| s@@16))) (and (= (|Seq#Add| (|Seq#Sub| n@@16 (|Seq#Length_3368| s@@16)) (|Seq#Length_3368| s@@16)) n@@16) (= (|Seq#Drop_3368| (|Seq#Append_3368| s@@16 t@@2) n@@16) (|Seq#Drop_3368| t@@2 (|Seq#Sub| n@@16 (|Seq#Length_3368| s@@16))))))
 :qid |stdinbpl.441:18|
 :skolemid |44|
 :pattern ( (|Seq#Drop_3368| (|Seq#Append_3368| s@@16 t@@2) n@@16))
)))
(assert (forall ((ResultMask T@PolymorphicMapType_43887) (SummandMask1 T@PolymorphicMapType_43887) (SummandMask2 T@PolymorphicMapType_43887) (o_2@@23 T@Ref) (f_4@@23 T@Field_25883_145426) ) (!  (=> (sumMask ResultMask SummandMask1 SummandMask2) (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ResultMask) o_2@@23 f_4@@23) (+ (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| SummandMask1) o_2@@23 f_4@@23) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| SummandMask2) o_2@@23 f_4@@23))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ResultMask) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| SummandMask1) o_2@@23 f_4@@23))
 :pattern ( (sumMask ResultMask SummandMask1 SummandMask2) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| SummandMask2) o_2@@23 f_4@@23))
)))
(assert (forall ((ResultMask@@0 T@PolymorphicMapType_43887) (SummandMask1@@0 T@PolymorphicMapType_43887) (SummandMask2@@0 T@PolymorphicMapType_43887) (o_2@@24 T@Ref) (f_4@@24 T@Field_25883_145293) ) (!  (=> (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ResultMask@@0) o_2@@24 f_4@@24) (+ (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| SummandMask1@@0) o_2@@24 f_4@@24) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| SummandMask2@@0) o_2@@24 f_4@@24))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ResultMask@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| SummandMask1@@0) o_2@@24 f_4@@24))
 :pattern ( (sumMask ResultMask@@0 SummandMask1@@0 SummandMask2@@0) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| SummandMask2@@0) o_2@@24 f_4@@24))
)))
(assert (forall ((ResultMask@@1 T@PolymorphicMapType_43887) (SummandMask1@@1 T@PolymorphicMapType_43887) (SummandMask2@@1 T@PolymorphicMapType_43887) (o_2@@25 T@Ref) (f_4@@25 T@Field_43939_43940) ) (!  (=> (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ResultMask@@1) o_2@@25 f_4@@25) (+ (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| SummandMask1@@1) o_2@@25 f_4@@25) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| SummandMask2@@1) o_2@@25 f_4@@25))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ResultMask@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| SummandMask1@@1) o_2@@25 f_4@@25))
 :pattern ( (sumMask ResultMask@@1 SummandMask1@@1 SummandMask2@@1) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| SummandMask2@@1) o_2@@25 f_4@@25))
)))
(assert (forall ((ResultMask@@2 T@PolymorphicMapType_43887) (SummandMask1@@2 T@PolymorphicMapType_43887) (SummandMask2@@2 T@PolymorphicMapType_43887) (o_2@@26 T@Ref) (f_4@@26 T@Field_43926_53) ) (!  (=> (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ResultMask@@2) o_2@@26 f_4@@26) (+ (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| SummandMask1@@2) o_2@@26 f_4@@26) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| SummandMask2@@2) o_2@@26 f_4@@26))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ResultMask@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| SummandMask1@@2) o_2@@26 f_4@@26))
 :pattern ( (sumMask ResultMask@@2 SummandMask1@@2 SummandMask2@@2) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| SummandMask2@@2) o_2@@26 f_4@@26))
)))
(assert (forall ((ResultMask@@3 T@PolymorphicMapType_43887) (SummandMask1@@3 T@PolymorphicMapType_43887) (SummandMask2@@3 T@PolymorphicMapType_43887) (o_2@@27 T@Ref) (f_4@@27 T@Field_50101_3522) ) (!  (=> (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ResultMask@@3) o_2@@27 f_4@@27) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| SummandMask1@@3) o_2@@27 f_4@@27) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| SummandMask2@@3) o_2@@27 f_4@@27))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ResultMask@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| SummandMask1@@3) o_2@@27 f_4@@27))
 :pattern ( (sumMask ResultMask@@3 SummandMask1@@3 SummandMask2@@3) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| SummandMask2@@3) o_2@@27 f_4@@27))
)))
(assert (forall ((ResultMask@@4 T@PolymorphicMapType_43887) (SummandMask1@@4 T@PolymorphicMapType_43887) (SummandMask2@@4 T@PolymorphicMapType_43887) (o_2@@28 T@Ref) (f_4@@28 T@Field_49987_49992) ) (!  (=> (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ResultMask@@4) o_2@@28 f_4@@28) (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| SummandMask1@@4) o_2@@28 f_4@@28) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| SummandMask2@@4) o_2@@28 f_4@@28))))
 :qid |stdinbpl.139:22|
 :skolemid |18|
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ResultMask@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| SummandMask1@@4) o_2@@28 f_4@@28))
 :pattern ( (sumMask ResultMask@@4 SummandMask1@@4 SummandMask2@@4) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| SummandMask2@@4) o_2@@28 f_4@@28))
)))
(assert (forall ((q@min@@1 Int) (q@max@@1 Int) ) (!  (and (=> (< q@min@@1 q@max@@1) (= (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)) (- q@max@@1 q@min@@1))) (=> (<= q@max@@1 q@min@@1) (= (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)) 0)))
 :qid |stdinbpl.606:15|
 :skolemid |55|
 :pattern ( (|Seq#Length_3368| (|Seq#Range| q@min@@1 q@max@@1)))
)))
(assert (forall ((a T@Seq_3368) (b T@Seq_3368) ) (!  (=> (|Seq#Equal_3368| a b) (= a b))
 :qid |stdinbpl.579:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_3368| a b))
)))
(assert (forall ((a@@0 T@Seq_49990) (b@@0 T@Seq_49990) ) (!  (=> (|Seq#Equal_25884| a@@0 b@@0) (= a@@0 b@@0))
 :qid |stdinbpl.579:18|
 :skolemid |53|
 :pattern ( (|Seq#Equal_25884| a@@0 b@@0))
)))
(assert (forall ((s@@17 T@Seq_49990) (i@@3 Int) ) (!  (=> (and (<= 0 i@@3) (< i@@3 (|Seq#Length_25884| s@@17))) (|Seq#ContainsTrigger_25884| s@@17 (|Seq#Index_25884| s@@17 i@@3)))
 :qid |stdinbpl.472:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_25884| s@@17 i@@3))
)))
(assert (forall ((s@@18 T@Seq_3368) (i@@4 Int) ) (!  (=> (and (<= 0 i@@4) (< i@@4 (|Seq#Length_3368| s@@18))) (|Seq#ContainsTrigger_3368| s@@18 (|Seq#Index_3368| s@@18 i@@4)))
 :qid |stdinbpl.472:18|
 :skolemid |49|
 :pattern ( (|Seq#Index_3368| s@@18 i@@4))
)))
(assert (forall ((s0@@3 T@Seq_49990) (s1@@3 T@Seq_49990) ) (!  (and (=> (= s0@@3 |Seq#Empty_25884|) (= (|Seq#Append_49990| s0@@3 s1@@3) s1@@3)) (=> (= s1@@3 |Seq#Empty_25884|) (= (|Seq#Append_49990| s0@@3 s1@@3) s0@@3)))
 :qid |stdinbpl.290:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_49990| s0@@3 s1@@3))
)))
(assert (forall ((s0@@4 T@Seq_3368) (s1@@4 T@Seq_3368) ) (!  (and (=> (= s0@@4 |Seq#Empty_3368|) (= (|Seq#Append_3368| s0@@4 s1@@4) s1@@4)) (=> (= s1@@4 |Seq#Empty_3368|) (= (|Seq#Append_3368| s0@@4 s1@@4) s0@@4)))
 :qid |stdinbpl.290:18|
 :skolemid |27|
 :pattern ( (|Seq#Append_3368| s0@@4 s1@@4))
)))
(assert (forall ((t@@3 T@Ref) ) (! (= (|Seq#Index_25884| (|Seq#Singleton_25884| t@@3) 0) t@@3)
 :qid |stdinbpl.294:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_25884| t@@3))
)))
(assert (forall ((t@@4 Int) ) (! (= (|Seq#Index_3368| (|Seq#Singleton_3368| t@@4) 0) t@@4)
 :qid |stdinbpl.294:18|
 :skolemid |28|
 :pattern ( (|Seq#Singleton_3368| t@@4))
)))
(assert (forall ((s@@19 T@Seq_49990) ) (! (<= 0 (|Seq#Length_25884| s@@19))
 :qid |stdinbpl.273:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_25884| s@@19))
)))
(assert (forall ((s@@20 T@Seq_3368) ) (! (<= 0 (|Seq#Length_3368| s@@20))
 :qid |stdinbpl.273:18|
 :skolemid |22|
 :pattern ( (|Seq#Length_3368| s@@20))
)))
(assert (forall ((Heap@@10 T@PolymorphicMapType_43866) (ExhaleHeap@@9 T@PolymorphicMapType_43866) (Mask@@22 T@PolymorphicMapType_43887) (pm_f_54@@1 T@Field_25883_145293) ) (!  (=> (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (=> (and (HasDirectPerm_25883_145357 Mask@@22 null pm_f_54@@1) (IsPredicateField_25883_145384 pm_f_54@@1)) (and (and (and (and (and (forall ((o2_55 T@Ref) (f_58@@5 T@Field_43926_53) ) (!  (=> (select (|PolymorphicMapType_44415_43926_53#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55 f_58@@5) (= (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@10) o2_55 f_58@@5) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55 f_58@@5)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55 f_58@@5))
)) (forall ((o2_55@@0 T@Ref) (f_58@@6 T@Field_43939_43940) ) (!  (=> (select (|PolymorphicMapType_44415_43926_43940#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55@@0 f_58@@6) (= (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@10) o2_55@@0 f_58@@6) (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@0 f_58@@6)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@0 f_58@@6))
))) (forall ((o2_55@@1 T@Ref) (f_58@@7 T@Field_49987_49992) ) (!  (=> (select (|PolymorphicMapType_44415_43926_49992#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55@@1 f_58@@7) (= (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@10) o2_55@@1 f_58@@7) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@1 f_58@@7)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@1 f_58@@7))
))) (forall ((o2_55@@2 T@Ref) (f_58@@8 T@Field_50101_3522) ) (!  (=> (select (|PolymorphicMapType_44415_43926_3522#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55@@2 f_58@@8) (= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@10) o2_55@@2 f_58@@8) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@2 f_58@@8)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@2 f_58@@8))
))) (forall ((o2_55@@3 T@Ref) (f_58@@9 T@Field_25883_145293) ) (!  (=> (select (|PolymorphicMapType_44415_43926_145293#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55@@3 f_58@@9) (= (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@10) o2_55@@3 f_58@@9) (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@3 f_58@@9)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@3 f_58@@9))
))) (forall ((o2_55@@4 T@Ref) (f_58@@10 T@Field_25883_145426) ) (!  (=> (select (|PolymorphicMapType_44415_43926_146808#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) null (PredicateMaskField_25883 pm_f_54@@1))) o2_55@@4 f_58@@10) (= (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@10) o2_55@@4 f_58@@10) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@4 f_58@@10)))
 :qid |stdinbpl.54:140|
 :skolemid |3|
 :pattern ( (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@9) o2_55@@4 f_58@@10))
)))))
 :qid |stdinbpl.52:19|
 :skolemid |4|
 :pattern ( (IdenticalOnKnownLocations Heap@@10 ExhaleHeap@@9 Mask@@22) (IsPredicateField_25883_145384 pm_f_54@@1))
)))
(assert (forall ((Heap@@11 T@PolymorphicMapType_43866) (ExhaleHeap@@10 T@PolymorphicMapType_43866) (Mask@@23 T@PolymorphicMapType_43887) (pm_f_54@@2 T@Field_25883_145293) ) (!  (=> (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (=> (and (HasDirectPerm_25883_145357 Mask@@23 null pm_f_54@@2) (IsWandField_25883_147335 pm_f_54@@2)) (and (and (and (and (and (forall ((o2_55@@5 T@Ref) (f_58@@11 T@Field_43926_53) ) (!  (=> (select (|PolymorphicMapType_44415_43926_53#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@5 f_58@@11) (= (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@11) o2_55@@5 f_58@@11) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@5 f_58@@11)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@5 f_58@@11))
)) (forall ((o2_55@@6 T@Ref) (f_58@@12 T@Field_43939_43940) ) (!  (=> (select (|PolymorphicMapType_44415_43926_43940#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@6 f_58@@12) (= (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@11) o2_55@@6 f_58@@12) (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@6 f_58@@12)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@6 f_58@@12))
))) (forall ((o2_55@@7 T@Ref) (f_58@@13 T@Field_49987_49992) ) (!  (=> (select (|PolymorphicMapType_44415_43926_49992#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@7 f_58@@13) (= (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@11) o2_55@@7 f_58@@13) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@7 f_58@@13)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@7 f_58@@13))
))) (forall ((o2_55@@8 T@Ref) (f_58@@14 T@Field_50101_3522) ) (!  (=> (select (|PolymorphicMapType_44415_43926_3522#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@8 f_58@@14) (= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@11) o2_55@@8 f_58@@14) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@8 f_58@@14)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@8 f_58@@14))
))) (forall ((o2_55@@9 T@Ref) (f_58@@15 T@Field_25883_145293) ) (!  (=> (select (|PolymorphicMapType_44415_43926_145293#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@9 f_58@@15) (= (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@11) o2_55@@9 f_58@@15) (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@9 f_58@@15)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@9 f_58@@15))
))) (forall ((o2_55@@10 T@Ref) (f_58@@16 T@Field_25883_145426) ) (!  (=> (select (|PolymorphicMapType_44415_43926_146808#PolymorphicMapType_44415| (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) null (WandMaskField_25883 pm_f_54@@2))) o2_55@@10 f_58@@16) (= (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@11) o2_55@@10 f_58@@16) (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@10 f_58@@16)))
 :qid |stdinbpl.67:135|
 :skolemid |6|
 :pattern ( (select (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| ExhaleHeap@@10) o2_55@@10 f_58@@16))
)))))
 :qid |stdinbpl.65:19|
 :skolemid |7|
 :pattern ( (IdenticalOnKnownLocations Heap@@11 ExhaleHeap@@10 Mask@@23) (IsWandField_25883_147335 pm_f_54@@2))
)))
(assert (forall ((s0@@5 T@Seq_3368) (s1@@5 T@Seq_3368) ) (!  (=> (|Seq#Equal_3368| s0@@5 s1@@5) (and (= (|Seq#Length_3368| s0@@5) (|Seq#Length_3368| s1@@5)) (forall ((j@@6 Int) ) (!  (=> (and (<= 0 j@@6) (< j@@6 (|Seq#Length_3368| s0@@5))) (= (|Seq#Index_3368| s0@@5 j@@6) (|Seq#Index_3368| s1@@5 j@@6)))
 :qid |stdinbpl.569:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_3368| s0@@5 j@@6))
 :pattern ( (|Seq#Index_3368| s1@@5 j@@6))
))))
 :qid |stdinbpl.566:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_3368| s0@@5 s1@@5))
)))
(assert (forall ((s0@@6 T@Seq_49990) (s1@@6 T@Seq_49990) ) (!  (=> (|Seq#Equal_25884| s0@@6 s1@@6) (and (= (|Seq#Length_25884| s0@@6) (|Seq#Length_25884| s1@@6)) (forall ((j@@7 Int) ) (!  (=> (and (<= 0 j@@7) (< j@@7 (|Seq#Length_25884| s0@@6))) (= (|Seq#Index_25884| s0@@6 j@@7) (|Seq#Index_25884| s1@@6 j@@7)))
 :qid |stdinbpl.569:13|
 :skolemid |50|
 :pattern ( (|Seq#Index_25884| s0@@6 j@@7))
 :pattern ( (|Seq#Index_25884| s1@@6 j@@7))
))))
 :qid |stdinbpl.566:18|
 :skolemid |51|
 :pattern ( (|Seq#Equal_25884| s0@@6 s1@@6))
)))
(assert (forall ((t@@5 T@Ref) ) (! (= (|Seq#Length_25884| (|Seq#Singleton_25884| t@@5)) 1)
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_25884| t@@5))
)))
(assert (forall ((t@@6 Int) ) (! (= (|Seq#Length_3368| (|Seq#Singleton_3368| t@@6)) 1)
 :qid |stdinbpl.281:18|
 :skolemid |25|
 :pattern ( (|Seq#Singleton_3368| t@@6))
)))
(assert (forall ((s@@21 T@Seq_49990) (t@@7 T@Seq_49990) (n@@17 Int) ) (!  (=> (and (< 0 n@@17) (<= n@@17 (|Seq#Length_25884| s@@21))) (= (|Seq#Take_25884| (|Seq#Append_49990| s@@21 t@@7) n@@17) (|Seq#Take_25884| s@@21 n@@17)))
 :qid |stdinbpl.423:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_25884| (|Seq#Append_49990| s@@21 t@@7) n@@17))
)))
(assert (forall ((s@@22 T@Seq_3368) (t@@8 T@Seq_3368) (n@@18 Int) ) (!  (=> (and (< 0 n@@18) (<= n@@18 (|Seq#Length_3368| s@@22))) (= (|Seq#Take_3368| (|Seq#Append_3368| s@@22 t@@8) n@@18) (|Seq#Take_3368| s@@22 n@@18)))
 :qid |stdinbpl.423:18|
 :skolemid |41|
 :pattern ( (|Seq#Take_3368| (|Seq#Append_3368| s@@22 t@@8) n@@18))
)))
(assert (forall ((s@@23 T@Seq_49990) (i@@5 Int) (v@@2 T@Ref) ) (!  (=> (and (<= 0 i@@5) (< i@@5 (|Seq#Length_25884| s@@23))) (= (|Seq#Length_25884| (|Seq#Update_25884| s@@23 i@@5 v@@2)) (|Seq#Length_25884| s@@23)))
 :qid |stdinbpl.322:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_25884| (|Seq#Update_25884| s@@23 i@@5 v@@2)))
 :pattern ( (|Seq#Length_25884| s@@23) (|Seq#Update_25884| s@@23 i@@5 v@@2))
)))
(assert (forall ((s@@24 T@Seq_3368) (i@@6 Int) (v@@3 Int) ) (!  (=> (and (<= 0 i@@6) (< i@@6 (|Seq#Length_3368| s@@24))) (= (|Seq#Length_3368| (|Seq#Update_3368| s@@24 i@@6 v@@3)) (|Seq#Length_3368| s@@24)))
 :qid |stdinbpl.322:18|
 :skolemid |34|
 :pattern ( (|Seq#Length_3368| (|Seq#Update_3368| s@@24 i@@6 v@@3)))
 :pattern ( (|Seq#Length_3368| s@@24) (|Seq#Update_3368| s@@24 i@@6 v@@3))
)))
(assert (forall ((Heap@@12 T@PolymorphicMapType_43866) (o_59 T@Ref) (f_134 T@Field_25883_145293) (v@@4 T@FrameType) ) (! (succHeap Heap@@12 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@12) (store (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@12) o_59 f_134 v@@4)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@12) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@12) (store (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@12) o_59 f_134 v@@4)))
)))
(assert (forall ((Heap@@13 T@PolymorphicMapType_43866) (o_59@@0 T@Ref) (f_134@@0 T@Field_25883_145426) (v@@5 T@PolymorphicMapType_44415) ) (! (succHeap Heap@@13 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@13) (store (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@13) o_59@@0 f_134@@0 v@@5) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@13)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@13) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@13) (store (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@13) o_59@@0 f_134@@0 v@@5) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@13)))
)))
(assert (forall ((Heap@@14 T@PolymorphicMapType_43866) (o_59@@1 T@Ref) (f_134@@1 T@Field_50101_3522) (v@@6 Int) ) (! (succHeap Heap@@14 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@14) (store (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@14) o_59@@1 f_134@@1 v@@6) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@14)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@14) (store (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@14) o_59@@1 f_134@@1 v@@6) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@14) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@14)))
)))
(assert (forall ((Heap@@15 T@PolymorphicMapType_43866) (o_59@@2 T@Ref) (f_134@@2 T@Field_49987_49992) (v@@7 T@Seq_49990) ) (! (succHeap Heap@@15 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@15) (store (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@15) o_59@@2 f_134@@2 v@@7) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@15)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@15) (store (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@15) o_59@@2 f_134@@2 v@@7) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@15) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@15)))
)))
(assert (forall ((Heap@@16 T@PolymorphicMapType_43866) (o_59@@3 T@Ref) (f_134@@3 T@Field_43939_43940) (v@@8 T@Ref) ) (! (succHeap Heap@@16 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@16) (store (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@16) o_59@@3 f_134@@3 v@@8) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@16)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@16) (store (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@16) o_59@@3 f_134@@3 v@@8) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@16) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@16)))
)))
(assert (forall ((Heap@@17 T@PolymorphicMapType_43866) (o_59@@4 T@Ref) (f_134@@4 T@Field_43926_53) (v@@9 Bool) ) (! (succHeap Heap@@17 (PolymorphicMapType_43866 (store (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@17) o_59@@4 f_134@@4 v@@9) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@17)))
 :qid |stdinbpl.78:22|
 :skolemid |9|
 :pattern ( (PolymorphicMapType_43866 (store (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@17) o_59@@4 f_134@@4 v@@9) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@17) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@17)))
)))
(assert (forall ((s@@25 T@Seq_49990) (t@@9 T@Seq_49990) (n@@19 Int) ) (!  (=> (and (< 0 n@@19) (<= n@@19 (|Seq#Length_25884| s@@25))) (= (|Seq#Drop_25884| (|Seq#Append_49990| s@@25 t@@9) n@@19) (|Seq#Append_49990| (|Seq#Drop_25884| s@@25 n@@19) t@@9)))
 :qid |stdinbpl.437:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_25884| (|Seq#Append_49990| s@@25 t@@9) n@@19))
)))
(assert (forall ((s@@26 T@Seq_3368) (t@@10 T@Seq_3368) (n@@20 Int) ) (!  (=> (and (< 0 n@@20) (<= n@@20 (|Seq#Length_3368| s@@26))) (= (|Seq#Drop_3368| (|Seq#Append_3368| s@@26 t@@10) n@@20) (|Seq#Append_3368| (|Seq#Drop_3368| s@@26 n@@20) t@@10)))
 :qid |stdinbpl.437:18|
 :skolemid |43|
 :pattern ( (|Seq#Drop_3368| (|Seq#Append_3368| s@@26 t@@10) n@@20))
)))
(assert (forall ((s@@27 T@Seq_49990) (n@@21 Int) (i@@7 Int) ) (!  (=> (and (and (< 0 n@@21) (<= n@@21 i@@7)) (< i@@7 (|Seq#Length_25884| s@@27))) (and (= (|Seq#Add| (|Seq#Sub| i@@7 n@@21) n@@21) i@@7) (= (|Seq#Index_25884| (|Seq#Drop_25884| s@@27 n@@21) (|Seq#Sub| i@@7 n@@21)) (|Seq#Index_25884| s@@27 i@@7))))
 :qid |stdinbpl.373:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_25884| s@@27 n@@21) (|Seq#Index_25884| s@@27 i@@7))
)))
(assert (forall ((s@@28 T@Seq_3368) (n@@22 Int) (i@@8 Int) ) (!  (=> (and (and (< 0 n@@22) (<= n@@22 i@@8)) (< i@@8 (|Seq#Length_3368| s@@28))) (and (= (|Seq#Add| (|Seq#Sub| i@@8 n@@22) n@@22) i@@8) (= (|Seq#Index_3368| (|Seq#Drop_3368| s@@28 n@@22) (|Seq#Sub| i@@8 n@@22)) (|Seq#Index_3368| s@@28 i@@8))))
 :qid |stdinbpl.373:18|
 :skolemid |40|
 :pattern ( (|Seq#Drop_3368| s@@28 n@@22) (|Seq#Index_3368| s@@28 i@@8))
)))
(assert (forall ((s0@@7 T@Seq_49990) (s1@@7 T@Seq_49990) (n@@23 Int) ) (!  (=> (and (and (and (not (= s0@@7 |Seq#Empty_25884|)) (not (= s1@@7 |Seq#Empty_25884|))) (<= 0 n@@23)) (< n@@23 (|Seq#Length_25884| s0@@7))) (= (|Seq#Index_25884| (|Seq#Append_49990| s0@@7 s1@@7) n@@23) (|Seq#Index_25884| s0@@7 n@@23)))
 :qid |stdinbpl.313:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_25884| (|Seq#Append_49990| s0@@7 s1@@7) n@@23))
 :pattern ( (|Seq#Index_25884| s0@@7 n@@23) (|Seq#Append_49990| s0@@7 s1@@7))
)))
(assert (forall ((s0@@8 T@Seq_3368) (s1@@8 T@Seq_3368) (n@@24 Int) ) (!  (=> (and (and (and (not (= s0@@8 |Seq#Empty_3368|)) (not (= s1@@8 |Seq#Empty_3368|))) (<= 0 n@@24)) (< n@@24 (|Seq#Length_3368| s0@@8))) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@8 s1@@8) n@@24) (|Seq#Index_3368| s0@@8 n@@24)))
 :qid |stdinbpl.313:18|
 :skolemid |31|
 :pattern ( (|Seq#Index_3368| (|Seq#Append_3368| s0@@8 s1@@8) n@@24))
 :pattern ( (|Seq#Index_3368| s0@@8 n@@24) (|Seq#Append_3368| s0@@8 s1@@8))
)))
(assert (forall ((s0@@9 T@Seq_49990) (s1@@9 T@Seq_49990) (m Int) ) (!  (=> (and (and (and (not (= s0@@9 |Seq#Empty_25884|)) (not (= s1@@9 |Seq#Empty_25884|))) (<= 0 m)) (< m (|Seq#Length_25884| s1@@9))) (and (= (|Seq#Sub| (|Seq#Add| m (|Seq#Length_25884| s0@@9)) (|Seq#Length_25884| s0@@9)) m) (= (|Seq#Index_25884| (|Seq#Append_49990| s0@@9 s1@@9) (|Seq#Add| m (|Seq#Length_25884| s0@@9))) (|Seq#Index_25884| s1@@9 m))))
 :qid |stdinbpl.318:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_25884| s1@@9 m) (|Seq#Append_49990| s0@@9 s1@@9))
)))
(assert (forall ((s0@@10 T@Seq_3368) (s1@@10 T@Seq_3368) (m@@0 Int) ) (!  (=> (and (and (and (not (= s0@@10 |Seq#Empty_3368|)) (not (= s1@@10 |Seq#Empty_3368|))) (<= 0 m@@0)) (< m@@0 (|Seq#Length_3368| s1@@10))) (and (= (|Seq#Sub| (|Seq#Add| m@@0 (|Seq#Length_3368| s0@@10)) (|Seq#Length_3368| s0@@10)) m@@0) (= (|Seq#Index_3368| (|Seq#Append_3368| s0@@10 s1@@10) (|Seq#Add| m@@0 (|Seq#Length_3368| s0@@10))) (|Seq#Index_3368| s1@@10 m@@0))))
 :qid |stdinbpl.318:18|
 :skolemid |33|
 :pattern ( (|Seq#Index_3368| s1@@10 m@@0) (|Seq#Append_3368| s0@@10 s1@@10))
)))
(assert (forall ((o_59@@5 T@Ref) (f_28 T@Field_43939_43940) (Heap@@18 T@PolymorphicMapType_43866) ) (!  (=> (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@18) o_59@@5 $allocated) (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@18) (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@18) o_59@@5 f_28) $allocated))
 :qid |stdinbpl.31:15|
 :skolemid |0|
 :pattern ( (select (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@18) o_59@@5 f_28))
)))
(assert (forall ((s@@29 T@Seq_49990) (x@@3 T@Ref) (i@@9 Int) ) (!  (=> (and (and (<= 0 i@@9) (< i@@9 (|Seq#Length_25884| s@@29))) (= (|Seq#Index_25884| s@@29 i@@9) x@@3)) (|Seq#Contains_49990| s@@29 x@@3))
 :qid |stdinbpl.470:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_49990| s@@29 x@@3) (|Seq#Index_25884| s@@29 i@@9))
)))
(assert (forall ((s@@30 T@Seq_3368) (x@@4 Int) (i@@10 Int) ) (!  (=> (and (and (<= 0 i@@10) (< i@@10 (|Seq#Length_3368| s@@30))) (= (|Seq#Index_3368| s@@30 i@@10) x@@4)) (|Seq#Contains_3368| s@@30 x@@4))
 :qid |stdinbpl.470:18|
 :skolemid |48|
 :pattern ( (|Seq#Contains_3368| s@@30 x@@4) (|Seq#Index_3368| s@@30 i@@10))
)))
(assert (forall ((s0@@11 T@Seq_49990) (s1@@11 T@Seq_49990) ) (!  (or (or (and (= s0@@11 s1@@11) (|Seq#Equal_25884| s0@@11 s1@@11)) (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_25884| s0@@11 s1@@11))) (not (= (|Seq#Length_25884| s0@@11) (|Seq#Length_25884| s1@@11))))) (and (and (and (and (and (and (not (= s0@@11 s1@@11)) (not (|Seq#Equal_25884| s0@@11 s1@@11))) (= (|Seq#Length_25884| s0@@11) (|Seq#Length_25884| s1@@11))) (= (|Seq#SkolemDiff_49990| s0@@11 s1@@11) (|Seq#SkolemDiff_49990| s1@@11 s0@@11))) (<= 0 (|Seq#SkolemDiff_49990| s0@@11 s1@@11))) (< (|Seq#SkolemDiff_49990| s0@@11 s1@@11) (|Seq#Length_25884| s0@@11))) (not (= (|Seq#Index_25884| s0@@11 (|Seq#SkolemDiff_49990| s0@@11 s1@@11)) (|Seq#Index_25884| s1@@11 (|Seq#SkolemDiff_49990| s0@@11 s1@@11))))))
 :qid |stdinbpl.574:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_25884| s0@@11 s1@@11))
)))
(assert (forall ((s0@@12 T@Seq_3368) (s1@@12 T@Seq_3368) ) (!  (or (or (and (= s0@@12 s1@@12) (|Seq#Equal_3368| s0@@12 s1@@12)) (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3368| s0@@12 s1@@12))) (not (= (|Seq#Length_3368| s0@@12) (|Seq#Length_3368| s1@@12))))) (and (and (and (and (and (and (not (= s0@@12 s1@@12)) (not (|Seq#Equal_3368| s0@@12 s1@@12))) (= (|Seq#Length_3368| s0@@12) (|Seq#Length_3368| s1@@12))) (= (|Seq#SkolemDiff_3368| s0@@12 s1@@12) (|Seq#SkolemDiff_3368| s1@@12 s0@@12))) (<= 0 (|Seq#SkolemDiff_3368| s0@@12 s1@@12))) (< (|Seq#SkolemDiff_3368| s0@@12 s1@@12) (|Seq#Length_3368| s0@@12))) (not (= (|Seq#Index_3368| s0@@12 (|Seq#SkolemDiff_3368| s0@@12 s1@@12)) (|Seq#Index_3368| s1@@12 (|Seq#SkolemDiff_3368| s0@@12 s1@@12))))))
 :qid |stdinbpl.574:18|
 :skolemid |52|
 :pattern ( (|Seq#Equal_3368| s0@@12 s1@@12))
)))
(assert (forall ((p@@1 T@Field_25883_145293) (v_1@@0 T@FrameType) (q T@Field_25883_145293) (w@@0 T@FrameType) (r T@Field_25883_145293) (u T@FrameType) ) (!  (=> (and (InsidePredicate_43926_43926 p@@1 v_1@@0 q w@@0) (InsidePredicate_43926_43926 q w@@0 r u)) (InsidePredicate_43926_43926 p@@1 v_1@@0 r u))
 :qid |stdinbpl.241:25|
 :skolemid |20|
 :pattern ( (InsidePredicate_43926_43926 p@@1 v_1@@0 q w@@0) (InsidePredicate_43926_43926 q w@@0 r u))
)))
(assert (forall ((s@@31 T@Seq_49990) ) (!  (=> (= (|Seq#Length_25884| s@@31) 0) (= s@@31 |Seq#Empty_25884|))
 :qid |stdinbpl.277:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_25884| s@@31))
)))
(assert (forall ((s@@32 T@Seq_3368) ) (!  (=> (= (|Seq#Length_3368| s@@32) 0) (= s@@32 |Seq#Empty_3368|))
 :qid |stdinbpl.277:18|
 :skolemid |24|
 :pattern ( (|Seq#Length_3368| s@@32))
)))
(assert (forall ((s@@33 T@Seq_49990) (n@@25 Int) ) (!  (=> (<= n@@25 0) (= (|Seq#Take_25884| s@@33 n@@25) |Seq#Empty_25884|))
 :qid |stdinbpl.453:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_25884| s@@33 n@@25))
)))
(assert (forall ((s@@34 T@Seq_3368) (n@@26 Int) ) (!  (=> (<= n@@26 0) (= (|Seq#Take_3368| s@@34 n@@26) |Seq#Empty_3368|))
 :qid |stdinbpl.453:18|
 :skolemid |46|
 :pattern ( (|Seq#Take_3368| s@@34 n@@26))
)))
(assert (= NoPerm 0.0))
(assert (= FullPerm 1.0))
(push 1)
(declare-fun ControlFlow (Int Int) Int)
(declare-fun i_14 () Int)
(declare-fun tcount () Int)
(declare-fun PostMask@3 () T@PolymorphicMapType_43887)
(declare-fun this () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_43866)
(declare-fun tid () Int)
(declare-fun QPMask@5 () T@PolymorphicMapType_43887)
(declare-fun PostMask@2 () T@PolymorphicMapType_43887)
(declare-fun gsize () Int)
(declare-fun qpRange2 (T@Ref) Bool)
(declare-fun invRecv2 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_43887)
(declare-fun i_4 () Int)
(declare-fun lid () Int)
(declare-fun gid () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_43887)
(declare-fun wildcard@3 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_43887)
(declare-fun Heap@@19 () T@PolymorphicMapType_43866)
(declare-fun i_21 () Int)
(declare-fun k@0 () Int)
(declare-fun Mask@37 () T@PolymorphicMapType_43887)
(declare-fun ExhaleHeap@0 () T@PolymorphicMapType_43866)
(declare-fun offset_1@0 () Int)
(declare-fun half@0 () Int)
(declare-fun Mask@35 () T@PolymorphicMapType_43887)
(declare-fun Mask@36 () T@PolymorphicMapType_43887)
(declare-fun Mask@33 () T@PolymorphicMapType_43887)
(declare-fun Mask@34 () T@PolymorphicMapType_43887)
(declare-fun QPMask@4 () T@PolymorphicMapType_43887)
(declare-fun Mask@32 () T@PolymorphicMapType_43887)
(declare-fun qpRange5 (T@Ref) Bool)
(declare-fun invRecv5 (T@Ref) Int)
(declare-fun Mask@12 () T@PolymorphicMapType_43887)
(declare-fun i_7 () Int)
(declare-fun i_15 () Int)
(declare-fun j_16 () Int)
(declare-fun Mask@10 () T@PolymorphicMapType_43887)
(declare-fun wildcard@6 () Real)
(declare-fun Mask@11 () T@PolymorphicMapType_43887)
(declare-fun wildcard@7 () Real)
(declare-fun Mask@31 () T@PolymorphicMapType_43887)
(declare-fun Mask@29 () T@PolymorphicMapType_43887)
(declare-fun Mask@30 () T@PolymorphicMapType_43887)
(declare-fun Mask@27 () T@PolymorphicMapType_43887)
(declare-fun Mask@28 () T@PolymorphicMapType_43887)
(declare-fun QPMask@2 () T@PolymorphicMapType_43887)
(declare-fun Mask@26 () T@PolymorphicMapType_43887)
(declare-fun wildcard@8 () Real)
(declare-fun Mask@13 () T@PolymorphicMapType_43887)
(declare-fun wildcard@9 () Real)
(declare-fun Mask@14 () T@PolymorphicMapType_43887)
(declare-fun qpRange6 (T@Ref) Bool)
(declare-fun invRecv6 (T@Ref) Int)
(declare-fun i_17_1 () Int)
(declare-fun Heap@0 () T@PolymorphicMapType_43866)
(declare-fun i_14_1 () Int)
(declare-fun j_2_2 () Int)
(declare-fun i_12_1 () Int)
(declare-fun i_5 () Int)
(declare-fun Mask@22 () T@PolymorphicMapType_43887)
(declare-fun Mask@23 () T@PolymorphicMapType_43887)
(declare-fun Heap@1 () T@PolymorphicMapType_43866)
(declare-fun Mask@20 () T@PolymorphicMapType_43887)
(declare-fun Mask@21 () T@PolymorphicMapType_43887)
(declare-fun Mask@18 () T@PolymorphicMapType_43887)
(declare-fun Mask@19 () T@PolymorphicMapType_43887)
(declare-fun QPMask@3 () T@PolymorphicMapType_43887)
(declare-fun Mask@17 () T@PolymorphicMapType_43887)
(declare-fun wildcard@10 () Real)
(declare-fun Mask@15 () T@PolymorphicMapType_43887)
(declare-fun wildcard@11 () Real)
(declare-fun Mask@16 () T@PolymorphicMapType_43887)
(declare-fun qpRange8 (T@Ref) Bool)
(declare-fun invRecv8 (T@Ref) Int)
(declare-fun Mask@9 () T@PolymorphicMapType_43887)
(declare-fun Mask@8 () T@PolymorphicMapType_43887)
(declare-fun Mask@7 () T@PolymorphicMapType_43887)
(declare-fun Mask@6 () T@PolymorphicMapType_43887)
(declare-fun Mask@5 () T@PolymorphicMapType_43887)
(declare-fun QPMask@1 () T@PolymorphicMapType_43887)
(declare-fun dummyFunction_3522 (Int) Bool)
(declare-fun neverTriggered4 (Int) Bool)
(declare-fun Mask@4 () T@PolymorphicMapType_43887)
(declare-fun qpRange4 (T@Ref) Bool)
(declare-fun invRecv4 (T@Ref) Int)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_43887)
(declare-fun wildcard@5 () Real)
(declare-fun qpRange1 (T@Ref) Bool)
(declare-fun invRecv1 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_43887)
(declare-fun Mask@1 () T@PolymorphicMapType_43887)
(declare-fun i_3 () Int)
(declare-fun i_18 () Int)
(declare-fun j_14 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_43887)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id main_main)
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
 (=> (= (ControlFlow 0 0) 256) (let ((anon19_correct true))
(let ((anon198_Else_correct  (=> (and (not (and (<= 0 i_14) (< i_14 tcount))) (= (ControlFlow 0 229) 220)) anon19_correct)))
(let ((anon198_Then_correct  (=> (and (<= 0 i_14) (< i_14 tcount)) (and (=> (= (ControlFlow 0 221) (- 0 228)) (HasDirectPerm_25883_50807 PostMask@3 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@3 this dst) (and (=> (= (ControlFlow 0 221) (- 0 227)) (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst))) (and (=> (= (ControlFlow 0 221) (- 0 226)) (HasDirectPerm_25891_3522 PostMask@3 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value)) (=> (HasDirectPerm_25891_3522 PostMask@3 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value) (and (=> (= (ControlFlow 0 221) (- 0 225)) (HasDirectPerm_25883_50807 PostMask@3 this src)) (=> (HasDirectPerm_25883_50807 PostMask@3 this src) (and (=> (= (ControlFlow 0 221) (- 0 224)) (>= i_14 0)) (=> (>= i_14 0) (and (=> (= (ControlFlow 0 221) (- 0 223)) (< i_14 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src)))) (=> (< i_14 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 221) (- 0 222)) (HasDirectPerm_25891_3522 PostMask@3 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_14) Integer_value)) (=> (HasDirectPerm_25891_3522 PostMask@3 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_14) Integer_value) (=> (= (ControlFlow 0 221) 220) anon19_correct))))))))))))))))))
(let ((anon21_correct true))
(let ((anon197_Else_correct  (=> (and (forall ((i_7_1 Int) ) (!  (=> (and (<= 0 i_7_1) (< i_7_1 tcount)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| PostHeap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| PostHeap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1) Integer_value)))
 :qid |stdinbpl.978:22|
 :skolemid |73|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1))
)) (= (ControlFlow 0 219) 217)) anon21_correct)))
(let ((anon196_Then_correct  (=> (= tid 0) (and (and (=> (= (ControlFlow 0 230) 219) anon197_Else_correct) (=> (= (ControlFlow 0 230) 221) anon198_Then_correct)) (=> (= (ControlFlow 0 230) 229) anon198_Else_correct)))))
(let ((anon196_Else_correct  (=> (and (not (= tid 0)) (= (ControlFlow 0 218) 217)) anon21_correct)))
(let ((anon15_correct  (=> (state PostHeap@0 PostMask@3) (and (=> (= (ControlFlow 0 231) 230) anon196_Then_correct) (=> (= (ControlFlow 0 231) 218) anon196_Else_correct)))))
(let ((anon195_Else_correct  (=> (not (= tid 0)) (=> (and (= PostMask@3 QPMask@5) (= (ControlFlow 0 235) 231)) anon15_correct))))
(let ((anon195_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 232) (- 0 234)) (HasDirectPerm_25883_50807 QPMask@5 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@5 this dst) (and (=> (= (ControlFlow 0 232) (- 0 233)) (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) null)) (=> (and (and (= PostMask@2 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@5) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@5) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@5) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@5) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@5))) (state PostHeap@0 PostMask@2)) (and (= PostMask@3 PostMask@2) (= (ControlFlow 0 232) 231))) anon15_correct)))))))))
(let ((anon193_Else_correct  (and (=> (= (ControlFlow 0 236) (- 0 238)) (forall ((i_5_1 Int) (i_5_2 Int) ) (!  (=> (and (and (and (and (not (= i_5_1 i_5_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_2))))
 :qid |stdinbpl.904:15|
 :skolemid |66|
))) (=> (forall ((i_5_1@@0 Int) (i_5_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_5_1@@0 i_5_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_2@@0))))
 :qid |stdinbpl.904:15|
 :skolemid |66|
)) (=> (and (forall ((i_5_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@1)) (= (invRecv2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@1)) i_5_1@@1)))
 :qid |stdinbpl.910:22|
 :skolemid |67|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_5_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_9)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_9)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (invRecv2 o_9)) o_9))
 :qid |stdinbpl.914:22|
 :skolemid |68|
 :pattern ( (invRecv2 o_9))
))) (and (=> (= (ControlFlow 0 236) (- 0 237)) (forall ((i_5_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.920:15|
 :skolemid |69|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_5_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@2))
))) (=> (forall ((i_5_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.920:15|
 :skolemid |69|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_5_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@3))
)) (=> (and (forall ((i_5_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@4) null)))
 :qid |stdinbpl.926:22|
 :skolemid |70|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_5_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_5_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_5_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (invRecv2 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) o_9@@0 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@0 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv2 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange2 o_9@@0))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) o_9@@0 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@0 Integer_value))))
 :qid |stdinbpl.932:22|
 :skolemid |71|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) o_9@@0 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@5) o_9@@1 f_5)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@5) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@5) o_9@@2 f_5@@0)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@5) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@5) o_9@@3 f_5@@1)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@5) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_50101_3522) ) (!  (=> (not (= f_5@@2 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) o_9@@4 f_5@@2)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@5) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@5) o_9@@5 f_5@@3)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@5) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@5) o_9@@6 f_5@@4)))
 :qid |stdinbpl.936:29|
 :skolemid |72|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@5) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@5) (state PostHeap@0 QPMask@5))) (and (=> (= (ControlFlow 0 236) 232) anon195_Then_correct) (=> (= (ControlFlow 0 236) 235) anon195_Else_correct)))))))))))
(let ((anon12_correct true))
(let ((anon194_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_4)) (= (ControlFlow 0 216) 210)) anon12_correct)))
(let ((anon194_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_4) (and (=> (= (ControlFlow 0 211) (- 0 215)) (HasDirectPerm_25883_50807 PostMask@1 this src)) (=> (HasDirectPerm_25883_50807 PostMask@1 this src) (and (=> (= (ControlFlow 0 211) (- 0 214)) (>= i_4 0)) (=> (>= i_4 0) (and (=> (= (ControlFlow 0 211) (- 0 213)) (< i_4 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src)))) (=> (< i_4 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 211) (- 0 212)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 211) 210) anon12_correct))))))))))))
(let ((anon192_Then_correct  (=> (and (and (and (and (state PostHeap@0 ZeroMask) (<= 0 tid)) (and (state PostHeap@0 ZeroMask) (< tid tcount))) (and (and (state PostHeap@0 ZeroMask) (= tid lid)) (and (state PostHeap@0 ZeroMask) (= tcount gsize)))) (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= this null)) (= PostMask@0 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src) wildcard@2)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0))))) (and (=> (= (ControlFlow 0 239) (- 0 245)) (HasDirectPerm_25883_50807 PostMask@0 this src)) (=> (HasDirectPerm_25883_50807 PostMask@0 this src) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= this null)) (= PostMask@1 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@0) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@0) this dst) wildcard@3)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 239) (- 0 244)) (HasDirectPerm_25883_50807 PostMask@1 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@1 this dst) (=> (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)) gsize) (state PostHeap@0 PostMask@1)) (=> (and (and (<= 4 gsize) (state PostHeap@0 PostMask@1)) (and (= (mod gsize 2) 0) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 239) (- 0 243)) (HasDirectPerm_25883_50807 PostMask@1 this src)) (=> (HasDirectPerm_25883_50807 PostMask@1 this src) (and (=> (= (ControlFlow 0 239) (- 0 242)) (HasDirectPerm_25883_50807 Mask@2 this src)) (=> (HasDirectPerm_25883_50807 Mask@2 this src) (=> (and (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 239) (- 0 241)) (HasDirectPerm_25883_50807 PostMask@1 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@1 this dst) (and (=> (= (ControlFlow 0 239) (- 0 240)) (HasDirectPerm_25883_50807 Mask@2 this dst)) (=> (HasDirectPerm_25883_50807 Mask@2 this dst) (=> (and (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 239) 236) anon193_Else_correct) (=> (= (ControlFlow 0 239) 211) anon194_Then_correct)) (=> (= (ControlFlow 0 239) 216) anon194_Else_correct))))))))))))))))))))))))
(let ((anon71_correct true))
(let ((anon225_Else_correct  (=> (and (not (and (<= 0 i_21) (< i_21 k@0))) (= (ControlFlow 0 115) 105)) anon71_correct)))
(let ((anon225_Then_correct  (=> (and (<= 0 i_21) (< i_21 k@0)) (and (=> (= (ControlFlow 0 106) (- 0 114)) (HasDirectPerm_25883_50807 Mask@37 this dst)) (=> (HasDirectPerm_25883_50807 Mask@37 this dst) (and (=> (= (ControlFlow 0 106) (- 0 113)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 106) (- 0 112)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst))) (and (=> (= (ControlFlow 0 106) (- 0 111)) (HasDirectPerm_25891_3522 Mask@37 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@37 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 106) (- 0 110)) (HasDirectPerm_25883_50807 Mask@37 this src)) (=> (HasDirectPerm_25883_50807 Mask@37 this src) (and (=> (= (ControlFlow 0 106) (- 0 109)) (>= (+ offset_1@0 i_21) 0)) (=> (>= (+ offset_1@0 i_21) 0) (and (=> (= (ControlFlow 0 106) (- 0 108)) (< (+ offset_1@0 i_21) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)))) (=> (< (+ offset_1@0 i_21) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 106) (- 0 107)) (HasDirectPerm_25891_3522 Mask@37 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (+ offset_1@0 i_21)) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@37 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (+ offset_1@0 i_21)) Integer_value) (=> (= (ControlFlow 0 106) 105) anon71_correct))))))))))))))))))))
(let ((anon224_Else_correct true))
(let ((anon68_correct  (=> (and (and (state ExhaleHeap@0 Mask@37) (<= 0 k@0)) (and (<= k@0 half@0) (state ExhaleHeap@0 Mask@37))) (and (and (=> (= (ControlFlow 0 116) 104) anon224_Else_correct) (=> (= (ControlFlow 0 116) 106) anon225_Then_correct)) (=> (= (ControlFlow 0 116) 115) anon225_Else_correct)))))
(let ((anon223_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@37 Mask@35) (= (ControlFlow 0 121) 116)) anon68_correct))))
(let ((anon223_Then_correct  (=> (= 0 0) (and (=> (= (ControlFlow 0 117) (- 0 120)) (HasDirectPerm_25883_50807 Mask@35 this dst)) (=> (HasDirectPerm_25883_50807 Mask@35 this dst) (and (=> (= (ControlFlow 0 117) (- 0 119)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 117) (- 0 118)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) null)) (=> (and (and (= Mask@36 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@35) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@35) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@35) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@35) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@35) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@35) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@35))) (state ExhaleHeap@0 Mask@36)) (and (= Mask@37 Mask@36) (= (ControlFlow 0 117) 116))) anon68_correct)))))))))))
(let ((anon66_correct  (=> (state ExhaleHeap@0 Mask@35) (and (=> (= (ControlFlow 0 122) 117) anon223_Then_correct) (=> (= (ControlFlow 0 122) 121) anon223_Else_correct)))))
(let ((anon222_Else_correct  (=> (not (= tid 0)) (=> (and (= Mask@35 Mask@33) (= (ControlFlow 0 127) 122)) anon66_correct))))
(let ((anon222_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 124) (- 0 126)) (HasDirectPerm_25883_50807 Mask@33 this dst)) (=> (HasDirectPerm_25883_50807 Mask@33 this dst) (and (=> (= (ControlFlow 0 124) (- 0 125)) (< 1 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)))) (=> (< 1 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) null)) (=> (and (and (= Mask@34 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@33) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@33) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@33) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@33) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@33) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@33) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@33))) (state ExhaleHeap@0 Mask@34)) (and (= Mask@35 Mask@34) (= (ControlFlow 0 124) 122))) anon66_correct)))))))))
(let ((anon221_Else_correct  (=> (and (not (= tid 0)) (= Mask@33 QPMask@4)) (and (=> (= (ControlFlow 0 131) 124) anon222_Then_correct) (=> (= (ControlFlow 0 131) 127) anon222_Else_correct)))))
(let ((anon221_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 128) (- 0 130)) (HasDirectPerm_25883_50807 QPMask@4 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@4 this dst) (and (=> (= (ControlFlow 0 128) (- 0 129)) (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)))) (=> (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst))) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) null)) (= Mask@32 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@4) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@4) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@4) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@4) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@4)))) (and (state ExhaleHeap@0 Mask@32) (= Mask@33 Mask@32))) (and (=> (= (ControlFlow 0 128) 124) anon222_Then_correct) (=> (= (ControlFlow 0 128) 127) anon222_Else_correct))))))))))
(let ((anon220_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 132) 128) anon221_Then_correct) (=> (= (ControlFlow 0 132) 131) anon221_Else_correct)))))
(let ((anon220_Else_correct  (=> (not (= 0 1)) (=> (and (= Mask@35 QPMask@4) (= (ControlFlow 0 123) 122)) anon66_correct))))
(let ((anon218_Else_correct  (and (=> (= (ControlFlow 0 133) (- 0 135)) (forall ((i_22_1 Int) (i_22_2 Int) ) (!  (=> (and (and (and (and (not (= i_22_1 i_22_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_2))))
 :qid |stdinbpl.1348:23|
 :skolemid |85|
))) (=> (forall ((i_22_1@@0 Int) (i_22_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_22_1@@0 i_22_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_2@@0))))
 :qid |stdinbpl.1348:23|
 :skolemid |85|
)) (=> (and (forall ((i_22_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange5 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@1)) (= (invRecv5 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@1)) i_22_1@@1)))
 :qid |stdinbpl.1354:30|
 :skolemid |86|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_22_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@1))
)) (forall ((o_9@@7 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_9@@7)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_9@@7)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv5 o_9@@7)) o_9@@7))
 :qid |stdinbpl.1358:30|
 :skolemid |87|
 :pattern ( (invRecv5 o_9@@7))
))) (and (=> (= (ControlFlow 0 133) (- 0 134)) (forall ((i_22_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1364:23|
 :skolemid |88|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_22_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@2))
))) (=> (forall ((i_22_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1364:23|
 :skolemid |88|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_22_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@3))
)) (=> (and (forall ((i_22_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@4) null)))
 :qid |stdinbpl.1370:30|
 :skolemid |89|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_22_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_22_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_22_1@@4))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_9@@8)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_9@@8)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv5 o_9@@8)) o_9@@8)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) o_9@@8 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@12) o_9@@8 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv5 o_9@@8)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange5 o_9@@8))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) o_9@@8 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@12) o_9@@8 Integer_value))))
 :qid |stdinbpl.1376:30|
 :skolemid |90|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) o_9@@8 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@12) o_9@@9 f_5@@5) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@4) o_9@@9 f_5@@5)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@12) o_9@@9 f_5@@5))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@4) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@12) o_9@@10 f_5@@6) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@4) o_9@@10 f_5@@6)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@12) o_9@@10 f_5@@6))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@4) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@12) o_9@@11 f_5@@7) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@4) o_9@@11 f_5@@7)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@12) o_9@@11 f_5@@7))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@4) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_50101_3522) ) (!  (=> (not (= f_5@@8 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@12) o_9@@12 f_5@@8) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) o_9@@12 f_5@@8)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@12) o_9@@12 f_5@@8))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@4) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@12) o_9@@13 f_5@@9) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@4) o_9@@13 f_5@@9)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@12) o_9@@13 f_5@@9))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@4) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@12) o_9@@14 f_5@@10) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@4) o_9@@14 f_5@@10)))
 :qid |stdinbpl.1380:37|
 :skolemid |91|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@12) o_9@@14 f_5@@10))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@4) o_9@@14 f_5@@10))
))) (and (and (state ExhaleHeap@0 QPMask@4) (state ExhaleHeap@0 QPMask@4)) (and (= 0 0) (state ExhaleHeap@0 QPMask@4)))) (and (=> (= (ControlFlow 0 133) 132) anon220_Then_correct) (=> (= (ControlFlow 0 133) 123) anon220_Else_correct)))))))))))
(let ((anon60_correct true))
(let ((anon219_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7)) (= (ControlFlow 0 103) 97)) anon60_correct)))
(let ((anon219_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7) (and (=> (= (ControlFlow 0 98) (- 0 102)) (HasDirectPerm_25883_50807 Mask@12 this src)) (=> (HasDirectPerm_25883_50807 Mask@12 this src) (and (=> (= (ControlFlow 0 98) (- 0 101)) (>= i_7 0)) (=> (>= i_7 0) (and (=> (= (ControlFlow 0 98) (- 0 100)) (< i_7 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)))) (=> (< i_7 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 98) (- 0 99)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 98) 97) anon60_correct))))))))))))
(let ((anon216_Else_correct  (=> (and (forall ((i_20_2 Int) (j_5 Int) ) (!  (=> (and (<= 0 i_20_2) (and (< i_20_2 gsize) (and (<= 0 j_5) (and (< j_5 gsize) (not (= i_20_2 j_5)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_20_2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_5))))
 :qid |stdinbpl.1326:28|
 :skolemid |84|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_20_2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_5))
)) (state ExhaleHeap@0 Mask@12)) (and (and (=> (= (ControlFlow 0 136) 133) anon218_Else_correct) (=> (= (ControlFlow 0 136) 98) anon219_Then_correct)) (=> (= (ControlFlow 0 136) 103) anon219_Else_correct)))))
(let ((anon56_correct true))
(let ((anon217_Else_correct  (=> (and (not (and (<= 0 i_15) (and (< i_15 gsize) (and (<= 0 j_16) (and (< j_16 gsize) (not (= i_15 j_16))))))) (= (ControlFlow 0 96) 88)) anon56_correct)))
(let ((anon217_Then_correct  (=> (and (<= 0 i_15) (and (< i_15 gsize) (and (<= 0 j_16) (and (< j_16 gsize) (not (= i_15 j_16)))))) (and (=> (= (ControlFlow 0 89) (- 0 95)) (HasDirectPerm_25883_50807 Mask@12 this src)) (=> (HasDirectPerm_25883_50807 Mask@12 this src) (and (=> (= (ControlFlow 0 89) (- 0 94)) (>= i_15 0)) (=> (>= i_15 0) (and (=> (= (ControlFlow 0 89) (- 0 93)) (< i_15 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)))) (=> (< i_15 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src))) (and (=> (= (ControlFlow 0 89) (- 0 92)) (HasDirectPerm_25883_50807 Mask@12 this src)) (=> (HasDirectPerm_25883_50807 Mask@12 this src) (and (=> (= (ControlFlow 0 89) (- 0 91)) (>= j_16 0)) (=> (>= j_16 0) (and (=> (= (ControlFlow 0 89) (- 0 90)) (< j_16 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)))) (=> (< j_16 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src))) (=> (= (ControlFlow 0 89) 88) anon56_correct))))))))))))))))
(let ((anon215_Then_correct  (=> (<= 0 tid) (=> (and (state ExhaleHeap@0 Mask@10) (< tid tcount)) (=> (and (and (state ExhaleHeap@0 Mask@10) (= tid lid)) (and (state ExhaleHeap@0 Mask@10) (= tcount gsize))) (=> (and (and (and (state ExhaleHeap@0 Mask@10) (= gid 0)) (and (state ExhaleHeap@0 Mask@10) (> wildcard@6 NoPerm))) (and (and (not (= this null)) (= Mask@11 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@10) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@10) this src) wildcard@6)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@10)))) (and (state ExhaleHeap@0 Mask@11) (state ExhaleHeap@0 Mask@11)))) (and (=> (= (ControlFlow 0 137) (- 0 139)) (HasDirectPerm_25883_50807 Mask@11 this src)) (=> (HasDirectPerm_25883_50807 Mask@11 this src) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)) gsize) (=> (and (state ExhaleHeap@0 Mask@11) (> wildcard@7 NoPerm)) (=> (and (and (not (= this null)) (= Mask@12 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@11) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@11) this dst) wildcard@7)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@11) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@11) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@11) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@11) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@11)))) (and (state ExhaleHeap@0 Mask@12) (state ExhaleHeap@0 Mask@12))) (and (=> (= (ControlFlow 0 137) (- 0 138)) (HasDirectPerm_25883_50807 Mask@12 this dst)) (=> (HasDirectPerm_25883_50807 Mask@12 this dst) (=> (and (and (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)) gsize) (state ExhaleHeap@0 Mask@12)) (and (<= 4 gsize) (state ExhaleHeap@0 Mask@12))) (and (and (= (mod gsize 2) 0) (state ExhaleHeap@0 Mask@12)) (and (= offset_1@0 (ite (= tid 0) 0 half@0)) (state ExhaleHeap@0 Mask@12)))) (and (and (=> (= (ControlFlow 0 137) 136) anon216_Else_correct) (=> (= (ControlFlow 0 137) 89) anon217_Then_correct)) (=> (= (ControlFlow 0 137) 96) anon217_Else_correct))))))))))))))))
(let ((anon81_correct true))
(let ((anon230_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@31 Mask@29) (= (ControlFlow 0 78) 67)) anon81_correct))))
(let ((anon230_Then_correct  (=> (and (= 0 0) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) null))) (=> (and (and (= Mask@30 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@29) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@29) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@29) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@29) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@29) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@29) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@29))) (state ExhaleHeap@0 Mask@30)) (and (= Mask@31 Mask@30) (= (ControlFlow 0 77) 67))) anon81_correct))))
(let ((anon229_Else_correct  (=> (and (not (= tid 0)) (= Mask@29 Mask@27)) (and (=> (= (ControlFlow 0 81) 77) anon230_Then_correct) (=> (= (ControlFlow 0 81) 78) anon230_Else_correct)))))
(let ((anon229_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) null)) (= Mask@28 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@27) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@27) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@27) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@27) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@27) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@27) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@27)))) (and (state ExhaleHeap@0 Mask@28) (= Mask@29 Mask@28))) (and (=> (= (ControlFlow 0 80) 77) anon230_Then_correct) (=> (= (ControlFlow 0 80) 78) anon230_Else_correct))))))
(let ((anon228_Else_correct  (=> (and (not (= tid 0)) (= Mask@27 QPMask@2)) (and (=> (= (ControlFlow 0 83) 80) anon229_Then_correct) (=> (= (ControlFlow 0 83) 81) anon229_Else_correct)))))
(let ((anon228_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) null)) (= Mask@26 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2)))) (and (state ExhaleHeap@0 Mask@26) (= Mask@27 Mask@26))) (and (=> (= (ControlFlow 0 82) 80) anon229_Then_correct) (=> (= (ControlFlow 0 82) 81) anon229_Else_correct))))))
(let ((anon227_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 84) 82) anon228_Then_correct) (=> (= (ControlFlow 0 84) 83) anon228_Else_correct)))))
(let ((anon227_Else_correct  (=> (and (not (= 0 1)) (= Mask@29 QPMask@2)) (and (=> (= (ControlFlow 0 79) 77) anon230_Then_correct) (=> (= (ControlFlow 0 79) 78) anon230_Else_correct)))))
(let ((anon226_Then_correct  (=> (and (and (state ExhaleHeap@0 ZeroMask) (<= 0 tid)) (and (< tid tcount) (= tid lid))) (=> (and (and (and (and (= tcount gsize) (= gid 0)) (and (> wildcard@8 NoPerm) (not (= this null)))) (and (and (= Mask@13 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src) wildcard@8)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask))) (state ExhaleHeap@0 Mask@13)) (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)) gsize) (> wildcard@9 NoPerm)))) (and (and (and (not (= this null)) (= Mask@14 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@13) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@13) this dst) wildcard@9)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@13) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@13) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@13) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@13) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@13)))) (and (state ExhaleHeap@0 Mask@14) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)) gsize))) (and (and (<= 4 gsize) (= (mod gsize 2) 0)) (and (= offset_1@0 (ite (= tid 0) 0 half@0)) (forall ((i_25_1 Int) (j_6_2 Int) ) (!  (=> (and (<= 0 i_25_1) (and (< i_25_1 gsize) (and (<= 0 j_6_2) (and (< j_6_2 gsize) (not (= i_25_1 j_6_2)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_25_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_6_2))))
 :qid |stdinbpl.1493:28|
 :skolemid |93|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_25_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_6_2))
)))))) (and (=> (= (ControlFlow 0 85) (- 0 87)) (forall ((i_26_1 Int) (i_26_2 Int) ) (!  (=> (and (and (and (and (not (= i_26_1 i_26_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_2))))
 :qid |stdinbpl.1499:23|
 :skolemid |94|
))) (=> (forall ((i_26_1@@0 Int) (i_26_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_26_1@@0 i_26_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_2@@0))))
 :qid |stdinbpl.1499:23|
 :skolemid |94|
)) (=> (and (forall ((i_26_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange6 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@1)) (= (invRecv6 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@1)) i_26_1@@1)))
 :qid |stdinbpl.1505:30|
 :skolemid |95|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_26_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_9@@15)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_9@@15)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv6 o_9@@15)) o_9@@15))
 :qid |stdinbpl.1509:30|
 :skolemid |96|
 :pattern ( (invRecv6 o_9@@15))
))) (and (=> (= (ControlFlow 0 85) (- 0 86)) (forall ((i_26_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1515:23|
 :skolemid |97|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_26_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@2))
))) (=> (forall ((i_26_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1515:23|
 :skolemid |97|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_26_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@3))
)) (=> (and (forall ((i_26_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@4) null)))
 :qid |stdinbpl.1521:30|
 :skolemid |98|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_26_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_26_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_26_1@@4))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_9@@16)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_9@@16)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv6 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@16 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@14) o_9@@16 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv6 o_9@@16)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange6 o_9@@16))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@16 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@14) o_9@@16 Integer_value))))
 :qid |stdinbpl.1527:30|
 :skolemid |99|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@16 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@14) o_9@@17 f_5@@11) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) o_9@@17 f_5@@11)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@14) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@14) o_9@@18 f_5@@12) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) o_9@@18 f_5@@12)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@14) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@14) o_9@@19 f_5@@13) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) o_9@@19 f_5@@13)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@14) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_50101_3522) ) (!  (=> (not (= f_5@@14 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@14) o_9@@20 f_5@@14) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@20 f_5@@14)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@14) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@14) o_9@@21 f_5@@15) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) o_9@@21 f_5@@15)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@14) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@14) o_9@@22 f_5@@16) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2) o_9@@22 f_5@@16)))
 :qid |stdinbpl.1531:37|
 :skolemid |100|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@14) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2) o_9@@22 f_5@@16))
))) (and (state ExhaleHeap@0 QPMask@2) (= 0 0))) (and (=> (= (ControlFlow 0 85) 84) anon227_Then_correct) (=> (= (ControlFlow 0 85) 79) anon227_Else_correct)))))))))))))
(let ((anon51_correct true))
(let ((anon214_Else_correct  (=> (and (not (and (<= 0 i_17_1) (< i_17_1 0))) (= (ControlFlow 0 53) 50)) anon51_correct)))
(let ((anon214_Then_correct  (=> (and (<= 0 i_17_1) (< i_17_1 0)) (and (=> (= (ControlFlow 0 51) (- 0 52)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_17_1)) Integer_value))) (=> (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_17_1)) Integer_value)) (=> (= (ControlFlow 0 51) 50) anon51_correct))))))
(let ((anon34_correct true))
(let ((anon205_Else_correct  (=> (and (not (and (<= 0 i_14_1) (and (< i_14_1 gsize) (and (<= 0 j_2_2) (and (< j_2_2 gsize) (not (= i_14_1 j_2_2))))))) (= (ControlFlow 0 49) 46)) anon34_correct)))
(let ((anon205_Then_correct  (=> (and (<= 0 i_14_1) (and (< i_14_1 gsize) (and (<= 0 j_2_2) (and (< j_2_2 gsize) (not (= i_14_1 j_2_2)))))) (and (=> (= (ControlFlow 0 47) (- 0 48)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_14_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) j_2_2)))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_14_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) j_2_2))) (=> (= (ControlFlow 0 47) 46) anon34_correct))))))
(let ((anon30_correct true))
(let ((anon203_Else_correct  (=> (and (not (and (<= 0 i_12_1) (< i_12_1 0))) (= (ControlFlow 0 45) 42)) anon30_correct)))
(let ((anon203_Then_correct  (=> (and (<= 0 i_12_1) (< i_12_1 0)) (and (=> (= (ControlFlow 0 43) (- 0 44)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_12_1)) Integer_value))) (=> (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_12_1)) Integer_value)) (=> (= (ControlFlow 0 43) 42) anon30_correct))))))
(let ((anon26_correct true))
(let ((anon201_Else_correct  (=> (and (not (and (<= 0 i_5) (< i_5 0))) (= (ControlFlow 0 41) 31)) anon26_correct)))
(let ((anon201_Then_correct  (=> (and (<= 0 i_5) (< i_5 0)) (and (=> (= (ControlFlow 0 32) (- 0 40)) (HasDirectPerm_25883_50807 Mask@2 this dst)) (=> (HasDirectPerm_25883_50807 Mask@2 this dst) (and (=> (= (ControlFlow 0 32) (- 0 39)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 32) (- 0 38)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst))) (and (=> (= (ControlFlow 0 32) (- 0 37)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 32) (- 0 36)) (HasDirectPerm_25883_50807 Mask@2 this src)) (=> (HasDirectPerm_25883_50807 Mask@2 this src) (and (=> (= (ControlFlow 0 32) (- 0 35)) (>= (+ offset_1@0 i_5) 0)) (=> (>= (+ offset_1@0 i_5) 0) (and (=> (= (ControlFlow 0 32) (- 0 34)) (< (+ offset_1@0 i_5) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src)))) (=> (< (+ offset_1@0 i_5) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src))) (and (=> (= (ControlFlow 0 32) (- 0 33)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_5)) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_5)) Integer_value) (=> (= (ControlFlow 0 32) 31) anon26_correct))))))))))))))))))))
(let ((anon113_correct true))
(let ((anon112_correct  (=> (and (and (and (<= 0 k@0) (<= k@0 half@0)) (and (forall ((i_35 Int) ) (!  (=> (and (<= 0 i_35) (< i_35 k@0)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| ExhaleHeap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (+ offset_1@0 i_35)) Integer_value)))
 :qid |stdinbpl.1865:26|
 :skolemid |119|
)) (state ExhaleHeap@0 Mask@22))) (and (and (state ExhaleHeap@0 Mask@22) (= Mask@23 Mask@22)) (and (= Heap@1 ExhaleHeap@0) (= (ControlFlow 0 54) 18)))) anon113_correct)))
(let ((anon246_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@22 Mask@20) (= (ControlFlow 0 56) 54)) anon112_correct))))
(let ((anon246_Then_correct  (=> (and (= 0 0) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) null))) (=> (and (and (= Mask@21 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@20) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@20) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@20) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@20) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@20) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@20) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@20))) (state ExhaleHeap@0 Mask@21)) (and (= Mask@22 Mask@21) (= (ControlFlow 0 55) 54))) anon112_correct))))
(let ((anon245_Else_correct  (=> (and (not (= tid 0)) (= Mask@20 Mask@18)) (and (=> (= (ControlFlow 0 59) 55) anon246_Then_correct) (=> (= (ControlFlow 0 59) 56) anon246_Else_correct)))))
(let ((anon245_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) null)) (= Mask@19 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@18) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@18) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@18) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@18) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@18) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@18) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@18)))) (and (state ExhaleHeap@0 Mask@19) (= Mask@20 Mask@19))) (and (=> (= (ControlFlow 0 58) 55) anon246_Then_correct) (=> (= (ControlFlow 0 58) 56) anon246_Else_correct))))))
(let ((anon244_Else_correct  (=> (and (not (= tid 0)) (= Mask@18 QPMask@3)) (and (=> (= (ControlFlow 0 61) 58) anon245_Then_correct) (=> (= (ControlFlow 0 61) 59) anon245_Else_correct)))))
(let ((anon244_Then_correct  (=> (= tid 0) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) null)) (= Mask@17 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3)))) (and (state ExhaleHeap@0 Mask@17) (= Mask@18 Mask@17))) (and (=> (= (ControlFlow 0 60) 58) anon245_Then_correct) (=> (= (ControlFlow 0 60) 59) anon245_Else_correct))))))
(let ((anon243_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 62) 60) anon244_Then_correct) (=> (= (ControlFlow 0 62) 61) anon244_Else_correct)))))
(let ((anon243_Else_correct  (=> (and (not (= 0 1)) (= Mask@20 QPMask@3)) (and (=> (= (ControlFlow 0 57) 55) anon246_Then_correct) (=> (= (ControlFlow 0 57) 56) anon246_Else_correct)))))
(let ((anon226_Else_correct  (=> (not (< k@0 half@0)) (=> (and (and (state ExhaleHeap@0 Mask@10) (<= 0 tid)) (and (< tid tcount) (= tid lid))) (=> (and (and (and (and (= tcount gsize) (= gid 0)) (and (> wildcard@10 NoPerm) (not (= this null)))) (and (and (= Mask@15 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@10) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@10) this src) wildcard@10)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@10) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@10))) (state ExhaleHeap@0 Mask@15)) (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src)) gsize) (> wildcard@11 NoPerm)))) (and (and (and (not (= this null)) (= Mask@16 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@15) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@15) this dst) wildcard@11)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@15) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@15) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@15) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@15) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@15)))) (and (state ExhaleHeap@0 Mask@16) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this dst)) gsize))) (and (and (<= 4 gsize) (= (mod gsize 2) 0)) (and (= offset_1@0 (ite (= tid 0) 0 half@0)) (forall ((i_33 Int) (j_9_1 Int) ) (!  (=> (and (<= 0 i_33) (and (< i_33 gsize) (and (<= 0 j_9_1) (and (< j_9_1 gsize) (not (= i_33 j_9_1)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_33) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_9_1))))
 :qid |stdinbpl.1798:26|
 :skolemid |111|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_33) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) j_9_1))
)))))) (and (=> (= (ControlFlow 0 63) (- 0 65)) (forall ((i_34 Int) (i_34_2 Int) ) (!  (=> (and (and (and (and (not (= i_34 i_34_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34_2))))
 :qid |stdinbpl.1804:21|
 :skolemid |112|
))) (=> (forall ((i_34@@0 Int) (i_34_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_34@@0 i_34_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34_2@@0))))
 :qid |stdinbpl.1804:21|
 :skolemid |112|
)) (=> (and (forall ((i_34@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange8 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@1)) (= (invRecv8 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@1)) i_34@@1)))
 :qid |stdinbpl.1810:28|
 :skolemid |113|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_34@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_9@@23)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_9@@23)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv8 o_9@@23)) o_9@@23))
 :qid |stdinbpl.1814:28|
 :skolemid |114|
 :pattern ( (invRecv8 o_9@@23))
))) (and (=> (= (ControlFlow 0 63) (- 0 64)) (forall ((i_34@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1820:21|
 :skolemid |115|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_34@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@2))
))) (=> (forall ((i_34@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1820:21|
 :skolemid |115|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_34@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@3))
)) (=> (and (forall ((i_34@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@4) null)))
 :qid |stdinbpl.1826:28|
 :skolemid |116|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_34@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_34@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) i_34@@4))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_9@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| ExhaleHeap@0) this src) (invRecv8 o_9@@24)) o_9@@24)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@24 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@16) o_9@@24 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv8 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange8 o_9@@24))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@24 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@16) o_9@@24 Integer_value))))
 :qid |stdinbpl.1832:28|
 :skolemid |117|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@24 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@16) o_9@@25 f_5@@17) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) o_9@@25 f_5@@17)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@16) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@16) o_9@@26 f_5@@18) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) o_9@@26 f_5@@18)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@16) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@16) o_9@@27 f_5@@19) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) o_9@@27 f_5@@19)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@16) o_9@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_50101_3522) ) (!  (=> (not (= f_5@@20 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@16) o_9@@28 f_5@@20) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@28 f_5@@20)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@16) o_9@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@16) o_9@@29 f_5@@21) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) o_9@@29 f_5@@21)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@16) o_9@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@16) o_9@@30 f_5@@22) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3) o_9@@30 f_5@@22)))
 :qid |stdinbpl.1836:35|
 :skolemid |118|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@16) o_9@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3) o_9@@30 f_5@@22))
))) (and (state ExhaleHeap@0 QPMask@3) (= 0 0))) (and (=> (= (ControlFlow 0 63) 62) anon243_Then_correct) (=> (= (ControlFlow 0 63) 57) anon243_Else_correct))))))))))))))
(let ((anon213_Else_correct  (=> (and (forall ((i_18_1_1 Int) ) (!  (=> (and (<= 0 i_18_1_1) (< i_18_1_1 0)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_18_1_1)) Integer_value)))
 :qid |stdinbpl.1253:28|
 :skolemid |83|
)) (IdenticalOnKnownLocations Heap@0 ExhaleHeap@0 Mask@10)) (and (and (=> (= (ControlFlow 0 140) 137) anon215_Then_correct) (=> (= (ControlFlow 0 140) 85) anon226_Then_correct)) (=> (= (ControlFlow 0 140) 63) anon226_Else_correct)))))
(let ((anon48_correct  (and (=> (= (ControlFlow 0 141) (- 0 143)) (<= 0 0)) (=> (<= 0 0) (and (=> (= (ControlFlow 0 141) (- 0 142)) (<= 0 half@0)) (=> (<= 0 half@0) (and (and (=> (= (ControlFlow 0 141) 140) anon213_Else_correct) (=> (= (ControlFlow 0 141) 51) anon214_Then_correct)) (=> (= (ControlFlow 0 141) 53) anon214_Else_correct))))))))
(let ((anon47_correct  (=> (= Mask@9 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@8) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@8) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@8) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@8) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@8) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@8) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@8))) (=> (and (= Mask@10 Mask@9) (= (ControlFlow 0 145) 141)) anon48_correct))))
(let ((anon212_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 148) 145)) anon47_correct)))
(let ((anon212_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 146) (- 0 147)) (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@8) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@8) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value)) (=> (= (ControlFlow 0 146) 145) anon47_correct))))))
(let ((anon211_Then_correct  (=> (= 0 0) (and (=> (= (ControlFlow 0 149) 146) anon212_Then_correct) (=> (= (ControlFlow 0 149) 148) anon212_Else_correct)))))
(let ((anon211_Else_correct  (=> (not (= 0 0)) (=> (and (= Mask@10 Mask@8) (= (ControlFlow 0 144) 141)) anon48_correct))))
(let ((anon43_correct  (=> (and (= Mask@7 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@6) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@6) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 1) Integer_value (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@6) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@6) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@6) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@6) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@6))) (= Mask@8 Mask@7)) (and (=> (= (ControlFlow 0 152) 149) anon211_Then_correct) (=> (= (ControlFlow 0 152) 144) anon211_Else_correct)))))
(let ((anon210_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 155) 152)) anon43_correct)))
(let ((anon210_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 153) (- 0 154)) (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@6) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 1) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@6) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 1) Integer_value)) (=> (= (ControlFlow 0 153) 152) anon43_correct))))))
(let ((anon209_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 156) 153) anon210_Then_correct) (=> (= (ControlFlow 0 156) 155) anon210_Else_correct)))))
(let ((anon209_Else_correct  (=> (and (not (= tid 0)) (= Mask@8 Mask@6)) (and (=> (= (ControlFlow 0 151) 149) anon211_Then_correct) (=> (= (ControlFlow 0 151) 144) anon211_Else_correct)))))
(let ((anon39_correct  (=> (and (= Mask@5 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 0) Integer_value (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1))) (= Mask@6 Mask@5)) (and (=> (= (ControlFlow 0 158) 156) anon209_Then_correct) (=> (= (ControlFlow 0 158) 151) anon209_Else_correct)))))
(let ((anon208_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 161) 158)) anon39_correct)))
(let ((anon208_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 159) (- 0 160)) (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 0) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) 0) Integer_value)) (=> (= (ControlFlow 0 159) 158) anon39_correct))))))
(let ((anon207_Then_correct  (=> (= tid 0) (and (=> (= (ControlFlow 0 162) 159) anon208_Then_correct) (=> (= (ControlFlow 0 162) 161) anon208_Else_correct)))))
(let ((anon207_Else_correct  (=> (and (not (= tid 0)) (= Mask@6 QPMask@1)) (and (=> (= (ControlFlow 0 157) 156) anon209_Then_correct) (=> (= (ControlFlow 0 157) 151) anon209_Else_correct)))))
(let ((anon206_Then_correct  (=> (= 0 1) (and (=> (= (ControlFlow 0 163) 162) anon207_Then_correct) (=> (= (ControlFlow 0 163) 157) anon207_Else_correct)))))
(let ((anon206_Else_correct  (=> (and (not (= 0 1)) (= Mask@8 QPMask@1)) (and (=> (= (ControlFlow 0 150) 149) anon211_Then_correct) (=> (= (ControlFlow 0 150) 144) anon211_Else_correct)))))
(let ((anon204_Else_correct  (=> (forall ((i_15_1_1 Int) (j_3_1_1 Int) ) (!  (=> (and (<= 0 i_15_1_1) (and (< i_15_1_1 gsize) (and (<= 0 j_3_1_1) (and (< j_3_1_1 gsize) (not (= i_15_1_1 j_3_1_1)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_15_1_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) j_3_1_1))))
 :qid |stdinbpl.1165:28|
 :skolemid |75|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_15_1_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) j_3_1_1))
)) (and (=> (= (ControlFlow 0 164) (- 0 168)) (forall ((i_16_1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1) (dummyFunction_3522 (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1173:25|
 :skolemid |76|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1))
))) (=> (forall ((i_16_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@0) (dummyFunction_3522 (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.1173:25|
 :skolemid |76|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@0))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@0))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@0))
)) (and (=> (= (ControlFlow 0 164) (- 0 167)) (forall ((i_16_1@@1 Int) (i_16_2 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@1 i_16_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_2))))
 :qid |stdinbpl.1180:25|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_16_1@@1) (neverTriggered4 i_16_2))
))) (=> (forall ((i_16_1@@2 Int) (i_16_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_16_1@@2 i_16_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_2@@0))))
 :qid |stdinbpl.1180:25|
 :skolemid |77|
 :pattern ( (neverTriggered4 i_16_1@@2) (neverTriggered4 i_16_2@@0))
)) (and (=> (= (ControlFlow 0 164) (- 0 166)) (forall ((i_16_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@3) (>= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@4) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@3) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1187:25|
 :skolemid |78|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@3))
))) (=> (forall ((i_16_1@@4 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@4) (>= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@4) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@4) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.1187:25|
 :skolemid |78|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@4))
)) (=> (forall ((i_16_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@5) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange4 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@5)) (= (invRecv4 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@5)) i_16_1@@5)))
 :qid |stdinbpl.1193:30|
 :skolemid |79|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_16_1@@5))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_16_1@@5))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) i_16_1@@5))
)) (=> (and (forall ((o_9@@31 T@Ref) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_9@@31)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_9@@31))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (invRecv4 o_9@@31)) o_9@@31))
 :qid |stdinbpl.1197:30|
 :skolemid |80|
 :pattern ( (invRecv4 o_9@@31))
)) (forall ((o_9@@32 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_9@@32)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_9@@32))) (and (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (invRecv4 o_9@@32)) o_9@@32) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@32 Integer_value) (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@4) o_9@@32 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv4 o_9@@32)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange4 o_9@@32)))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@32 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@4) o_9@@32 Integer_value))))
 :qid |stdinbpl.1203:30|
 :skolemid |81|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@32 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@33 T@Ref) (f_5@@23 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@4) o_9@@33 f_5@@23) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) o_9@@33 f_5@@23)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) o_9@@33 f_5@@23))
)) (forall ((o_9@@34 T@Ref) (f_5@@24 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@4) o_9@@34 f_5@@24) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) o_9@@34 f_5@@24)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) o_9@@34 f_5@@24))
))) (forall ((o_9@@35 T@Ref) (f_5@@25 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@4) o_9@@35 f_5@@25) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) o_9@@35 f_5@@25)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) o_9@@35 f_5@@25))
))) (forall ((o_9@@36 T@Ref) (f_5@@26 T@Field_50101_3522) ) (!  (=> (not (= f_5@@26 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@4) o_9@@36 f_5@@26) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@36 f_5@@26)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@36 f_5@@26))
))) (forall ((o_9@@37 T@Ref) (f_5@@27 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@4) o_9@@37 f_5@@27) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) o_9@@37 f_5@@27)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) o_9@@37 f_5@@27))
))) (forall ((o_9@@38 T@Ref) (f_5@@28 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@4) o_9@@38 f_5@@28) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1) o_9@@38 f_5@@28)))
 :qid |stdinbpl.1209:37|
 :skolemid |82|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1) o_9@@38 f_5@@28))
))) (and (=> (= (ControlFlow 0 164) (- 0 165)) (= 0 0)) (=> (= 0 0) (and (=> (= (ControlFlow 0 164) 163) anon206_Then_correct) (=> (= (ControlFlow 0 164) 150) anon206_Else_correct))))))))))))))))
(let ((anon202_Else_correct  (=> (and (forall ((i_13_1_1 Int) ) (!  (=> (and (<= 0 i_13_1_1) (< i_13_1_1 0)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 i_13_1_1)) Integer_value)))
 :qid |stdinbpl.1115:24|
 :skolemid |74|
)) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 169) (- 0 181)) (<= 0 tid)) (=> (<= 0 tid) (and (=> (= (ControlFlow 0 169) (- 0 180)) (< tid tcount)) (=> (< tid tcount) (and (=> (= (ControlFlow 0 169) (- 0 179)) (= tid lid)) (=> (= tid lid) (and (=> (= (ControlFlow 0 169) (- 0 178)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 169) (- 0 177)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 169) (- 0 176)) (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this src) NoPerm)) (=> (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this src) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this src)) (= Mask@3 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this src (- (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this src) wildcard@4)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@2)))) (and (=> (= (ControlFlow 0 169) (- 0 175)) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src)) gsize)) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src)) gsize) (and (=> (= (ControlFlow 0 169) (- 0 174)) (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) this dst) NoPerm)) (=> (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) this dst) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) this dst)) (= Mask@4 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) this dst (- (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) this dst) wildcard@5)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@3) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@3) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@3) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@3)))) (and (=> (= (ControlFlow 0 169) (- 0 173)) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst)) gsize)) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst)) gsize) (and (=> (= (ControlFlow 0 169) (- 0 172)) (<= 4 gsize)) (=> (<= 4 gsize) (and (=> (= (ControlFlow 0 169) (- 0 171)) (= (mod gsize 2) 0)) (=> (= (mod gsize 2) 0) (and (=> (= (ControlFlow 0 169) (- 0 170)) (= offset_1@0 (ite (= tid 0) 0 half@0))) (=> (= offset_1@0 (ite (= tid 0) 0 half@0)) (and (and (=> (= (ControlFlow 0 169) 164) anon204_Else_correct) (=> (= (ControlFlow 0 169) 47) anon205_Then_correct)) (=> (= (ControlFlow 0 169) 49) anon205_Else_correct)))))))))))))))))))))))))))))))))
(let ((anon199_Then_correct  (=> (< tid 2) (and (=> (= (ControlFlow 0 182) (- 0 208)) (HasDirectPerm_25883_50807 Mask@2 this dst)) (=> (HasDirectPerm_25883_50807 Mask@2 this dst) (and (=> (= (ControlFlow 0 182) (- 0 207)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 182) (- 0 206)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 182) (- 0 205)) (HasDirectPerm_25883_50807 Mask@2 this src)) (=> (HasDirectPerm_25883_50807 Mask@2 this src) (and (=> (= (ControlFlow 0 182) (- 0 204)) (>= offset_1@0 0)) (=> (>= offset_1@0 0) (and (=> (= (ControlFlow 0 182) (- 0 203)) (< offset_1@0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< offset_1@0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (and (=> (= (ControlFlow 0 182) (- 0 202)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) offset_1@0) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) offset_1@0) Integer_value) (and (=> (= (ControlFlow 0 182) (- 0 201)) (= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) Integer_value))) (=> (= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) Integer_value)) (=> (= Heap@0 (PolymorphicMapType_43866 (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@19) (|PolymorphicMapType_43866_25656_25657#PolymorphicMapType_43866| Heap@@19) (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) (store (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@19) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) Integer_value (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@19) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) offset_1@0) Integer_value)) (|PolymorphicMapType_43866_25883_145470#PolymorphicMapType_43866| Heap@@19) (|PolymorphicMapType_43866_43926_145293#PolymorphicMapType_43866| Heap@@19))) (=> (and (state Heap@0 Mask@2) (state Heap@0 Mask@2)) (and (=> (= (ControlFlow 0 182) (- 0 200)) (HasDirectPerm_25883_50807 Mask@2 this dst)) (=> (HasDirectPerm_25883_50807 Mask@2 this dst) (and (=> (= (ControlFlow 0 182) (- 0 199)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 182) (- 0 198)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst))) (and (=> (= (ControlFlow 0 182) (- 0 197)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 182) (- 0 196)) (HasDirectPerm_25883_50807 Mask@2 this src)) (=> (HasDirectPerm_25883_50807 Mask@2 this src) (and (=> (= (ControlFlow 0 182) (- 0 195)) (>= offset_1@0 0)) (=> (>= offset_1@0 0) (and (=> (= (ControlFlow 0 182) (- 0 194)) (< offset_1@0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src)))) (=> (< offset_1@0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src))) (and (=> (= (ControlFlow 0 182) (- 0 193)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) offset_1@0) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) offset_1@0) Integer_value) (and (=> (= (ControlFlow 0 182) (- 0 192)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) offset_1@0) Integer_value))) (=> (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) offset_1@0) Integer_value)) (=> (state Heap@0 Mask@2) (and (=> (= (ControlFlow 0 182) (- 0 191)) (HasDirectPerm_25883_50807 Mask@2 this dst)) (=> (HasDirectPerm_25883_50807 Mask@2 this dst) (and (=> (= (ControlFlow 0 182) (- 0 190)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 182) (- 0 189)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst))) (and (=> (= (ControlFlow 0 182) (- 0 188)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (and (=> (= (ControlFlow 0 182) (- 0 187)) (HasDirectPerm_25883_50807 Mask@2 this src)) (=> (HasDirectPerm_25883_50807 Mask@2 this src) (and (=> (= (ControlFlow 0 182) (- 0 186)) (>= (+ offset_1@0 0) 0)) (=> (>= (+ offset_1@0 0) 0) (and (=> (= (ControlFlow 0 182) (- 0 185)) (< (+ offset_1@0 0) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src)))) (=> (< (+ offset_1@0 0) (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src))) (and (=> (= (ControlFlow 0 182) (- 0 184)) (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 0)) Integer_value)) (=> (HasDirectPerm_25891_3522 Mask@2 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 0)) Integer_value) (and (=> (= (ControlFlow 0 182) (- 0 183)) (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 0)) Integer_value))) (=> (>= (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this dst) tid) Integer_value) (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@0) this src) (+ offset_1@0 0)) Integer_value)) (=> (state Heap@0 Mask@2) (and (and (and (and (=> (= (ControlFlow 0 182) 169) anon202_Else_correct) (=> (= (ControlFlow 0 182) 43) anon203_Then_correct)) (=> (= (ControlFlow 0 182) 45) anon203_Else_correct)) (=> (= (ControlFlow 0 182) 32) anon201_Then_correct)) (=> (= (ControlFlow 0 182) 41) anon201_Else_correct)))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
(let ((anon199_Else_correct  (=> (and (and (<= 2 tid) (= Mask@23 Mask@2)) (and (= Heap@1 Heap@@19) (= (ControlFlow 0 30) 18))) anon113_correct)))
(let ((anon192_Else_correct  (=> (state Heap@@19 Mask@2) (=> (and (and (= half@0 (div gsize 2)) (state Heap@@19 Mask@2)) (and (= offset_1@0 (ite (= tid 0) 0 half@0)) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 209) 182) anon199_Then_correct) (=> (= (ControlFlow 0 209) 30) anon199_Else_correct))))))
(let ((anon190_Else_correct  (and (=> (= (ControlFlow 0 246) (- 0 251)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_3)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_3))))
 :qid |stdinbpl.770:15|
 :skolemid |59|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_3@@0))))
 :qid |stdinbpl.770:15|
 :skolemid |59|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange1 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1)) (= (invRecv1 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.776:22|
 :skolemid |60|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1))
)) (forall ((o_9@@39 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_9@@39)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_9@@39)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv1 o_9@@39)) o_9@@39))
 :qid |stdinbpl.780:22|
 :skolemid |61|
 :pattern ( (invRecv1 o_9@@39))
))) (and (=> (= (ControlFlow 0 246) (- 0 250)) (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.786:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.786:15|
 :skolemid |62|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4) null)))
 :qid |stdinbpl.792:22|
 :skolemid |63|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4))
)) (forall ((o_9@@40 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_9@@40)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_9@@40)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv1 o_9@@40)) o_9@@40)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@40 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@40 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv1 o_9@@40)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange1 o_9@@40))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@40 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@40 Integer_value))))
 :qid |stdinbpl.798:22|
 :skolemid |64|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@40 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@41 T@Ref) (f_5@@29 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@1) o_9@@41 f_5@@29) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@41 f_5@@29)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@1) o_9@@41 f_5@@29))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@41 f_5@@29))
)) (forall ((o_9@@42 T@Ref) (f_5@@30 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@1) o_9@@42 f_5@@30) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@42 f_5@@30)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@1) o_9@@42 f_5@@30))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@42 f_5@@30))
))) (forall ((o_9@@43 T@Ref) (f_5@@31 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@1) o_9@@43 f_5@@31) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@43 f_5@@31)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@1) o_9@@43 f_5@@31))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@43 f_5@@31))
))) (forall ((o_9@@44 T@Ref) (f_5@@32 T@Field_50101_3522) ) (!  (=> (not (= f_5@@32 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@44 f_5@@32) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@44 f_5@@32)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@44 f_5@@32))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@44 f_5@@32))
))) (forall ((o_9@@45 T@Ref) (f_5@@33 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@1) o_9@@45 f_5@@33) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@45 f_5@@33)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@1) o_9@@45 f_5@@33))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@45 f_5@@33))
))) (forall ((o_9@@46 T@Ref) (f_5@@34 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@1) o_9@@46 f_5@@34) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@46 f_5@@34)))
 :qid |stdinbpl.802:29|
 :skolemid |65|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@1) o_9@@46 f_5@@34))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@46 f_5@@34))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (=> (= (ControlFlow 0 246) (- 0 249)) (HasDirectPerm_25883_50807 QPMask@0 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@0 this dst) (and (=> (= (ControlFlow 0 246) (- 0 248)) (>= tid 0)) (=> (>= tid 0) (and (=> (= (ControlFlow 0 246) (- 0 247)) (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)))) (=> (< tid (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (=> (and (and (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) null)) (= Mask@2 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0)))) (and (state Heap@@19 Mask@2) (state Heap@@19 Mask@2))) (and (=> (= (ControlFlow 0 246) 239) anon192_Then_correct) (=> (= (ControlFlow 0 246) 209) anon192_Else_correct))))))))))))))))))
(let ((anon7_correct true))
(let ((anon191_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3)) (= (ControlFlow 0 16) 10)) anon7_correct)))
(let ((anon191_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3) (and (=> (= (ControlFlow 0 11) (- 0 15)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 11) (- 0 14)) (>= i_3 0)) (=> (>= i_3 0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< i_3 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< i_3 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))))))
(let ((anon188_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 gsize) (and (<= 0 j_1) (and (< j_1 gsize) (not (= i_1 j_1)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) j_1))))
 :qid |stdinbpl.748:20|
 :skolemid |58|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) j_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 252) 246) anon190_Else_correct) (=> (= (ControlFlow 0 252) 11) anon191_Then_correct)) (=> (= (ControlFlow 0 252) 16) anon191_Else_correct)))))
(let ((anon3_correct true))
(let ((anon189_Else_correct  (=> (and (not (and (<= 0 i_18) (and (< i_18 gsize) (and (<= 0 j_14) (and (< j_14 gsize) (not (= i_18 j_14))))))) (= (ControlFlow 0 9) 1)) anon3_correct)))
(let ((anon189_Then_correct  (=> (and (<= 0 i_18) (and (< i_18 gsize) (and (<= 0 j_14) (and (< j_14 gsize) (not (= i_18 j_14)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_18 0)) (=> (>= i_18 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_18 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< i_18 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_14 0)) (=> (>= j_14 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_14 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< j_14 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (=> (and (and (and (and (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@19) this $allocated) (<= 0 tid)) (and (state Heap@@19 ZeroMask) (< tid tcount))) (and (and (state Heap@@19 ZeroMask) (= tid lid)) (and (state Heap@@19 ZeroMask) (= tcount gsize)))) (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src) wildcard@0)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0))))) (and (=> (= (ControlFlow 0 253) (- 0 255)) (HasDirectPerm_25883_50807 Mask@0 this src)) (=> (HasDirectPerm_25883_50807 Mask@0 this src) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) gsize) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= this null)) (= Mask@1 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@0) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@0) this dst) wildcard@1)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 253) (- 0 254)) (HasDirectPerm_25883_50807 Mask@1 this dst)) (=> (HasDirectPerm_25883_50807 Mask@1 this dst) (=> (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) gsize) (state Heap@@19 Mask@1)) (=> (and (and (<= 4 gsize) (state Heap@@19 Mask@1)) (and (= (mod gsize 2) 0) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 253) 252) anon188_Else_correct) (=> (= (ControlFlow 0 253) 2) anon189_Then_correct)) (=> (= (ControlFlow 0 253) 9) anon189_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 256) 253)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
