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
(declare-fun gid () Int)
(declare-fun gsize () Int)
(declare-fun PostMask@5 () T@PolymorphicMapType_43887)
(declare-fun PostMask@3 () T@PolymorphicMapType_43887)
(declare-fun this () T@Ref)
(declare-fun PostHeap@0 () T@PolymorphicMapType_43866)
(declare-fun PostMask@4 () T@PolymorphicMapType_43887)
(declare-fun QPMask@3 () T@PolymorphicMapType_43887)
(declare-fun PostMask@2 () T@PolymorphicMapType_43887)
(declare-fun qpRange16 (T@Ref) Bool)
(declare-fun invRecv16 (T@Ref) Int)
(declare-fun PostMask@1 () T@PolymorphicMapType_43887)
(declare-fun i_42 () Int)
(declare-fun tcount () Int)
(declare-fun wildcard@2 () Real)
(declare-fun PostMask@0 () T@PolymorphicMapType_43887)
(declare-fun wildcard@3 () Real)
(declare-fun QPMask@1 () T@PolymorphicMapType_43887)
(declare-fun Heap@@19 () T@PolymorphicMapType_43866)
(declare-fun Mask@6 () T@PolymorphicMapType_43887)
(declare-fun Mask@5 () T@PolymorphicMapType_43887)
(declare-fun Mask@7 () T@PolymorphicMapType_43887)
(declare-fun Mask@4 () T@PolymorphicMapType_43887)
(declare-fun QPMask@2 () T@PolymorphicMapType_43887)
(declare-fun wildcard@4 () Real)
(declare-fun Mask@2 () T@PolymorphicMapType_43887)
(declare-fun wildcard@5 () Real)
(declare-fun Mask@3 () T@PolymorphicMapType_43887)
(declare-fun dummyFunction_3522 (Int) Bool)
(declare-fun neverTriggered17 (Int) Bool)
(declare-fun qpRange17 (T@Ref) Bool)
(declare-fun invRecv17 (T@Ref) Int)
(declare-fun qpRange15 (T@Ref) Bool)
(declare-fun invRecv15 (T@Ref) Int)
(declare-fun QPMask@0 () T@PolymorphicMapType_43887)
(declare-fun tid_19 () Int)
(declare-fun i_27 () Int)
(declare-fun j_21 () Int)
(declare-fun qpRange14 (T@Ref) Bool)
(declare-fun invRecv14 (T@Ref) Int)
(declare-fun Mask@1 () T@PolymorphicMapType_43887)
(declare-fun i_25 () Int)
(declare-fun i_24 () Int)
(declare-fun j_20 () Int)
(declare-fun wildcard@0 () Real)
(declare-fun Mask@0 () T@PolymorphicMapType_43887)
(declare-fun wildcard@1 () Real)
(declare-fun wildcard () Real)
(set-info :boogie-vc-id main_resources_of_1)
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
 (=> (= (ControlFlow 0 0) 96) (let ((anon25_correct true))
(let ((anon47_Else_correct  (=> (not (and (<= (* gid gsize) 0) (< 0 gsize))) (=> (and (= PostMask@5 PostMask@3) (= (ControlFlow 0 70) 66)) anon25_correct))))
(let ((anon47_Then_correct  (=> (and (<= (* gid gsize) 0) (< 0 gsize)) (and (=> (= (ControlFlow 0 67) (- 0 69)) (HasDirectPerm_25883_50807 PostMask@3 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@3 this dst) (and (=> (= (ControlFlow 0 67) (- 0 68)) (< 1 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)))) (=> (< 1 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 1) null)) (=> (and (and (= PostMask@4 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@3) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 1) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@3) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@3) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@3) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@3))) (state PostHeap@0 PostMask@4)) (and (= PostMask@5 PostMask@4) (= (ControlFlow 0 67) 66))) anon25_correct)))))))))
(let ((anon23_correct  (=> (state PostHeap@0 PostMask@3) (and (=> (= (ControlFlow 0 71) 67) anon47_Then_correct) (=> (= (ControlFlow 0 71) 70) anon47_Else_correct)))))
(let ((anon46_Else_correct  (=> (not (and (<= (* gid gsize) 0) (< 0 gsize))) (=> (and (= PostMask@3 QPMask@3) (= (ControlFlow 0 75) 71)) anon23_correct))))
(let ((anon46_Then_correct  (=> (and (<= (* gid gsize) 0) (< 0 gsize)) (and (=> (= (ControlFlow 0 72) (- 0 74)) (HasDirectPerm_25883_50807 QPMask@3 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@3 this dst) (and (=> (= (ControlFlow 0 72) (- 0 73)) (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)))) (=> (< 0 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst))) (=> (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) null)) (=> (and (and (= PostMask@2 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3))) (state PostHeap@0 PostMask@2)) (and (= PostMask@3 PostMask@2) (= (ControlFlow 0 72) 71))) anon23_correct)))))))))
(let ((anon44_Else_correct  (and (=> (= (ControlFlow 0 76) (- 0 78)) (forall ((i_7_1 Int) (i_7_2 Int) ) (!  (=> (and (and (and (and (not (= i_7_1 i_7_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_2))))
 :qid |stdinbpl.3313:15|
 :skolemid |192|
))) (=> (forall ((i_7_1@@0 Int) (i_7_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_7_1@@0 i_7_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_2@@0))))
 :qid |stdinbpl.3313:15|
 :skolemid |192|
)) (=> (and (forall ((i_7_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange16 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@1)) (= (invRecv16 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@1)) i_7_1@@1)))
 :qid |stdinbpl.3319:22|
 :skolemid |193|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@1))
)) (forall ((o_9 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv16 o_9)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange16 o_9)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (invRecv16 o_9)) o_9))
 :qid |stdinbpl.3323:22|
 :skolemid |194|
 :pattern ( (invRecv16 o_9))
))) (and (=> (= (ControlFlow 0 76) (- 0 77)) (forall ((i_7_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3329:15|
 :skolemid |195|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@2))
))) (=> (forall ((i_7_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3329:15|
 :skolemid |195|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@3))
)) (=> (and (forall ((i_7_1@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@4) null)))
 :qid |stdinbpl.3335:22|
 :skolemid |196|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_7_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_7_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) i_7_1@@4))
)) (forall ((o_9@@0 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv16 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange16 o_9@@0)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (invRecv16 o_9@@0)) o_9@@0)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@0 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@0 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv16 o_9@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange16 o_9@@0))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@0 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@0 Integer_value))))
 :qid |stdinbpl.3341:22|
 :skolemid |197|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@0 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@1 T@Ref) (f_5 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@1) o_9@@1 f_5) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) o_9@@1 f_5)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@1) o_9@@1 f_5))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@3) o_9@@1 f_5))
)) (forall ((o_9@@2 T@Ref) (f_5@@0 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@1) o_9@@2 f_5@@0) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) o_9@@2 f_5@@0)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@1) o_9@@2 f_5@@0))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@3) o_9@@2 f_5@@0))
))) (forall ((o_9@@3 T@Ref) (f_5@@1 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@1) o_9@@3 f_5@@1) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) o_9@@3 f_5@@1)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@1) o_9@@3 f_5@@1))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@3) o_9@@3 f_5@@1))
))) (forall ((o_9@@4 T@Ref) (f_5@@2 T@Field_50101_3522) ) (!  (=> (not (= f_5@@2 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@4 f_5@@2) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@4 f_5@@2)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@1) o_9@@4 f_5@@2))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@3) o_9@@4 f_5@@2))
))) (forall ((o_9@@5 T@Ref) (f_5@@3 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@1) o_9@@5 f_5@@3) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) o_9@@5 f_5@@3)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@1) o_9@@5 f_5@@3))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@3) o_9@@5 f_5@@3))
))) (forall ((o_9@@6 T@Ref) (f_5@@4 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@1) o_9@@6 f_5@@4) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3) o_9@@6 f_5@@4)))
 :qid |stdinbpl.3345:29|
 :skolemid |198|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@1) o_9@@6 f_5@@4))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@3) o_9@@6 f_5@@4))
))) (and (state PostHeap@0 QPMask@3) (state PostHeap@0 QPMask@3))) (and (=> (= (ControlFlow 0 76) 72) anon46_Then_correct) (=> (= (ControlFlow 0 76) 75) anon46_Else_correct)))))))))))
(let ((anon20_correct true))
(let ((anon45_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_42)) (= (ControlFlow 0 65) 59)) anon20_correct)))
(let ((anon45_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_42) (and (=> (= (ControlFlow 0 60) (- 0 64)) (HasDirectPerm_25883_50807 PostMask@1 this src)) (=> (HasDirectPerm_25883_50807 PostMask@1 this src) (and (=> (= (ControlFlow 0 60) (- 0 63)) (>= i_42 0)) (=> (>= i_42 0) (and (=> (= (ControlFlow 0 60) (- 0 62)) (< i_42 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src)))) (=> (< i_42 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src))) (and (=> (= (ControlFlow 0 60) (- 0 61)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 60) 59) anon20_correct))))))))))))
(let ((anon43_Then_correct  (=> (and (state PostHeap@0 ZeroMask) (= tcount gsize)) (=> (and (and (and (state PostHeap@0 ZeroMask) (= gid 0)) (and (state PostHeap@0 ZeroMask) (> wildcard@2 NoPerm))) (and (and (not (= this null)) (= PostMask@0 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src) wildcard@2)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask)))) (and (state PostHeap@0 PostMask@0) (state PostHeap@0 PostMask@0)))) (and (=> (= (ControlFlow 0 79) (- 0 85)) (HasDirectPerm_25883_50807 PostMask@0 this src)) (=> (HasDirectPerm_25883_50807 PostMask@0 this src) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src)) gsize) (=> (and (state PostHeap@0 PostMask@0) (> wildcard@3 NoPerm)) (=> (and (and (not (= this null)) (= PostMask@1 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@0) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| PostMask@0) this dst) wildcard@3)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| PostMask@0) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| PostMask@0)))) (and (state PostHeap@0 PostMask@1) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 79) (- 0 84)) (HasDirectPerm_25883_50807 PostMask@1 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@1 this dst) (=> (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst)) gsize) (state PostHeap@0 PostMask@1)) (=> (and (and (<= 4 gsize) (state PostHeap@0 PostMask@1)) (and (= (mod gsize 2) 0) (state PostHeap@0 PostMask@1))) (and (=> (= (ControlFlow 0 79) (- 0 83)) (HasDirectPerm_25883_50807 PostMask@1 this src)) (=> (HasDirectPerm_25883_50807 PostMask@1 this src) (and (=> (= (ControlFlow 0 79) (- 0 82)) (HasDirectPerm_25883_50807 QPMask@1 this src)) (=> (HasDirectPerm_25883_50807 QPMask@1 this src) (=> (and (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this src) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) (state PostHeap@0 PostMask@1)) (and (=> (= (ControlFlow 0 79) (- 0 81)) (HasDirectPerm_25883_50807 PostMask@1 this dst)) (=> (HasDirectPerm_25883_50807 PostMask@1 this dst) (and (=> (= (ControlFlow 0 79) (- 0 80)) (HasDirectPerm_25883_50807 QPMask@1 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@1 this dst) (=> (and (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| PostHeap@0) this dst) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) (state PostHeap@0 PostMask@1)) (and (and (=> (= (ControlFlow 0 79) 76) anon44_Else_correct) (=> (= (ControlFlow 0 79) 60) anon45_Then_correct)) (=> (= (ControlFlow 0 79) 65) anon45_Else_correct)))))))))))))))))))))))))
(let ((anon34_correct true))
(let ((anon33_correct  (=> (= Mask@6 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@5) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 1) Integer_value (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 1) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@5) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@5) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@5) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@5))) (=> (and (= Mask@7 Mask@6) (= (ControlFlow 0 34) 32)) anon34_correct))))
(let ((anon51_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 37) 34)) anon33_correct)))
(let ((anon51_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 35) (- 0 36)) (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 1) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@5) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 1) Integer_value)) (=> (= (ControlFlow 0 35) 34) anon33_correct))))))
(let ((anon50_Then_correct  (=> (and (<= (* gid gsize) 0) (< 0 gsize)) (and (=> (= (ControlFlow 0 38) 35) anon51_Then_correct) (=> (= (ControlFlow 0 38) 37) anon51_Else_correct)))))
(let ((anon50_Else_correct  (=> (not (and (<= (* gid gsize) 0) (< 0 gsize))) (=> (and (= Mask@7 Mask@5) (= (ControlFlow 0 33) 32)) anon34_correct))))
(let ((anon29_correct  (=> (and (= Mask@4 (PolymorphicMapType_43887 (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) (store (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 0) Integer_value (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 0) Integer_value) FullPerm)) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2))) (= Mask@5 Mask@4)) (and (=> (= (ControlFlow 0 40) 38) anon50_Then_correct) (=> (= (ControlFlow 0 40) 33) anon50_Else_correct)))))
(let ((anon49_Else_correct  (=> (and (= FullPerm NoPerm) (= (ControlFlow 0 43) 40)) anon29_correct)))
(let ((anon49_Then_correct  (=> (not (= FullPerm NoPerm)) (and (=> (= (ControlFlow 0 41) (- 0 42)) (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 0) Integer_value))) (=> (<= FullPerm (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) 0) Integer_value)) (=> (= (ControlFlow 0 41) 40) anon29_correct))))))
(let ((anon48_Then_correct  (=> (and (<= (* gid gsize) 0) (< 0 gsize)) (and (=> (= (ControlFlow 0 44) 41) anon49_Then_correct) (=> (= (ControlFlow 0 44) 43) anon49_Else_correct)))))
(let ((anon48_Else_correct  (=> (and (not (and (<= (* gid gsize) 0) (< 0 gsize))) (= Mask@5 QPMask@2)) (and (=> (= (ControlFlow 0 39) 38) anon50_Then_correct) (=> (= (ControlFlow 0 39) 33) anon50_Else_correct)))))
(let ((anon43_Else_correct  (and (=> (= (ControlFlow 0 45) (- 0 58)) (= tcount gsize)) (=> (= tcount gsize) (and (=> (= (ControlFlow 0 45) (- 0 57)) (= gid 0)) (=> (= gid 0) (and (=> (= (ControlFlow 0 45) (- 0 56)) (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) this src) NoPerm)) (=> (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) this src) NoPerm) (=> (> wildcard@4 NoPerm) (=> (and (< wildcard@4 (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) this src)) (= Mask@2 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) this src (- (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) this src) wildcard@4)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1)))) (and (=> (= (ControlFlow 0 45) (- 0 55)) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) gsize)) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) gsize) (and (=> (= (ControlFlow 0 45) (- 0 54)) (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this dst) NoPerm)) (=> (> (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this dst) NoPerm) (=> (> wildcard@5 NoPerm) (=> (and (< wildcard@5 (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this dst)) (= Mask@3 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this dst (- (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@2) this dst) wildcard@5)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@2) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@2)))) (and (=> (= (ControlFlow 0 45) (- 0 53)) (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) gsize)) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) gsize) (and (=> (= (ControlFlow 0 45) (- 0 52)) (<= 4 gsize)) (=> (<= 4 gsize) (and (=> (= (ControlFlow 0 45) (- 0 51)) (= (mod gsize 2) 0)) (=> (= (mod gsize 2) 0) (and (=> (= (ControlFlow 0 45) (- 0 50)) (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (=> (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) (and (=> (= (ControlFlow 0 45) (- 0 49)) (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (=> (|Seq#Equal_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) (and (=> (= (ControlFlow 0 45) (- 0 48)) (forall ((i_8_1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1) (dummyFunction_3522 (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@19) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3415:17|
 :skolemid |199|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_8_1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1))
))) (=> (forall ((i_8_1@@0 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@0) (dummyFunction_3522 (select (|PolymorphicMapType_43866_25891_3522#PolymorphicMapType_43866| Heap@@19) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@0) Integer_value))) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3415:17|
 :skolemid |199|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@0))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_8_1@@0))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@0))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@0))
)) (and (=> (= (ControlFlow 0 45) (- 0 47)) (forall ((i_8_1@@1 Int) (i_8_2 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@1 i_8_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@1)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_2)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_2))))
 :qid |stdinbpl.3422:17|
 :skolemid |200|
 :pattern ( (neverTriggered17 i_8_1@@1) (neverTriggered17 i_8_2))
))) (=> (forall ((i_8_1@@2 Int) (i_8_2@@0 Int) ) (!  (=> (and (and (and (and (not (= i_8_1@@2 i_8_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_2@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_2@@0))))
 :qid |stdinbpl.3422:17|
 :skolemid |200|
 :pattern ( (neverTriggered17 i_8_1@@2) (neverTriggered17 i_8_2@@0))
)) (and (=> (= (ControlFlow 0 45) (- 0 46)) (forall ((i_8_1@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@3) (>= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@3) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.3429:17|
 :skolemid |201|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_8_1@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@3))
))) (=> (forall ((i_8_1@@4 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@4) (>= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@4) Integer_value) (/ (to_real 1) (to_real gsize))))
 :qid |stdinbpl.3429:17|
 :skolemid |201|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_8_1@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@4))
)) (=> (forall ((i_8_1@@5 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@5) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange17 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@5)) (= (invRecv17 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@5)) i_8_1@@5)))
 :qid |stdinbpl.3435:22|
 :skolemid |202|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@5))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_8_1@@5))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_8_1@@5))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_8_1@@5))
)) (=> (and (forall ((o_9@@7 T@Ref) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv17 o_9@@7)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange17 o_9@@7))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv17 o_9@@7)) o_9@@7))
 :qid |stdinbpl.3439:22|
 :skolemid |203|
 :pattern ( (invRecv17 o_9@@7))
)) (forall ((o_9@@8 T@Ref) ) (!  (and (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv17 o_9@@8)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange17 o_9@@8))) (and (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv17 o_9@@8)) o_9@@8) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@8 Integer_value) (- (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) o_9@@8 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv17 o_9@@8)) (and (< NoPerm (/ (to_real 1) (to_real gsize))) (qpRange17 o_9@@8)))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@8 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) o_9@@8 Integer_value))))
 :qid |stdinbpl.3445:22|
 :skolemid |204|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@8 Integer_value))
))) (=> (and (and (and (and (and (forall ((o_9@@9 T@Ref) (f_5@@5 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@3) o_9@@9 f_5@@5) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) o_9@@9 f_5@@5)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@2) o_9@@9 f_5@@5))
)) (forall ((o_9@@10 T@Ref) (f_5@@6 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@3) o_9@@10 f_5@@6) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) o_9@@10 f_5@@6)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@2) o_9@@10 f_5@@6))
))) (forall ((o_9@@11 T@Ref) (f_5@@7 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@3) o_9@@11 f_5@@7) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) o_9@@11 f_5@@7)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@2) o_9@@11 f_5@@7))
))) (forall ((o_9@@12 T@Ref) (f_5@@8 T@Field_50101_3522) ) (!  (=> (not (= f_5@@8 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@3) o_9@@12 f_5@@8) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@12 f_5@@8)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@2) o_9@@12 f_5@@8))
))) (forall ((o_9@@13 T@Ref) (f_5@@9 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@3) o_9@@13 f_5@@9) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) o_9@@13 f_5@@9)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@2) o_9@@13 f_5@@9))
))) (forall ((o_9@@14 T@Ref) (f_5@@10 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@3) o_9@@14 f_5@@10) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2) o_9@@14 f_5@@10)))
 :qid |stdinbpl.3451:29|
 :skolemid |205|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@2) o_9@@14 f_5@@10))
))) (and (=> (= (ControlFlow 0 45) 44) anon48_Then_correct) (=> (= (ControlFlow 0 45) 39) anon48_Else_correct)))))))))))))))))))))))))))))))))))))
(let ((anon41_Else_correct  (and (=> (= (ControlFlow 0 86) (- 0 87)) (forall ((tid_1 Int) (tid_1_1 Int) ) (!  (=> (and (and (and (and (not (= tid_1 tid_1_1)) (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1)) (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1_1)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1_1))))
 :qid |stdinbpl.3204:15|
 :skolemid |186|
))) (=> (forall ((tid_1@@0 Int) (tid_1_1@@0 Int) ) (!  (=> (and (and (and (and (not (= tid_1@@0 tid_1_1@@0)) (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1@@0)) (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1_1@@0)) (< NoPerm FullPerm)) (< NoPerm FullPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1_1@@0))))
 :qid |stdinbpl.3204:15|
 :skolemid |186|
)) (=> (and (and (forall ((tid_1@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1@@1) (< NoPerm FullPerm)) (and (qpRange15 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@1)) (= (invRecv15 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@1)) tid_1@@1)))
 :qid |stdinbpl.3210:22|
 :skolemid |187|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@1))
)) (forall ((o_9@@15 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) (invRecv15 o_9@@15)) (< NoPerm FullPerm)) (qpRange15 o_9@@15)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) (invRecv15 o_9@@15)) o_9@@15))
 :qid |stdinbpl.3214:22|
 :skolemid |188|
 :pattern ( (invRecv15 o_9@@15))
))) (and (forall ((tid_1@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_1@@2) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@2) null)))
 :qid |stdinbpl.3220:22|
 :skolemid |189|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) tid_1@@2))
)) (forall ((o_9@@16 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) (invRecv15 o_9@@16)) (< NoPerm FullPerm)) (qpRange15 o_9@@16)) (and (=> (< NoPerm FullPerm) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) (invRecv15 o_9@@16)) o_9@@16)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@16 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@16 Integer_value) FullPerm)))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) (invRecv15 o_9@@16)) (< NoPerm FullPerm)) (qpRange15 o_9@@16))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@16 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@16 Integer_value))))
 :qid |stdinbpl.3226:22|
 :skolemid |190|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@16 Integer_value))
)))) (=> (and (and (and (and (and (and (forall ((o_9@@17 T@Ref) (f_5@@11 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@17 f_5@@11) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) o_9@@17 f_5@@11)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@17 f_5@@11))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@1) o_9@@17 f_5@@11))
)) (forall ((o_9@@18 T@Ref) (f_5@@12 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@18 f_5@@12) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) o_9@@18 f_5@@12)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@18 f_5@@12))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@1) o_9@@18 f_5@@12))
))) (forall ((o_9@@19 T@Ref) (f_5@@13 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@19 f_5@@13) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) o_9@@19 f_5@@13)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@19 f_5@@13))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@1) o_9@@19 f_5@@13))
))) (forall ((o_9@@20 T@Ref) (f_5@@14 T@Field_50101_3522) ) (!  (=> (not (= f_5@@14 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@20 f_5@@14) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@20 f_5@@14)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@20 f_5@@14))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@1) o_9@@20 f_5@@14))
))) (forall ((o_9@@21 T@Ref) (f_5@@15 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@21 f_5@@15) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) o_9@@21 f_5@@15)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@21 f_5@@15))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@1) o_9@@21 f_5@@15))
))) (forall ((o_9@@22 T@Ref) (f_5@@16 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@22 f_5@@16) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1) o_9@@22 f_5@@16)))
 :qid |stdinbpl.3230:29|
 :skolemid |191|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@22 f_5@@16))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@1) o_9@@22 f_5@@16))
))) (and (state Heap@@19 QPMask@1) (state Heap@@19 QPMask@1))) (and (=> (= (ControlFlow 0 86) 79) anon43_Then_correct) (=> (= (ControlFlow 0 86) 45) anon43_Else_correct))))))))
(let ((anon15_correct true))
(let ((anon42_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_19)) (= (ControlFlow 0 31) 26)) anon15_correct)))
(let ((anon42_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| (* gid gsize) gsize) tid_19) (and (=> (= (ControlFlow 0 27) (- 0 30)) (HasDirectPerm_25883_50807 QPMask@0 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@0 this dst) (and (=> (= (ControlFlow 0 27) (- 0 29)) (>= tid_19 0)) (=> (>= tid_19 0) (and (=> (= (ControlFlow 0 27) (- 0 28)) (< tid_19 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)))) (=> (< tid_19 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (=> (= (ControlFlow 0 27) 26) anon15_correct))))))))))
(let ((anon39_Else_correct  (=> (and (forall ((i_5_1 Int) (j_3 Int) ) (!  (=> (and (<= 0 i_5_1) (and (< i_5_1 gsize) (and (<= 0 j_3) (and (< j_3 gsize) (not (= i_5_1 j_3)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) i_5_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) j_3))))
 :qid |stdinbpl.3184:20|
 :skolemid |185|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) i_5_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst) j_3))
)) (state Heap@@19 QPMask@0)) (and (and (=> (= (ControlFlow 0 88) 86) anon41_Else_correct) (=> (= (ControlFlow 0 88) 27) anon42_Then_correct)) (=> (= (ControlFlow 0 88) 31) anon42_Else_correct)))))
(let ((anon11_correct true))
(let ((anon40_Else_correct  (=> (and (not (and (<= 0 i_27) (and (< i_27 gsize) (and (<= 0 j_21) (and (< j_21 gsize) (not (= i_27 j_21))))))) (= (ControlFlow 0 25) 17)) anon11_correct)))
(let ((anon40_Then_correct  (=> (and (<= 0 i_27) (and (< i_27 gsize) (and (<= 0 j_21) (and (< j_21 gsize) (not (= i_27 j_21)))))) (and (=> (= (ControlFlow 0 18) (- 0 24)) (HasDirectPerm_25883_50807 QPMask@0 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@0 this dst) (and (=> (= (ControlFlow 0 18) (- 0 23)) (>= i_27 0)) (=> (>= i_27 0) (and (=> (= (ControlFlow 0 18) (- 0 22)) (< i_27 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)))) (=> (< i_27 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (and (=> (= (ControlFlow 0 18) (- 0 21)) (HasDirectPerm_25883_50807 QPMask@0 this dst)) (=> (HasDirectPerm_25883_50807 QPMask@0 this dst) (and (=> (= (ControlFlow 0 18) (- 0 20)) (>= j_21 0)) (=> (>= j_21 0) (and (=> (= (ControlFlow 0 18) (- 0 19)) (< j_21 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)))) (=> (< j_21 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst))) (=> (= (ControlFlow 0 18) 17) anon11_correct))))))))))))))))
(let ((anon37_Else_correct  (and (=> (= (ControlFlow 0 89) (- 0 91)) (forall ((i_3_2 Int) (i_3_3 Int) ) (!  (=> (and (and (and (and (not (= i_3_2 i_3_3)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_3)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_3))))
 :qid |stdinbpl.3126:15|
 :skolemid |178|
))) (=> (forall ((i_3_2@@0 Int) (i_3_3@@0 Int) ) (!  (=> (and (and (and (and (not (= i_3_2@@0 i_3_3@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@0)) (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_3@@0)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (< NoPerm (/ (to_real 1) (to_real gsize)))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@0) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_3@@0))))
 :qid |stdinbpl.3126:15|
 :skolemid |178|
)) (=> (and (forall ((i_3_2@@1 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@1) (< NoPerm (/ (to_real 1) (to_real gsize)))) (and (qpRange14 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1)) (= (invRecv14 (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1)) i_3_2@@1)))
 :qid |stdinbpl.3132:22|
 :skolemid |179|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@1))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@1))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@1))
)) (forall ((o_9@@23 T@Ref) ) (!  (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv14 o_9@@23)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange14 o_9@@23)) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv14 o_9@@23)) o_9@@23))
 :qid |stdinbpl.3136:22|
 :skolemid |180|
 :pattern ( (invRecv14 o_9@@23))
))) (and (=> (= (ControlFlow 0 89) (- 0 90)) (forall ((i_3_2@@2 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@2) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3142:15|
 :skolemid |181|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@2))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@2))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@2))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@2))
))) (=> (forall ((i_3_2@@3 Int) ) (!  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@3) (>= (/ (to_real 1) (to_real gsize)) NoPerm))
 :qid |stdinbpl.3142:15|
 :skolemid |181|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@3))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@3))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@3))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@3))
)) (=> (and (forall ((i_3_2@@4 Int) ) (!  (=> (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@4) (> (/ (to_real 1) (to_real gsize)) NoPerm)) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4) null)))
 :qid |stdinbpl.3148:22|
 :skolemid |182|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4))
 :pattern ( (|Seq#ContainsTrigger_3368| (|Seq#Range| 0 gsize) i_3_2@@4))
 :pattern ( (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_3_2@@4))
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_3_2@@4))
)) (forall ((o_9@@24 T@Ref) ) (!  (and (=> (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv14 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange14 o_9@@24)) (and (=> (< NoPerm (/ (to_real 1) (to_real gsize))) (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) (invRecv14 o_9@@24)) o_9@@24)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@24 Integer_value) (+ (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@24 Integer_value) (/ (to_real 1) (to_real gsize)))))) (=> (not (and (and (|Seq#Contains_3368| (|Seq#Range| 0 gsize) (invRecv14 o_9@@24)) (< NoPerm (/ (to_real 1) (to_real gsize)))) (qpRange14 o_9@@24))) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@24 Integer_value) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@24 Integer_value))))
 :qid |stdinbpl.3154:22|
 :skolemid |183|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@24 Integer_value))
))) (=> (and (and (and (and (and (and (forall ((o_9@@25 T@Ref) (f_5@@17 T@Field_43926_53) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@1) o_9@@25 f_5@@17) (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@25 f_5@@17)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@1) o_9@@25 f_5@@17))
 :pattern ( (select (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| QPMask@0) o_9@@25 f_5@@17))
)) (forall ((o_9@@26 T@Ref) (f_5@@18 T@Field_43939_43940) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@1) o_9@@26 f_5@@18) (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@26 f_5@@18)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@1) o_9@@26 f_5@@18))
 :pattern ( (select (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| QPMask@0) o_9@@26 f_5@@18))
))) (forall ((o_9@@27 T@Ref) (f_5@@19 T@Field_49987_49992) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@1) o_9@@27 f_5@@19) (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@27 f_5@@19)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@1) o_9@@27 f_5@@19))
 :pattern ( (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| QPMask@0) o_9@@27 f_5@@19))
))) (forall ((o_9@@28 T@Ref) (f_5@@20 T@Field_50101_3522) ) (!  (=> (not (= f_5@@20 Integer_value)) (= (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@28 f_5@@20) (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@28 f_5@@20)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@1) o_9@@28 f_5@@20))
 :pattern ( (select (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| QPMask@0) o_9@@28 f_5@@20))
))) (forall ((o_9@@29 T@Ref) (f_5@@21 T@Field_25883_145293) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@1) o_9@@29 f_5@@21) (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@29 f_5@@21)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@1) o_9@@29 f_5@@21))
 :pattern ( (select (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| QPMask@0) o_9@@29 f_5@@21))
))) (forall ((o_9@@30 T@Ref) (f_5@@22 T@Field_25883_145426) ) (!  (=> true (= (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@1) o_9@@30 f_5@@22) (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@30 f_5@@22)))
 :qid |stdinbpl.3158:29|
 :skolemid |184|
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@1) o_9@@30 f_5@@22))
 :pattern ( (select (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| QPMask@0) o_9@@30 f_5@@22))
))) (and (state Heap@@19 QPMask@0) (state Heap@@19 QPMask@0))) (and (and (=> (= (ControlFlow 0 89) 88) anon39_Else_correct) (=> (= (ControlFlow 0 89) 18) anon40_Then_correct)) (=> (= (ControlFlow 0 89) 25) anon40_Else_correct)))))))))))
(let ((anon7_correct true))
(let ((anon38_Else_correct  (=> (and (not (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_25)) (= (ControlFlow 0 16) 10)) anon7_correct)))
(let ((anon38_Then_correct  (=> (|Seq#Contains_3368| (|Seq#Range| 0 gsize) i_25) (and (=> (= (ControlFlow 0 11) (- 0 15)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 11) (- 0 14)) (>= i_25 0)) (=> (>= i_25 0) (and (=> (= (ControlFlow 0 11) (- 0 13)) (< i_25 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< i_25 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (and (=> (= (ControlFlow 0 11) (- 0 12)) (not (= gsize 0))) (=> (not (= gsize 0)) (=> (= (ControlFlow 0 11) 10) anon7_correct))))))))))))
(let ((anon35_Else_correct  (=> (and (forall ((i_1 Int) (j_1 Int) ) (!  (=> (and (<= 0 i_1) (and (< i_1 gsize) (and (<= 0 j_1) (and (< j_1 gsize) (not (= i_1 j_1)))))) (not (= (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) j_1))))
 :qid |stdinbpl.3104:20|
 :skolemid |177|
 :pattern ( (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) i_1) (|Seq#Index_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src) j_1))
)) (state Heap@@19 Mask@1)) (and (and (=> (= (ControlFlow 0 92) 89) anon37_Else_correct) (=> (= (ControlFlow 0 92) 11) anon38_Then_correct)) (=> (= (ControlFlow 0 92) 16) anon38_Else_correct)))))
(let ((anon3_correct true))
(let ((anon36_Else_correct  (=> (and (not (and (<= 0 i_24) (and (< i_24 gsize) (and (<= 0 j_20) (and (< j_20 gsize) (not (= i_24 j_20))))))) (= (ControlFlow 0 9) 1)) anon3_correct)))
(let ((anon36_Then_correct  (=> (and (<= 0 i_24) (and (< i_24 gsize) (and (<= 0 j_20) (and (< j_20 gsize) (not (= i_24 j_20)))))) (and (=> (= (ControlFlow 0 2) (- 0 8)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 7)) (>= i_24 0)) (=> (>= i_24 0) (and (=> (= (ControlFlow 0 2) (- 0 6)) (< i_24 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< i_24 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (and (=> (= (ControlFlow 0 2) (- 0 5)) (HasDirectPerm_25883_50807 Mask@1 this src)) (=> (HasDirectPerm_25883_50807 Mask@1 this src) (and (=> (= (ControlFlow 0 2) (- 0 4)) (>= j_20 0)) (=> (>= j_20 0) (and (=> (= (ControlFlow 0 2) (- 0 3)) (< j_20 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)))) (=> (< j_20 (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src))) (=> (= (ControlFlow 0 2) 1) anon3_correct))))))))))))))))
(let ((anon0_correct  (=> (and (and (state Heap@@19 ZeroMask) AssumePermUpperBound) (and (select (|PolymorphicMapType_43866_25653_53#PolymorphicMapType_43866| Heap@@19) this $allocated) (= tcount gsize))) (=> (and (and (and (state Heap@@19 ZeroMask) (= gid 0)) (and (state Heap@@19 ZeroMask) (> wildcard@0 NoPerm))) (and (and (not (= this null)) (= Mask@0 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| ZeroMask) this src) wildcard@0)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| ZeroMask) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| ZeroMask)))) (and (state Heap@@19 Mask@0) (state Heap@@19 Mask@0)))) (and (=> (= (ControlFlow 0 93) (- 0 95)) (HasDirectPerm_25883_50807 Mask@0 this src)) (=> (HasDirectPerm_25883_50807 Mask@0 this src) (=> (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this src)) gsize) (=> (and (state Heap@@19 Mask@0) (> wildcard@1 NoPerm)) (=> (and (and (not (= this null)) (= Mask@1 (PolymorphicMapType_43887 (store (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@0) this dst (+ (select (|PolymorphicMapType_43887_25883_50655#PolymorphicMapType_43887| Mask@0) this dst) wildcard@1)) (|PolymorphicMapType_43887_25891_3522#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_53#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_43940#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_145293#PolymorphicMapType_43887| Mask@0) (|PolymorphicMapType_43887_25883_150120#PolymorphicMapType_43887| Mask@0)))) (and (state Heap@@19 Mask@1) (state Heap@@19 Mask@1))) (and (=> (= (ControlFlow 0 93) (- 0 94)) (HasDirectPerm_25883_50807 Mask@1 this dst)) (=> (HasDirectPerm_25883_50807 Mask@1 this dst) (=> (and (= (|Seq#Length_25884| (select (|PolymorphicMapType_43866_25883_50874#PolymorphicMapType_43866| Heap@@19) this dst)) gsize) (state Heap@@19 Mask@1)) (=> (and (and (<= 4 gsize) (state Heap@@19 Mask@1)) (and (= (mod gsize 2) 0) (state Heap@@19 Mask@1))) (and (and (=> (= (ControlFlow 0 93) 92) anon35_Else_correct) (=> (= (ControlFlow 0 93) 2) anon36_Then_correct)) (=> (= (ControlFlow 0 93) 9) anon36_Else_correct)))))))))))))))
(let ((PreconditionGeneratedEntry_correct  (=> (and (and (> wildcard NoPerm) true) (= (ControlFlow 0 96) 93)) anon0_correct)))
PreconditionGeneratedEntry_correct))))))))))))))))))))))))))))))))))))))))))
))
(check-sat)
(get-info :rlimit)
(pop 1)
; Valid
